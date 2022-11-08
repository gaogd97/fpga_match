// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 21:15:11 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
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
Ir4nRqqQyRRW6ThsLbANaSArSpTAIX25BndRMoKFUkWw1o2mQwX0QjhQiEYvk9EY83adBqegxiZP
xaW21AcWbbkvUjanyMPJehUQs+5iL03HwlY0abQC08e8ZgRPMOcSGI6Jlhqi2a95iAlR/cOXS6RE
cM6BxzJSU+1LOAiHOt81N42CZbDFAPzJua3sf0mIoBeBICkgOHFoqyBQ+HYTXqoxdQ7kA5CI2LWH
ivG050HIvqIm+cWukqbTMKsj2W/F4MrcFZoRqdZbI/fopbAuwD9odDJawULS3ZZc73krkG/q+GDZ
kqCf3cZwvPziIWtNOlc8+Gn1wB26WGXp0s7glg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uBhKbAdyKDgrg6+QnKM3DMkACVFdpCxoiYnBvmEmTz3Lw35Bb2jtjiJDEAVgNgANER0bCvQt3mYB
+RZdmqTBKBnN+7gAD5Yd7QdCRc/I4vcyFRSQFeZDtrBiWVGbKEFQ0jZ3ZWviSvWfetKrKBzFq1KE
acQYKAg2/bKKv/avoF0GD/JEJ4ijHiYKmOK4R/0Bxw6jCyMVDVIccdYo0IB6xwVnkAOJzsfV+v3q
3r4BrL/vIJjLsDH8CXyN5exwsReCBZekPBmuZp4aT/F6b5v/NHkbrdZ3HXAcNs5Nzl9QtWg9+aLM
5JwE7S88YLVH451mj83HOBPjfpcgJnthwnOMTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9248)
`pragma protect data_block
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
927mdjN+E3Ew0RLB2Y8=
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
