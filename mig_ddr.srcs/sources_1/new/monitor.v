`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/31 16:50:17
// Design Name: 
// Module Name: monitor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//电机控制模块,旋转电机+投篮电机

module monitor(
    input           tpg_rstn_i,
    input			tpg_clk_i,
    input           start_config,
    input           calculate_config,
    
    output          pulse_n     ,
    output          pulse_p     ,
    output          dir_n       ,    
    output          dir_p       ,
    
    input  [19:0]   motor_freq     ,
    output [15:0]   freq_out,
    input  [15:0]   forth_pulse_num,
    input  [15:0]   back_pulse_num ,
    output          tdir_n          ,
    output          tdir_p          ,
    output          pul_n          ,
    output          pul_p,  
    
    output    reg  monitor_ok,
    output    reg  monitor_config,
    
    input [19:0] x_num,
    input [13:0] X
    );

//------------------- 旋转电机---------------------------
parameter PULSE_WIDTH = 16'd1000;
parameter SPEED0       = 16'd62500; //freq = 10^8/62500 = 1600Hz, n=1600/6400=0.25rps=15rpm
parameter SPEED1       = SPEED0; //freq = 10^8/62500 = 1600Hz, n=1600/6400=0.25rps=15rpm
parameter STEP0=300;
parameter STEP1=100;
parameter STEP2=10;
reg [15:0] speed_set=SPEED0; 
wire dir_wire;
reg           sw;
reg           dir=0;
assign pulse_n =1'b0;
assign dir_n   =1'b0;
assign dir_p   = dir_wire;

wire [13:0] X_reg;
wire [7:0] X_inertia;
wire [15:0] SPEED2;
vio_2 VIO2(          
.clk(tpg_clk_i),    
.probe_out0(X_reg)  ,
.probe_out1(X_inertia),
.probe_out2(SPEED2)
);      

//-------------------------- 投篮电机 ---------------------------------
localparam  WAIT_TIME = 'd100_000_000; //1s
reg [31:0] wait_delay_cnt;

reg        motor_sw ;
reg        motor_dir;


assign dir_n =1'b0;
assign pul_n =1'b0;

reg [15:0] motor_freq_reg;
wire [47:0] speed_div;
wire [31:0]     speed;
div_gen_0 div_gen_0_inst (
  .aclk                  (tpg_clk_i          ), 
  .s_axis_divisor_tvalid (1'b1         ), 
  .s_axis_divisor_tdata  (motor_freq_reg   ), 
  .s_axis_dividend_tvalid(1'b1         ), 
  .s_axis_dividend_tdata (32'd100000000),  //100_000_000
  .m_axis_dout_tvalid    (),              
  .m_axis_dout_tdata     (speed_div    )  
);
assign speed = speed_div[47:16];//32bit

assign tdir_p = motor_dir  ;
reg [31:0] cnt_10ns       ;
reg [15:0] forth_pulse_cnt;
reg [15:0] back_pulse_cnt ;

            
//------------------------------ 投篮状态机  ----------------------------
reg  [3 :0] TS_S = 4'd0;
reg [31:0] X_wait_sig=0;

assign dir_wire = ~dir;

//投篮机器人电机控制状态机
always@(posedge tpg_clk_i) begin
    if(!tpg_rstn_i)begin
        TS_S    <= 4'd0;    
        sw      <= 1'b0;
        monitor_ok <= 1'b0;
        monitor_config <= 1'b0;
        speed_set <= SPEED0;
        motor_freq_reg <= 0;
    end
    else begin
        case(TS_S)
        0:begin
            monitor_ok <= 1'b0;
            motor_sw <= 1'b0;
            motor_dir<= 1'b1;
            forth_pulse_cnt<=0;
            back_pulse_cnt<=0; 
            wait_delay_cnt<=0;
            if((start_config == 1'b1)) begin
                TS_S <= 4'd1;
                monitor_config <= 1'b1;
            end
            else begin
                TS_S <= 4'd0;
                monitor_config <= 1'b0;
            end
        end
        1:begin //旋转电机调整角度
            if(calculate_config)begin
                if(X>X_reg+STEP0) begin 
                    dir<= 1'b1;
                    sw <= 1'b1;
                    speed_set <= SPEED0;
                end
                else if(X<X_reg-STEP0) begin 
                    dir<= 1'b0;
                    sw <= 1'b1;
                    speed_set <= SPEED0;    
                end 
                else if(X>X_reg+STEP1) begin 
                    dir<= 1'b1;
                    sw <= 1'b1;
                    speed_set <= SPEED1;
                end
                else if(X<X_reg-STEP1) begin 
                    dir<= 1'b0;
                    sw <= 1'b1;
                    speed_set <= SPEED1;    
                end  
                else if(X>X_reg+STEP2) begin 
                    dir<= 1'b1;
                    sw <= 1'b1;
                    speed_set <= SPEED2;
                end
                else if(X<X_reg-STEP2) begin 
                    dir<= 1'b0;
                    sw <= 1'b1;
                    speed_set <= SPEED2;    
                end 
                else if(X>X_reg+X_inertia) begin 
                    dir<= 1'b1;
                    sw <= 1'b1;
                    speed_set <= SPEED2;
                end
                else if(X<X_reg-X_inertia) begin 
                    dir<= 1'b0;
                    sw <= 1'b1;
                    speed_set <= SPEED2;    
                end
                else if((X>X_reg-X_inertia)&&(X<X_reg+X_inertia)&&(x_num>1000)) begin
                    dir<= 1'b0;
                    sw <= 1'b0;
                    speed_set <= SPEED2; 
                end
                if((X>X_reg-X_inertia)&&(X<X_reg+X_inertia)&&(x_num>1000)) TS_S <= 4'd2;
                else TS_S <= 4'd1;
            end
            else TS_S <= 4'd1;
        end
        2:begin
            if(X_wait_sig == 999990) begin
                motor_freq_reg <= motor_freq[15:0];
                X_wait_sig <= X_wait_sig + 1'b1;
            end
            else if(X_wait_sig == 1000000) begin
                TS_S <= 4'd3;
                X_wait_sig <= 0;
            end
            else begin
                TS_S <= 4'd2;
                X_wait_sig <= X_wait_sig + 1'b1;
            end
        end
        3:begin  // 开始投篮
            if(forth_pulse_cnt==forth_pulse_num) TS_S <= 4'd4;
               else TS_S <= 4'd3;
            motor_sw <= 1'b1;
            motor_dir<= 1'b1;
            if(cnt_10ns==speed) forth_pulse_cnt<=forth_pulse_cnt + 1'b1;
               else forth_pulse_cnt<=forth_pulse_cnt;
            back_pulse_cnt<=0;
            wait_delay_cnt<=0;
        end
        4:begin // 等待一段时间
            if(wait_delay_cnt==WAIT_TIME) TS_S <= 4'd5;
                else TS_S <= 4'd4;
            motor_sw <= 1'b0;
            motor_dir<= 1'b0;
            forth_pulse_cnt<=0;
            back_pulse_cnt<=0; 
            wait_delay_cnt<=wait_delay_cnt+1;
        end
        5:begin //投篮电机复位
            if(back_pulse_cnt==back_pulse_num)  TS_S <= 4'd6;                                            
                else   TS_S <= 4'd5;  
            motor_sw <= 1'b1;
            motor_dir<= 1'b0;
            if(cnt_10ns==speed) back_pulse_cnt<=back_pulse_cnt + 1'b1;
            else back_pulse_cnt<=back_pulse_cnt;
            forth_pulse_cnt<=0;
            wait_delay_cnt<=0 ;
        end
        6:begin
            monitor_ok <= 1'b1;
            TS_S <= 4'd0;
        end
        endcase
    end
end

reg  pulse;
always @(posedge tpg_clk_i) begin
    if(!tpg_rstn_i) begin
        cnt_10ns<=0;
        pulse<=0;
    end
    else if(motor_sw) begin
        if(cnt_10ns<PULSE_WIDTH-1) begin //pulse=1000
            cnt_10ns<=cnt_10ns + 1'b1;
            pulse<=1;
        end
        else if(cnt_10ns>=PULSE_WIDTH-1 && cnt_10ns<speed) begin
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
assign freq_out = motor_freq_reg;



motor_ctrl motor_ctrl_inst(  //旋转电机驱动
    .clk         (tpg_clk_i        ),
    .sw          (sw         ),
    .rst         (tpg_rstn_i        ),
    .pulse_width (PULSE_WIDTH),
    .speed       (speed_set      ),
    .pulse_o     (pulse_p    )
);

ila_6 ila666(
.clk(tpg_clk_i),
.probe0(TS_S),
.probe1(X),
.probe2(ds),
.probe3(sw),
.probe4(speed_set)
);

endmodule
