-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep 13 17:20:28 2022
-- Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/key_init/key_init_stub.vhdl
-- Design      : key_init
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity key_init is
  Port ( 
    clk_i : in STD_LOGIC;
    key1_i : in STD_LOGIC;
    key2_i : in STD_LOGIC;
    key1_cap : out STD_LOGIC;
    key2_cap : out STD_LOGIC
  );

end key_init;

architecture stub of key_init is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,key1_i,key2_i,key1_cap,key2_cap";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "key_ip,Vivado 2019.2";
begin
end;
