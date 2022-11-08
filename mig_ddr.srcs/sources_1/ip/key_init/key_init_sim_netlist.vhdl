-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep 13 17:20:28 2022
-- Host        : DESKTOP-VHL3B3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/GGD_work/program/match/img_camera_ov5640_720p/mig_ddr.srcs/sources_1/ip/key_init/key_init_sim_netlist.vhdl
-- Design      : key_init
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity key_init_key_ip is
  port (
    key1_cap : out STD_LOGIC;
    key2_cap : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    key1_i : in STD_LOGIC;
    key2_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of key_init_key_ip : entity is "key_ip";
end key_init_key_ip;

architecture STRUCTURE of key_init_key_ip is
  signal clear : STD_LOGIC;
  signal \cnt10ms[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt10ms[0]_i_4_n_0\ : STD_LOGIC;
  signal cnt10ms_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt10ms_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt10ms_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt10ms_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt10ms_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt10ms_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt10ms_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal en_10ms : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of en_10ms : signal is std.standard.true;
  signal en_10ms_inferred_i_2_n_0 : STD_LOGIC;
  signal en_10ms_inferred_i_3_n_0 : STD_LOGIC;
  signal en_10ms_inferred_i_4_n_0 : STD_LOGIC;
  signal en_10ms_inferred_i_5_n_0 : STD_LOGIC;
  signal en_10ms_inferred_i_6_n_0 : STD_LOGIC;
  signal key1_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of key1_s : signal is std.standard.true;
  signal key1_s_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of key1_s_r : signal is std.standard.true;
  signal key2_s : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of key2_s : signal is std.standard.true;
  signal key2_s_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of key2_s_r : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_cnt10ms_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \key1_s[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \key1_s[1]_i_1\ : label is "soft_lutpair1";
  attribute KEEP : string;
  attribute KEEP of \key1_s_r_reg[0]\ : label is "yes";
  attribute KEEP of \key1_s_r_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \key1_s_reg[0]\ : label is "KEY1_S0:00,KEY1_S1:01,KEY1_S2:10,KEY1_S3:11";
  attribute KEEP of \key1_s_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \key1_s_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \key1_s_reg[1]\ : label is "KEY1_S0:00,KEY1_S1:01,KEY1_S2:10,KEY1_S3:11";
  attribute KEEP of \key1_s_reg[1]\ : label is "yes";
  attribute mark_debug_string of \key1_s_reg[1]\ : label is "true";
  attribute SOFT_HLUTNM of \key2_s[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \key2_s[1]_i_1\ : label is "soft_lutpair0";
  attribute KEEP of \key2_s_r_reg[0]\ : label is "yes";
  attribute KEEP of \key2_s_r_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \key2_s_reg[0]\ : label is "KEY2_S0:00,KEY2_S1:01,KEY2_S2:10,KEY2_S3:11";
  attribute KEEP of \key2_s_reg[0]\ : label is "yes";
  attribute mark_debug_string of \key2_s_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \key2_s_reg[1]\ : label is "KEY2_S0:00,KEY2_S1:01,KEY2_S2:10,KEY2_S3:11";
  attribute KEEP of \key2_s_reg[1]\ : label is "yes";
  attribute mark_debug_string of \key2_s_reg[1]\ : label is "true";
begin
\cnt10ms[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00FE"
    )
        port map (
      I0 => en_10ms_inferred_i_5_n_0,
      I1 => en_10ms_inferred_i_6_n_0,
      I2 => en_10ms_inferred_i_2_n_0,
      I3 => \cnt10ms[0]_i_3_n_0\,
      I4 => cnt10ms_reg(15),
      I5 => en_10ms_inferred_i_3_n_0,
      O => clear
    );
\cnt10ms[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => cnt10ms_reg(14),
      I1 => cnt10ms_reg(10),
      I2 => cnt10ms_reg(13),
      I3 => cnt10ms_reg(11),
      I4 => cnt10ms_reg(12),
      I5 => cnt10ms_reg(9),
      O => \cnt10ms[0]_i_3_n_0\
    );
\cnt10ms[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt10ms_reg(0),
      O => \cnt10ms[0]_i_4_n_0\
    );
\cnt10ms_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[0]_i_2_n_7\,
      Q => cnt10ms_reg(0),
      R => clear
    );
\cnt10ms_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt10ms_reg[0]_i_2_n_0\,
      CO(2) => \cnt10ms_reg[0]_i_2_n_1\,
      CO(1) => \cnt10ms_reg[0]_i_2_n_2\,
      CO(0) => \cnt10ms_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt10ms_reg[0]_i_2_n_4\,
      O(2) => \cnt10ms_reg[0]_i_2_n_5\,
      O(1) => \cnt10ms_reg[0]_i_2_n_6\,
      O(0) => \cnt10ms_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt10ms_reg(3 downto 1),
      S(0) => \cnt10ms[0]_i_4_n_0\
    );
\cnt10ms_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[8]_i_1_n_5\,
      Q => cnt10ms_reg(10),
      R => clear
    );
\cnt10ms_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[8]_i_1_n_4\,
      Q => cnt10ms_reg(11),
      R => clear
    );
