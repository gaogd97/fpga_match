-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Sep 19 12:24:46 2022
-- Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/vio_0/vio_0_stub.vhdl
-- Design      : vio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out6 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    probe_out7 : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end vio_0;

architecture stub of vio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_out0[8:0],probe_out1[8:0],probe_out2[8:0],probe_out3[8:0],probe_out4[8:0],probe_out5[8:0],probe_out6[8:0],probe_out7[8:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.2";
begin
end;
