-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/30/2026 09:16:55"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	system IS
    PORT (
	sel1 : IN std_logic;
	sel2 : IN std_logic;
	con0 : IN std_logic_vector(1 DOWNTO 0);
	con1 : IN std_logic_vector(1 DOWNTO 0);
	con2 : IN std_logic_vector(1 DOWNTO 0);
	con3 : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END system;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sel1	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con0[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con1[0]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con2[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con3[0]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel2	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con0[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con1[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con2[1]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- con3[1]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel1 : std_logic;
SIGNAL ww_sel2 : std_logic;
SIGNAL ww_con0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_con1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_con2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_con3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel1~input_o\ : std_logic;
SIGNAL \con3[0]~input_o\ : std_logic;
SIGNAL \sel2~input_o\ : std_logic;
SIGNAL \con1[0]~input_o\ : std_logic;
SIGNAL \con2[0]~input_o\ : std_logic;
SIGNAL \con0[0]~input_o\ : std_logic;
SIGNAL \U1|U3|m[0]~0_combout\ : std_logic;
SIGNAL \con1[1]~input_o\ : std_logic;
SIGNAL \con3[1]~input_o\ : std_logic;
SIGNAL \con0[1]~input_o\ : std_logic;
SIGNAL \con2[1]~input_o\ : std_logic;
SIGNAL \U1|U3|m[1]~1_combout\ : std_logic;
SIGNAL m_final : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_con1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_con2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_con3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel2~input_o\ : std_logic;
SIGNAL \ALT_INV_con0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_con1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_con2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_con3[1]~input_o\ : std_logic;
SIGNAL \U1|U3|ALT_INV_m[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_m_final : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|ALT_INV_m[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_sel1~input_o\ : std_logic;
SIGNAL \ALT_INV_con0[0]~input_o\ : std_logic;

BEGIN

ww_sel1 <= sel1;
ww_sel2 <= sel2;
ww_con0 <= con0;
ww_con1 <= con1;
ww_con2 <= con2;
ww_con3 <= con3;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_con1[0]~input_o\ <= NOT \con1[0]~input_o\;
\ALT_INV_con2[0]~input_o\ <= NOT \con2[0]~input_o\;
\ALT_INV_con3[0]~input_o\ <= NOT \con3[0]~input_o\;
\ALT_INV_sel2~input_o\ <= NOT \sel2~input_o\;
\ALT_INV_con0[1]~input_o\ <= NOT \con0[1]~input_o\;
\ALT_INV_con1[1]~input_o\ <= NOT \con1[1]~input_o\;
\ALT_INV_con2[1]~input_o\ <= NOT \con2[1]~input_o\;
\ALT_INV_con3[1]~input_o\ <= NOT \con3[1]~input_o\;
\U1|U3|ALT_INV_m[0]~0_combout\ <= NOT \U1|U3|m[0]~0_combout\;
ALT_INV_m_final(0) <= NOT m_final(0);
\U1|U3|ALT_INV_m[1]~1_combout\ <= NOT \U1|U3|m[1]~1_combout\;
\ALT_INV_sel1~input_o\ <= NOT \sel1~input_o\;
\ALT_INV_con0[0]~input_o\ <= NOT \con0[0]~input_o\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_m_final(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => m_final(0),
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => m_final(0),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => m_final(1),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => m_final(1),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_m_final(0),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => m_final(1),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X4_Y0_N18
\sel1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel1,
	o => \sel1~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\con3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con3(0),
	o => \con3[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\sel2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel2,
	o => \sel2~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\con1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con1(0),
	o => \con1[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\con2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con2(0),
	o => \con2[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\con0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con0(0),
	o => \con0[0]~input_o\);

-- Location: LABCELL_X4_Y1_N30
\U1|U3|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|m[0]~0_combout\ = ( \con2[0]~input_o\ & ( \con0[0]~input_o\ & ( (!\sel1~input_o\) # ((!\sel2~input_o\ & ((\con1[0]~input_o\))) # (\sel2~input_o\ & (\con3[0]~input_o\))) ) ) ) # ( !\con2[0]~input_o\ & ( \con0[0]~input_o\ & ( (!\sel1~input_o\ & 
-- (((!\sel2~input_o\)))) # (\sel1~input_o\ & ((!\sel2~input_o\ & ((\con1[0]~input_o\))) # (\sel2~input_o\ & (\con3[0]~input_o\)))) ) ) ) # ( \con2[0]~input_o\ & ( !\con0[0]~input_o\ & ( (!\sel1~input_o\ & (((\sel2~input_o\)))) # (\sel1~input_o\ & 
-- ((!\sel2~input_o\ & ((\con1[0]~input_o\))) # (\sel2~input_o\ & (\con3[0]~input_o\)))) ) ) ) # ( !\con2[0]~input_o\ & ( !\con0[0]~input_o\ & ( (\sel1~input_o\ & ((!\sel2~input_o\ & ((\con1[0]~input_o\))) # (\sel2~input_o\ & (\con3[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel1~input_o\,
	datab => \ALT_INV_con3[0]~input_o\,
	datac => \ALT_INV_sel2~input_o\,
	datad => \ALT_INV_con1[0]~input_o\,
	datae => \ALT_INV_con2[0]~input_o\,
	dataf => \ALT_INV_con0[0]~input_o\,
	combout => \U1|U3|m[0]~0_combout\);

-- Location: LABCELL_X4_Y1_N9
\m_final[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- m_final(0) = !\sel1~input_o\ $ (!\U1|U3|m[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel1~input_o\,
	datab => \U1|U3|ALT_INV_m[0]~0_combout\,
	combout => m_final(0));

-- Location: IOIBUF_X4_Y0_N52
\con1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con1(1),
	o => \con1[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\con3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con3(1),
	o => \con3[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\con0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con0(1),
	o => \con0[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\con2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_con2(1),
	o => \con2[1]~input_o\);

-- Location: LABCELL_X4_Y1_N42
\U1|U3|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|m[1]~1_combout\ = ( \sel2~input_o\ & ( \con2[1]~input_o\ & ( (!\sel1~input_o\) # (\con3[1]~input_o\) ) ) ) # ( !\sel2~input_o\ & ( \con2[1]~input_o\ & ( (!\sel1~input_o\ & ((\con0[1]~input_o\))) # (\sel1~input_o\ & (\con1[1]~input_o\)) ) ) ) # ( 
-- \sel2~input_o\ & ( !\con2[1]~input_o\ & ( (\con3[1]~input_o\ & \sel1~input_o\) ) ) ) # ( !\sel2~input_o\ & ( !\con2[1]~input_o\ & ( (!\sel1~input_o\ & ((\con0[1]~input_o\))) # (\sel1~input_o\ & (\con1[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_con1[1]~input_o\,
	datab => \ALT_INV_con3[1]~input_o\,
	datac => \ALT_INV_sel1~input_o\,
	datad => \ALT_INV_con0[1]~input_o\,
	datae => \ALT_INV_sel2~input_o\,
	dataf => \ALT_INV_con2[1]~input_o\,
	combout => \U1|U3|m[1]~1_combout\);

-- Location: LABCELL_X4_Y1_N6
\m_final[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- m_final(1) = ( \U1|U3|m[1]~1_combout\ & ( !\sel2~input_o\ $ (((\sel1~input_o\ & \U1|U3|m[0]~0_combout\))) ) ) # ( !\U1|U3|m[1]~1_combout\ & ( !\sel2~input_o\ $ (((!\sel1~input_o\) # (!\U1|U3|m[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel1~input_o\,
	datab => \U1|U3|ALT_INV_m[0]~0_combout\,
	datac => \ALT_INV_sel2~input_o\,
	dataf => \U1|U3|ALT_INV_m[1]~1_combout\,
	combout => m_final(1));

-- Location: LABCELL_X29_Y78_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


