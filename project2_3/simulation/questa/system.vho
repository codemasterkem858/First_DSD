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

-- DATE "05/12/2026 12:15:05"

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
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	co : BUFFER std_logic
	);
END system;

-- Design Ports Information
-- s[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- s[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- co	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_co : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \U1|s~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \U2|s~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \U2|co~combout\ : std_logic;
SIGNAL \U3|s~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \U4|s~combout\ : std_logic;
SIGNAL \U4|co~combout\ : std_logic;
SIGNAL \U2|ALT_INV_co~combout\ : std_logic;
SIGNAL \ALT_INV_ci~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_ci <= ci;
s <= ww_s;
co <= ww_co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U2|ALT_INV_co~combout\ <= NOT \U2|co~combout\;
\ALT_INV_ci~input_o\ <= NOT \ci~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|s~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X52_Y0_N19
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X60_Y0_N2
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|s~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X80_Y0_N2
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|s~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X10_Y0_N76
\co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|co~combout\,
	devoe => ww_devoe,
	o => ww_co);

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

-- Location: LABCELL_X10_Y1_N0
\U1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s~combout\ = ( \ci~input_o\ & ( !\b[0]~input_o\ $ (\a[0]~input_o\) ) ) # ( !\ci~input_o\ & ( !\b[0]~input_o\ $ (!\a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_ci~input_o\,
	combout => \U1|s~combout\);

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

-- Location: LABCELL_X10_Y1_N9
\U2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|s~combout\ = ( \ci~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\b[0]~input_o\) # (\a[0]~input_o\))) ) ) ) # ( !\ci~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\a[0]~input_o\ & \b[0]~input_o\))) ) ) ) # ( \ci~input_o\ & ( 
-- !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\ & !\b[0]~input_o\))) ) ) ) # ( !\ci~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\) # (!\b[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010010111111010000011111010000001011010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U2|s~combout\);

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

-- Location: LABCELL_X10_Y1_N42
\U2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|co~combout\ = ( \ci~input_o\ & ( \b[1]~input_o\ & ( ((\a[0]~input_o\) # (\b[0]~input_o\)) # (\a[1]~input_o\) ) ) ) # ( !\ci~input_o\ & ( \b[1]~input_o\ & ( ((\b[0]~input_o\ & \a[0]~input_o\)) # (\a[1]~input_o\) ) ) ) # ( \ci~input_o\ & ( 
-- !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\a[0]~input_o\) # (\b[0]~input_o\))) ) ) ) # ( !\ci~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & (\b[0]~input_o\ & \a[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_ci~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U2|co~combout\);

-- Location: LABCELL_X10_Y1_N21
\U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|s~combout\ = ( \U2|co~combout\ & ( !\b[2]~input_o\ $ (\a[2]~input_o\) ) ) # ( !\U2|co~combout\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	dataf => \U2|ALT_INV_co~combout\,
	combout => \U3|s~combout\);

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

-- Location: LABCELL_X10_Y1_N24
\U4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|s~combout\ = ( \a[3]~input_o\ & ( \U2|co~combout\ & ( !\b[3]~input_o\ $ (((\a[2]~input_o\) # (\b[2]~input_o\))) ) ) ) # ( !\a[3]~input_o\ & ( \U2|co~combout\ & ( !\b[3]~input_o\ $ (((!\b[2]~input_o\ & !\a[2]~input_o\))) ) ) ) # ( \a[3]~input_o\ & ( 
-- !\U2|co~combout\ & ( !\b[3]~input_o\ $ (((\b[2]~input_o\ & \a[2]~input_o\))) ) ) ) # ( !\a[3]~input_o\ & ( !\U2|co~combout\ & ( !\b[3]~input_o\ $ (((!\b[2]~input_o\) # (!\a[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100110011001100001100111100110011001100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[3]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \U2|ALT_INV_co~combout\,
	combout => \U4|s~combout\);

-- Location: LABCELL_X10_Y1_N33
\U4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|co~combout\ = ( \a[3]~input_o\ & ( \U2|co~combout\ & ( ((\b[3]~input_o\) # (\a[2]~input_o\)) # (\b[2]~input_o\) ) ) ) # ( !\a[3]~input_o\ & ( \U2|co~combout\ & ( (\b[3]~input_o\ & ((\a[2]~input_o\) # (\b[2]~input_o\))) ) ) ) # ( \a[3]~input_o\ & ( 
-- !\U2|co~combout\ & ( ((\b[2]~input_o\ & \a[2]~input_o\)) # (\b[3]~input_o\) ) ) ) # ( !\a[3]~input_o\ & ( !\U2|co~combout\ & ( (\b[2]~input_o\ & (\a[2]~input_o\ & \b[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_a[3]~input_o\,
	dataf => \U2|ALT_INV_co~combout\,
	combout => \U4|co~combout\);

-- Location: MLABCELL_X6_Y75_N0
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


