`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: 米联客(msxbo)
Technical forum:uisrc.com
taobao: osrc.taobao.com
Create Date: 2020/10/13
Module Name: uitpg
Description: Uitpg is an easy-to-use video test pattern parameter IP
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description:?
1) _i input
2) _o output
3) _n activ low
4) _dg debug signal 
5) _r delay or register
6) _s state mechine
*/
////////////////////////////////////////////////////////////////////////////////

module protpg
(
input           tpg_rstn_i,
input			tpg_clk_i,
input			tpg_vs_i,
input           tpg_hs_i,
input           tpg_de_i,	
input [23:0]    data_in,

output	   reg	    tpg_vs_o,
output     reg     tpg_hs_o,
output     reg     tpg_de_o,	
output reg  [23:0] tpg_data_o,

output	   	    tpg_vs_c,
output          tpg_hs_c,
output          tpg_de_c,	
output   [23:0] tpg_data_c,


input key
);
//****************************************************************************************************
wire [8:0] 			  hsv_h;//  0 - 360
wire [7:0] 			  hsv_s;// 0- 255
wire [7:0] 			  hsv_v; // 0- 255
wire tpg_vs_hsv;
wire tpg_hs_hsv;
wire tpg_de_hsv;
reg [23:0] data_in_dly1;
reg [23:0] data_in_dly2;
reg [23:0] data_in_dly3;
wire [23:0] data_in_dly;
rgb2hsv hsv(
    .clk(tpg_clk_i),
    .rst(tpg_rstn_i),	
    .rgb_r({data_in[23:19],data_in[21:19]}),
    .rgb_g({data_in[15:10],data_in[11:10]}),
    .rgb_b({data_in[7:3],data_in[5:3]}),	
    .hsv_h(hsv_h),//  0 - 360
    .hsv_s(hsv_s),// 0- 255
    .hsv_v(hsv_v) // 0- 255
);
reg					i_h_sync_delay_1;
reg					i_v_sync_delay_1;
reg					i_data_en_delay_1;
reg					i_h_sync_delay_2;
reg					i_v_sync_delay_2;
reg					i_data_en_delay_2;
reg					i_h_sync_delay_3;
reg					i_v_sync_delay_3;
reg					i_data_en_delay_3;
reg					i_h_sync_delay_4;
reg					i_v_sync_delay_4;
reg					i_data_en_delay_4;

always @(posedge tpg_clk_i)begin
	i_h_sync_delay_1 <= tpg_hs_i;
	i_v_sync_delay_1 <= tpg_vs_i;
	i_data_en_delay_1 <= tpg_de_i;
	
	i_h_sync_delay_2 <= i_h_sync_delay_1;
	i_v_sync_delay_2 <= i_v_sync_delay_1;
	i_data_en_delay_2 <= i_data_en_delay_1;
	
	i_h_sync_delay_3 <= i_h_sync_delay_2;
	i_v_sync_delay_3 <= i_v_sync_delay_2;
	i_data_en_delay_3 <= i_data_en_delay_2;
	
	i_h_sync_delay_4 <= i_h_sync_delay_3;
	i_v_sync_delay_4 <= i_v_sync_delay_3;
	i_data_en_delay_4 <= i_data_en_delay_3;
	
    data_in_dly1 <= data_in;
    data_in_dly2 <= data_in_dly1;
    data_in_dly3 <= data_in_dly2;
end

reg[8:0] fcnt = 9'd0;
reg tpg_vs_r = 1'b0;
reg tpg_hs_r = 1'b0;
reg tpg_de_r = 1'b0;
reg tpg_vs_r1 = 1'b0;
reg tpg_hs_r1 = 1'b0;
reg tpg_de_r1 = 1'b0;
reg tpg_vs_r2 = 1'b0;
reg tpg_hs_r2 = 1'b0;

always @(posedge tpg_clk_i)begin
    tpg_vs_r <= i_v_sync_delay_3;
    tpg_vs_r1 <= tpg_vs_r;
    tpg_vs_r2 <= tpg_vs_r1;
    tpg_hs_r <= i_h_sync_delay_3;
    tpg_hs_r1 <= tpg_hs_r;
    tpg_hs_r2 <= tpg_hs_r1;
    tpg_de_r <= i_data_en_delay_3;
    tpg_de_r1 <= tpg_de_r;
end

reg [15:0] rgb_hsv;  
reg [15:0] rgb_bin;  

wire [8:0] hmin1,hmin2,hmax1,hmax2,smin,vmin,smax,vmax;
vio_0 vio(
.clk(tpg_clk_i),
.probe_out0(hmin1),
.probe_out1(hmax1),
.probe_out2(hmin2),
.probe_out3(hmax2),
.probe_out4(smin),
.probe_out5(vmin),
.probe_out6(smax),
.probe_out7(vmax)
);
  
always @(posedge tpg_clk_i) begin
    if(!tpg_rstn_i) begin
        rgb_hsv <= 0;
    end
    else if((((hsv_h>=hmin1)&&(hsv_h<=hmax1))||((hsv_h>=hmin2)&&(hsv_h<=hmax2)))&&(((hsv_s>=smin)&&(hsv_s<=smax))||(hsv_s == 0))&&((hsv_v>=vmin)&&(hsv_v<=vmax))) begin
        rgb_hsv <= 16'hffff;
    end
    else  rgb_hsv <= {data_in_dly3[23:19],data_in_dly3[15:10],data_in_dly3[7:3]};
end

always @(posedge tpg_clk_i) begin
    if(!tpg_rstn_i) begin
        rgb_bin <= 0;
    end
    else if((((hsv_h>=hmin1)&&(hsv_h<=hmax1))||((hsv_h>=hmin2)&&(hsv_h<=hmax2)))&&(((hsv_s>=smin)&&(hsv_s<=smax))||(hsv_s == 0))&&((hsv_v>=vmin)&&(hsv_v<=vmax))) begin
        rgb_bin <= 16'hffff;
    end
    else  rgb_bin <= 16'h0000;
end

wire Y_data;
wire [8:0] cor_de;
wire [8:0] cor_hsync;
wire [8:0] cor_vsync;
wire [8:0] cor_data;
wire [8:0] exp_de;
wire [8:0] exp_hsync;
wire [8:0] exp_vsync;
wire [8:0] exp_data;
wire [15:0] out_data1;
wire [15:0] out_data2;
wire [15:0] out_data3;
assign Y_data = &rgb_bin;
assign out_data1 = (cor_data[6] == 1'b1)? 16'hffff:16'h0000;
//assign out_data2 = (exp_data[5] == 1'b1)? 16'hffff:16'h0000;
//assign out_data3 = (cor_data[5] == 1'b1)? 16'hffff:16'h0000;
//-------------------------  5级 形态学滤波 ------------------------
Corrosion cor0(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(i_data_en_delay_4),
    .Y_hsync(i_h_sync_delay_4),		
    .Y_vsync(i_v_sync_delay_4),
    .Y_data(Y_data),
    
    .cor_de(cor_de[0]),
    .cor_hsync(cor_hsync[0]),
    .cor_vsync(cor_vsync[0]),
    .cor_data(cor_data[0])		
);
Corrosion cor1(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[0]),
    .Y_hsync(cor_hsync[0]),		
    .Y_vsync(cor_vsync[0]),
    .Y_data(cor_data[0]),
    
    .cor_de(cor_de[1]),
    .cor_hsync(cor_hsync[1]),
    .cor_vsync(cor_vsync[1]),
    .cor_data(cor_data[1])		
);
Corrosion cor2(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[1]),
    .Y_hsync(cor_hsync[1]),		
    .Y_vsync(cor_vsync[1]),
    .Y_data(cor_data[1]),
    
    .cor_de(cor_de[2]),
    .cor_hsync(cor_hsync[2]),
    .cor_vsync(cor_vsync[2]),
    .cor_data(cor_data[2])		
);
Corrosion cor3(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[2]),
    .Y_hsync(cor_hsync[2]),		
    .Y_vsync(cor_vsync[2]),
    .Y_data(cor_data[2]),
    
    .cor_de(cor_de[3]),
    .cor_hsync(cor_hsync[3]),
    .cor_vsync(cor_vsync[3]),
    .cor_data(cor_data[3])		
);
Corrosion cor4(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[3]),
    .Y_hsync(cor_hsync[3]),		
    .Y_vsync(cor_vsync[3]),
    .Y_data(cor_data[3]),
    
    .cor_de(cor_de[4]),
    .cor_hsync(cor_hsync[4]),
    .cor_vsync(cor_vsync[4]),
    .cor_data(cor_data[4])		
);
Corrosion cor5(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[4]),
    .Y_hsync(cor_hsync[4]),		
    .Y_vsync(cor_vsync[4]),
    .Y_data(cor_data[4]),
    
    .cor_de(cor_de[5]),
    .cor_hsync(cor_hsync[5]),
    .cor_vsync(cor_vsync[5]),
    .cor_data(cor_data[5])		
);
Expansion exp0(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[5]),
    .Y_hsync(cor_hsync[5]),		
    .Y_vsync(cor_vsync[5]),
    .Y_data(cor_data[5]),
    
    .cor_de(exp_de[0]),
    .cor_hsync(exp_hsync[0]),
    .cor_vsync(exp_vsync[0]),
    .cor_data(exp_data[0])		
);
Expansion exp1(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[0]),
    .Y_hsync(exp_hsync[0]),		
    .Y_vsync(exp_vsync[0]),
    .Y_data(exp_data[0]),
    
    .cor_de(exp_de[1]),
    .cor_hsync(exp_hsync[1]),
    .cor_vsync(exp_vsync[1]),
    .cor_data(exp_data[1])		
);
Expansion exp2(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[1]),
    .Y_hsync(exp_hsync[1]),		
    .Y_vsync(exp_vsync[1]),
    .Y_data(exp_data[1]),
    
    .cor_de(exp_de[2]),
    .cor_hsync(exp_hsync[2]),
    .cor_vsync(exp_vsync[2]),
    .cor_data(exp_data[2])		
);
Expansion exp3(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[2]),
    .Y_hsync(exp_hsync[2]),		
    .Y_vsync(exp_vsync[2]),
    .Y_data(exp_data[2]),
    
    .cor_de(exp_de[3]),
    .cor_hsync(exp_hsync[3]),
    .cor_vsync(exp_vsync[3]),
    .cor_data(exp_data[3])		
);
Expansion exp4(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[3]),
    .Y_hsync(exp_hsync[3]),		
    .Y_vsync(exp_vsync[3]),
    .Y_data(exp_data[3]),
    
    .cor_de(exp_de[4]),
    .cor_hsync(exp_hsync[4]),
    .cor_vsync(exp_vsync[4]),
    .cor_data(exp_data[4])		
);
Expansion exp5(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[4]),
    .Y_hsync(exp_hsync[4]),		
    .Y_vsync(exp_vsync[4]),
    .Y_data(exp_data[4]),
    
    .cor_de(exp_de[5]),
    .cor_hsync(exp_hsync[5]),
    .cor_vsync(exp_vsync[5]),
    .cor_data(exp_data[5])		
);
Expansion exp6(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[5]),
    .Y_hsync(exp_hsync[5]),		
    .Y_vsync(exp_vsync[5]),
    .Y_data(exp_data[5]),
    
    .cor_de(exp_de[6]),
    .cor_hsync(exp_hsync[6]),
    .cor_vsync(exp_vsync[6]),
    .cor_data(exp_data[6])		
);
Expansion exp7(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[6]),
    .Y_hsync(exp_hsync[6]),		
    .Y_vsync(exp_vsync[6]),
    .Y_data(exp_data[6]),
    
    .cor_de(exp_de[7]),
    .cor_hsync(exp_hsync[7]),
    .cor_vsync(exp_vsync[7]),
    .cor_data(exp_data[7])		
);
Expansion exp8(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[7]),
    .Y_hsync(exp_hsync[7]),		
    .Y_vsync(exp_vsync[7]),
    .Y_data(exp_data[7]),
    
    .cor_de(exp_de[8]),
    .cor_hsync(exp_hsync[8]),
    .cor_vsync(exp_vsync[8]),
    .cor_data(exp_data[8])		
);
Corrosion cor6(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(exp_de[8]),
    .Y_hsync(exp_hsync[8]),		
    .Y_vsync(exp_vsync[8]),
    .Y_data(exp_data[8]),
    
    .cor_de(cor_de[6]),
    .cor_hsync(cor_hsync[6]),
    .cor_vsync(cor_vsync[6]),
    .cor_data(cor_data[6])		
);
Corrosion cor7(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[6]),
    .Y_hsync(cor_hsync[6]),		
    .Y_vsync(cor_vsync[6]),
    .Y_data(cor_data[6]),
    
    .cor_de(cor_de[7]),
    .cor_hsync(cor_hsync[7]),
    .cor_vsync(cor_vsync[7]),
    .cor_data(cor_data[7])		
);
Corrosion cor8(
    .clk(tpg_clk_i),
    .rst_n(tpg_rstn_i),
     
    .Y_de(cor_de[7]),
    .Y_hsync(cor_hsync[7]),		
    .Y_vsync(cor_vsync[7]),
    .Y_data(cor_data[7]),
    
    .cor_de(cor_de[8]),
    .cor_hsync(cor_hsync[8]),
    .cor_vsync(cor_vsync[8]),
    .cor_data(cor_data[8])		
);

assign tpg_vs_c = cor_vsync[8];
assign tpg_hs_c = cor_vsync[8];
assign tpg_de_c = cor_de[8];
assign tpg_data_c = cor_data[8];

//ila_4 ila443(
//.clk(tpg_clk_i),
//.probe0(Y_data),
//.probe1(i_data_en_delay_4),
//.probe2(cor_data[0]),
//.probe3(cor_de[0]),
//.probe4(cor_data[1]),
//.probe5(cor_de[1])
//);

//------------------------      图像处理模块HDMI显示  ---------------------------------------------
//assign tpg_data_o = {rgb_out[15:11],3'd0,rgb_out[10:5],2'd0,rgb_out[4:0],3'd0};
//assign tpg_vs_o = i_v_sync_delay_4;
//assign tpg_hs_o = i_h_sync_delay_4;
//assign tpg_de_o = i_data_en_delay_4;  

reg [3:0] key_reg=0;
always@ (posedge tpg_clk_i) begin
    if(key == 1'b1) begin
        if(key_reg == 2) key_reg <= 0;
        else key_reg <= key_reg + 1'b1;
    end
end

always@ (posedge tpg_clk_i) begin
    case(key_reg) 
        4'd0:begin
            tpg_data_o <= {rgb_hsv[15:11],3'd0,rgb_hsv[10:5],2'd0,rgb_hsv[4:0],3'd0};
            tpg_vs_o <= i_v_sync_delay_4;
            tpg_hs_o <= i_h_sync_delay_4;
            tpg_de_o <= i_data_en_delay_4;  
        end
        4'd1:begin
            tpg_data_o <= {rgb_bin[15:11],3'd0,rgb_bin[10:5],2'd0,rgb_bin[4:0],3'd0};
            tpg_vs_o <= i_v_sync_delay_4;
            tpg_hs_o <= i_h_sync_delay_4;
            tpg_de_o <= i_data_en_delay_4;  
        end
        4'd2:begin
            tpg_data_o <= {out_data1[15:11],3'd0,out_data1[10:5],2'd0,out_data1[4:0],3'd0};
            tpg_vs_o <= cor_vsync[6];
            tpg_hs_o <= cor_hsync[6];
            tpg_de_o <= cor_de[6];  
        end
        default:begin
            tpg_data_o <= {rgb_hsv[15:11],3'd0,rgb_hsv[10:5],2'd0,rgb_hsv[4:0],3'd0};
            tpg_vs_o <= i_v_sync_delay_4;
            tpg_hs_o <= i_h_sync_delay_4;
            tpg_de_o <= i_data_en_delay_4;  
        end
    endcase 
end

ila_2 ila223(
.clk(tpg_clk_i),
.probe0(data_in),
.probe1(hsv_h),
.probe2(hsv_s),
.probe3(hsv_v)
);
//------------------------------  RGB转灰度  -------------------------------------
//wire [7:0] imgy;
//rgb2ycbcr ycbcr(
//.clk(tpg_clk_i),
//.i_r_8b(data_in[23:16]),
//.i_g_8b(data_in[15:8]),
//.i_b_8b(data_in[7:0]),
  						
//.i_h_sync(tpg_hs_i),
//.i_v_sync(tpg_vs_i),
//.i_data_en(tpg_de_i),
						
//.o_y_8b(imgy),
//.o_cb_8b(),
//.o_cr_8b(),
						
//.o_h_sync(tpg_hs_o),
//.o_v_sync(tpg_vs_o),                                                                                                  
//.o_data_en(tpg_de_o)    
//);
//assign tpg_data_o = {imgy[7:3],3'd0,imgy[7:2],2'd0,imgy[7:3],3'd0};
//-------------------------------------------------------------------------------------------
//assign tpg_vs_o = tpg_vs_r;
//assign tpg_hs_o = tpg_hs_r;
//assign tpg_de_o = tpg_de_r;  

endmodule
