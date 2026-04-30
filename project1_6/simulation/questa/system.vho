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

-- DATE "04/30/2026 09:51:03"

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
	selec : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
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
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- selec[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selec[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selec[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_selec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \selec[0]~input_o\ : std_logic;
SIGNAL \selec[2]~input_o\ : std_logic;
SIGNAL \selec[1]~input_o\ : std_logic;
SIGNAL \U1|U3|H_out[0]~0_combout\ : std_logic;
SIGNAL \U1|U3|H_out[1]~1_combout\ : std_logic;
SIGNAL \U1|U3|H_out[3]~2_combout\ : std_logic;
SIGNAL \U2|U3|H_out[0]~0_combout\ : std_logic;
SIGNAL \U2|U3|H_out[1]~1_combout\ : std_logic;
SIGNAL \U2|U3|H_out[3]~2_combout\ : std_logic;
SIGNAL \U1|U3|H_out~3_combout\ : std_logic;
SIGNAL \U2|U3|H_out[4]~3_combout\ : std_logic;
SIGNAL \U4|U3|H_out[1]~0_combout\ : std_logic;
SIGNAL \U4|U3|H_out[3]~1_combout\ : std_logic;
SIGNAL \U4|U3|H_out[6]~2_combout\ : std_logic;
SIGNAL \U4|U3|H_out[2]~3_combout\ : std_logic;
SIGNAL \U5|U3|H_out[1]~0_combout\ : std_logic;
SIGNAL \U5|U3|H_out[3]~1_combout\ : std_logic;
SIGNAL \U6|U3|H_out[1]~0_combout\ : std_logic;
SIGNAL \U6|U3|H_out[3]~1_combout\ : std_logic;
SIGNAL \U6|U3|H_out[6]~2_combout\ : std_logic;
SIGNAL \U1|U3|H_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U2|U3|H_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U3|U3|H_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U5|U3|H_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U6|U1|U3|H_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_selec[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_selec[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selec[0]~input_o\ : std_logic;
SIGNAL \U4|U3|ALT_INV_H_out[2]~3_combout\ : std_logic;
SIGNAL \U4|U3|ALT_INV_H_out[1]~0_combout\ : std_logic;
SIGNAL \U2|U3|ALT_INV_H_out[3]~2_combout\ : std_logic;

BEGIN

ww_selec <= selec;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_selec[2]~input_o\ <= NOT \selec[2]~input_o\;
\ALT_INV_selec[1]~input_o\ <= NOT \selec[1]~input_o\;
\ALT_INV_selec[0]~input_o\ <= NOT \selec[0]~input_o\;
\U4|U3|ALT_INV_H_out[2]~3_combout\ <= NOT \U4|U3|H_out[2]~3_combout\;
\U4|U3|ALT_INV_H_out[1]~0_combout\ <= NOT \U4|U3|H_out[1]~0_combout\;
\U2|U3|ALT_INV_H_out[3]~2_combout\ <= NOT \U2|U3|H_out[3]~2_combout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|H_out[0]~0_combout\,
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
	i => \U1|U3|H_out[1]~1_combout\,
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
	i => \U1|U3|H_out[1]~1_combout\,
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
	i => \U1|U3|H_out[3]~2_combout\,
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
	i => \U1|U3|H_out[3]~2_combout\,
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
	i => \U1|U3|H_out[0]~0_combout\,
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
	i => \U1|U3|H_out\(6),
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
	i => \U2|U3|H_out[0]~0_combout\,
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
	i => \U2|U3|H_out[1]~1_combout\,
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
	i => \U2|U3|H_out[1]~1_combout\,
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
	i => \U2|U3|ALT_INV_H_out[3]~2_combout\,
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
	i => \U2|U3|ALT_INV_H_out[3]~2_combout\,
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
	i => \U2|U3|H_out[0]~0_combout\,
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
	i => \U2|U3|H_out\(6),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(5),
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(1),
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(1),
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(3),
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(3),
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|H_out\(5),
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|H_out~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|H_out[4]~3_combout\,
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
	i => \U4|U3|ALT_INV_H_out[1]~0_combout\,
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
	i => \U4|U3|ALT_INV_H_out[1]~0_combout\,
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
	i => \U4|U3|H_out[3]~1_combout\,
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
	i => \U4|U3|H_out[3]~1_combout\,
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
	i => \U2|U3|H_out[4]~3_combout\,
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
	i => \U4|U3|H_out[6]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U3|ALT_INV_H_out[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|H_out[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|H_out[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|H_out[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|H_out[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U3|ALT_INV_H_out[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U3|H_out\(6),
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|U1|U3|H_out\(5),
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
	i => \U6|U3|H_out[1]~0_combout\,
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
	i => \U6|U3|H_out[1]~0_combout\,
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
	i => \U6|U3|H_out[3]~1_combout\,
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
	i => \U6|U3|H_out[3]~1_combout\,
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
	i => \U6|U1|U3|H_out\(5),
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
	i => \U6|U3|H_out[6]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X12_Y0_N18
\selec[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(0),
	o => \selec[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\selec[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(2),
	o => \selec[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\selec[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selec(1),
	o => \selec[1]~input_o\);

-- Location: LABCELL_X88_Y11_N0
\U1|U3|H_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|H_out[0]~0_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (!\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datac => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U1|U3|H_out[0]~0_combout\);

-- Location: LABCELL_X88_Y11_N3
\U1|U3|H_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|H_out[1]~1_combout\ = ( \selec[1]~input_o\ & ( (\selec[2]~input_o\) # (\selec[0]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( !\selec[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U1|U3|H_out[1]~1_combout\);

-- Location: LABCELL_X88_Y11_N39
\U1|U3|H_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|H_out[3]~2_combout\ = ( \selec[1]~input_o\ & ( \selec[2]~input_o\ ) ) # ( !\selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (!\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U1|U3|H_out[3]~2_combout\);

-- Location: LABCELL_X88_Y4_N33
\U1|U3|H_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|H_out\(6) = ( \selec[2]~input_o\ & ( \selec[1]~input_o\ ) ) # ( \selec[2]~input_o\ & ( !\selec[1]~input_o\ ) ) # ( !\selec[2]~input_o\ & ( !\selec[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U1|U3|H_out\(6));

-- Location: LABCELL_X88_Y11_N42
\U2|U3|H_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|H_out[0]~0_combout\ = ( \selec[1]~input_o\ & ( (\selec[2]~input_o\) # (\selec[0]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( (!\selec[2]~input_o\) # (\selec[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datac => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U2|U3|H_out[0]~0_combout\);

-- Location: LABCELL_X88_Y11_N45
\U2|U3|H_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|H_out[1]~1_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( !\selec[0]~input_o\ $ (\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U2|U3|H_out[1]~1_combout\);

-- Location: LABCELL_X88_Y11_N18
\U2|U3|H_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|H_out[3]~2_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\ & !\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( !\selec[0]~input_o\ $ (!\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U2|U3|H_out[3]~2_combout\);

-- Location: LABCELL_X88_Y11_N27
\U2|U3|H_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|H_out\(6) = ( \selec[1]~input_o\ & ( (\selec[2]~input_o\) # (\selec[0]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U2|U3|H_out\(6));

-- Location: LABCELL_X88_Y11_N33
\U3|U3|H_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|U3|H_out\(5) = ( \selec[0]~input_o\ & ( \selec[2]~input_o\ ) ) # ( !\selec[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[0]~input_o\,
	combout => \U3|U3|H_out\(5));

-- Location: LABCELL_X88_Y11_N21
\U3|U3|H_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|U3|H_out\(1) = ( \selec[1]~input_o\ & ( \selec[2]~input_o\ ) ) # ( !\selec[1]~input_o\ & ( (\selec[2]~input_o\) # (\selec[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U3|U3|H_out\(1));

-- Location: LABCELL_X88_Y11_N9
\U3|U3|H_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|U3|H_out\(3) = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( \selec[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U3|U3|H_out\(3));

-- Location: LABCELL_X88_Y16_N33
\U1|U3|H_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|H_out~3_combout\ = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( \selec[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U1|U3|H_out~3_combout\);

-- Location: LABCELL_X88_Y11_N12
\U2|U3|H_out[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|U3|H_out[4]~3_combout\ = (\selec[2]~input_o\) # (\selec[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datac => \ALT_INV_selec[2]~input_o\,
	combout => \U2|U3|H_out[4]~3_combout\);

-- Location: LABCELL_X88_Y11_N36
\U4|U3|H_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|U3|H_out[1]~0_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\ & !\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( \selec[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U4|U3|H_out[1]~0_combout\);

-- Location: LABCELL_X88_Y11_N48
\U4|U3|H_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|U3|H_out[3]~1_combout\ = ( \selec[1]~input_o\ & ( (\selec[2]~input_o\) # (\selec[0]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( !\selec[0]~input_o\ $ (!\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datac => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U4|U3|H_out[3]~1_combout\);

-- Location: LABCELL_X88_Y11_N51
\U4|U3|H_out[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|U3|H_out[6]~2_combout\ = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( !\selec[0]~input_o\ $ (!\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U4|U3|H_out[6]~2_combout\);

-- Location: LABCELL_X88_Y11_N15
\U4|U3|H_out[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|U3|H_out[2]~3_combout\ = ( !\selec[1]~input_o\ & ( \selec[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U4|U3|H_out[2]~3_combout\);

-- Location: LABCELL_X88_Y11_N6
\U5|U3|H_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U3|H_out[1]~0_combout\ = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( (\selec[0]~input_o\ & \selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U5|U3|H_out[1]~0_combout\);

-- Location: LABCELL_X88_Y11_N54
\U5|U3|H_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U3|H_out[3]~1_combout\ = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( (!\selec[0]~input_o\ & !\selec[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U5|U3|H_out[3]~1_combout\);

-- Location: LABCELL_X88_Y16_N36
\U5|U3|H_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U3|H_out\(6) = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( !\selec[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U5|U3|H_out\(6));

-- Location: LABCELL_X88_Y16_N45
\U6|U1|U3|H_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U1|U3|H_out\(5) = ( \selec[1]~input_o\ ) # ( !\selec[1]~input_o\ & ( \selec[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selec[0]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U6|U1|U3|H_out\(5));

-- Location: LABCELL_X88_Y11_N30
\U6|U3|H_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U3|H_out[1]~0_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( !\selec[2]~input_o\ $ (!\selec[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[2]~input_o\,
	datac => \ALT_INV_selec[0]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U6|U3|H_out[1]~0_combout\);

-- Location: LABCELL_X88_Y11_N57
\U6|U3|H_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U3|H_out[3]~1_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( \selec[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datad => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U6|U3|H_out[3]~1_combout\);

-- Location: LABCELL_X88_Y11_N24
\U6|U3|H_out[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U3|H_out[6]~2_combout\ = ( \selec[1]~input_o\ & ( (!\selec[0]~input_o\) # (\selec[2]~input_o\) ) ) # ( !\selec[1]~input_o\ & ( (!\selec[2]~input_o\) # (\selec[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selec[0]~input_o\,
	datac => \ALT_INV_selec[2]~input_o\,
	dataf => \ALT_INV_selec[1]~input_o\,
	combout => \U6|U3|H_out[6]~2_combout\);

-- Location: LABCELL_X10_Y48_N3
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


