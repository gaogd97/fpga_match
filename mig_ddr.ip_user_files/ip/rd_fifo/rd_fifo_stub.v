// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Dec 22 10:56:16 2020
// Host        : 6QRKIFEZU6WKSG1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/k7325_676/2_mig/03_img_camera/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/rd_fifo/rd_fifo_stub.v
// Design      : rd_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module rd_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, wr_data_count)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[511:0],wr_en,rd_en,dout[63:0],full,empty,wr_data_count[7:0]" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [511:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output empty;
  output [7:0]wr_data_count;
endmodule
