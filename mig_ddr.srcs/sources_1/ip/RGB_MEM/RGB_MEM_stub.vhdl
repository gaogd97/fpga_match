-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Sep  8 10:18:49 2022
-- Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GGD_work/ggd/MK7160FA/03_demo/02_example_mig_ddr_k7/03_img_camera/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/RGB_MEM/RGB_MEM_stub.vhdl
-- Design      : RGB_MEM
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RGB_MEM is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end RGB_MEM;

architecture stub of RGB_MEM is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[17:0],dina[15:0],clkb,enb,addrb[17:0],doutb[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2019.2";
begin
end;
