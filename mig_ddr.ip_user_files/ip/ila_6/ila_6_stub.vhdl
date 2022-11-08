-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Nov  4 21:22:13 2022
-- Host        : DESKTOP-JC3SL1L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA_learn/FPGA_match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/ila_6/ila_6_stub.vhdl
-- Design      : ila_6
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_6 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end ila_6;

architecture stub of ila_6 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[3:0],probe1[13:0],probe2[0:0],probe3[0:0],probe4[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2019.2";
begin
end;
