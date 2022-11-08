// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:15:12 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UQSegOj+GtY01NoAoZ9M6YLtGCfTgkTMIFy72x14Z+Th88Tx4Tpw3rmdntBgjsHVHQoSYIRmYHTm
43XF2po6ktcP0XIHH/q84xbOXSn43qYg6WaIFfaA96Tssh73ySTyjgKJv5qbN8NZXph1/GWOEU4+
kETf/xbOt2mhClK12M+lF4bbTO5yFfal5/Vp/X5w5/SUXmsjC6LeW0+XeVxM4+Y+HpgHKXpAdHGE
V/AF+bjDGw6XYYKj6TLh6V/jlZT2cjxkIrG+godsSFMHVk/+AGppalLsrxlmIxWIn9KVqprzmddJ
muBiWsZvtds+6+lNT6DG7mNBUYkU0mcIxeR64g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DFUARPygGuTa+yuYbTH80lX3Ypf+UWL/0rjrVLzHw0O//Lb0ZsUzBlhLD97qbEn/9yDs20JTNy9D
GMhROt4nYF06P7suetAexP1L6Kb47PrAYM+AOPIjix+cm2AbHAc7aUDq9gGFntjFM3nFZEgvOb5u
fpc5V0XDRn6214j3TeBRK5s68Zi0/mGDpjIP3BiWCMBS8BX8ZNGp6p+gIFDoHDBqQKYJ7GjqJ/N1
QXe3AYoLtYk+CdhlN6fhCN65uPztbFAqp+n9h6vsh2oTBr7jFvgR080hR/AEuTct6OIfRcpVkpdU
DhyaT13Mi11SmdPcE5isxsDYxwcqd5CGMuguFA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
6aQ3ZXFnoKI+k2sKhYw=
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
