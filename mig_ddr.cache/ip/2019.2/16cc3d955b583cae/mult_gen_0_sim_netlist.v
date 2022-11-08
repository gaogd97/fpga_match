// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:18:11 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
TA2PK3b7l9YpORNZwILWEkdsmS2u7xvsYGxxAPL4L+s6c7FbOdCp5+6qSl+0G9sTnDNTVhEJtMA8
3HsfutV0C9ryKLBsKW7owFaGqdDWmnr1fCgn3U9l8T0ln4ySQ0kT0NYpMG4ZTN1iX2sN1M9f02KC
obdYiCB32PjGHrlmjEnFJRJzxFdzbLZNMHbMe9XeC4Sx2NBf9O/zGuH6EwUKXS/H47xgH2Hj8eTW
xYRQsFgOg5zcZfiqaA6wP47d6EVUucUeyU4uiw58hX94zWmQmI3yEoFsXHUXYtPUOpn6zBHFCzBW
6/H9aFPcmieNx338Y0XPQ+/30bL2P9CtFDqEAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PfQ8wOrVg+Y7popKZgkN8DWduIR37wraPcuDed8q2DEChSKt8mvWFNjlyQBEmGxYphKXfHE9ng8A
pbs4axle+4kMTxVrqlgLcqBOVSW/T3FmdC36rMYP1Jc7Sn+arNPFIHizxLnOE3Wj3OWPCHZf9YA1
wh69nCAou7mlLspB7lj0cmXVfhbxmDIX1xhNLB6StMsYxNs3fZCvr5LMTmc1K650ktnsb/FkfY32
QMkoiXmLDogNys+cjraORoCajfXqK/Y88l0mklHOdqzqfm7kzE+JD2aW9kRxVdLXCPwcw/Ja8Dtk
kGHz0TBhA1QPfwGUx+coG3sQ7MyZZQsW6/HEsg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7296)
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
