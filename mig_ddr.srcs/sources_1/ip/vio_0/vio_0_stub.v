// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Sep 19 12:24:46 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2" *)
module vio_0(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3, probe_out4, probe_out5, probe_out6, probe_out7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[8:0],probe_out1[8:0],probe_out2[8:0],probe_out3[8:0],probe_out4[8:0],probe_out5[8:0],probe_out6[8:0],probe_out7[8:0]" */;
  input clk;
  output [8:0]probe_out0;
  output [8:0]probe_out1;
  output [8:0]probe_out2;
  output [8:0]probe_out3;
  output [8:0]probe_out4;
  output [8:0]probe_out5;
  output [8:0]probe_out6;
  output [8:0]probe_out7;
endmodule
