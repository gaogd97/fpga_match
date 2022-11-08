-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Nov  4 21:13:03 2022
-- Host        : DESKTOP-JC3SL1L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/FPGA_learn/FPGA_match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/vio_2/vio_2_stub.vhdl
-- Design      : vio_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_2 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end vio_2;

architecture stub of vio_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_out0[13:0],probe_out1[7:0],probe_out2[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.2";
begin
end;
