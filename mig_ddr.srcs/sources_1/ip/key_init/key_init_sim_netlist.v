// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep 13 17:20:28 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/key_init/key_init_sim_netlist.v
// Design      : key_init
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "key_init,key_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "key_ip,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module key_init
   (clk_i,
    key1_i,
    key2_i,
    key1_cap,
    key2_cap);
  input clk_i;
  input key1_i;
  input key2_i;
  output key1_cap;
  output key2_cap;

  wire clk_i;
  wire key1_cap;
  wire key1_i;
  wire key2_cap;
  wire key2_i;

  key_init_key_ip inst
       (.clk_i(clk_i),
        .key1_cap(key1_cap),
        .key1_i(key1_i),
        .key2_cap(key2_cap),
        .key2_i(key2_i));
endmodule

(* ORIG_REF_NAME = "key_ip" *) 
module key_init_key_ip
   (key1_cap,
    key2_cap,
    clk_i,
    key1_i,
    key2_i);
  output key1_cap;
  output key2_cap;
  input clk_i;
  input key1_i;
  input key2_i;

  wire clear;
  wire clk_i;
  wire \cnt10ms[0]_i_3_n_0 ;
  wire \cnt10ms[0]_i_4_n_0 ;
  wire [19:0]cnt10ms_reg;
  wire \cnt10ms_reg[0]_i_2_n_0 ;
  wire \cnt10ms_reg[0]_i_2_n_1 ;
  wire \cnt10ms_reg[0]_i_2_n_2 ;
  wire \cnt10ms_reg[0]_i_2_n_3 ;
  wire \cnt10ms_reg[0]_i_2_n_4 ;
  wire \cnt10ms_reg[0]_i_2_n_5 ;
  wire \cnt10ms_reg[0]_i_2_n_6 ;
  wire \cnt10ms_reg[0]_i_2_n_7 ;
  wire \cnt10ms_reg[12]_i_1_n_0 ;
  wire \cnt10ms_reg[12]_i_1_n_1 ;
  wire \cnt10ms_reg[12]_i_1_n_2 ;
  wire \cnt10ms_reg[12]_i_1_n_3 ;
  wire \cnt10ms_reg[12]_i_1_n_4 ;
  wire \cnt10ms_reg[12]_i_1_n_5 ;
  wire \cnt10ms_reg[12]_i_1_n_6 ;
  wire \cnt10ms_reg[12]_i_1_n_7 ;
  wire \cnt10ms_reg[16]_i_1_n_1 ;
  wire \cnt10ms_reg[16]_i_1_n_2 ;
  wire \cnt10ms_reg[16]_i_1_n_3 ;
  wire \cnt10ms_reg[16]_i_1_n_4 ;
  wire \cnt10ms_reg[16]_i_1_n_5 ;
  wire \cnt10ms_reg[16]_i_1_n_6 ;
  wire \cnt10ms_reg[16]_i_1_n_7 ;
  wire \cnt10ms_reg[4]_i_1_n_0 ;
  wire \cnt10ms_reg[4]_i_1_n_1 ;
  wire \cnt10ms_reg[4]_i_1_n_2 ;
  wire \cnt10ms_reg[4]_i_1_n_3 ;
  wire \cnt10ms_reg[4]_i_1_n_4 ;
  wire \cnt10ms_reg[4]_i_1_n_5 ;
  wire \cnt10ms_reg[4]_i_1_n_6 ;
  wire \cnt10ms_reg[4]_i_1_n_7 ;
  wire \cnt10ms_reg[8]_i_1_n_0 ;
  wire \cnt10ms_reg[8]_i_1_n_1 ;
  wire \cnt10ms_reg[8]_i_1_n_2 ;
  wire \cnt10ms_reg[8]_i_1_n_3 ;
  wire \cnt10ms_reg[8]_i_1_n_4 ;
  wire \cnt10ms_reg[8]_i_1_n_5 ;
  wire \cnt10ms_reg[8]_i_1_n_6 ;
  wire \cnt10ms_reg[8]_i_1_n_7 ;
  (* MARK_DEBUG *) wire en_10ms;
  wire en_10ms_inferred_i_2_n_0;
  wire en_10ms_inferred_i_3_n_0;
  wire en_10ms_inferred_i_4_n_0;
  wire en_10ms_inferred_i_5_n_0;
  wire en_10ms_inferred_i_6_n_0;
  wire key1_cap;
  wire key1_i;
  (* MARK_DEBUG *) wire [1:0]key1_s;
  (* MARK_DEBUG *) wire [1:0]key1_s_r;
  wire key2_cap;
  wire key2_i;
  (* MARK_DEBUG *) wire [1:0]key2_s;
  (* MARK_DEBUG *) wire [1:0]key2_s_r;
  wire [1:0]p_0_in__0;
  wire [1:0]p_0_in__1;
  wire [3:3]\NLW_cnt10ms_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFF00FE)) 
    \cnt10ms[0]_i_1 
       (.I0(en_10ms_inferred_i_5_n_0),
        .I1(en_10ms_inferred_i_6_n_0),
        .I2(en_10ms_inferred_i_2_n_0),
        .I3(\cnt10ms[0]_i_3_n_0 ),
        .I4(cnt10ms_reg[15]),
        .I5(en_10ms_inferred_i_3_n_0),
        .O(clear));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \cnt10ms[0]_i_3 
       (.I0(cnt10ms_reg[14]),
        .I1(cnt10ms_reg[10]),
        .I2(cnt10ms_reg[13]),
        .I3(cnt10ms_reg[11]),
        .I4(cnt10ms_reg[12]),
        .I5(cnt10ms_reg[9]),
        .O(\cnt10ms[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt10ms[0]_i_4 
       (.I0(cnt10ms_reg[0]),
        .O(\cnt10ms[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[0]_i_2_n_7 ),
        .Q(cnt10ms_reg[0]),
        .R(clear));
  CARRY4 \cnt10ms_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt10ms_reg[0]_i_2_n_0 ,\cnt10ms_reg[0]_i_2_n_1 ,\cnt10ms_reg[0]_i_2_n_2 ,\cnt10ms_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt10ms_reg[0]_i_2_n_4 ,\cnt10ms_reg[0]_i_2_n_5 ,\cnt10ms_reg[0]_i_2_n_6 ,\cnt10ms_reg[0]_i_2_n_7 }),
        .S({cnt10ms_reg[3:1],\cnt10ms[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[8]_i_1_n_5 ),
        .Q(cnt10ms_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[8]_i_1_n_4 ),
        .Q(cnt10ms_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[12]_i_1_n_7 ),
        .Q(cnt10ms_reg[12]),
        .R(clear));
  CARRY4 \cnt10ms_reg[12]_i_1 
       (.CI(\cnt10ms_reg[8]_i_1_n_0 ),
        .CO({\cnt10ms_reg[12]_i_1_n_0 ,\cnt10ms_reg[12]_i_1_n_1 ,\cnt10ms_reg[12]_i_1_n_2 ,\cnt10ms_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt10ms_reg[12]_i_1_n_4 ,\cnt10ms_reg[12]_i_1_n_5 ,\cnt10ms_reg[12]_i_1_n_6 ,\cnt10ms_reg[12]_i_1_n_7 }),
        .S(cnt10ms_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[12]_i_1_n_6 ),
        .Q(cnt10ms_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[12]_i_1_n_5 ),
        .Q(cnt10ms_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[12]_i_1_n_4 ),
        .Q(cnt10ms_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[16] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[16]_i_1_n_7 ),
        .Q(cnt10ms_reg[16]),
        .R(clear));
  CARRY4 \cnt10ms_reg[16]_i_1 
       (.CI(\cnt10ms_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt10ms_reg[16]_i_1_CO_UNCONNECTED [3],\cnt10ms_reg[16]_i_1_n_1 ,\cnt10ms_reg[16]_i_1_n_2 ,\cnt10ms_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt10ms_reg[16]_i_1_n_4 ,\cnt10ms_reg[16]_i_1_n_5 ,\cnt10ms_reg[16]_i_1_n_6 ,\cnt10ms_reg[16]_i_1_n_7 }),
        .S(cnt10ms_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[17] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[16]_i_1_n_6 ),
        .Q(cnt10ms_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[18] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[16]_i_1_n_5 ),
        .Q(cnt10ms_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[19] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[16]_i_1_n_4 ),
        .Q(cnt10ms_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[0]_i_2_n_6 ),
        .Q(cnt10ms_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[0]_i_2_n_5 ),
        .Q(cnt10ms_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[0]_i_2_n_4 ),
        .Q(cnt10ms_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[4]_i_1_n_7 ),
        .Q(cnt10ms_reg[4]),
        .R(clear));
  CARRY4 \cnt10ms_reg[4]_i_1 
       (.CI(\cnt10ms_reg[0]_i_2_n_0 ),
        .CO({\cnt10ms_reg[4]_i_1_n_0 ,\cnt10ms_reg[4]_i_1_n_1 ,\cnt10ms_reg[4]_i_1_n_2 ,\cnt10ms_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt10ms_reg[4]_i_1_n_4 ,\cnt10ms_reg[4]_i_1_n_5 ,\cnt10ms_reg[4]_i_1_n_6 ,\cnt10ms_reg[4]_i_1_n_7 }),
        .S(cnt10ms_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[4]_i_1_n_6 ),
        .Q(cnt10ms_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[4]_i_1_n_5 ),
        .Q(cnt10ms_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[4]_i_1_n_4 ),
        .Q(cnt10ms_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[8]_i_1_n_7 ),
        .Q(cnt10ms_reg[8]),
        .R(clear));
  CARRY4 \cnt10ms_reg[8]_i_1 
       (.CI(\cnt10ms_reg[4]_i_1_n_0 ),
        .CO({\cnt10ms_reg[8]_i_1_n_0 ,\cnt10ms_reg[8]_i_1_n_1 ,\cnt10ms_reg[8]_i_1_n_2 ,\cnt10ms_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt10ms_reg[8]_i_1_n_4 ,\cnt10ms_reg[8]_i_1_n_5 ,\cnt10ms_reg[8]_i_1_n_6 ,\cnt10ms_reg[8]_i_1_n_7 }),
        .S(cnt10ms_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt10ms_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\cnt10ms_reg[8]_i_1_n_6 ),
        .Q(cnt10ms_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00000002)) 
    en_10ms_inferred_i_1
       (.I0(en_10ms_inferred_i_2_n_0),
        .I1(en_10ms_inferred_i_3_n_0),
        .I2(en_10ms_inferred_i_4_n_0),
        .I3(en_10ms_inferred_i_5_n_0),
        .I4(en_10ms_inferred_i_6_n_0),
        .O(en_10ms));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    en_10ms_inferred_i_2
       (.I0(cnt10ms_reg[1]),
        .I1(cnt10ms_reg[2]),
        .I2(cnt10ms_reg[5]),
        .I3(cnt10ms_reg[3]),
        .I4(cnt10ms_reg[0]),
        .I5(cnt10ms_reg[4]),
        .O(en_10ms_inferred_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    en_10ms_inferred_i_3
       (.I0(cnt10ms_reg[18]),
        .I1(cnt10ms_reg[17]),
        .I2(cnt10ms_reg[19]),
        .I3(cnt10ms_reg[16]),
        .O(en_10ms_inferred_i_3_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    en_10ms_inferred_i_4
       (.I0(cnt10ms_reg[9]),
        .I1(cnt10ms_reg[15]),
        .I2(cnt10ms_reg[14]),
        .O(en_10ms_inferred_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    en_10ms_inferred_i_5
       (.I0(cnt10ms_reg[10]),
        .I1(cnt10ms_reg[13]),
        .I2(cnt10ms_reg[11]),
        .I3(cnt10ms_reg[12]),
        .O(en_10ms_inferred_i_5_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    en_10ms_inferred_i_6
       (.I0(cnt10ms_reg[6]),
        .I1(cnt10ms_reg[7]),
        .I2(cnt10ms_reg[8]),
        .O(en_10ms_inferred_i_6_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    key1_cap__0
       (.I0(key1_s[0]),
        .I1(key1_s[1]),
        .I2(key1_s_r[1]),
        .I3(key1_s_r[0]),
        .O(key1_cap));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \key1_s[0]_i_1 
       (.I0(key1_i),
        .I1(key1_s[1]),
        .I2(key1_s[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4E)) 
    \key1_s[1]_i_1 
       (.I0(key1_s[0]),
        .I1(key1_s[1]),
        .I2(key1_i),
        .O(p_0_in__0[1]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key1_s_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(key1_s[0]),
        .Q(key1_s_r[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key1_s_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(key1_s[1]),
        .Q(key1_s_r[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "KEY1_S0:00,KEY1_S1:01,KEY1_S2:10,KEY1_S3:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key1_s_reg[0] 
       (.C(clk_i),
        .CE(en_10ms),
        .D(p_0_in__0[0]),
        .Q(key1_s[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "KEY1_S0:00,KEY1_S1:01,KEY1_S2:10,KEY1_S3:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key1_s_reg[1] 
       (.C(clk_i),
        .CE(en_10ms),
        .D(p_0_in__0[1]),
        .Q(key1_s[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    key2_cap__0
       (.I0(key2_s[0]),
        .I1(key2_s[1]),
        .I2(key2_s_r[1]),
        .I3(key2_s_r[0]),
        .O(key2_cap));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \key2_s[0]_i_1 
       (.I0(key2_i),
        .I1(key2_s[1]),
        .I2(key2_s[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4E)) 
    \key2_s[1]_i_1 
       (.I0(key2_s[0]),
        .I1(key2_s[1]),
        .I2(key2_i),
        .O(p_0_in__1[1]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key2_s_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(key2_s[0]),
        .Q(key2_s_r[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key2_s_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(key2_s[1]),
        .Q(key2_s_r[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "KEY2_S0:00,KEY2_S1:01,KEY2_S2:10,KEY2_S3:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key2_s_reg[0] 
       (.C(clk_i),
        .CE(en_10ms),
        .D(p_0_in__1[0]),
        .Q(key2_s[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "KEY2_S0:00,KEY2_S1:01,KEY2_S2:10,KEY2_S3:11" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \key2_s_reg[1] 
       (.C(clk_i),
        .CE(en_10ms),
        .D(p_0_in__1[1]),
        .Q(key2_s[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
