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

-- DATE "05/19/2026 14:33:16"

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

ENTITY 	FAdder IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	ci : IN std_logic;
	sum : OUT std_logic_vector(15 DOWNTO 0);
	co : OUT std_logic;
	neg : OUT std_logic
	);
END FAdder;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[8]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[9]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[10]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[11]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[12]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[13]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[14]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[15]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ci : std_logic;
SIGNAL ww_sum : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \u0|u0|sum~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \u0|u1|sum~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \u0|u1|co~0_combout\ : std_logic;
SIGNAL \u0|u2|sum~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \u0|u2|co~0_combout\ : std_logic;
SIGNAL \u0|u3|sum~combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \u1|u0|sum~combout\ : std_logic;
SIGNAL \u1|u0|co~combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \u1|u1|sum~combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \u1|u1|co~combout\ : std_logic;
SIGNAL \u1|u2|sum~combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \u1|u3|sum~combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \u1|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u3|co~combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \u2|u0|sum~combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \u2|u1|sum~combout\ : std_logic;
SIGNAL \u2|u1|co~combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \u2|u2|sum~combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \u2|u3|sum~combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u3|u0|sum~combout\ : std_logic;
SIGNAL \u2|u3|co~combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \u3|u1|sum~combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \u3|u2|sum~0_combout\ : std_logic;
SIGNAL \u3|u2|sum~combout\ : std_logic;
SIGNAL \u3|u1|co~combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \u3|u3|sum~combout\ : std_logic;
SIGNAL \u3|u3|co~combout\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ci~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u0|u1|ALT_INV_co~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_ci <= ci;
sum <= ww_sum;
co <= ww_co;
neg <= ww_neg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_ci~input_o\ <= NOT \ci~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\u3|u1|ALT_INV_co~combout\ <= NOT \u3|u1|co~combout\;
\u3|u2|ALT_INV_sum~0_combout\ <= NOT \u3|u2|sum~0_combout\;
\u2|u3|ALT_INV_co~combout\ <= NOT \u2|u3|co~combout\;
\u3|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u0|sum~0_combout\;
\u2|u1|ALT_INV_co~combout\ <= NOT \u2|u1|co~combout\;
\u1|u3|ALT_INV_co~combout\ <= NOT \u1|u3|co~combout\;
\u1|u3|ALT_INV_co~0_combout\ <= NOT \u1|u3|co~0_combout\;
\u1|u1|ALT_INV_co~combout\ <= NOT \u1|u1|co~combout\;
\u1|u0|ALT_INV_co~combout\ <= NOT \u1|u0|co~combout\;
\u0|u2|ALT_INV_co~0_combout\ <= NOT \u0|u2|co~0_combout\;
\u0|u1|ALT_INV_co~0_combout\ <= NOT \u0|u1|co~0_combout\;

-- Location: IOOBUF_X16_Y0_N2
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u0|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X12_Y0_N53
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u1|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X14_Y0_N53
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u2|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X18_Y0_N42
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|u3|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X18_Y0_N93
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u0|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X20_Y0_N2
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u1|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X24_Y0_N53
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u2|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X26_Y0_N59
\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u3|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(7));

-- Location: IOOBUF_X26_Y0_N42
\sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u0|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(8));

-- Location: IOOBUF_X22_Y0_N19
\sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u1|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(9));

-- Location: IOOBUF_X10_Y0_N59
\sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u2|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(10));

-- Location: IOOBUF_X6_Y0_N36
\sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u3|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(11));

-- Location: IOOBUF_X10_Y0_N93
\sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u0|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(12));

-- Location: IOOBUF_X8_Y0_N53
\sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(13));

-- Location: IOOBUF_X10_Y0_N42
\sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u2|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(14));

-- Location: IOOBUF_X2_Y0_N59
\sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u3|sum~combout\,
	devoe => ww_devoe,
	o => ww_sum(15));

-- Location: IOOBUF_X6_Y0_N19
\co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u3|co~combout\,
	devoe => ww_devoe,
	o => ww_co);

-- Location: IOOBUF_X2_Y0_N93
\neg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u3|sum~combout\,
	devoe => ww_devoe,
	o => ww_neg);

-- Location: IOIBUF_X18_Y0_N58
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\ci~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ci,
	o => \ci~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X17_Y1_N0
\u0|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u0|sum~combout\ = ( \b[0]~input_o\ & ( !\a[0]~input_o\ $ (\ci~input_o\) ) ) # ( !\b[0]~input_o\ & ( !\a[0]~input_o\ $ (!\ci~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \u0|u0|sum~combout\);

