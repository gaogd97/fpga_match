`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 15:42:26
// Design Name: 
// Module Name: Corrosion
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


module Corrosion(
    input wire clk,
    input wire rst_n,
     
    input wire Y_de,
    input wire Y_hsync,		
    input wire Y_vsync,
    input wire Y_data,
    
    output wire cor_de,
    output wire cor_hsync,
    output wire cor_vsync,
    output wire cor_data		
);

parameter DELAY=1651;		

//matrix_3x3 ----------------------------------------
		wire     matrix_11  ;
		wire     matrix_12  ;
		wire     matrix_13  ;
		wire     matrix_21  ;
		wire     matrix_22  ;
		wire     matrix_23  ;
		wire     matrix_31  ;
		wire     matrix_32  ;
		wire     matrix_33  ;


//阈值
reg out_reg;
		
//信号同步 ----------------------------------------------
reg     [ DELAY+2:0]              Y_de_r                  ;
reg     [ DELAY+2:0]              Y_hsync_r               ;
reg     [ DELAY+2:0]              Y_vsync_r               ;



matrix_3x3_1bit u_matrix_3x3_1bit   
(
    .clk            (clk        ),
    .rst_n          (rst_n      ),
    .din_vld        (Y_de       ),
    .din            (Y_data     ),
    .matrix_11      (matrix_11  ),
    .matrix_12      (matrix_12  ),
    .matrix_13      (matrix_13  ),
    .matrix_21      (matrix_21  ),
    .matrix_22      (matrix_22  ),
    .matrix_23      (matrix_23  ),
    .matrix_31      (matrix_31  ),
    .matrix_32      (matrix_32  ),
    .matrix_33      (matrix_33  )
);
	
	always @ (posedge clk)
begin
	// Reset whenever the reset signal goes low, regardless of the clock
	if (!rst_n)
		begin
		  out_reg <= 1'b0;
		end
	// If not resetting, update the register output on the clock's rising edge
	else
		begin
            out_reg <= matrix_11|| matrix_12|| matrix_13|| matrix_21|| matrix_22|| matrix_23|| matrix_31|| matrix_32|| matrix_33;
		end
end

assign cor_data = (out_reg==1'b1)? 1'b1:1'b0;
wire [8:0] out_ila;
assign out_ila = {matrix_11,matrix_12,matrix_13,matrix_21,matrix_22,matrix_23,matrix_31,matrix_32,matrix_33};

//==    信号同步
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Y_de_r    <= 1654'b0;
        Y_hsync_r <= 1654'b0;
        Y_vsync_r <= 1654'b0;
    end
    else begin  
        Y_de_r    <= {Y_de_r[1652:0],    Y_de};
        Y_hsync_r <= {Y_hsync_r[1652:0], Y_hsync};
        Y_vsync_r <= {Y_vsync_r[1652:0], Y_vsync};
    end
end

assign cor_de    = Y_de_r[1652];
assign cor_hsync = Y_hsync_r[1652];
assign cor_vsync = Y_vsync_r[1652];

//ila_0 ila000(
//.clk(clk),
//.probe0(Y_data),
//.probe1(Y_de),
//.probe2(out_ila),
//.probe3(cor_data)
//);

endmodule


