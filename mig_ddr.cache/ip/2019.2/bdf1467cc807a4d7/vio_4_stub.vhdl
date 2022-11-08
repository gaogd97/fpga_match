-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Nov  5 18:42:37 2022
-- Host        : DESKTOP-JC3SL1L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vio_4_stub.vhdl
-- Design      : vio_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_out6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out8 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out9 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out10 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out11 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out12 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[15:0],probe_in1[15:0],probe_in2[19:0],probe_out0[7:0],probe_out1[7:0],probe_out2[15:0],probe_out3[15:0],probe_out4[7:0],probe_out5[7:0],probe_out6[15:0],probe_out7[15:0],probe_out8[15:0],probe_out9[15:0],probe_out10[15:0],probe_out11[15:0],probe_out12[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.2";
begin
end;
