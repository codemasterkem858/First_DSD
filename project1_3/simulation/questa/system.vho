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

-- DATE "04/30/2026 09:09:50"

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
	x : IN std_logic_vector(1 DOWNTO 0);
	y : IN std_logic_vector(1 DOWNTO 0);
	z : IN std_logic_vector(1 DOWNTO 0);
	w : IN std_logic_vector(1 DOWNTO 0);
	s1 : IN std_logic;
	s2 : IN std_logic;
	mo : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END system;

-- Design Ports Information
-- mo[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- mo[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- x[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- w[0]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s1	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s2	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z[1]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- w[1]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_x : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_z : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_w : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_mo : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \z[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \U3|m[0]~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \z[1]~input_o\ : std_logic;
SIGNAL \U3|m[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_z[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_w[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_s1~input_o\ : std_logic;
SIGNAL \ALT_INV_s2~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_w[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_z[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_w <= w;
ww_s1 <= s1;
ww_s2 <= s2;
mo <= ww_mo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_z[0]~input_o\ <= NOT \z[0]~input_o\;
\ALT_INV_w[0]~input_o\ <= NOT \w[0]~input_o\;
\ALT_INV_s1~input_o\ <= NOT \s1~input_o\;
\ALT_INV_s2~input_o\ <= NOT \s2~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_w[1]~input_o\ <= NOT \w[1]~input_o\;
\ALT_INV_z[1]~input_o\ <= NOT \z[1]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\mo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|m[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_mo(0));

-- Location: IOOBUF_X52_Y0_N19
\mo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|m[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_mo(1));

-- Location: IOIBUF_X12_Y0_N18
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\s2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\w[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\z[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z(0),
	o => \z[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LABCELL_X9_Y1_N30
\U3|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|m[0]~0_combout\ = ( \z[0]~input_o\ & ( \y[0]~input_o\ & ( (!\s2~input_o\ & (((\s1~input_o\)) # (\x[0]~input_o\))) # (\s2~input_o\ & (((!\s1~input_o\) # (\w[0]~input_o\)))) ) ) ) # ( !\z[0]~input_o\ & ( \y[0]~input_o\ & ( (!\s2~input_o\ & 
-- (((\s1~input_o\)) # (\x[0]~input_o\))) # (\s2~input_o\ & (((\w[0]~input_o\ & \s1~input_o\)))) ) ) ) # ( \z[0]~input_o\ & ( !\y[0]~input_o\ & ( (!\s2~input_o\ & (\x[0]~input_o\ & ((!\s1~input_o\)))) # (\s2~input_o\ & (((!\s1~input_o\) # (\w[0]~input_o\)))) 
-- ) ) ) # ( !\z[0]~input_o\ & ( !\y[0]~input_o\ & ( (!\s2~input_o\ & (\x[0]~input_o\ & ((!\s1~input_o\)))) # (\s2~input_o\ & (((\w[0]~input_o\ & \s1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0]~input_o\,
	datab => \ALT_INV_s2~input_o\,
	datac => \ALT_INV_w[0]~input_o\,
	datad => \ALT_INV_s1~input_o\,
	datae => \ALT_INV_z[0]~input_o\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \U3|m[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\w[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\z[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z(1),
	o => \z[1]~input_o\);

-- Location: LABCELL_X9_Y1_N6
\U3|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|m[1]~1_combout\ = ( \s2~input_o\ & ( \z[1]~input_o\ & ( (!\s1~input_o\) # (\w[1]~input_o\) ) ) ) # ( !\s2~input_o\ & ( \z[1]~input_o\ & ( (!\s1~input_o\ & (\x[1]~input_o\)) # (\s1~input_o\ & ((\y[1]~input_o\))) ) ) ) # ( \s2~input_o\ & ( 
-- !\z[1]~input_o\ & ( (\w[1]~input_o\ & \s1~input_o\) ) ) ) # ( !\s2~input_o\ & ( !\z[1]~input_o\ & ( (!\s1~input_o\ & (\x[1]~input_o\)) # (\s1~input_o\ & ((\y[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[1]~input_o\,
	datab => \ALT_INV_w[1]~input_o\,
	datac => \ALT_INV_y[1]~input_o\,
	datad => \ALT_INV_s1~input_o\,
	datae => \ALT_INV_s2~input_o\,
	dataf => \ALT_INV_z[1]~input_o\,
	combout => \U3|m[1]~1_combout\);

-- Location: LABCELL_X18_Y78_N0
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