\cnt10ms_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[12]_i_1_n_7\,
      Q => cnt10ms_reg(12),
      R => clear
    );
\cnt10ms_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt10ms_reg[8]_i_1_n_0\,
      CO(3) => \cnt10ms_reg[12]_i_1_n_0\,
      CO(2) => \cnt10ms_reg[12]_i_1_n_1\,
      CO(1) => \cnt10ms_reg[12]_i_1_n_2\,
      CO(0) => \cnt10ms_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt10ms_reg[12]_i_1_n_4\,
      O(2) => \cnt10ms_reg[12]_i_1_n_5\,
      O(1) => \cnt10ms_reg[12]_i_1_n_6\,
      O(0) => \cnt10ms_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt10ms_reg(15 downto 12)
    );
\cnt10ms_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[12]_i_1_n_6\,
      Q => cnt10ms_reg(13),
      R => clear
    );
\cnt10ms_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[12]_i_1_n_5\,
      Q => cnt10ms_reg(14),
      R => clear
    );
\cnt10ms_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[12]_i_1_n_4\,
      Q => cnt10ms_reg(15),
      R => clear
    );
\cnt10ms_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[16]_i_1_n_7\,
      Q => cnt10ms_reg(16),
      R => clear
    );
\cnt10ms_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt10ms_reg[12]_i_1_n_0\,
      CO(3) => \NLW_cnt10ms_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt10ms_reg[16]_i_1_n_1\,
      CO(1) => \cnt10ms_reg[16]_i_1_n_2\,
      CO(0) => \cnt10ms_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt10ms_reg[16]_i_1_n_4\,
      O(2) => \cnt10ms_reg[16]_i_1_n_5\,
      O(1) => \cnt10ms_reg[16]_i_1_n_6\,
      O(0) => \cnt10ms_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt10ms_reg(19 downto 16)
    );
\cnt10ms_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[16]_i_1_n_6\,
      Q => cnt10ms_reg(17),
      R => clear
    );
\cnt10ms_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[16]_i_1_n_5\,
      Q => cnt10ms_reg(18),
      R => clear
    );
\cnt10ms_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[16]_i_1_n_4\,
      Q => cnt10ms_reg(19),
      R => clear
    );
\cnt10ms_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[0]_i_2_n_6\,
      Q => cnt10ms_reg(1),
      R => clear
    );
\cnt10ms_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[0]_i_2_n_5\,
      Q => cnt10ms_reg(2),
      R => clear
    );
\cnt10ms_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[0]_i_2_n_4\,
      Q => cnt10ms_reg(3),
      R => clear
    );
\cnt10ms_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[4]_i_1_n_7\,
      Q => cnt10ms_reg(4),
      R => clear
    );
\cnt10ms_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt10ms_reg[0]_i_2_n_0\,
      CO(3) => \cnt10ms_reg[4]_i_1_n_0\,
      CO(2) => \cnt10ms_reg[4]_i_1_n_1\,
      CO(1) => \cnt10ms_reg[4]_i_1_n_2\,
      CO(0) => \cnt10ms_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt10ms_reg[4]_i_1_n_4\,
      O(2) => \cnt10ms_reg[4]_i_1_n_5\,
      O(1) => \cnt10ms_reg[4]_i_1_n_6\,
      O(0) => \cnt10ms_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt10ms_reg(7 downto 4)
    );
\cnt10ms_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[4]_i_1_n_6\,
      Q => cnt10ms_reg(5),
      R => clear
    );
\cnt10ms_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[4]_i_1_n_5\,
      Q => cnt10ms_reg(6),
      R => clear
    );
\cnt10ms_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[4]_i_1_n_4\,
      Q => cnt10ms_reg(7),
      R => clear
    );
\cnt10ms_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[8]_i_1_n_7\,
      Q => cnt10ms_reg(8),
      R => clear
    );
