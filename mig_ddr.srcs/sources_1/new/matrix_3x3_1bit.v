`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 15:28:00
// Design Name: 
// Module Name: matrix_3x3_1bit
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


module matrix_3x3_1bit#(
    parameter COL=1280,
    parameter ROW=720
)
(input   wire                clk                     ,
input   wire                rst_n                   ,
//input ---------------------------------------------
input   wire                din_vld                 ,
input   wire          din                     ,
//output --------------------------------------------
output  reg           matrix_11               ,
output  reg           matrix_12               ,
output  reg           matrix_13               ,
output  reg           matrix_21               ,
output  reg           matrix_22               ,
output  reg           matrix_23               ,
output  reg           matrix_31               ,
output  reg           matrix_32               ,
output  reg           matrix_33           
	);	
/*************************************************/
wire                        wr_en_1                 ;
wire                        wr_en_2                 ;
wire                        rd_en_1                 ;
wire                        rd_en_2                 ;
wire                        q_1                     ;
wire                        q_2                     ;
reg     [11:0]              cnt_col                 ;
wire                        add_cnt_col             ;
wire                        end_cnt_col             ;
reg     [11:0]              cnt_row                 ;
wire                        add_cnt_row             ;
wire                        end_cnt_row             ;
wire row_1;
wire row_2;
wire row_3;

//fifO_showahead模式
FIFO_1bit u1(
	.clk	( clk),
	.din		( din),
	.rd_en	( rd_en_1),
	.wr_en	( wr_en_1),
	.full		( ),	
	.empty		( ),
	.dout			( q_1)
			);

FIFO_1bit u2(
	.clk	( clk),
	.din		( din),
	.rd_en	( rd_en_2),
	.wr_en	( wr_en_2),
	.full		( ),
	.empty		( ),	
	.dout			( q_2)
			);
		
//对数据进行行列的划分
//列	
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_col <= 12'd0;
    else if(add_cnt_col) begin     //当使能时列计数器计数
        if(end_cnt_col)            //列计数器计数且记满时归零
            cnt_col <= 12'd0;
        else
            cnt_col <= cnt_col + 12'd1;
    end
end
		
assign add_cnt_col = din_vld;
assign end_cnt_col = add_cnt_col && cnt_col== COL-11'd1;

//行
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_row <= 12'd0;
    else if(add_cnt_row) begin
        if(end_cnt_row)
            cnt_row <= 12'd0;
        else
            cnt_row <= cnt_row + 12'd1;
    end
end

assign add_cnt_row = end_cnt_col;
assign end_cnt_row = add_cnt_row && cnt_row== ROW-11'd1;

//fifo读写，第一个fifo从第一行读，但不写最后一行；第二个从第二行读，不写后两行，加上原输入的那一行，形成三行
assign wr_en_1 = (cnt_row < ROW - 11'd1) ? din_vld : 1'd0; //不写最后1行
assign rd_en_1 = (cnt_row > 11'd0      ) ? din_vld : 1'd0; //从第1行开始读
assign wr_en_2 = (cnt_row < ROW - 11'd2) ? din_vld : 1'd0; //不写最后2行
assign rd_en_2 = (cnt_row > 11'd1      ) ? din_vld : 1'd0; //从第2行开始读

//矩阵数据选取
assign row_1 = q_2;
assign row_2 = q_1;
assign row_3 = din;          //原输入是没有延时最先输出的、最大的数据

//打拍形成矩阵数据，延时1个clk
								//矩阵使用边界复制方法
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
        {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
        {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
    end
	//第一排
	 else if(cnt_row == 11'd0) begin
        if(cnt_col == 11'd0) begin          //第1个矩阵，清零的时候，矩阵全部为din数据
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //剩余矩阵
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
    end
    //------------------------------------------------------------------------- 第2排矩阵
    else if(cnt_row == 11'd1) begin
        if(cnt_col == 11'd0) begin          //第1个矩阵，第二行有输入，矩阵由填充
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //剩余矩阵
            {matrix_11, matrix_12, matrix_13} <= {matrix_12, matrix_13, row_2};
            {matrix_21, matrix_22, matrix_23} <= {matrix_22, matrix_23, row_2};
            {matrix_31, matrix_32, matrix_33} <= {matrix_32, matrix_33, row_3};
        end
    end
    //------------------------------------------------------------------------- 剩余矩阵
    else begin
        if(cnt_col == 11'd0) begin          //第1个矩阵，第三行有输入，矩阵完成
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //剩余矩阵
            {matrix_11, matrix_12, matrix_13} <= {matrix_12, matrix_13, row_1};
            {matrix_21, matrix_22, matrix_23} <= {matrix_22, matrix_23, row_2};
            {matrix_31, matrix_32, matrix_33} <= {matrix_32, matrix_33, row_3};
        end
    end
end

//ila_3 ila333(
//.clk(clk),
//.probe0(row_1),
//.probe1(row_2),
//.probe2(row_3),
//.probe3(din),
//.probe4(din_vld)
//);

endmodule

