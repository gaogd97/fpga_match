
module motor_ctrl_forth_back #(
    parameter pulse_width =16'd1000
)
(
    input           clk            ,
    input           rst_n          ,
    input           key_sw         ,
    input  [15:0]   motor_freq     ,
    input  [15:0]   forth_pulse_num,
    input  [15:0]   back_pulse_num ,
    output          en_n           ,
    output          en_p           ,
    output          dir_n          ,
    output          dir_p          ,
    output          pul_n          ,
    output          pul_p  
);


reg [1:0] motor_state;
localparam  READY = 2'b00;
localparam  FORTH = 2'b01;
localparam  WAIT  = 2'b10;
localparam  BACK  = 2'b11;

localparam  WAIT_TIME = 'd100_000_000; //1s
reg [31:0] wait_delay_cnt;

reg        motor_sw ;
reg        motor_dir;


assign en_n  =1'b0;
assign dir_n =1'b0;
assign pul_n =1'b0;

wire [47:0] speed_div;
wire [31:0]     speed;
div_gen_0 div_gen_0_inst (
  .aclk                  (clk          ), 
  .s_axis_divisor_tvalid (1'b1         ), 
  .s_axis_divisor_tdata  (motor_freq   ), 
  .s_axis_dividend_tvalid(1'b1         ), 
  .s_axis_dividend_tdata (32'd100000000),  //100_000_000
  .m_axis_dout_tvalid    (),              
  .m_axis_dout_tdata     (speed_div    )  
);
assign speed = speed_div[47:16];//32bit

assign dir_p = motor_dir  ;
reg [31:0] cnt_10ns       ;
reg [15:0] forth_pulse_cnt;
reg [15:0] back_pulse_cnt ;

always @(posedge clk) begin         
    case(motor_state)
      READY: begin
         motor_sw <= 1'b0;
         motor_dir<= 1'b1;
         forth_pulse_cnt<=0;
         back_pulse_cnt<=0; 
         wait_delay_cnt<=0;
      end
      FORTH:begin
         motor_sw <= 1'b1;
         motor_dir<= 1'b1;
         if(cnt_10ns==speed) begin
             forth_pulse_cnt<=forth_pulse_cnt + 1'b1;
         end
         else begin
             forth_pulse_cnt<=forth_pulse_cnt;
         end
         back_pulse_cnt<=0;
         wait_delay_cnt<=0;
      end
      WAIT:begin
         motor_sw <= 1'b0;
         motor_dir<= 1'b0;
         forth_pulse_cnt<=0;
         back_pulse_cnt<=0; 
         wait_delay_cnt<=wait_delay_cnt+1;
      end
      BACK:begin
         motor_sw <= 1'b1;
         motor_dir<= 1'b0;
         if(cnt_10ns==speed) begin
             back_pulse_cnt<=back_pulse_cnt + 1'b1;
         end
         else begin
             back_pulse_cnt<=back_pulse_cnt;
         end
         forth_pulse_cnt<=0;
         wait_delay_cnt<=0 ;
      end
      default:begin
         motor_sw <= motor_sw ;
         motor_dir<= motor_dir;
         back_pulse_cnt <=back_pulse_cnt ; 
         forth_pulse_cnt<=forth_pulse_cnt;
         wait_delay_cnt <=wait_delay_cnt ;
      end
    endcase  
end

reg  ready_flag;
wire forth_flag;
reg  back_flag ;
reg  wait_flag ;
always @(posedge clk or negedge rst_n) begin         
    if (!rst_n) begin
        motor_state<=READY;
    end                                                      
    else if(forth_flag) begin
        motor_state<=FORTH;//01
    end
    else if(wait_flag) begin
        motor_state<=WAIT;//10
    end
    else if(back_flag) begin                                           
        motor_state<=BACK;//11
    end
    else if(ready_flag) begin
        motor_state<=READY;
    end
    else begin
        motor_state<=motor_state;
    end
end

reg    key_sw_d0;
reg    key_sw_d1;
always @(posedge clk or negedge rst_n) begin         
    if (!rst_n) begin
        key_sw_d0 <= 1'b0;                                  
        key_sw_d1 <= 1'b0; 
    end                                                      
    else begin                                               
        key_sw_d0 <= key_sw;                               
        key_sw_d1 <= key_sw_d0; 
    end
end
assign forth_flag=key_sw_d1&~key_sw_d0; //a pulse signal

always @(posedge clk or negedge rst_n) begin         
    if (!rst_n) begin
        wait_flag<=0;
    end                                                      
    else if(forth_pulse_cnt==forth_pulse_num) begin                                               
        wait_flag<=1; //a pulse signal
    end
    else begin
        wait_flag<=0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        back_flag<=0;
    end                                                      
    else if(wait_delay_cnt==WAIT_TIME) begin                                               
        back_flag<=1; //a pulse signal
    end
    else begin
        back_flag<=0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        ready_flag<=0;
    end                                                      
    else if(back_pulse_cnt==back_pulse_num) begin                                               
        ready_flag<=1; //a pulse signal
    end
    else begin
        ready_flag<=0;
    end
end


reg  pulse;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt_10ns<=0;
        pulse<=0;
    end
    else if(motor_sw) begin
        if(cnt_10ns<pulse_width-1) begin //pulse=1000
            cnt_10ns<=cnt_10ns + 1'b1;
            pulse<=1;
        end
        else if(cnt_10ns>=pulse_width-1 && cnt_10ns<speed) begin
            cnt_10ns<=cnt_10ns + 1'b1;
            pulse<=0;
        end
        else if(cnt_10ns==speed) begin
            cnt_10ns<=0;
            pulse<=~pulse;
        end
        else begin
            cnt_10ns<=cnt_10ns;
            pulse<=pulse;
        end
    end
    else begin
        cnt_10ns<=0;
        pulse<=0;        
    end
end

assign pul_p = pulse;

/*
ila_0 ila_0_inst (
	.clk   (clk        ), // input wire clk
	.probe0(key_sw     ), // input wire [0:0]  probe0  
	.probe1(motor_sw   ), // input wire [0:0]  probe1 
	.probe2(forth_flag ), // input wire [0:0]  probe2
	.probe3(motor_state),
	.probe4(rst_n      ),
	.probe5(wait_flag  ),
	.probe6(back_flag  ),
	.probe7(ready_flag ),
	.probe8(pulse      ),
	.probe9(cnt_10ns   )
);*/
endmodule