\cnt10ms_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt10ms_reg[4]_i_1_n_0\,
      CO(3) => \cnt10ms_reg[8]_i_1_n_0\,
      CO(2) => \cnt10ms_reg[8]_i_1_n_1\,
      CO(1) => \cnt10ms_reg[8]_i_1_n_2\,
      CO(0) => \cnt10ms_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt10ms_reg[8]_i_1_n_4\,
      O(2) => \cnt10ms_reg[8]_i_1_n_5\,
      O(1) => \cnt10ms_reg[8]_i_1_n_6\,
      O(0) => \cnt10ms_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt10ms_reg(11 downto 8)
    );
\cnt10ms_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \cnt10ms_reg[8]_i_1_n_6\,
      Q => cnt10ms_reg(9),
      R => clear
    );
en_10ms_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => en_10ms_inferred_i_2_n_0,
      I1 => en_10ms_inferred_i_3_n_0,
      I2 => en_10ms_inferred_i_4_n_0,
      I3 => en_10ms_inferred_i_5_n_0,
      I4 => en_10ms_inferred_i_6_n_0,
      O => en_10ms
    );
en_10ms_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt10ms_reg(1),
      I1 => cnt10ms_reg(2),
      I2 => cnt10ms_reg(5),
      I3 => cnt10ms_reg(3),
      I4 => cnt10ms_reg(0),
      I5 => cnt10ms_reg(4),
      O => en_10ms_inferred_i_2_n_0
    );
en_10ms_inferred_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt10ms_reg(18),
      I1 => cnt10ms_reg(17),
      I2 => cnt10ms_reg(19),
      I3 => cnt10ms_reg(16),
      O => en_10ms_inferred_i_3_n_0
    );
en_10ms_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cnt10ms_reg(9),
      I1 => cnt10ms_reg(15),
      I2 => cnt10ms_reg(14),
      O => en_10ms_inferred_i_4_n_0
    );
en_10ms_inferred_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt10ms_reg(10),
      I1 => cnt10ms_reg(13),
      I2 => cnt10ms_reg(11),
      I3 => cnt10ms_reg(12),
      O => en_10ms_inferred_i_5_n_0
    );
en_10ms_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt10ms_reg(6),
      I1 => cnt10ms_reg(7),
      I2 => cnt10ms_reg(8),
      O => en_10ms_inferred_i_6_n_0
    );
\key1_cap__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => key1_s(0),
      I1 => key1_s(1),
      I2 => key1_s_r(1),
      I3 => key1_s_r(0),
      O => key1_cap
    );
\key1_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => key1_i,
      I1 => key1_s(1),
      I2 => key1_s(0),
      O => \p_0_in__0\(0)
    );
\key1_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => key1_s(0),
      I1 => key1_s(1),
      I2 => key1_i,
      O => \p_0_in__0\(1)
    );
\key1_s_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => key1_s(0),
      Q => key1_s_r(0),
      R => '0'
    );
\key1_s_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => key1_s(1),
      Q => key1_s_r(1),
      R => '0'
    );
\key1_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_10ms,
      D => \p_0_in__0\(0),
      Q => key1_s(0),
      R => '0'
    );
\key1_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_10ms,
      D => \p_0_in__0\(1),
      Q => key1_s(1),
      R => '0'
    );
\key2_cap__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => key2_s(0),
      I1 => key2_s(1),
      I2 => key2_s_r(1),
      I3 => key2_s_r(0),
      O => key2_cap
    );
\key2_s[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => key2_i,
      I1 => key2_s(1),
      I2 => key2_s(0),
      O => \p_0_in__1\(0)
    );
\key2_s[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4E"
    )
        port map (
      I0 => key2_s(0),
      I1 => key2_s(1),
      I2 => key2_i,
      O => \p_0_in__1\(1)
    );
\key2_s_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => key2_s(0),
      Q => key2_s_r(0),
      R => '0'
    );
\key2_s_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => key2_s(1),
      Q => key2_s_r(1),
      R => '0'
    );
\key2_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_10ms,
      D => \p_0_in__1\(0),
      Q => key2_s(0),
      R => '0'
    );
\key2_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => en_10ms,
      D => \p_0_in__1\(1),
      Q => key2_s(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity key_init is
  port (
    clk_i : in STD_LOGIC;
    key1_i : in STD_LOGIC;
    key2_i : in STD_LOGIC;
    key1_cap : out STD_LOGIC;
    key2_cap : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of key_init : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of key_init : entity is "key_init,key_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of key_init : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of key_init : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of key_init : entity is "key_ip,Vivado 2019.2";
end key_init;

architecture STRUCTURE of key_init is
begin
inst: entity work.key_init_key_ip
     port map (
      clk_i => clk_i,
      key1_cap => key1_cap,
      key1_i => key1_i,
      key2_cap => key2_cap,
      key2_i => key2_i
    );
end STRUCTURE;
