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

-- DATE "05/13/2026 12:10:33"

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
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	ci : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
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
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ci	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ci : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \U1|U2|co~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U1|U4|s~0_combout\ : std_logic;
SIGNAL \U1|U1|s~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \U1|U2|s~combout\ : std_logic;
SIGNAL \U8|HEX0~0_combout\ : std_logic;
SIGNAL \U8|HEX0~1_combout\ : std_logic;
SIGNAL \U8|HEX0~2_combout\ : std_logic;
SIGNAL \U8|HEX0~3_combout\ : std_logic;
SIGNAL \U8|HEX0~4_combout\ : std_logic;
SIGNAL \U8|HEX0~5_combout\ : std_logic;
SIGNAL \U8|HEX0~6_combout\ : std_logic;
SIGNAL \U2|d~0_combout\ : std_logic;
SIGNAL \U7|HEX0~0_combout\ : std_logic;
SIGNAL \U7|HEX0~1_combout\ : std_logic;
SIGNAL \U7|HEX0~2_combout\ : std_logic;
SIGNAL \U7|HEX0~3_combout\ : std_logic;
SIGNAL \U7|HEX0~4_combout\ : std_logic;
SIGNAL \U7|HEX0~5_combout\ : std_logic;
SIGNAL \U7|HEX0~6_combout\ : std_logic;
SIGNAL \U6|HEX0~0_combout\ : std_logic;
SIGNAL \U6|HEX0~1_combout\ : std_logic;
SIGNAL \U6|HEX0~2_combout\ : std_logic;
SIGNAL \U6|HEX0~3_combout\ : std_logic;
SIGNAL \U6|HEX0~4_combout\ : std_logic;
SIGNAL \U6|HEX0~5_combout\ : std_logic;
SIGNAL \U6|HEX0~6_combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ci~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~6_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~5_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~4_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~3_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~2_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~1_combout\ : std_logic;
SIGNAL \U6|ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~6_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~5_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~4_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~3_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~2_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~1_combout\ : std_logic;
SIGNAL \U7|ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_d~0_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~6_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~5_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~4_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~3_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~2_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~1_combout\ : std_logic;
SIGNAL \U8|ALT_INV_HEX0~0_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_s~combout\ : std_logic;
SIGNAL \U1|U4|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \U1|U2|ALT_INV_co~combout\ : std_logic;
SIGNAL \U1|U2|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_ci <= ci;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX3 <= ww_HEX3;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_ci~input_o\ <= NOT \ci~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\U6|ALT_INV_HEX0~6_combout\ <= NOT \U6|HEX0~6_combout\;
\U6|ALT_INV_HEX0~5_combout\ <= NOT \U6|HEX0~5_combout\;
\U6|ALT_INV_HEX0~4_combout\ <= NOT \U6|HEX0~4_combout\;
\U6|ALT_INV_HEX0~3_combout\ <= NOT \U6|HEX0~3_combout\;
\U6|ALT_INV_HEX0~2_combout\ <= NOT \U6|HEX0~2_combout\;
\U6|ALT_INV_HEX0~1_combout\ <= NOT \U6|HEX0~1_combout\;
\U6|ALT_INV_HEX0~0_combout\ <= NOT \U6|HEX0~0_combout\;
\U7|ALT_INV_HEX0~6_combout\ <= NOT \U7|HEX0~6_combout\;
\U7|ALT_INV_HEX0~5_combout\ <= NOT \U7|HEX0~5_combout\;
\U7|ALT_INV_HEX0~4_combout\ <= NOT \U7|HEX0~4_combout\;
\U7|ALT_INV_HEX0~3_combout\ <= NOT \U7|HEX0~3_combout\;
\U7|ALT_INV_HEX0~2_combout\ <= NOT \U7|HEX0~2_combout\;
\U7|ALT_INV_HEX0~1_combout\ <= NOT \U7|HEX0~1_combout\;
\U7|ALT_INV_HEX0~0_combout\ <= NOT \U7|HEX0~0_combout\;
\U2|ALT_INV_d~0_combout\ <= NOT \U2|d~0_combout\;
\U8|ALT_INV_HEX0~6_combout\ <= NOT \U8|HEX0~6_combout\;
\U8|ALT_INV_HEX0~5_combout\ <= NOT \U8|HEX0~5_combout\;
\U8|ALT_INV_HEX0~4_combout\ <= NOT \U8|HEX0~4_combout\;
\U8|ALT_INV_HEX0~3_combout\ <= NOT \U8|HEX0~3_combout\;
\U8|ALT_INV_HEX0~2_combout\ <= NOT \U8|HEX0~2_combout\;
\U8|ALT_INV_HEX0~1_combout\ <= NOT \U8|HEX0~1_combout\;
\U8|ALT_INV_HEX0~0_combout\ <= NOT \U8|HEX0~0_combout\;
\U1|U1|ALT_INV_s~combout\ <= NOT \U1|U1|s~combout\;
\U1|U4|ALT_INV_s~0_combout\ <= NOT \U1|U4|s~0_combout\;
\U1|U2|ALT_INV_co~combout\ <= NOT \U1|U2|co~combout\;
\U1|U2|ALT_INV_s~combout\ <= NOT \U1|U2|s~combout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|ALT_INV_HEX0~0_combout\,
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
	i => \U8|ALT_INV_HEX0~1_combout\,
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
	i => \U8|ALT_INV_HEX0~2_combout\,
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
	i => \U8|ALT_INV_HEX0~3_combout\,
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
	i => \U8|ALT_INV_HEX0~4_combout\,
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
	i => \U8|ALT_INV_HEX0~5_combout\,
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
	i => \U8|ALT_INV_HEX0~6_combout\,
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
	i => \U2|ALT_INV_d~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \U2|ALT_INV_d~0_combout\,
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
	i => \U2|ALT_INV_d~0_combout\,
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
	i => \U2|ALT_INV_d~0_combout\,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_HEX0~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_HEX0~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X34_Y81_N59
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X72_Y0_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X14_Y81_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y0_N19
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X72_Y0_N2
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X16_Y81_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X30_Y81_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X28_Y81_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X50_Y0_N76
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X10_Y0_N76
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X12_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\ci~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ci,
	o => \ci~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: MLABCELL_X84_Y8_N33
