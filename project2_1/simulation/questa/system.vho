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

-- DATE "04/30/2026 14:24:30"

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
	num1 : IN std_logic_vector(3 DOWNTO 0);
	num2 : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
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
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- num1[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num1[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num1[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num1[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num2[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num2[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num2[1]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- num2[3]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_num1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_num2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \num1[3]~input_o\ : std_logic;
SIGNAL \num1[0]~input_o\ : std_logic;
SIGNAL \num1[2]~input_o\ : std_logic;
SIGNAL \num1[1]~input_o\ : std_logic;
SIGNAL \U1|HEX0~0_combout\ : std_logic;
SIGNAL \U1|HEX0~1_combout\ : std_logic;
SIGNAL \U1|HEX0~2_combout\ : std_logic;
SIGNAL \U1|HEX0~3_combout\ : std_logic;
SIGNAL \U1|HEX0~4_combout\ : std_logic;
SIGNAL \U1|HEX0~5_combout\ : std_logic;
SIGNAL \U1|HEX0~6_combout\ : std_logic;
SIGNAL \num2[3]~input_o\ : std_logic;
SIGNAL \num2[2]~input_o\ : std_logic;
SIGNAL \num2[0]~input_o\ : std_logic;
SIGNAL \num2[1]~input_o\ : std_logic;
SIGNAL \U2|HEX0~0_combout\ : std_logic;
SIGNAL \U2|HEX0~1_combout\ : std_logic;
SIGNAL \U2|HEX0~2_combout\ : std_logic;
SIGNAL \U2|HEX0~3_combout\ : std_logic;
SIGNAL \U2|HEX0~4_combout\ : std_logic;
SIGNAL \U2|HEX0~5_combout\ : std_logic;
SIGNAL \U2|HEX0~6_combout\ : std_logic;
SIGNAL \ALT_INV_num1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_num1[1]~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~4_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~5_combout\ : std_logic;
SIGNAL \U1|ALT_INV_HEX0~6_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~1_combout\ : std_logic;
SIGNAL \ALT_INV_num1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[0]~input_o\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~2_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~3_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~4_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~5_combout\ : std_logic;
SIGNAL \U2|ALT_INV_HEX0~6_combout\ : std_logic;
SIGNAL \ALT_INV_num1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_num2[2]~input_o\ : std_logic;

BEGIN

ww_num1 <= num1;
ww_num2 <= num2;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_num1[2]~input_o\ <= NOT \num1[2]~input_o\;
\ALT_INV_num1[1]~input_o\ <= NOT \num1[1]~input_o\;
\U1|ALT_INV_HEX0~0_combout\ <= NOT \U1|HEX0~0_combout\;
\U1|ALT_INV_HEX0~1_combout\ <= NOT \U1|HEX0~1_combout\;
\U1|ALT_INV_HEX0~2_combout\ <= NOT \U1|HEX0~2_combout\;
\U1|ALT_INV_HEX0~3_combout\ <= NOT \U1|HEX0~3_combout\;
\U1|ALT_INV_HEX0~4_combout\ <= NOT \U1|HEX0~4_combout\;
\U1|ALT_INV_HEX0~5_combout\ <= NOT \U1|HEX0~5_combout\;
\U1|ALT_INV_HEX0~6_combout\ <= NOT \U1|HEX0~6_combout\;
\U2|ALT_INV_HEX0~0_combout\ <= NOT \U2|HEX0~0_combout\;
\U2|ALT_INV_HEX0~1_combout\ <= NOT \U2|HEX0~1_combout\;
\ALT_INV_num1[3]~input_o\ <= NOT \num1[3]~input_o\;
\ALT_INV_num2[0]~input_o\ <= NOT \num2[0]~input_o\;
\U2|ALT_INV_HEX0~2_combout\ <= NOT \U2|HEX0~2_combout\;
\U2|ALT_INV_HEX0~3_combout\ <= NOT \U2|HEX0~3_combout\;
\U2|ALT_INV_HEX0~4_combout\ <= NOT \U2|HEX0~4_combout\;
\U2|ALT_INV_HEX0~5_combout\ <= NOT \U2|HEX0~5_combout\;
\U2|ALT_INV_HEX0~6_combout\ <= NOT \U2|HEX0~6_combout\;
\ALT_INV_num1[0]~input_o\ <= NOT \num1[0]~input_o\;
\ALT_INV_num2[3]~input_o\ <= NOT \num2[3]~input_o\;
\ALT_INV_num2[1]~input_o\ <= NOT \num2[1]~input_o\;
\ALT_INV_num2[2]~input_o\ <= NOT \num2[2]~input_o\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_HEX0~0_combout\,
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
	i => \U1|ALT_INV_HEX0~1_combout\,
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
	i => \U1|ALT_INV_HEX0~2_combout\,
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
	i => \U1|ALT_INV_HEX0~3_combout\,
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
	i => \U1|ALT_INV_HEX0~4_combout\,
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
	i => \U1|ALT_INV_HEX0~5_combout\,
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
	i => \U1|ALT_INV_HEX0~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_HEX0~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X4_Y0_N52
\num1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(3),
	o => \num1[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\num1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(0),
	o => \num1[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\num1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(2),
	o => \num1[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\num1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num1(1),
	o => \num1[1]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\U1|HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~0_combout\ = ( \num1[2]~input_o\ & ( \num1[1]~input_o\ ) ) # ( !\num1[2]~input_o\ & ( \num1[1]~input_o\ & ( (\num1[0]~input_o\) # (\num1[3]~input_o\) ) ) ) # ( \num1[2]~input_o\ & ( !\num1[1]~input_o\ ) ) # ( !\num1[2]~input_o\ & ( 
-- !\num1[1]~input_o\ & ( (!\num1[3]~input_o\) # (\num1[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num1[3]~input_o\,
	datac => \ALT_INV_num1[0]~input_o\,
	datae => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\U1|HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~1_combout\ = ( \num1[2]~input_o\ & ( \num1[1]~input_o\ & ( \num1[3]~input_o\ ) ) ) # ( !\num1[2]~input_o\ & ( \num1[1]~input_o\ & ( !\num1[3]~input_o\ ) ) ) # ( \num1[2]~input_o\ & ( !\num1[1]~input_o\ ) ) # ( !\num1[2]~input_o\ & ( 
-- !\num1[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num1[3]~input_o\,
	datae => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~1_combout\);

-- Location: LABCELL_X88_Y8_N45
\U1|HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~2_combout\ = ( \num1[2]~input_o\ & ( \num1[1]~input_o\ ) ) # ( !\num1[2]~input_o\ & ( \num1[1]~input_o\ ) ) # ( \num1[2]~input_o\ & ( !\num1[1]~input_o\ & ( \num1[3]~input_o\ ) ) ) # ( !\num1[2]~input_o\ & ( !\num1[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_num1[3]~input_o\,
	datae => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~2_combout\);

-- Location: LABCELL_X88_Y8_N21
\U1|HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~3_combout\ = ( \num1[2]~input_o\ & ( \num1[1]~input_o\ & ( (!\num1[3]~input_o\) # (\num1[0]~input_o\) ) ) ) # ( !\num1[2]~input_o\ & ( \num1[1]~input_o\ & ( (\num1[3]~input_o\) # (\num1[0]~input_o\) ) ) ) # ( \num1[2]~input_o\ & ( 
-- !\num1[1]~input_o\ ) ) # ( !\num1[2]~input_o\ & ( !\num1[1]~input_o\ & ( (!\num1[3]~input_o\) # (\num1[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111111101011111010111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num1[0]~input_o\,
	datac => \ALT_INV_num1[3]~input_o\,
	datae => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~3_combout\);

-- Location: LABCELL_X88_Y8_N54
\U1|HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~4_combout\ = ( \num1[2]~input_o\ & ( \num1[1]~input_o\ & ( !\num1[3]~input_o\ ) ) ) # ( \num1[2]~input_o\ & ( !\num1[1]~input_o\ & ( !\num1[3]~input_o\ ) ) ) # ( !\num1[2]~input_o\ & ( !\num1[1]~input_o\ & ( !\num1[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num1[3]~input_o\,
	datae => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~4_combout\);

-- Location: LABCELL_X88_Y8_N30
\U1|HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~5_combout\ = ( \num1[1]~input_o\ & ( ((!\num1[3]~input_o\) # (!\num1[2]~input_o\)) # (\num1[0]~input_o\) ) ) # ( !\num1[1]~input_o\ & ( ((!\num1[3]~input_o\ & !\num1[2]~input_o\)) # (\num1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101010101110111010101010111111111110111011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num1[0]~input_o\,
	datab => \ALT_INV_num1[3]~input_o\,
	datad => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~5_combout\);

-- Location: LABCELL_X88_Y8_N33
\U1|HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|HEX0~6_combout\ = ( \num1[1]~input_o\ & ( ((!\num1[3]~input_o\) # (!\num1[2]~input_o\)) # (\num1[0]~input_o\) ) ) # ( !\num1[1]~input_o\ & ( (\num1[2]~input_o\) # (\num1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num1[0]~input_o\,
	datab => \ALT_INV_num1[3]~input_o\,
	datac => \ALT_INV_num1[2]~input_o\,
	dataf => \ALT_INV_num1[1]~input_o\,
	combout => \U1|HEX0~6_combout\);

-- Location: IOIBUF_X4_Y0_N1
\num2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(3),
	o => \num2[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\num2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(2),
	o => \num2[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\num2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(0),
	o => \num2[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\num2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_num2(1),
	o => \num2[1]~input_o\);

-- Location: LABCELL_X88_Y8_N9
\U2|HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~0_combout\ = ( \num2[0]~input_o\ & ( \num2[1]~input_o\ ) ) # ( !\num2[0]~input_o\ & ( \num2[1]~input_o\ & ( (\num2[2]~input_o\) # (\num2[3]~input_o\) ) ) ) # ( \num2[0]~input_o\ & ( !\num2[1]~input_o\ ) ) # ( !\num2[0]~input_o\ & ( 
-- !\num2[1]~input_o\ & ( (!\num2[3]~input_o\) # (\num2[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111111111111111101010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[3]~input_o\,
	datad => \ALT_INV_num2[2]~input_o\,
	datae => \ALT_INV_num2[0]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\U2|HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~1_combout\ = ( \num2[1]~input_o\ & ( !\num2[3]~input_o\ $ (\num2[2]~input_o\) ) ) # ( !\num2[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[3]~input_o\,
	datad => \ALT_INV_num2[2]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~1_combout\);

-- Location: LABCELL_X88_Y8_N48
\U2|HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~2_combout\ = ( \num2[1]~input_o\ ) # ( !\num2[1]~input_o\ & ( (!\num2[2]~input_o\) # (\num2[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[2]~input_o\,
	datac => \ALT_INV_num2[3]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~2_combout\);

-- Location: LABCELL_X88_Y8_N24
\U2|HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~3_combout\ = ( \num2[1]~input_o\ & ( (!\num2[2]~input_o\ $ (!\num2[3]~input_o\)) # (\num2[0]~input_o\) ) ) # ( !\num2[1]~input_o\ & ( ((!\num2[3]~input_o\) # (\num2[2]~input_o\)) # (\num2[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111100111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_num2[0]~input_o\,
	datac => \ALT_INV_num2[2]~input_o\,
	datad => \ALT_INV_num2[3]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~3_combout\);

-- Location: LABCELL_X88_Y8_N51
\U2|HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~4_combout\ = ( \num2[1]~input_o\ & ( (\num2[2]~input_o\ & !\num2[3]~input_o\) ) ) # ( !\num2[1]~input_o\ & ( !\num2[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[2]~input_o\,
	datad => \ALT_INV_num2[3]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~4_combout\);

-- Location: LABCELL_X88_Y8_N27
\U2|HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~5_combout\ = ( \num2[1]~input_o\ & ( (!\num2[2]~input_o\) # ((!\num2[3]~input_o\) # (\num2[0]~input_o\)) ) ) # ( !\num2[1]~input_o\ & ( ((!\num2[2]~input_o\ & !\num2[3]~input_o\)) # (\num2[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100110011101110110011001111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[2]~input_o\,
	datab => \ALT_INV_num2[0]~input_o\,
	datad => \ALT_INV_num2[3]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~5_combout\);

-- Location: LABCELL_X88_Y8_N12
\U2|HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|HEX0~6_combout\ = ( \num2[1]~input_o\ & ( (!\num2[3]~input_o\) # ((!\num2[2]~input_o\) # (\num2[0]~input_o\)) ) ) # ( !\num2[1]~input_o\ & ( (\num2[0]~input_o\) # (\num2[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_num2[3]~input_o\,
	datac => \ALT_INV_num2[2]~input_o\,
	datad => \ALT_INV_num2[0]~input_o\,
	dataf => \ALT_INV_num2[1]~input_o\,
	combout => \U2|HEX0~6_combout\);

-- Location: LABCELL_X30_Y40_N3
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


