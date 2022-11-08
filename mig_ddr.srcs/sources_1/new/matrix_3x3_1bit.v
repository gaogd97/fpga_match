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

//fifO_showaheadģʽ
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
		
//�����ݽ������еĻ���
//��	
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_col <= 12'd0;
    else if(add_cnt_col) begin     //��ʹ��ʱ�м���������
        if(end_cnt_col)            //�м����������Ҽ���ʱ����
            cnt_col <= 12'd0;
        else
            cnt_col <= cnt_col + 12'd1;
    end
end
		
assign add_cnt_col = din_vld;
assign end_cnt_col = add_cnt_col && cnt_col== COL-11'd1;

//��
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

//fifo��д����һ��fifo�ӵ�һ�ж�������д���һ�У��ڶ����ӵڶ��ж�����д�����У�����ԭ�������һ�У��γ�����
assign wr_en_1 = (cnt_row < ROW - 11'd1) ? din_vld : 1'd0; //��д���1��
assign rd_en_1 = (cnt_row > 11'd0      ) ? din_vld : 1'd0; //�ӵ�1�п�ʼ��
assign wr_en_2 = (cnt_row < ROW - 11'd2) ? din_vld : 1'd0; //��д���2��
assign rd_en_2 = (cnt_row > 11'd1      ) ? din_vld : 1'd0; //�ӵ�2�п�ʼ��

//��������ѡȡ
assign row_1 = q_2;
assign row_2 = q_1;
assign row_3 = din;          //ԭ������û����ʱ��������ġ���������

//�����γɾ������ݣ���ʱ1��clk
								//����ʹ�ñ߽縴�Ʒ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
        {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
        {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
    end
	//��һ��
	 else if(cnt_row == 11'd0) begin
        if(cnt_col == 11'd0) begin          //��1�����������ʱ�򣬾���ȫ��Ϊdin����
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //ʣ�����
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
    end
    //------------------------------------------------------------------------- ��2�ž���
    else if(cnt_row == 11'd1) begin
        if(cnt_col == 11'd0) begin          //��1�����󣬵ڶ��������룬���������
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //ʣ�����
            {matrix_11, matrix_12, matrix_13} <= {matrix_12, matrix_13, row_2};
            {matrix_21, matrix_22, matrix_23} <= {matrix_22, matrix_23, row_2};
            {matrix_31, matrix_32, matrix_33} <= {matrix_32, matrix_33, row_3};
        end
    end
    //------------------------------------------------------------------------- ʣ�����
    else begin
        if(cnt_col == 11'd0) begin          //��1�����󣬵����������룬�������
            {matrix_11, matrix_12, matrix_13} <= {1'd0, 1'd0, 1'd0};
            {matrix_21, matrix_22, matrix_23} <= {1'd0, 1'd0, 1'd0};
            {matrix_31, matrix_32, matrix_33} <= {1'd0, 1'd0, 1'd0};
        end
        else begin                          //ʣ�����
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