\U1|U2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U2|co~combout\ = ( \b[1]~input_o\ & ( ((!\a[0]~input_o\ & (\b[0]~input_o\ & \ci~input_o\)) # (\a[0]~input_o\ & ((\ci~input_o\) # (\b[0]~input_o\)))) # (\a[1]~input_o\) ) ) # ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((!\a[0]~input_o\ & (\b[0]~input_o\ & 
-- \ci~input_o\)) # (\a[0]~input_o\ & ((\ci~input_o\) # (\b[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U1|U2|co~combout\);

-- Location: IOIBUF_X8_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: MLABCELL_X84_Y8_N6
\U1|U4|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U4|s~0_combout\ = !\b[3]~input_o\ $ (!\a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	combout => \U1|U4|s~0_combout\);

-- Location: MLABCELL_X84_Y8_N42
\U1|U1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U1|s~combout\ = ( \a[0]~input_o\ & ( !\b[0]~input_o\ $ (\ci~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\b[0]~input_o\ $ (!\ci~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_ci~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \U1|U1|s~combout\);

-- Location: IOIBUF_X4_Y0_N35
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: MLABCELL_X84_Y8_N30
\U1|U2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U2|s~combout\ = ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\ & (\b[0]~input_o\ & \ci~input_o\)) # (\a[0]~input_o\ & ((\ci~input_o\) # (\b[0]~input_o\))))) ) ) # ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\ & 
-- ((!\b[0]~input_o\) # (!\ci~input_o\))) # (\a[0]~input_o\ & (!\b[0]~input_o\ & !\ci~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_ci~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U1|U2|s~combout\);

-- Location: LABCELL_X83_Y8_N0
\U8|HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~0_combout\ = ( \b[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U2|co~combout\ & ((!\a[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (\U1|U1|s~combout\))) # (\a[2]~input_o\ & ((!\U1|U1|s~combout\) # (\U1|U4|s~0_combout\))))) # (\U1|U2|co~combout\ & 
-- ((!\a[2]~input_o\ $ (\U1|U1|s~combout\)) # (\U1|U4|s~0_combout\))) ) ) ) # ( !\b[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U2|co~combout\ & ((!\U1|U4|s~0_combout\) # (!\a[2]~input_o\ $ (\U1|U1|s~combout\)))) # (\U1|U2|co~combout\ & ((!\a[2]~input_o\ & 
-- ((!\U1|U4|s~0_combout\) # (\U1|U1|s~combout\))) # (\a[2]~input_o\ & ((!\U1|U1|s~combout\) # (\U1|U4|s~0_combout\))))) ) ) ) # ( \b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U2|co~combout\ & ((!\a[2]~input_o\ & ((\U1|U1|s~combout\) # 
-- (\U1|U4|s~0_combout\))) # (\a[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (!\U1|U1|s~combout\))))) # (\U1|U2|co~combout\ & ((!\U1|U4|s~0_combout\) # (!\a[2]~input_o\ $ (\U1|U1|s~combout\)))) ) ) ) # ( !\b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( 
-- (!\U1|U2|co~combout\ & ((!\a[2]~input_o\ $ (\U1|U1|s~combout\)) # (\U1|U4|s~0_combout\))) # (\U1|U2|co~combout\ & ((!\a[2]~input_o\ & ((\U1|U1|s~combout\) # (\U1|U4|s~0_combout\))) # (\a[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (!\U1|U1|s~combout\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111101111110011111101111100111111001111001111110011110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|ALT_INV_co~combout\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \U1|U4|ALT_INV_s~0_combout\,
	datad => \U1|U1|ALT_INV_s~combout\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\U8|HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~1_combout\ = ( \a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((!\U1|U1|s~combout\ $ (!\U1|U4|s~0_combout\)) # (\U1|U2|co~combout\))) # (\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (!\U1|U1|s~combout\ $ (\U1|U4|s~0_combout\)))) ) ) ) # 
-- ( !\a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (!\U1|U1|s~combout\ $ (!\U1|U4|s~0_combout\)))) # (\b[2]~input_o\ & ((!\U1|U1|s~combout\ $ (!\U1|U4|s~0_combout\)) # (\U1|U2|co~combout\))) ) ) ) # ( \a[2]~input_o\ & 
-- ( !\U1|U2|s~combout\ & ( (!\U1|U1|s~combout\) # ((!\b[2]~input_o\ & ((\U1|U4|s~0_combout\) # (\U1|U2|co~combout\))) # (\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (!\U1|U4|s~0_combout\)))) ) ) ) # ( !\a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( 
-- (!\U1|U1|s~combout\) # ((!\b[2]~input_o\ $ (\U1|U2|co~combout\)) # (\U1|U4|s~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111111111110111111111111010110111111011010111111011011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \U1|U1|ALT_INV_s~combout\,
	datac => \U1|U2|ALT_INV_co~combout\,
	datad => \U1|U4|ALT_INV_s~0_combout\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~1_combout\);

-- Location: MLABCELL_X84_Y8_N24
\U8|HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~2_combout\ = ( \a[2]~input_o\ & ( \U1|U2|s~combout\ & ( ((!\U1|U4|s~0_combout\) # (!\b[2]~input_o\ $ (\U1|U2|co~combout\))) # (\U1|U1|s~combout\) ) ) ) # ( !\a[2]~input_o\ & ( \U1|U2|s~combout\ & ( ((!\b[2]~input_o\ & ((\U1|U4|s~0_combout\) # 
-- (\U1|U2|co~combout\))) # (\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (!\U1|U4|s~0_combout\)))) # (\U1|U1|s~combout\) ) ) ) # ( \a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( ((!\b[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (\U1|U2|co~combout\))) # (\b[2]~input_o\ 
-- & ((!\U1|U2|co~combout\) # (\U1|U4|s~0_combout\)))) # (\U1|U1|s~combout\) ) ) ) # ( !\a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( ((!\U1|U4|s~0_combout\) # (!\b[2]~input_o\ $ (\U1|U2|co~combout\))) # (\U1|U1|s~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110111111110110111111101111111111110111111111110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \U1|U1|ALT_INV_s~combout\,
	datac => \U1|U2|ALT_INV_co~combout\,
	datad => \U1|U4|ALT_INV_s~0_combout\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~2_combout\);

-- Location: MLABCELL_X84_Y8_N0
\U8|HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~3_combout\ = ( \a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\b[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (\U1|U2|co~combout\))) # (\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (\U1|U4|s~0_combout\))))) # (\U1|U1|s~combout\ & 
-- (!\U1|U4|s~0_combout\ $ (((!\b[2]~input_o\) # (!\U1|U2|co~combout\))))) ) ) ) # ( !\a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U4|s~0_combout\) # (!\b[2]~input_o\ $ (\U1|U2|co~combout\)))) # (\U1|U1|s~combout\ & 
-- (!\U1|U4|s~0_combout\ $ (((\U1|U2|co~combout\) # (\b[2]~input_o\))))) ) ) ) # ( \a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((!\U1|U1|s~combout\ & ((\U1|U4|s~0_combout\) # (\U1|U2|co~combout\))) # (\U1|U1|s~combout\ & 
-- ((!\U1|U2|co~combout\) # (!\U1|U4|s~0_combout\))))) # (\b[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (!\U1|U1|s~combout\ $ (\U1|U2|co~combout\)))) ) ) ) # ( !\a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((!\U1|U1|s~combout\ $ 
-- (\U1|U2|co~combout\)) # (\U1|U4|s~0_combout\))) # (\b[2]~input_o\ & ((!\U1|U1|s~combout\ & ((\U1|U4|s~0_combout\) # (\U1|U2|co~combout\))) # (\U1|U1|s~combout\ & ((!\U1|U2|co~combout\) # (!\U1|U4|s~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011111111110011111111110100111101100100101111100100101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \U1|U1|ALT_INV_s~combout\,
	datac => \U1|U2|ALT_INV_co~combout\,
	datad => \U1|U4|ALT_INV_s~0_combout\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~3_combout\);

-- Location: LABCELL_X83_Y8_N6
\U8|HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~4_combout\ = ( \b[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U2|co~combout\ & ((!\U1|U4|s~0_combout\) # (\a[2]~input_o\))) # (\U1|U2|co~combout\ & ((!\a[2]~input_o\) # (\U1|U4|s~0_combout\))))) ) ) ) # ( !\b[2]~input_o\ & 
-- ( \U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U4|s~0_combout\) # (!\U1|U2|co~combout\ $ (\a[2]~input_o\)))) ) ) ) # ( \b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U2|co~combout\ & ((\U1|U4|s~0_combout\) # 
-- (\a[2]~input_o\))) # (\U1|U2|co~combout\ & ((!\a[2]~input_o\) # (!\U1|U4|s~0_combout\))))) ) ) ) # ( !\b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U2|co~combout\ $ (\a[2]~input_o\)) # (\U1|U4|s~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111100000000011111100000000011111001000000001110011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|ALT_INV_co~combout\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \U1|U4|ALT_INV_s~0_combout\,
	datad => \U1|U1|ALT_INV_s~combout\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~4_combout\);

-- Location: LABCELL_X83_Y8_N12
\U8|HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~5_combout\ = ( \b[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U4|s~0_combout\ & ((!\U1|U1|s~combout\) # ((\U1|U2|co~combout\ & \a[2]~input_o\)))) # (\U1|U4|s~0_combout\ & ((!\U1|U2|co~combout\ & (!\a[2]~input_o\)) # (\U1|U2|co~combout\ & 
-- (\a[2]~input_o\ & !\U1|U1|s~combout\)))) ) ) ) # ( !\b[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U4|s~0_combout\ & (!\U1|U1|s~combout\ & ((\a[2]~input_o\) # (\U1|U2|co~combout\)))) # (\U1|U4|s~0_combout\ & ((!\U1|U2|co~combout\ & ((!\U1|U1|s~combout\) # 
-- (\a[2]~input_o\))) # (\U1|U2|co~combout\ & (!\a[2]~input_o\)))) ) ) ) # ( \b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U2|co~combout\ & ((!\U1|U4|s~0_combout\) # ((\a[2]~input_o\ & !\U1|U1|s~combout\)))) # (\U1|U2|co~combout\ & ((!\a[2]~input_o\ & 
-- ((!\U1|U4|s~0_combout\) # (!\U1|U1|s~combout\))) # (\a[2]~input_o\ & (\U1|U4|s~0_combout\)))) ) ) ) # ( !\b[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\U1|U4|s~0_combout\) # (!\U1|U2|co~combout\ $ (\a[2]~input_o\)))) # 
-- (\U1|U1|s~combout\ & (!\U1|U4|s~0_combout\ $ (((!\U1|U2|co~combout\ & !\a[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100101111000111001111110000101111110000001101111100100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|ALT_INV_co~combout\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \U1|U4|ALT_INV_s~0_combout\,
	datad => \U1|U1|ALT_INV_s~combout\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~5_combout\);

-- Location: MLABCELL_X84_Y8_N36
\U8|HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8|HEX0~6_combout\ = ( \a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\U1|U1|s~combout\ & ((!\b[2]~input_o\ $ (\U1|U2|co~combout\)) # (\U1|U4|s~0_combout\))) # (\U1|U1|s~combout\ & (!\U1|U4|s~0_combout\ $ (((!\b[2]~input_o\) # (!\U1|U2|co~combout\))))) ) ) ) 
-- # ( !\a[2]~input_o\ & ( \U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((!\U1|U2|co~combout\ & ((!\U1|U4|s~0_combout\))) # (\U1|U2|co~combout\ & ((!\U1|U1|s~combout\) # (\U1|U4|s~0_combout\))))) # (\b[2]~input_o\ & (((!\U1|U1|s~combout\ & !\U1|U2|co~combout\)) 
-- # (\U1|U4|s~0_combout\))) ) ) ) # ( \a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\U1|U4|s~0_combout\) # (!\b[2]~input_o\ $ (\U1|U2|co~combout\)) ) ) ) # ( !\a[2]~input_o\ & ( !\U1|U2|s~combout\ & ( (!\b[2]~input_o\ & ((\U1|U4|s~0_combout\) # 
-- (\U1|U2|co~combout\))) # (\b[2]~input_o\ & ((!\U1|U2|co~combout\) # (!\U1|U4|s~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010111111111010010111101000010111111000010111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \U1|U1|ALT_INV_s~combout\,
	datac => \U1|U2|ALT_INV_co~combout\,
	datad => \U1|U4|ALT_INV_s~0_combout\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U8|HEX0~6_combout\);

-- Location: MLABCELL_X84_Y8_N15
\U2|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|d~0_combout\ = ( \U1|U2|s~combout\ & ( !\U1|U4|s~0_combout\ $ (((!\U1|U2|co~combout\ & (\b[2]~input_o\ & \a[2]~input_o\)) # (\U1|U2|co~combout\ & ((\a[2]~input_o\) # (\b[2]~input_o\))))) ) ) # ( !\U1|U2|s~combout\ & ( (!\U1|U2|co~combout\ & 
-- ((!\U1|U4|s~0_combout\) # (!\b[2]~input_o\ $ (\a[2]~input_o\)))) # (\U1|U2|co~combout\ & ((!\b[2]~input_o\ & ((!\U1|U4|s~0_combout\) # (\a[2]~input_o\))) # (\b[2]~input_o\ & ((!\a[2]~input_o\) # (\U1|U4|s~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111100111111110011110011111100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|ALT_INV_co~combout\,
	datab => \ALT_INV_b[2]~input_o\,
	datac => \U1|U4|ALT_INV_s~0_combout\,
	datad => \ALT_INV_a[2]~input_o\,
	dataf => \U1|U2|ALT_INV_s~combout\,
	combout => \U2|d~0_combout\);

-- Location: MLABCELL_X84_Y8_N45
\U7|HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~0_combout\ = ( \b[1]~input_o\ ) # ( !\b[1]~input_o\ & ( (!\b[0]~input_o\ $ (\b[2]~input_o\)) # (\b[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111111110011110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~0_combout\);

-- Location: MLABCELL_X84_Y8_N18
\U7|HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~1_combout\ = ( \b[1]~input_o\ & ( (!\b[2]~input_o\) # (\b[0]~input_o\) ) ) # ( !\b[1]~input_o\ & ( (!\b[2]~input_o\) # (!\b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~1_combout\);

-- Location: MLABCELL_X84_Y8_N21
\U7|HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~2_combout\ = ( \b[1]~input_o\ & ( (\b[0]~input_o\) # (\b[2]~input_o\) ) ) # ( !\b[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~2_combout\);

-- Location: MLABCELL_X84_Y8_N9
\U7|HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~3_combout\ = ( \b[1]~input_o\ & ( ((!\b[0]~input_o\) # (!\b[2]~input_o\)) # (\b[3]~input_o\) ) ) # ( !\b[1]~input_o\ & ( (!\b[0]~input_o\ $ (\b[2]~input_o\)) # (\b[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100111111111100110011111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~3_combout\);

-- Location: MLABCELL_X84_Y8_N12
\U7|HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~4_combout\ = ( \b[1]~input_o\ & ( !\b[0]~input_o\ ) ) # ( !\b[1]~input_o\ & ( (!\b[2]~input_o\ & !\b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~4_combout\);

-- Location: MLABCELL_X84_Y8_N54
\U7|HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~5_combout\ = ( \b[1]~input_o\ & ( ((\b[2]~input_o\ & !\b[0]~input_o\)) # (\b[3]~input_o\) ) ) # ( !\b[1]~input_o\ & ( ((!\b[0]~input_o\) # (\b[3]~input_o\)) # (\b[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011101110111001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~5_combout\);

-- Location: MLABCELL_X84_Y8_N57
\U7|HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7|HEX0~6_combout\ = ( \b[1]~input_o\ & ( (!\b[2]~input_o\) # ((!\b[0]~input_o\) # (\b[3]~input_o\)) ) ) # ( !\b[1]~input_o\ & ( (\b[3]~input_o\) # (\b[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U7|HEX0~6_combout\);

-- Location: LABCELL_X83_Y8_N18
\U6|HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~0_combout\ = ( \a[1]~input_o\ ) # ( !\a[1]~input_o\ & ( (!\a[0]~input_o\ $ (\a[2]~input_o\)) # (\a[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111111111111111111110011111100111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~0_combout\);

-- Location: LABCELL_X83_Y8_N54
\U6|HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~1_combout\ = ( \a[1]~input_o\ & ( (!\a[2]~input_o\) # (\a[0]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (!\a[2]~input_o\) # (!\a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100110011111100111111111100111111001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~1_combout\);

-- Location: LABCELL_X83_Y8_N33
\U6|HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~2_combout\ = ( \a[1]~input_o\ & ( (\a[2]~input_o\) # (\a[0]~input_o\) ) ) # ( !\a[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010111110101111111111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~2_combout\);

-- Location: LABCELL_X83_Y8_N39
\U6|HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~3_combout\ = ( \a[1]~input_o\ & ( ((!\a[2]~input_o\) # (!\a[0]~input_o\)) # (\a[3]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (!\a[2]~input_o\ $ (\a[0]~input_o\)) # (\a[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101011111111111111111010111110101010111111111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~3_combout\);

-- Location: LABCELL_X83_Y8_N42
\U6|HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~4_combout\ = ( \a[1]~input_o\ & ( !\a[0]~input_o\ ) ) # ( !\a[1]~input_o\ & ( (!\a[2]~input_o\ & !\a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000111100001111000011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~4_combout\);

-- Location: LABCELL_X83_Y8_N48
\U6|HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~5_combout\ = ( \a[1]~input_o\ & ( ((!\a[0]~input_o\ & \a[2]~input_o\)) # (\a[3]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (!\a[0]~input_o\) # ((\a[3]~input_o\) # (\a[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111001011110010111110111111101111110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~5_combout\);

-- Location: LABCELL_X83_Y8_N27
\U6|HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|HEX0~6_combout\ = ( \a[1]~input_o\ & ( ((!\a[2]~input_o\) # (!\a[0]~input_o\)) # (\a[3]~input_o\) ) ) # ( !\a[1]~input_o\ & ( (\a[2]~input_o\) # (\a[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111010101011111010111111111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[1]~input_o\,
	combout => \U6|HEX0~6_combout\);

-- Location: LABCELL_X9_Y36_N3
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


