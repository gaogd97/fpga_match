-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep 27 18:14:02 2022
-- Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/ila_5/ila_5_stub.vhdl
-- Design      : ila_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_5 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end ila_5;

architecture stub of ila_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[11:0],probe1[11:0],probe2[11:0],probe3[0:0],probe4[29:0],probe5[19:0],probe6[11:0],probe7[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2019.2";
begin
end;
