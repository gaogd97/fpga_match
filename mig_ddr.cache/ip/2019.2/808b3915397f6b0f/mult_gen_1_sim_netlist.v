// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:19:41 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "32" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "47" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
psmUgxX4azdmSopAdc78/q8ELco9Lu4icuf3bpvEaszX3nw9BZqbeOMjmcIlwVVZ20ffXVwYCHTv
urbKMP3HsyLIK9QRVONUr/tw1R1VN32RwT689smyYAM4+UYo3FplaKXERV3Z9HofAGTPxvV3KvST
JXdCY96hmJd+2usa0wBMh3uBcKamIIchrLtqD3njT3vFmov+qgHY94LfaAsW9HdHPRL3tbVEX57n
xbwD8U2zUuS9zft38EN/bCD9Vh6d99Eb+1YRqb6PpqoAI1wiTOpt1LdIS+lqOSmtqivWWS6OwQKZ
bbUoHJ/DIlLoxHr8OOna9KetvXycZA2anN+O3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
avXG+InEeoYEudnXSQxyLmAe0eyLfTM+feVvObKLfllWEmEuR+PZWlR3rNeThGk13zoEFlmO4DOa
H9PVPBNS/MJFsJdgnPUB6YzH6ZkaaPYApfxVL4PnrquZGHdGNJ6+fI25jV/98yVHaIS15DStkklZ
p+PkcAOneBGhGkaG/bGUBNeUlhTKscIHVDEtWVPUOX0Oyen1pBytA95C/KBMf4wfEQzhQN2YbQ4/
vgMB8vE5H6zFd00zuof8qAIJy5aqcZr2AqMP+ZLeqab9YdYyBlToasxiFUOdJxD6bHgkjVhR/R4C
CgmYhn0l4Uq0F+syaNaa7NZHd8CkVEt9PTfLLQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14384)
`pragma protect data_block
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
WWGkQ9Q2ljKfBLZtf1bxnknUVK4=
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
