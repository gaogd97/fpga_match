`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/03 16:56:13
// Design Name: 
// Module Name: image_calculation
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


module image_calculation(
    input           tpg_rstn_i,
    input			tpg_clk_i,
    input			tpg_vs_i,
    input           tpg_hs_i,
    input           tpg_de_i,	
    input [23:0] data_in,
    
    output [13:0] X,
    output [13:0] Y,
    output [13:0] R,
    output [13:0] L,
    output [14:0] H,
    output [15:0] H_c,
    output [14:0] A,
    
    output reg [19:0] X_NUM_TEST,
    
    output reg process_sig
    );
    //------------------------------------------------------------------
//------------------------    位置计算    ---------------------------------------
wire [15:0] F_PIXELS;
wire [31:0] L_REG;
wire [15:0] H_SITE;
wire [15:0] A_SITE;
vio_3 VIO3(          
.clk(tpg_clk_i),    
.probe_out0(F_PIXELS)  ,
.probe_out1(H_SITE),
.probe_out2(A_SITE)
);  
//对数据进行行列的划分
//parameter F_PIXELS = 1394;
parameter BALL_D = 360;
assign L_REG = F_PIXELS*BALL_D;
//parameter H_SITE=360;
//parameter A_SITE=640;
parameter COL=1280;
parameter ROW=720;
reg     [11:0]              cnt_col                 ;
wire                        add_cnt_col             ;
wire                        end_cnt_col             ;
reg     [11:0]              cnt_row                 ;
wire                        add_cnt_row             ;
wire                        end_cnt_row             ;

wire dsp_vs;
wire dsp_hs;
wire dsp_de;
wire dsp_data;
assign dsp_vs = tpg_vs_i;
assign dsp_hs = tpg_hs_i;
assign dsp_de = tpg_de_i;
assign dsp_data = data_in;

reg start = 0;

//列	
always @(posedge tpg_clk_i) begin
    if(!tpg_rstn_i)
        cnt_col <= 12'd0;
    else if(add_cnt_col) begin     //当使能时列计数器计数
        if(end_cnt_col)            //列计数器计数且记满时归零
            cnt_col <= 12'd0;
        else
            cnt_col <= cnt_col + 12'd1;
    end
end
		
assign add_cnt_col = dsp_de;
assign end_cnt_col = add_cnt_col && cnt_col== COL-11'd1;

//行
always @(posedge tpg_clk_i) begin
    if(!tpg_rstn_i)
        cnt_row <= 12'd0;
    else if(add_cnt_row) begin
        if(end_cnt_row) begin
            cnt_row <= 12'd0;
            start <= 1'b1;
        end
        else begin
            start <= 1'b0;
            cnt_row <= cnt_row + 12'd1;
        end
    end
    else start <= 1'b0;
end

assign add_cnt_row = end_cnt_col;
assign end_cnt_row = add_cnt_row && cnt_row== ROW-11'd1;

reg [13:0] row_min;
reg [13:0] row_max;
reg [13:0] col_min;
reg [13:0] col_max;
reg [13:0] ball_x;
reg [13:0] ball_y;
reg [13:0] ball_r;
reg [13:0] ball_d;
reg [13:0] ball_l;
reg [13:0] ball_h;
reg [13:0] ball_a;
reg sig_a;
reg sig_h;
reg [13:0] ball_a1;
reg [15:0] ball_h1;
reg [14:0] ball_a2;
reg [14:0] ball_h2;
reg [13:0] ball_r1;
reg [13:0] ball_r2;
reg [13:0] ball_r3;
reg [13:0] ball_r4;
reg [29:0] x_reg;
reg [29:0] y_reg;
reg [19:0] x_num;
reg [19:0] y_num;
always@ (posedge tpg_clk_i) begin
    if(dsp_vs) begin
        x_reg <= 30'b0;
        y_reg <= 30'b0;
        x_num <= 20'b0;
        y_num <= 20'b0;
        row_min <= 14'd720;
        row_max <= 14'h0;
        col_min <= 14'd1280;
        col_max <= 14'h0;
    end
    else if(dsp_de) begin
        if(dsp_data == 1'b1) begin
            x_reg <= x_reg + cnt_col;
            y_reg <= y_reg + cnt_row;
            x_num <= x_num + 1'b1;
            if(cnt_col < col_min) col_min <= cnt_col;
            else col_min <= col_min;
            if(cnt_col > col_max) col_max <= cnt_col;
            else col_max <= col_max;
            if(cnt_row < row_min) row_min <= cnt_row;
            else row_min <= row_min;
            if(cnt_row > row_max) row_max <= cnt_row;
            else row_max <= row_max;
        end
        else begin
            x_reg <= x_reg;
            y_reg <= y_reg;
            x_num <= x_num;
        end
    end
    else begin
        x_reg <= x_reg;
        y_reg <= y_reg;
        x_num <= x_num;
    end
end

reg  [3 :0] TS_S = 4'd0;
reg end_sig;

//state machine write one byte and then read one byte
always@(posedge tpg_clk_i) begin
    if(!tpg_rstn_i)begin
        TS_S    <= 4'd0;    
        process_sig <= 1'b0;
        X_NUM_TEST <= 0;
    end
    else begin
        case(TS_S)
        0:begin
            X_NUM_TEST <= x_num;
            process_sig <= 1'b0;
            end_sig <= 1'b0;
            if((start == 1'b1)&&(x_num!=0))
                TS_S <= 4'd1;
            else if((start == 1'b1)&&(x_num==0))
                TS_S <= 4'd14;
            else TS_S <= 4'd0;
        end
        1:begin//write data
            TS_S <= 4'd2;
            if((x_reg % x_num)>(x_reg / 2)) ball_x <= x_reg / x_num+1'b1;
            else ball_x <= x_reg / x_num;
            if((y_reg % x_num)>(y_reg / 2)) ball_y <= y_reg / x_num+1'b1;
            else ball_y <= y_reg / x_num;    
        end
        2:begin
            TS_S <= 4'd3;
            ball_r1 <= col_max - col_min;
            ball_r2 <= row_max - row_min;
        end
        3:begin
            TS_S <= 4'd4;
            ball_r3 <= ball_r2 + ball_r1;
        end
        4:begin
            TS_S <= 4'd5;
            if((ball_r3 % 4)>2) ball_r <= ball_r3 / 4+1'b1;
            else ball_r <= ball_r3 / 4;
            end_sig <= 1'b1;
        end
        5:begin
            TS_S <= 4'd6;
            ball_d <= ball_r * 2; 
            if(ball_d!=0) begin
                if(ball_y > H_SITE) begin 
                    ball_h <= ball_y - H_SITE;
                    sig_h <= 1;
                end
                else begin
                    ball_h <=H_SITE - ball_y;
                    sig_h <= 1'b0;
                end
                if(ball_x >= A_SITE) begin
                    ball_a <= ball_x - A_SITE;
                    sig_a <= 0;
                end
                else begin
                    ball_a <=A_SITE - ball_x;
                    sig_a <= 1'b1;
                end
            end
            else begin
                ball_h <= 0;
                ball_a <= 0;
                sig_h <= 0;
                sig_a <= 0;
            end
        end
        6:begin
            TS_S <= 4'd0;
            if(ball_d!=0) begin
                if((L_REG % ball_d)>(L_REG / 2))ball_l <= L_REG/ball_d +1'b1;
                else ball_l <= L_REG / ball_d;
                ball_h1 <= (ball_h * BALL_D) / ball_d;
            end
            else begin
                ball_l <= 0;
                ball_h1 <= 0;
            end
            ball_h2 <= {sig_h,ball_h};
            ball_a2 <= {sig_a,ball_a};
            process_sig <= 1'b1;
        end
        14:begin
            TS_S <= 4'd15;
            ball_x <= 0;
            ball_y <= 0;
            ball_r <= 0;
            ball_l <= 0;
            ball_a <= 0;
            ball_h <= 0;
            ball_h1 <= 0;
            sig_h <= 0;
            sig_a <= 0;
        end
        15:begin
            TS_S <= 4'd0;
            ball_h2 <= {sig_h,ball_h};
            ball_a2 <= {sig_a,ball_a};
            process_sig <= 1'b1;
        end
        endcase
    end
end

assign X = ball_x;
assign Y = ball_y;
assign R = ball_r;
assign L = ball_l;
assign H = ball_h2;
assign H_c = ball_h1;
assign A = ball_a2;

//ila_5 ila555(
//.clk(tpg_clk_i),
//.probe0(ball_x),
//.probe1(ball_y),
//.probe2(ball_r),
//.probe3(start),
//.probe4(x_reg),
//.probe5(x_num),
//.probe6(col_max),
//.probe7(col_min)
//);
endmodule
