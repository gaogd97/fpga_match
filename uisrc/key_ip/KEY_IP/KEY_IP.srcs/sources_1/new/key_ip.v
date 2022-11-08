`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MSXBO 
// Engineer: tjy
// 
// Create Date: 2019/05/01 13:13:51
// Design Name: key captrue
// Module Name: key
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

module key_ip
(
input clk_i,
input key1_i,
input key2_i,
output key1_cap,
output key2_cap
);
//10ms
parameter CLK_FREQ = 100000000;
parameter CNT_10MS = (CLK_FREQ/100 - 1'b1);
parameter KEY1_S0 = 2'd0;
parameter KEY1_S1 = 2'd1;
parameter KEY1_S2 = 2'd2;
parameter KEY1_S3 = 2'd3;
parameter KEY2_S0 = 2'd0;
parameter KEY2_S1 = 2'd1;
parameter KEY2_S2 = 2'd2;
parameter KEY2_S3 = 2'd3;

reg [24:0] cnt10ms = 25'd0;
(*mark_debug = "true"*) reg [1:0] key1_s = 2'b0;
(*mark_debug = "true"*) reg [1:0] key1_s_r = 2'b0;
(*mark_debug = "true"*) reg [1:0] key2_s = 2'b0;
(*mark_debug = "true"*) reg [1:0] key2_s_r = 2'b0;
(*mark_debug = "true"*) wire en_10ms ;
 
assign en_10ms = (cnt10ms == CNT_10MS);
assign key1_cap = (key1_s==KEY1_S2)&&(key1_s_r==KEY1_S1);
assign key2_cap = (key2_s==KEY2_S2)&&(key2_s_r==KEY2_S1);

always @(posedge clk_i)begin
    if(cnt10ms < CNT_10MS) 
        cnt10ms <= cnt10ms + 1'b1;
    else 
        cnt10ms <= 25'd0;
end

always @(posedge clk_i)begin
    key1_s_r <= key1_s;
end

always @(posedge clk_i)begin
    key2_s_r <= key2_s;
end

always @(posedge clk_i)begin
    if(en_10ms)begin
        case(key1_s)
        KEY1_S0:begin
           if(!key1_i)
               key1_s <= KEY1_S1; 
        end  
        KEY1_S1:begin
           if(!key1_i)
               key1_s <= KEY1_S2; 
            else 
               key1_s <= KEY1_S0; 
        end 
        KEY1_S2:begin
           if(key1_i)
               key1_s <= KEY1_S3; 
        end  
        KEY1_S3:begin
           if(key1_i)
              key1_s <= KEY1_S0;
            else   
              key1_s <= KEY1_S2; 
        end
        endcase                  
    end
end

always @(posedge clk_i)begin
    if(en_10ms)begin
        case(key2_s)
        KEY2_S0:begin
           if(!key2_i)
               key2_s <= KEY2_S1; 
        end  
        KEY2_S1:begin
           if(!key2_i)
               key2_s <= KEY2_S2; 
            else 
               key2_s <= KEY2_S0; 
        end 
        KEY2_S2:begin
           if(key2_i)
               key2_s <= KEY2_S3; 
        end  
        KEY2_S3:begin
           if(key2_i)
              key2_s <= KEY2_S0;
            else   
              key2_s <= KEY2_S2; 
        end
        endcase                  
    end
end


endmodule