-- Location: IOIBUF_X12_Y0_N18
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X17_Y1_N39
\u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u1|sum~combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( !\ci~input_o\ $ (!\a[0]~input_o\ $ (!\a[1]~input_o\)) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[0]~input_o\ $ (\a[1]~input_o\) ) ) ) # ( \b[0]~input_o\ & ( !\b[1]~input_o\ & ( 
-- !\ci~input_o\ $ (!\a[0]~input_o\ $ (\a[1]~input_o\)) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[0]~input_o\ $ (!\a[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100011010010110100111000011110000111001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ci~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \u0|u1|sum~combout\);

-- Location: IOIBUF_X16_Y0_N18
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X17_Y1_N42
\u0|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u1|co~0_combout\ = ( \b[1]~input_o\ & ( !\a[0]~input_o\ $ (((!\b[0]~input_o\) # (!\ci~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \u0|u1|co~0_combout\);

-- Location: LABCELL_X17_Y1_N45
\u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u2|sum~combout\ = ( \u0|u1|co~0_combout\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ (!\a[1]~input_o\)) ) ) # ( !\u0|u1|co~0_combout\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ (\a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \u0|u1|ALT_INV_co~0_combout\,
	combout => \u0|u2|sum~combout\);

-- Location: IOIBUF_X14_Y0_N35
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X17_Y1_N18
\u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u2|co~0_combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( (\b[2]~input_o\ & (!\ci~input_o\ $ (!\a[1]~input_o\ $ (\a[0]~input_o\)))) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( (\b[2]~input_o\ & (!\a[1]~input_o\ $ (!\a[0]~input_o\))) ) ) ) # ( 
-- \b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & \b[2]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & \b[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000011000000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ci~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \u0|u2|co~0_combout\);

-- Location: LABCELL_X17_Y1_N24
\u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|u3|sum~combout\ = ( \b[3]~input_o\ & ( \u0|u2|co~0_combout\ & ( !\a[3]~input_o\ $ (!\a[2]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( \u0|u2|co~0_combout\ & ( !\a[3]~input_o\ $ (\a[2]~input_o\) ) ) ) # ( \b[3]~input_o\ & ( !\u0|u2|co~0_combout\ & ( 
-- !\a[3]~input_o\ $ (\a[2]~input_o\) ) ) ) # ( !\b[3]~input_o\ & ( !\u0|u2|co~0_combout\ & ( !\a[3]~input_o\ $ (!\a[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100110011000011001111001100001100110011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \u0|u2|ALT_INV_co~0_combout\,
	combout => \u0|u3|sum~combout\);

