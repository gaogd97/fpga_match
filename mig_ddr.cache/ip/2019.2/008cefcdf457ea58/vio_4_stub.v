// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov  3 23:02:22 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vio_4_stub.v
// Design      : vio_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_in0, probe_in1, probe_in2, probe_out0, 
  probe_out1, probe_out2, probe_out3, probe_out4, probe_out5, probe_out6, probe_out7, probe_out8, 
  probe_out9)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[15:0],probe_in1[15:0],probe_in2[19:0],probe_out0[7:0],probe_out1[7:0],probe_out2[7:0],probe_out3[7:0],probe_out4[7:0],probe_out5[7:0],probe_out6[7:0],probe_out7[7:0],probe_out8[15:0],probe_out9[15:0]" */;
  input clk;
  input [15:0]probe_in0;
  input [15:0]probe_in1;
  input [19:0]probe_in2;
  output [7:0]probe_out0;
  output [7:0]probe_out1;
  output [7:0]probe_out2;
  output [7:0]probe_out3;
  output [7:0]probe_out4;
  output [7:0]probe_out5;
  output [7:0]probe_out6;
  output [7:0]probe_out7;
  output [15:0]probe_out8;
  output [15:0]probe_out9;
endmodule
