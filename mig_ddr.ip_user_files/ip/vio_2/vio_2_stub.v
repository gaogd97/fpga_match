// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Nov  4 21:13:03 2022
// Host        : DESKTOP-JC3SL1L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/FPGA_learn/FPGA_match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/vio_2/vio_2_stub.v
// Design      : vio_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2" *)
module vio_2(clk, probe_out0, probe_out1, probe_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[13:0],probe_out1[7:0],probe_out2[15:0]" */;
  input clk;
  output [13:0]probe_out0;
  output [7:0]probe_out1;
  output [15:0]probe_out2;
endmodule
