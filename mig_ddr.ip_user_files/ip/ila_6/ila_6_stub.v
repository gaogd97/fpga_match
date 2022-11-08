// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov  4 21:22:13 2022
// Host        : DESKTOP-JC3SL1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_learn/FPGA_match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/ila_6/ila_6_stub.v
// Design      : ila_6
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_6(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[3:0],probe1[13:0],probe2[0:0],probe3[0:0],probe4[15:0]" */;
  input clk;
  input [3:0]probe0;
  input [13:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [15:0]probe4;
endmodule