-- Location: IOIBUF_X14_Y0_N18
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LABCELL_X17_Y1_N30
\u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u0|sum~combout\ = ( \b[3]~input_o\ & ( \b[4]~input_o\ & ( !\u0|u2|co~0_combout\ $ (!\a[3]~input_o\ $ (!\a[4]~input_o\ $ (\a[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( \b[4]~input_o\ & ( !\a[3]~input_o\ $ (\a[4]~input_o\) ) ) ) # ( \b[3]~input_o\ & ( 
-- !\b[4]~input_o\ & ( !\u0|u2|co~0_combout\ $ (!\a[3]~input_o\ $ (!\a[4]~input_o\ $ (!\a[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( !\b[4]~input_o\ & ( !\a[3]~input_o\ $ (!\a[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100011010011001011011000011110000111001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \u1|u0|sum~combout\);

-- Location: LABCELL_X17_Y1_N6
\u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u0|co~combout\ = ( \b[3]~input_o\ & ( \b[4]~input_o\ & ( !\u0|u2|co~0_combout\ $ (!\a[3]~input_o\ $ (!\a[4]~input_o\ $ (!\a[2]~input_o\))) ) ) ) # ( !\b[3]~input_o\ & ( \b[4]~input_o\ & ( !\a[3]~input_o\ $ (!\a[4]~input_o\) ) ) ) # ( \b[3]~input_o\ & 
-- ( !\b[4]~input_o\ & ( \a[4]~input_o\ ) ) ) # ( !\b[3]~input_o\ & ( !\b[4]~input_o\ & ( \a[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \u1|u0|co~combout\);

-- Location: IOIBUF_X22_Y0_N1
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LABCELL_X23_Y1_N30
\u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|sum~combout\ = ( \a[5]~input_o\ & ( !\u1|u0|co~combout\ $ (\b[5]~input_o\) ) ) # ( !\a[5]~input_o\ & ( !\u1|u0|co~combout\ $ (!\b[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u0|ALT_INV_co~combout\,
	datac => \ALT_INV_b[5]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \u1|u1|sum~combout\);

-- Location: IOIBUF_X22_Y0_N52
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LABCELL_X23_Y1_N39
\u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|co~combout\ = ( \a[5]~input_o\ & ( (!\b[5]~input_o\) # (!\u1|u0|co~combout\) ) ) # ( !\a[5]~input_o\ & ( (\b[5]~input_o\ & \u1|u0|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datac => \u1|u0|ALT_INV_co~combout\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \u1|u1|co~combout\);

-- Location: LABCELL_X23_Y1_N36
\u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|sum~combout\ = ( \u1|u1|co~combout\ & ( !\b[6]~input_o\ $ (\a[6]~input_o\) ) ) # ( !\u1|u1|co~combout\ & ( !\b[6]~input_o\ $ (!\a[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[6]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \u1|u1|ALT_INV_co~combout\,
	combout => \u1|u2|sum~combout\);

-- Location: IOIBUF_X20_Y0_N52
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LABCELL_X23_Y1_N15
\u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|sum~combout\ = ( \a[6]~input_o\ & ( \a[7]~input_o\ & ( !\b[7]~input_o\ $ (((!\u1|u1|co~combout\) # (!\b[6]~input_o\))) ) ) ) # ( !\a[6]~input_o\ & ( \a[7]~input_o\ & ( !\b[7]~input_o\ $ (((\u1|u1|co~combout\ & \b[6]~input_o\))) ) ) ) # ( 
-- \a[6]~input_o\ & ( !\a[7]~input_o\ & ( !\b[7]~input_o\ $ (((\u1|u1|co~combout\ & \b[6]~input_o\))) ) ) ) # ( !\a[6]~input_o\ & ( !\a[7]~input_o\ & ( !\b[7]~input_o\ $ (((!\u1|u1|co~combout\) # (!\b[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110101010011010100110101001101010010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datab => \u1|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_b[6]~input_o\,
	datae => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[7]~input_o\,
	combout => \u1|u3|sum~combout\);

-- Location: IOIBUF_X24_Y0_N35
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LABCELL_X23_Y1_N18
\u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|co~0_combout\ = ( \b[6]~input_o\ & ( \a[5]~input_o\ & ( (\b[7]~input_o\ & (!\a[6]~input_o\ $ (((\b[5]~input_o\ & \u1|u0|co~combout\))))) ) ) ) # ( !\b[6]~input_o\ & ( \a[5]~input_o\ & ( (\b[7]~input_o\ & \a[6]~input_o\) ) ) ) # ( \b[6]~input_o\ & ( 
-- !\a[5]~input_o\ & ( (\b[7]~input_o\ & (!\a[6]~input_o\ $ (((!\b[5]~input_o\) # (!\u1|u0|co~combout\))))) ) ) ) # ( !\b[6]~input_o\ & ( !\a[5]~input_o\ & ( (\b[7]~input_o\ & \a[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000010000111000000000000011110000111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \u1|u0|ALT_INV_co~combout\,
	datac => \ALT_INV_b[7]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	datae => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \u1|u3|co~0_combout\);

-- Location: LABCELL_X23_Y1_N24
\u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|co~combout\ = ( !\a[7]~input_o\ & ( \u1|u3|co~0_combout\ ) ) # ( \a[7]~input_o\ & ( !\u1|u3|co~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_a[7]~input_o\,
	dataf => \u1|u3|ALT_INV_co~0_combout\,
	combout => \u1|u3|co~combout\);

-- Location: IOIBUF_X24_Y0_N1
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LABCELL_X23_Y1_N3
\u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u0|sum~combout\ = ( \b[8]~input_o\ & ( !\a[8]~input_o\ $ (\u1|u3|co~combout\) ) ) # ( !\b[8]~input_o\ & ( !\a[8]~input_o\ $ (!\u1|u3|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \u1|u3|ALT_INV_co~combout\,
	dataf => \ALT_INV_b[8]~input_o\,
	combout => \u2|u0|sum~combout\);

-- Location: IOIBUF_X20_Y0_N35
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LABCELL_X23_Y1_N0
\u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|sum~combout\ = ( \a[9]~input_o\ & ( !\a[8]~input_o\ $ (!\b[9]~input_o\ $ (((!\u1|u3|co~combout\) # (!\b[8]~input_o\)))) ) ) # ( !\a[9]~input_o\ & ( !\a[8]~input_o\ $ (!\b[9]~input_o\ $ (((\u1|u3|co~combout\ & \b[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100110100101100101101010010110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \u1|u3|ALT_INV_co~combout\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \ALT_INV_b[8]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \u2|u1|sum~combout\);

-- Location: LABCELL_X23_Y1_N6
\u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|co~combout\ = ( \b[9]~input_o\ & ( \a[8]~input_o\ & ( !\a[9]~input_o\ $ (((\b[8]~input_o\ & (!\a[7]~input_o\ $ (!\u1|u3|co~0_combout\))))) ) ) ) # ( !\b[9]~input_o\ & ( \a[8]~input_o\ & ( \a[9]~input_o\ ) ) ) # ( \b[9]~input_o\ & ( !\a[8]~input_o\ 
-- & ( !\a[9]~input_o\ $ (((!\b[8]~input_o\) # (!\a[7]~input_o\ $ (\u1|u3|co~0_combout\)))) ) ) ) # ( !\b[9]~input_o\ & ( !\a[8]~input_o\ & ( \a[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000101001110101100000000111111111110101100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \u1|u3|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[9]~input_o\,
	datae => \ALT_INV_b[9]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \u2|u1|co~combout\);

-- Location: IOIBUF_X4_Y0_N52
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LABCELL_X7_Y1_N0
\u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|sum~combout\ = ( \b[10]~input_o\ & ( !\u2|u1|co~combout\ $ (\a[10]~input_o\) ) ) # ( !\b[10]~input_o\ & ( !\u2|u1|co~combout\ $ (!\a[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_a[10]~input_o\,
	datae => \ALT_INV_b[10]~input_o\,
	combout => \u2|u2|sum~combout\);

-- Location: IOIBUF_X2_Y0_N75
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LABCELL_X7_Y1_N9
\u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|sum~combout\ = ( \b[10]~input_o\ & ( !\b[11]~input_o\ $ (!\u2|u1|co~combout\ $ (!\a[11]~input_o\ $ (!\a[10]~input_o\))) ) ) # ( !\b[10]~input_o\ & ( !\b[11]~input_o\ $ (!\a[11]~input_o\ $ (\a[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[11]~input_o\,
	datab => \u2|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \ALT_INV_a[10]~input_o\,
	datae => \ALT_INV_b[10]~input_o\,
	combout => \u2|u3|sum~combout\);

-- Location: IOIBUF_X4_Y0_N1
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LABCELL_X7_Y1_N45
\u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u0|sum~0_combout\ = ( \b[12]~input_o\ & ( !\a[12]~input_o\ ) ) # ( !\b[12]~input_o\ & ( \a[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \u3|u0|sum~0_combout\);

-- Location: LABCELL_X7_Y1_N18
\u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u0|sum~combout\ = ( \u2|u1|co~combout\ & ( \a[11]~input_o\ & ( !\u3|u0|sum~0_combout\ $ (((\b[11]~input_o\ & (!\a[10]~input_o\ $ (!\b[10]~input_o\))))) ) ) ) # ( !\u2|u1|co~combout\ & ( \a[11]~input_o\ & ( !\u3|u0|sum~0_combout\ $ (((\a[10]~input_o\ & 
-- \b[11]~input_o\))) ) ) ) # ( \u2|u1|co~combout\ & ( !\a[11]~input_o\ & ( !\u3|u0|sum~0_combout\ $ (((!\b[11]~input_o\) # (!\a[10]~input_o\ $ (\b[10]~input_o\)))) ) ) ) # ( !\u2|u1|co~combout\ & ( !\a[11]~input_o\ & ( !\u3|u0|sum~0_combout\ $ 
-- (((!\a[10]~input_o\) # (!\b[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001101111100111111010000001011111100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datab => \ALT_INV_b[10]~input_o\,
	datac => \ALT_INV_b[11]~input_o\,
	datad => \u3|u0|ALT_INV_sum~0_combout\,
	datae => \u2|u1|ALT_INV_co~combout\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \u3|u0|sum~combout\);

-- Location: LABCELL_X7_Y1_N24
\u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|co~combout\ = ( \b[10]~input_o\ & ( !\a[11]~input_o\ $ (((!\b[11]~input_o\) # (!\a[10]~input_o\ $ (\u2|u1|co~combout\)))) ) ) # ( !\b[10]~input_o\ & ( !\a[11]~input_o\ $ (((!\a[10]~input_o\) # (!\b[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011100100110110001101100011011000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[10]~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_b[11]~input_o\,
	datad => \u2|u1|ALT_INV_co~combout\,
	datae => \ALT_INV_b[10]~input_o\,
	combout => \u2|u3|co~combout\);

-- Location: IOIBUF_X8_Y0_N1
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LABCELL_X7_Y1_N30
\u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|sum~combout\ = ( \a[13]~input_o\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (((!\b[12]~input_o\) # (!\u2|u3|co~combout\))) ) ) ) # ( !\a[13]~input_o\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (((\b[12]~input_o\ & \u2|u3|co~combout\))) ) ) ) # ( 
-- \a[13]~input_o\ & ( !\b[13]~input_o\ & ( !\a[12]~input_o\ $ (((\b[12]~input_o\ & \u2|u3|co~combout\))) ) ) ) # ( !\a[13]~input_o\ & ( !\b[13]~input_o\ & ( !\a[12]~input_o\ $ (((!\b[12]~input_o\) # (!\u2|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110110010011100100111001001110010010011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[12]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \u2|u3|ALT_INV_co~combout\,
	datae => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_b[13]~input_o\,
	combout => \u3|u1|sum~combout\);

-- Location: IOIBUF_X4_Y0_N18
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LABCELL_X7_Y1_N36
\u3|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|sum~0_combout\ = ( \b[14]~input_o\ & ( !\a[14]~input_o\ ) ) # ( !\b[14]~input_o\ & ( \a[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[14]~input_o\,
	datae => \ALT_INV_b[14]~input_o\,
	combout => \u3|u2|sum~0_combout\);

-- Location: LABCELL_X7_Y1_N12
\u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|sum~combout\ = ( \u3|u2|sum~0_combout\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (!\a[13]~input_o\ $ (((!\b[12]~input_o\) # (!\u2|u3|co~combout\)))) ) ) ) # ( !\u3|u2|sum~0_combout\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (!\a[13]~input_o\ $ 
-- (((\b[12]~input_o\ & \u2|u3|co~combout\)))) ) ) ) # ( \u3|u2|sum~0_combout\ & ( !\b[13]~input_o\ & ( !\a[13]~input_o\ ) ) ) # ( !\u3|u2|sum~0_combout\ & ( !\b[13]~input_o\ & ( \a[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000110110110010011100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[12]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \u2|u3|ALT_INV_co~combout\,
	datad => \ALT_INV_a[13]~input_o\,
	datae => \u3|u2|ALT_INV_sum~0_combout\,
	dataf => \ALT_INV_b[13]~input_o\,
	combout => \u3|u2|sum~combout\);

-- Location: LABCELL_X7_Y1_N51
\u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|co~combout\ = ( \a[13]~input_o\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (((\u2|u3|co~combout\ & \b[12]~input_o\))) ) ) ) # ( !\a[13]~input_o\ & ( \b[13]~input_o\ & ( !\a[12]~input_o\ $ (((!\u2|u3|co~combout\) # (!\b[12]~input_o\))) ) ) ) # ( 
-- \a[13]~input_o\ & ( !\b[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111010110101111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|ALT_INV_co~combout\,
	datac => \ALT_INV_a[12]~input_o\,
	datad => \ALT_INV_b[12]~input_o\,
	datae => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_b[13]~input_o\,
	combout => \u3|u1|co~combout\);

-- Location: IOIBUF_X2_Y0_N41
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LABCELL_X7_Y1_N54
\u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|sum~combout\ = ( \b[15]~input_o\ & ( !\a[15]~input_o\ $ (!\a[14]~input_o\ $ (((!\u3|u1|co~combout\) # (!\b[14]~input_o\)))) ) ) # ( !\b[15]~input_o\ & ( !\a[15]~input_o\ $ (!\a[14]~input_o\ $ (((\u3|u1|co~combout\ & \b[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100111000011100101101100001110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ALT_INV_co~combout\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_a[14]~input_o\,
	datad => \ALT_INV_b[14]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \u3|u3|sum~combout\);

-- Location: LABCELL_X7_Y1_N57
\u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|co~combout\ = ( \a[14]~input_o\ & ( !\a[15]~input_o\ $ (((!\b[15]~input_o\) # ((\u3|u1|co~combout\ & \b[14]~input_o\)))) ) ) # ( !\a[14]~input_o\ & ( !\a[15]~input_o\ $ (((!\u3|u1|co~combout\) # ((!\b[15]~input_o\) # (!\b[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100110011011000111100001110010011110000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ALT_INV_co~combout\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_b[14]~input_o\,
	dataf => \ALT_INV_a[14]~input_o\,
	combout => \u3|u3|co~combout\);

-- Location: MLABCELL_X39_Y62_N0
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


