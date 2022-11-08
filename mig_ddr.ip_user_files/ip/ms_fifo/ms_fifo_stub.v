// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 22 10:56:11 2020
// Host        : 6QRKIFEZU6WKSG1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/k7325_676/2_mig/03_img_camera/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/ms_fifo/ms_fifo_stub.v
// Design      : ms_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module ms_fifo(clk, din, wr_en, rd_en, dout, full, empty, data_count)
/* synthesis syn_black_box black_box_pad_pin="clk,din[7:0],wr_en,rd_en,dout[7:0],full,empty,data_count[4:0]" */;
  input clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
  output [4:0]data_count;
endmodule
