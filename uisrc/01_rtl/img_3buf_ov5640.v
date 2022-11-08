`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: 米联客(msxbo)
Technical forum:uisrc.com
taobao: osrc.taobao.com
Create Date: 2019/02/27 22:09:55
Module Name: img_3buf_ov5640
Description: ddr 3buf image test
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
module img_3buf_ov5640
  (
inout  [63:0]                ddr3_dq,
inout  [7 :0]                ddr3_dqs_n,
inout  [7 :0]                ddr3_dqs_p,
output [14:0]                ddr3_addr,
output [2 :0]                ddr3_ba,
output                       ddr3_ras_n,
output                       ddr3_cas_n,
output                       ddr3_we_n,
output                       ddr3_reset_n,
output [0:0]                 ddr3_ck_p,
output [0:0]                 ddr3_ck_n,
output [0:0]                 ddr3_cke,
output [0:0]                 ddr3_cs_n,
output [7:0]                 ddr3_dm,
output [0:0]                 ddr3_odt,
//--------------ov sensor----------------------
input                       cmos_vsync_i,    //cmos vsync
input                       cmos_href_i,    //cmos hsync refrence
input                       cmos_pclk_i,    //cmos pxiel clock
output                      cmos_xclk_o,    //cmos externl clock
input [7:0]                 cmos_data_i,    //cmos data  
output                      cmos_scl, //coms i2c scl
inout                       cmos_sda,//coms i2c sda
//----------------------------- HDMI hardware interface ----------------------------/
output                      HDMI_CLK_P, 
output                      HDMI_CLK_N, 
output [2:0]                HDMI_TX_P,  
output [2:0]                HDMI_TX_N,  
//input                       sysclk_p,
//input                       sysclk_n,
input                       sysclk_i,
output                      init_calib_complete,
output                      power_en, //base card power control
//----------------------------- 电机控制 -------------------------------------------/
output    t_dir_n,
output    t_dir_p, 
output    t_pul_n, 
output    t_pul_p,  

output    r_dir_n,
output    r_dir_p,
output    r_pul_n,
output    r_pul_p,
//----------------------------- HDMI hardware interface ----------------------------/
input                       key1,
input                       key2,
input                       key3,
input                       key4
);

 assign power_en = 1'b1;
 
 wire clk_200m,clk_100m,clk_25m;
 wire locked,pclkx1,pclkx5;
 wire ddr_rst,ui_rst,ui_clk;
 wire vid_clk = pclkx1;
 wire vid_rst = locked;
//时钟管理产生DDR需要的时钟   
// IBUFDS IBUFDS_inst (.O(sysclk_buf),.I(sysclk_p),.IB(sysclk_n) );
 clk_wiz_0 clk_wiz0_inst(.clk_out1(clk_200m),.clk_out2(clk_100m),.clk_out3(clk_25m),.locked(ddr_rst),.clk_in1(sysclk_i)); 
 clk_wiz_1 clk_wiz1_inst(.clk_out1(pclkx1),.clk_out2(pclkx5),.reset(ui_rst),.locked(locked),.clk_in1(clk_100m)); 
//----------------------ov7725视频输出解码模块---------------------------//
  localparam ADDR_WIDTH            = 29; 
  localparam DATA_WIDTH            = 64;
  localparam PAYLOAD_WIDTH         = DATA_WIDTH;
  localparam BURST_LENGTH          = 8;
  localparam APP_DATA_WIDTH        = 512;
  localparam APP_MASK_WIDTH        = APP_DATA_WIDTH / 8;
      
  // Wire declarations
  wire [ADDR_WIDTH-1:0]                 app_addr;
  wire [2:0]                            app_cmd;
  wire                                  app_en;
  wire                                  app_rdy;
  wire [APP_DATA_WIDTH-1:0]             app_rd_data;
  wire                                  app_rd_data_end;
  wire                                  app_rd_data_valid;
  wire [APP_DATA_WIDTH-1:0]             app_wdf_data;
  wire                                  app_wdf_end;
  wire [APP_MASK_WIDTH-1:0]             app_wdf_mask;
  wire                                  app_wdf_rdy;
  wire                                  app_sr_active;
  wire                                  app_ref_ack;
  wire                                  app_zq_ack;
  wire                                  app_wdf_wren;
  wire [11:0]                           device_temp;
  wire ui_rstn_i;

 mig_7series_0 u_mig_7series_0
      (
// Memory interface ports
       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_reset_n                   (ddr3_reset_n),
       .init_calib_complete            (init_calib_complete),
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
// Application interface ports
       .app_addr                       (app_addr),
       .app_cmd                        (app_cmd),
       .app_en                         (app_en),
       .app_wdf_data                   (app_wdf_data),
       .app_wdf_end                    (app_wdf_end),
       .app_wdf_wren                   (app_wdf_wren),
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .ui_clk                         (ui_clk),
       .ui_clk_sync_rst                (ui_rst),
       .app_wdf_mask                   (32'd0),
// System Clock Ports
       .sys_clk_i                      (clk_200m),
       .device_temp                    (device_temp),
       .sys_rst                        (ddr_rst)
       );

wire W0_fs_i;
wire W0_wclk_i;
wire W0_wren_i;
wire [31:0]W0_data_i;

wire R0_fs_i;    
wire R0_rclk_i;
wire R0_rden_i;
wire [31:0]R0_data_o;  

wire  vid_hs,vid_vs,vid_de;
wire  [7:0] rgb_r;
wire  [7:0] rgb_g;
wire  [7:0] rgb_b;

wire vs,hs,de;
wire vs_ui,hs_ui,de_ui;
wire vs_pro,hs_pro,de_pro;
wire[23:0] hdmi_rgb_o;
wire[23:0] hdmi_rgb_ui;
wire[23:0] hdmi_rgb_pro;

//-----------------------------  HDMI输出控制  ----------------------------------  
wire key1_cap,key2_cap,key3_cap,key4_cap;
wire [13:0] X,Y,R,L;
wire [14:0] H,A;
wire sig;
reg hdmi_mode = 0;
key_init key11(
  .clk_i(vid_clk),
  .key1_i(key1),
  .key2_i(key2),
  .key1_cap(key1_cap),
  .key2_cap(key2_cap)
);
key_init key22(
  .clk_i(vid_clk),
  .key1_i(key3),
  .key2_i(key4),
  .key1_cap(key3_cap),
  .key2_cap(key4_cap)
);

always @(posedge vid_clk) begin
    if(key1_cap == 1'b1)
         hdmi_mode <= ~hdmi_mode;
     else hdmi_mode <= hdmi_mode;
 end

uihdmitx #
(
    .FAMILY("7FAMILY")			
)
uihdmitx_inst
(
    .RSTn_i(locked),
    .HS_i(hs),
    .VS_i(vs),
    .VDE_i(de),
    .RGB_i(hdmi_rgb_o),
    .PCLKX1_i(pclkx1),
    .PCLKX2_5_i(1'b0),
    .PCLKX5_i(pclkx5),
    .TMDS_TX_CLK_P(HDMI_CLK_P),
    .TMDS_TX_CLK_N(HDMI_CLK_N),
    .TMDS_TX_P(HDMI_TX_P),
    .TMDS_TX_N(HDMI_TX_N)
);

uivtc#
(
    .H_ActiveSize(1280), 
    .H_FrameSize(1650), 
    .H_SyncStart(1390), 
    .H_SyncEnd(1430), 
    .V_ActiveSize(720), 
    .V_FrameSize(750), 
    .V_SyncStart(724), 
    .V_SyncEnd (729) 
)
uivtc_inst
(
    .vtc_rstn_i(vid_rst),
    .vtc_clk_i(vid_clk),
    .vtc_vs_o(vid_vs),
    .vtc_hs_o(vid_hs),
    .vtc_de_o(vid_de)	
);
//显示界面
uitpg uitpg_inst	
(
.tpg_rstn_i(vid_rst),
.tpg_clk_i(vid_clk),
.tpg_vs_i(vid_vs),
.tpg_hs_i(vid_hs),
.tpg_de_i(vid_de),
.tpg_vs_o(vs_ui),
.tpg_hs_o(hs_ui),
.tpg_de_o(de_ui),	
.data_in({rgb_r,rgb_g,rgb_b}),
.tpg_data_o(hdmi_rgb_ui),
.sig(sig),
.L(L),
.H(H),
.F(freq_out),
.X(X),
.Y(Y),
.R(R)		
);
//图像处理界面
wire [19:0] X_NUM_TEST;
wire process_sig;
wire tpg_vs_c;
wire tpg_hs_c;
wire tpg_de_c;
wire [23:0] tpg_data_c;
protpg protpg_inst	
(
.tpg_rstn_i(vid_rst),
.tpg_clk_i(vid_clk),
.tpg_vs_i(vid_vs),
.tpg_hs_i(vid_hs),
.tpg_de_i(vid_de),
.tpg_vs_o(vs_pro),
.tpg_hs_o(hs_pro),
.tpg_de_o(de_pro),	
.data_in({rgb_r,rgb_g,rgb_b}),
.tpg_data_o(hdmi_rgb_pro),

.tpg_vs_c(tpg_vs_c),
.tpg_hs_c(tpg_hs_c),
.tpg_de_c(tpg_de_c),	
.tpg_data_c(tpg_data_c),

.key(key2_cap)
);

assign hdmi_rgb_o = (hdmi_mode == 1'b1)? hdmi_rgb_pro:hdmi_rgb_ui;
assign vs = (hdmi_mode == 1'b1)? vs_pro:vs_ui;
assign hs = (hdmi_mode == 1'b1)? hs_pro:hs_ui;
assign de = (hdmi_mode == 1'b1)? de_pro:de_ui;
//-------------------------位置、频率计算--------------------------------
wire [15:0] H_c;
wire [15:0] L_c;
wire [15:0] H_output;
wire [15:0] L_output;
wire [15:0]   freq_out;
wire [7:0] h1,h2,h3,h4,l1,l2,l3,l4;
image_calculation  IMAGE_C(
.tpg_rstn_i(vid_rst),
.tpg_clk_i(vid_clk),
.tpg_vs_i(tpg_vs_c),
.tpg_hs_i(tpg_hs_c),
.tpg_de_i(tpg_de_c),	
.data_in(tpg_data_c),    
.X(X),
.Y(Y),
.R(R),
.L(L),
.H(H),
.H_c(H_c),
.A(A),  
.X_NUM_TEST(X_NUM_TEST),
.process_sig(process_sig)
    );
assign L_c = L;
assign H_output = H_c * h1 /h2 +h3-h4;
assign L_output = L_c * l1 /l2 +l3-l4;
//--------------------  电机频率计算--------------------------------------------
wire [19:0]  motor_frequency  ;
frequency_calculation frequency_compute_inst(
    .clk           (vid_clk           ),
    .rst_n         (vid_rst         ),
    .data_in_valid (1'b1 ),
    .data_x        (L_output        ),
    .data_y        (H_output        ),
    .N_div_2PI_L   (16'b001_0000010011000   ),
    .motor_frequency  (motor_frequency  )
);
//----------------------------电机驱动--------------------------------------
wire monitor_ok;
monitor MONITOR_INST(
.tpg_rstn_i(vid_rst),
.tpg_clk_i(vid_clk),
.start_config(key3_cap),
.calculate_config(process_sig),
    
.pulse_n   (r_pul_n)  ,
.pulse_p   (r_pul_p)  ,
.dir_n      (r_dir_n) ,    
.dir_p      (r_dir_p) ,
    
.motor_freq   (motor_frequency)  ,
.freq_out(freq_out),
.forth_pulse_num(forth_pulse_num),
.back_pulse_num(back_pulse_num) ,
.tdir_n(t_dir_n)          ,
.tdir_p(t_dir_p)          ,
.pul_n(t_pul_n)          ,
.pul_p(t_pul_p),  
    
.monitor_ok(monitor_ok),
.monitor_config(sig),
    
.x_num(X_NUM_TEST),
.X(X)
    );

vio_4 (
.clk(vid_clk),
.probe_in0(L_output),
.probe_in1(H_output),
.probe_in2(motor_frequency),
.probe_out0(h1),
.probe_out1(h2),
.probe_out2(h3),
.probe_out3(h4),
.probe_out4(l1),
.probe_out5(l2),
.probe_out6(l3),
.probe_out7(l4),
.probe_out8(forth_pulse_num),
.probe_out9(back_pulse_num)
);
//------------------------------------------------------------------------------
wire delay_rst;
uidelay#(
   .num (32'd12500000)
)uidelay_inst
(
   .clk_i(clk_25m),
   .rstn_i(ddr_rst),
   .rst_o(delay_rst) //低有效，延迟0.5s
);
    
wire cfg_done;
uicfg5640#
(
  .CLK_DIV(16'd499)
) 
uicfg5640_inst(
  .clk_i(clk_25m),
  .rst_n(delay_rst),
  .cmos_scl(cmos_scl),
  .cmos_sda(cmos_sda),
  .cfg_done(cfg_done)
);

wire[23:0]cmos_rgb;
wire cmos_de;
wire cmos_vs;
    
uiSensorRGB565 uiSensorRGB565_inst (
  .cmos_clk_i(clk_25m),      // input wire cmos_clk_i
  .rst_n_i(cfg_done),            // input wire rst_n_i
  .cmos_pclk_i(cmos_pclk_i),    // input wire cmos_pclk_i
  .cmos_href_i(cmos_href_i),    // input wire cmos_href_i
  .cmos_vsync_i(cmos_vsync_i),  // input wire cmos_vsync_i
  .cmos_data_i(cmos_data_i),    // input wire [7 : 0] cmos_data_i
  .cmos_xclk_o(cmos_xclk_o),    // output wire cmos_xclk_o
  .rgb_o(cmos_rgb),                // output wire [31 : 0] rgb_o
  .de_o(cmos_de),                  // output wire de_o
  .vs_o(cmos_vs),                  // output wire vs_o
  .hs_o()                  // output wire hs_o
);

assign W0_wclk_i = cmos_pclk_i;
assign W0_wren_i = cmos_de;
assign W0_fs_i   = cmos_vs;
assign W0_data_i[23:0] = cmos_rgb;

assign rgb_r = R0_data_o[23:16];
assign rgb_g = R0_data_o[15:8];
assign rgb_b = R0_data_o[7:0];

assign R0_rclk_i = vid_clk;
assign R0_rden_i = vid_de;
assign R0_fs_i   = vid_vs;
 
edma_ctr#
(
   .ADDR_WIDTH(ADDR_WIDTH),
   .APP_DATA_WIDTH(APP_DATA_WIDTH),
   .ADDR_OFFSET(0),
   .BUF_SIZE(3),
   .WR_BURST_LEN(80),//一次burst 80x512/32=1280 个像素画 也就是行数据   
   .RD_BURST_LEN(80),//一次burst 80x512/32=1280 个像素画 也就是一行数据 
   .IMG_H(1280),
   .IMG_V(720)
)   
edma_ctr_inst
(
	.app_addr(app_addr),
	.app_cmd(app_cmd),
	.app_en(app_en),
	.app_wdf_data(app_wdf_data),
	.app_wdf_end(app_wdf_end),
	.app_wdf_wren(app_wdf_wren),
	.app_rd_data(app_rd_data),
	.app_rd_data_valid(app_rd_data_valid),
	.app_rdy(app_rdy),
	.app_wdf_rdy(app_wdf_rdy),
	.ui_clk(ui_clk),
	.ui_rstn_i(!ui_rst&&init_calib_complete&&cfg_done),
	//Sensor video 
	.W0_fs_i(W0_fs_i),
	.W0_wclk_i(W0_wclk_i),
	.W0_wren_i(W0_wren_i),
	.W0_data_i({8'd0,W0_data_i[23:0]}),//rgb565

	.R0_fs_i(R0_fs_i),
	.R0_rclk_i(R0_rclk_i),
	.R0_rden_i(R0_rden_i),
	.R0_data_o(R0_data_o)
    );
   
endmodule
