`timescale 1ns / 1ps


module speed_compute(
    input               clk           ,
    input               rst_n         ,
    input               data_in_valid ,
    input      [15:0]   data_x        ,
    input      [15:0]   data_y        ,
    output              data_out_div_valid,
    output reg [31:0]   data          ,
    output reg [ 4:0]   power_data 
);

parameter   acc_gravity = 16'd9800 ;

wire [15:0] div_data;
c_addsub_0 c_addsub_0_inst (
  .A(data_x),  // input wire [15 : 0] A
  .B(data_y),  // input wire [15 : 0] B
  .S(div_data)  // output wire [15 : 0] S
);

wire [31:0] data_out_div;
div_gen_1 div_gen_1_inst (
  .aclk                     (clk           ),     // input wire aclk                                                        
  .s_axis_divisor_tvalid    (data_in_valid ),     // input wire s_axis_divisor_tvalid          
  .s_axis_divisor_tdata     (div_data      ),     // input wire [15 : 0] s_axis_divisor_tdata  
  .s_axis_dividend_tvalid   (data_in_valid ),     // input wire s_axis_dividend_tvalid         
  .s_axis_dividend_tdata    (acc_gravity   ),     // input wire [15 : 0] s_axis_dividend_tdata 
  .m_axis_dout_tvalid       (data_out_div_valid),     // output wire m_axis_dout_tvalid            
  .m_axis_dout_tdata        (data_out_div  )      // output wire [31 : 0] m_axis_dout_tdata    
);


reg edge1;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        edge1<=0;
    end
    else begin
        edge1<=data_out_div_valid;
    end
end

reg flag;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flag<=0;
    end
    else if(data_out_div_valid & ~edge1) begin
        flag<=1;
    end
    else begin
        flag<=flag;
    end
end


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data<=0;
        power_data<=0;
    end
    else if(flag) begin
        if(data_out_div[31]==1'b1) begin//1xxx xxxx xxxx xxxx 
            data<=data_out_div>>16;
            power_data<=8;
        end
        else if(data_out_div[31:30]==2'b01) begin//01xx xxxx xxxx xxxx
            data<=data_out_div>>14;
            power_data<=7;
        end
        else if(data_out_div[31:29]==3'b001) begin//001x xxxx xxxx xxxx
            data<=data_out_div>>14;
            power_data<=7;
        end
        else if(data_out_div[31:28]==4'b0001) begin//0001 xxxx xxxx xxxx
            data<=data_out_div>>12;
            power_data<=6;
        end
        else if(data_out_div[31:27]==5'b0000_1) begin//0000 1xxx xxxx xxxx
            data<=data_out_div>>12;
            power_data<=6;
        end
        else if(data_out_div[31:26]==6'b0000_01) begin//0000 01xx xxxx xxxx    
            data<=data_out_div>>10;
            power_data<=5;
        end
        else if(data_out_div[31:25]==7'b0000_001) begin//0000 001x xxxx xxxx
            data<=data_out_div>>10;
            power_data<=5;
        end
        else if(data_out_div[31:24]==8'b0000_0001) begin//0000 0001 xxxx xxxx
            data<=data_out_div>>8;
            power_data<=4;
        end
        else if(data_out_div[31:23]==9'b0000_0000_1) begin//0000 0000 1xxx xxxx
            data<=data_out_div>>8;
            power_data<=4;
        end
        else if(data_out_div[31:22]==10'b0000_0000_01) begin//0000 0000 01xx xxxx
            data<=data_out_div>>6;
            power_data<=3;
        end
        else if(data_out_div[31:21]==11'b0000_0000_001) begin//0000 0000 001x xxxx
            data<=data_out_div>>6;
            power_data<=3;
        end
        else if(data_out_div[31:20]==12'b0000_0000_0001) begin//0000 0000 0001 xxxx
            data<=data_out_div>>4;
            power_data<=2;  
        end
        else if(data_out_div[31:19]==13'b0000_0000_0000_1) begin//0000 0000 0000 1xxx
            data<=data_out_div>>4; 
            power_data<=2;              
        end
        else if(data_out_div[31:18]==14'b0000_0000_0000_01) begin//0000 0000 0000 01xx
            data<=data_out_div>>2;   
            power_data<=1;        
        end
        else if(data_out_div[31:17]==15'b0000_0000_0000_001) begin//0000 0000 0000 001x
            data<=data_out_div>>2;
            power_data<=1;  
        end
        else begin
            data<=data_out_div;  
            power_data<=0;  
        end
    end
    else begin
        data<=0;
        power_data<=0;
    end
end





endmodule
