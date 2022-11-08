// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:18:11 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_16
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
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
Ol4OZSFftZXrjVf/PyKmaIN0SI/L8KBczKCkZ4SodHMcen/WF3KIqrJCjGAzgQfFwVt+0bGbZYKn
KAsadU4Pm8IGo4J8D0DmDtHRPpS7QvLAVhShc/s3Nxn18zdCzJ8BUeFlLD+7qu9p6OlHvCxxgVJf
t38RM1FRyl6vCBjWBPY12NdLsTDa2ZtzRcABm+OlEKh9J9/mDpYKtSXaZ99gqXYDNthgx1ERa//K
1Pa/M/kRagiV4d3HO36lHLDwXpW4eP7PMJ+OdnSZ3Pv3ekBu7h5QnOrzKhX9NZ8cAem2Lx+SFyto
cMvyPinseOV2xRm8CURHLQqbNqETaifbdS4AxQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w9vTkE3js7yL/fKnLKEQQy+wq8QQthUexNKfXWybzOfW3wGCTbFEleHtA95bOB4RDquDyEoKOWi+
ySeCpKF07Cdd/hHXl+HzvIbJp+JyWSQj17AmIwPTEUQVT48DvUQwOWLee5iQ1rztRgN9CnfA+tdn
Grer5CxeGHZmtdMOTQJPiMfQs5XzPNUFdY//Em/QIiJqNR8j1dqgy70HZhesbPa/+M3BBNdWz6w1
CElyh/5c0HNPSwYLycQV6KQ0jtHbAt/o5mOu0HyCmZ8tica2DzsVqVCuQ7kQbzOokEMOxeqTOkHp
kH9pk67DqPeuCa7A4JJnCVuuHXUkFAc0G6UjIQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
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
