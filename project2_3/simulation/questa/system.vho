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

-- DATE "05/02/2026 10:11:08"

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
-- s[0]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ci	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \ci~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \U1|s~combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \U2|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \U2|co~combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \U3|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \U4|s~combout\ : std_logic;
SIGNAL \U4|co~combout\ : std_logic;
SIGNAL \U2|ALT_INV_co~combout\ : std_logic;
SIGNAL \ALT_INV_ci~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;

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
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;

-- Location: IOOBUF_X60_Y0_N36
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

-- Location: IOOBUF_X60_Y0_N53
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

-- Location: IOOBUF_X78_Y0_N2
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

-- Location: IOOBUF_X78_Y0_N53
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

-- Location: IOOBUF_X78_Y0_N19
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

-- Location: IOIBUF_X62_Y0_N35
\ci~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ci,
	o => \ci~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LABCELL_X60_Y2_N30
\U1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|s~combout\ = ( \b[0]~input_o\ & ( !\ci~input_o\ $ (\a[0]~input_o\) ) ) # ( !\b[0]~input_o\ & ( !\ci~input_o\ $ (!\a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ci~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \U1|s~combout\);

-- Location: IOIBUF_X52_Y0_N18
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X80_Y0_N18
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X60_Y2_N39
\U2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|s~combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\ci~input_o\) # (\a[0]~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (((\a[0]~input_o\ & \ci~input_o\))) ) ) ) # ( \b[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\ & !\ci~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\) # (!\ci~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010010111111010000011111010000001011010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_ci~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U2|s~combout\);

-- Location: IOIBUF_X60_Y0_N1
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X60_Y2_N12
\U2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|co~combout\ = ( \b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\a[0]~input_o\) # (\ci~input_o\)) # (\a[1]~input_o\) ) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ & ( ((\ci~input_o\ & \a[0]~input_o\)) # (\a[1]~input_o\) ) ) ) # ( \b[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( (\a[1]~input_o\ & ((\a[0]~input_o\) # (\ci~input_o\))) ) ) ) # ( !\b[0]~input_o\ & ( !\b[1]~input_o\ & ( (\a[1]~input_o\ & (\ci~input_o\ & \a[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000101010001010101010111010101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_ci~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \U2|co~combout\);

-- Location: IOIBUF_X84_Y0_N1
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: MLABCELL_X78_Y2_N0
\U3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|s~combout\ = ( \b[2]~input_o\ & ( !\a[2]~input_o\ $ (\U2|co~combout\) ) ) # ( !\b[2]~input_o\ & ( !\a[2]~input_o\ $ (!\U2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[2]~input_o\,
	datad => \U2|ALT_INV_co~combout\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \U3|s~combout\);

-- Location: IOIBUF_X80_Y0_N1
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: MLABCELL_X78_Y2_N39
\U4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|s~combout\ = ( \b[3]~input_o\ & ( !\a[3]~input_o\ $ (((!\U2|co~combout\ & (\a[2]~input_o\ & \b[2]~input_o\)) # (\U2|co~combout\ & ((\b[2]~input_o\) # (\a[2]~input_o\))))) ) ) # ( !\b[3]~input_o\ & ( !\a[3]~input_o\ $ (((!\U2|co~combout\ & 
-- ((!\a[2]~input_o\) # (!\b[2]~input_o\))) # (\U2|co~combout\ & (!\a[2]~input_o\ & !\b[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \U2|ALT_INV_co~combout\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \U4|s~combout\);

-- Location: MLABCELL_X78_Y2_N42
\U4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|co~combout\ = ( \b[3]~input_o\ & ( ((!\b[2]~input_o\ & (\a[2]~input_o\ & \U2|co~combout\)) # (\b[2]~input_o\ & ((\U2|co~combout\) # (\a[2]~input_o\)))) # (\a[3]~input_o\) ) ) # ( !\b[3]~input_o\ & ( (\a[3]~input_o\ & ((!\b[2]~input_o\ & 
-- (\a[2]~input_o\ & \U2|co~combout\)) # (\b[2]~input_o\ & ((\U2|co~combout\) # (\a[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \U2|ALT_INV_co~combout\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \U4|co~combout\);

-- Location: LABCELL_X48_Y32_N0
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


