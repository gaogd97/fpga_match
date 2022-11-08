`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/08 17:20:28
// Design Name: 
// Module Name: char_num_out
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


module char_num_out(
    input clk,
    input wire [3:0] num_index1,
    input wire [3:0] num_index2,
    input wire [3:0] num_index3,
    input wire [3:0] num_index4,
    input wire [3:0] num_index5,
    input wire [3:0] num_index6,
    input wire [3:0] num_index7,
    input wire [3:0] num_index8,
    input wire [3:0] num_index9,
    input wire [3:0] num_index10,
    input wire [3:0] num_index11,
    input wire [3:0] num_index12,
    input wire [3:0] num_index13,
    input wire [3:0] num_index14,
    input wire [3:0] num_index15,
    input wire [3:0] num_index16,
    input wire [3:0] num_index17,
    input wire [3:0] num_index18,
    input wire [3:0] num_index19,
    input wire [3:0] num_index20,
    input wire [3:0] num_index21,
    input wire [3:0] num_index22,
    input wire [3:0] num_index23,
    input wire [3:0] num_index24,
    input wire [3:0] num_index25,

    output [16*32-1:0] num1,
    output [16*32-1:0] num2,
    output [16*32-1:0] num3,
    output [16*32-1:0] num4,
    output [16*32-1:0] num5,
    output [16*32-1:0] num6,
    output [16*32-1:0] num7,
    output [16*32-1:0] num8,
    output [16*32-1:0] num9,
    output [16*32-1:0] num10,
    output [16*32-1:0] num11,
    output [16*32-1:0] num12,
    output [16*32-1:0] num13,
    output [16*32-1:0] num14,
    output [16*32-1:0] num15,
    output [16*32-1:0] num16,
    output [16*32-1:0] num17,
    output [16*32-1:0] num18,
    output [16*32-1:0] num19,
    output [16*32-1:0] num20,
    output [16*32-1:0] num21,
    output [16*32-1:0] num22,
    output [16*32-1:0] num23,
    output [16*32-1:0] num24,
    output [16*32-1:0] num25
    );
parameter NUM_num=25;

parameter [16*32-1:0] char_16_32_00={  //0
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h1f, 8'he0, 
    8'h3f, 8'hf0, 
    8'h3c, 8'hf0, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h78, 8'h78, 
    8'h3c, 8'hf0, 
    8'h3f, 8'hf0, 
    8'h1f, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_01={  //1
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h0f, 8'h80, 
    8'h1f, 8'h80, 
    8'h3f, 8'h80, 
    8'h3f, 8'h80, 
    8'h37, 8'h80, 
    8'h27, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h3f, 8'he0, 
    8'h3f, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_02={  //2
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h07, 8'hc0, 
    8'h1f, 8'hf0, 
    8'h3f, 8'hf8, 
    8'h3c, 8'h7c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h7c, 
    8'h00, 8'h78, 
    8'h00, 8'hf0, 
    8'h01, 8'hf0, 
    8'h03, 8'he0, 
    8'h07, 8'hc0, 
    8'h0f, 8'h80, 
    8'h1f, 8'h00, 
    8'h3e, 8'h00, 
    8'h7c, 8'h00, 
    8'h7c, 8'h00, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_03={  //3
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h07, 8'hc0, 
    8'h1f, 8'hf0, 
    8'h3f, 8'hf8, 
    8'h3c, 8'h7c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h78, 
    8'h00, 8'hf8, 
    8'h03, 8'hf0, 
    8'h03, 8'he0, 
    8'h03, 8'hf0, 
    8'h00, 8'hf8, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h3c, 8'h78, 
    8'h3f, 8'hf8, 
    8'h1f, 8'hf0, 
    8'h07, 8'hc0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_04={  //4
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h01, 8'hf0, 
    8'h01, 8'hf0, 
    8'h03, 8'hf0, 
    8'h03, 8'hf0, 
    8'h07, 8'hf0, 
    8'h07, 8'hf0, 
    8'h0f, 8'hf0, 
    8'h0e, 8'hf0, 
    8'h1e, 8'hf0, 
    8'h1e, 8'hf0, 
    8'h3c, 8'hf0, 
    8'h3c, 8'hf0, 
    8'h78, 8'hf0, 
    8'h78, 8'hf0, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_05={  //5
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h78, 8'h00, 
    8'h78, 8'h00, 
    8'h78, 8'h00, 
    8'h78, 8'h00, 
    8'h78, 8'h00, 
    8'h78, 8'h00, 
    8'h7b, 8'he0, 
    8'h7f, 8'hf0, 
    8'h7e, 8'hf8, 
    8'h78, 8'h78, 
    8'h78, 8'h7c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h7c, 
    8'h78, 8'h78, 
    8'h7c, 8'hf8, 
    8'h3f, 8'hf0, 
    8'h1f, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_06={  //6
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h0f, 8'hf0, 
    8'h1f, 8'hf8, 
    8'h3e, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h00, 
    8'h79, 8'hf0, 
    8'h7b, 8'hf8, 
    8'h7e, 8'h3c, 
    8'h7c, 8'h3c, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h3c, 8'h3c, 
    8'h3e, 8'h3c, 
    8'h1f, 8'hf8, 
    8'h0f, 8'hf0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_07={  //7
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h7f, 8'hfc, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h78, 
    8'h00, 8'h78, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h03, 8'hc0, 
    8'h03, 8'hc0, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h07, 8'h80, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_08={  //8
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h03, 8'hc0, 
    8'h0f, 8'hf0, 
    8'h1e, 8'h78, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h1e, 8'h78, 
    8'h0f, 8'hf0, 
    8'h0f, 8'hf0, 
    8'h1e, 8'h78, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h78, 8'h1e, 
    8'h3c, 8'h3c, 
    8'h3c, 8'h3c, 
    8'h1f, 8'hf8, 
    8'h07, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_09={  //9
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h0f, 8'he0, 
    8'h1f, 8'hf0, 
    8'h3e, 8'hf8, 
    8'h3c, 8'h78, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h3c, 8'h7c, 
    8'h3e, 8'hfc, 
    8'h1f, 8'hbc, 
    8'h0f, 8'h3c, 
    8'h00, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h78, 
    8'h3c, 8'h78, 
    8'h3e, 8'hf0, 
    8'h1f, 8'hf0, 
    8'h0f, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_error={  //?
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h07, 8'hc0, 
    8'h1f, 8'hf0, 
    8'h3f, 8'hf8, 
    8'h3c, 8'h7c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h78, 8'h3c, 
    8'h00, 8'h3c, 
    8'h00, 8'h7c, 
    8'h00, 8'h78, 
    8'h00, 8'h78, 
    8'h00, 8'hf0, 
    8'h00, 8'hf0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h01, 8'he0, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_11={  //+
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'hff, 8'hfc, 
    8'hff, 8'hfc, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h03, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};
parameter [16*32-1:0] char_16_32_12={  //-
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h3f, 8'hfc, 
    8'h3f, 8'hfc, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00, 
    8'h00, 8'h00
};


wire [3:0] num_index_wire [NUM_num-1:0];
reg [16*32-1:0] num_reg[NUM_num-1:0];
assign num_index_wire[0] = 	num_index1;
assign num_index_wire[1] =	num_index2;
assign num_index_wire[2] =	num_index3;
assign num_index_wire[3] =	num_index4;
assign num_index_wire[4] =	num_index5;
assign num_index_wire[5] =	num_index6;
assign num_index_wire[6] =	num_index7;
assign num_index_wire[7] =	num_index8;
assign num_index_wire[8] =	num_index9;
assign num_index_wire[9] =	num_index10;
assign num_index_wire[10] =	num_index11;
assign num_index_wire[11] =	num_index12;
assign num_index_wire[12] =	num_index13;
assign num_index_wire[13] =	num_index14;
assign num_index_wire[14] =	num_index15;
assign num_index_wire[15] =	num_index16;
assign num_index_wire[16] =	num_index17;
assign num_index_wire[17] =	num_index18;
assign num_index_wire[18] =	num_index19;
assign num_index_wire[19] =	num_index20;
assign num_index_wire[20] =	num_index21;
assign num_index_wire[21] =	num_index22;
assign num_index_wire[22] =	num_index23;
assign num_index_wire[23] =	num_index24;
assign num_index_wire[24] =	num_index25;


integer i;
always@ (posedge clk) begin
    for(i=0;i<NUM_num;i=i+1)     begin:GROUP1   
        case(num_index_wire[i]) 
            4'd0:num_reg[i]<=char_16_32_00;
            4'd1:num_reg[i]<=char_16_32_01;
            4'd2:num_reg[i]<=char_16_32_02;
            4'd3:num_reg[i]<=char_16_32_03;
            4'd4:num_reg[i]<=char_16_32_04;
            4'd5:num_reg[i]<=char_16_32_05;
            4'd6:num_reg[i]<=char_16_32_06;
            4'd7:num_reg[i]<=char_16_32_07;
            4'd8:num_reg[i]<=char_16_32_08;
            4'd9:num_reg[i]<=char_16_32_09;
            4'd11:num_reg[i]<=char_16_32_11;
            4'd12:num_reg[i]<=char_16_32_12;
            default:num_reg[i]<=char_16_32_error;
        endcase 
    end
end

assign num1 =   num_reg[0];
assign num2 =	num_reg[1];
assign num3 =	num_reg[2];
assign num4 =	num_reg[3];
assign num5 =	num_reg[4];
assign num6 =	num_reg[5];
assign num7 =	num_reg[6];
assign num8 =	num_reg[7];
assign num9 =	num_reg[8];
assign num10 =	num_reg[9];
assign num11 =	num_reg[10];
assign num12 =	num_reg[11];
assign num13 =	num_reg[12];
assign num14 =	num_reg[13];
assign num15 =	num_reg[14];
assign num16 =	num_reg[15];
assign num17 =	num_reg[16];
assign num18 =	num_reg[17];
assign num19 =	num_reg[18];
assign num20 =	num_reg[19];
assign num21 =	num_reg[20];
assign num22 =	num_reg[21];
assign num23 =	num_reg[22];
assign num24 =	num_reg[23];
assign num25 =	num_reg[24];


    
endmodule
