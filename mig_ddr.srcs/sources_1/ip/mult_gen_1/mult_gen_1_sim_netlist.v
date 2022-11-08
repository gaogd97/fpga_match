// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:19:41 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/mult_gen_1/mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_gen_1
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [15:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "32" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "47" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_1_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [31:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [47:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kKUeGVb11cRff7fk6KnlzaSH8COn7WtFX3/E7hpG0TaAOnUBK9Vjieso+4cFsCGr6k/G1AwaZVkv
U4+0j3JI9t+Jx0310y8iRi/BEUPQb1uzXFPbM+rA4uO+iVoJ+NAHs3NcKJV15fQdYd3vqa0WYx84
QnWXi9a911glk/2hfAXtyLLa/vK5TEqueTVNCGOuQQJxZe8pC8Xah9AdXrPutJrCHBOT3lpG40y/
J5gpwN3UHSA1pnHroSBZoSx4fTjH0ZZ2FUmzCkMaHXdAV4oDCULkrrkmous4D2nJ654bdAt6jO4T
nUsm0FiLUDnjVicv9RddBnte1oyqCrDwkY/MBA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a798haLabWx3xgQL7nI73s4gMB1lhY2spK6UMKezqW6S/vXtVqsNdf0smMBE20Z8yYfibdHPw3JX
DMmQsCS/t+iYnUWJssCAC8P0SeIBaAklV0ck/OK0UJCFzk2903QxqJgfTT3uL6sZzhDaifaMmlvd
YncfqAX4iOwEB1bSynlcgXXVmyzrGyx6cyOBMiNU5nuxj2N9BJ55u0U4XFTwwTlCOEmSUDqlmftq
kDaw3PQnUnjY8vYTcBbpWGR0Vlq0S5q5r6OtIK5uHZrirssIzyaOA0Bb5Syb3TZgavuNHzBU4XKU
Dl3kSN5WXZk/nlpdPr+d7cs6hEpMMOs0twTWPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14304)
`pragma protect data_block
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
`pragma protect end_protected
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
