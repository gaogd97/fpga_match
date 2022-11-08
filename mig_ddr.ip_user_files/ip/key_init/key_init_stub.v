// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep 13 17:20:28 2022
// Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/key_init/key_init_stub.v
// Design      : key_init
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "key_ip,Vivado 2019.2" *)
module key_init(clk_i, key1_i, key2_i, key1_cap, key2_cap)
/* synthesis syn_black_box black_box_pad_pin="clk_i,key1_i,key2_i,key1_cap,key2_cap" */;
  input clk_i;
  input key1_i;
  input key2_i;
  output key1_cap;
  output key2_cap;
endmodule
