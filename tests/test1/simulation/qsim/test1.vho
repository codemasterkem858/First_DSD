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

-- DATE "06/15/2026 13:43:24"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test1 IS
    PORT (
	d : IN std_logic_vector(3 DOWNTO 0);
	ctrl : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END test1;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \ctrl[0]~input_o\ : std_logic;
SIGNAL \ctrl[1]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \r_reg[1]~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL r_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_r_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;

BEGIN

ww_d <= d;
ww_ctrl <= ctrl;
ww_clk <= clk;
ww_reset <= reset;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_r_reg(0) <= NOT r_reg(0);
ALT_INV_r_reg(1) <= NOT r_reg(1);
ALT_INV_r_reg(2) <= NOT r_reg(2);
ALT_INV_r_reg(3) <= NOT r_reg(3);
\ALT_INV_ctrl[0]~input_o\ <= NOT \ctrl[0]~input_o\;
\ALT_INV_d[0]~input_o\ <= NOT \d[0]~input_o\;
\ALT_INV_ctrl[1]~input_o\ <= NOT \ctrl[1]~input_o\;
\ALT_INV_d[1]~input_o\ <= NOT \d[1]~input_o\;
\ALT_INV_d[3]~input_o\ <= NOT \d[3]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;

-- Location: IOOBUF_X64_Y0_N53
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(0),
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X70_Y0_N2
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(1),
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X66_Y0_N42
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(2),
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X64_Y0_N19
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(3),
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X66_Y0_N58
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(0),
	o => \ctrl[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl(1),
	o => \ctrl[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LABCELL_X67_Y2_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \ctrl[1]~input_o\ & ( r_reg(2) & ( \d[3]~input_o\ ) ) ) # ( !\ctrl[1]~input_o\ & ( r_reg(2) ) ) # ( \ctrl[1]~input_o\ & ( !r_reg(2) & ( \d[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[3]~input_o\,
	datae => \ALT_INV_ctrl[1]~input_o\,
	dataf => ALT_INV_r_reg(2),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X67_Y2_N3
\r_reg[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_reg[1]~0_combout\ = ( \ctrl[0]~input_o\ ) # ( !\ctrl[0]~input_o\ & ( \ctrl[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl[1]~input_o\,
	datae => \ALT_INV_ctrl[0]~input_o\,
	combout => \r_reg[1]~0_combout\);

-- Location: FF_X67_Y2_N38
\r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \reset~input_o\,
	ena => \r_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(3));

-- Location: LABCELL_X67_Y2_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( r_reg(1) & ( (!\ctrl[1]~input_o\) # ((!\ctrl[0]~input_o\ & ((r_reg(3)))) # (\ctrl[0]~input_o\ & (\d[2]~input_o\))) ) ) # ( !r_reg(1) & ( (\ctrl[1]~input_o\ & ((!\ctrl[0]~input_o\ & ((r_reg(3)))) # (\ctrl[0]~input_o\ & 
-- (\d[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl[1]~input_o\,
	datab => \ALT_INV_ctrl[0]~input_o\,
	datac => \ALT_INV_d[2]~input_o\,
	datad => ALT_INV_r_reg(3),
	dataf => ALT_INV_r_reg(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X67_Y2_N47
\r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \reset~input_o\,
	ena => \r_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(2));

-- Location: LABCELL_X67_Y2_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( r_reg(2) & ( (!\ctrl[1]~input_o\ & (((r_reg(0))))) # (\ctrl[1]~input_o\ & ((!\ctrl[0]~input_o\) # ((\d[1]~input_o\)))) ) ) # ( !r_reg(2) & ( (!\ctrl[1]~input_o\ & (((r_reg(0))))) # (\ctrl[1]~input_o\ & (\ctrl[0]~input_o\ & 
-- (\d[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl[1]~input_o\,
	datab => \ALT_INV_ctrl[0]~input_o\,
	datac => \ALT_INV_d[1]~input_o\,
	datad => ALT_INV_r_reg(0),
	dataf => ALT_INV_r_reg(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X67_Y2_N44
\r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \reset~input_o\,
	ena => \r_reg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(1));

-- Location: LABCELL_X67_Y2_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( r_reg(0) & ( r_reg(1) & ( (!\ctrl[0]~input_o\) # (\d[0]~input_o\) ) ) ) # ( !r_reg(0) & ( r_reg(1) & ( (!\ctrl[0]~input_o\ & ((\ctrl[1]~input_o\))) # (\ctrl[0]~input_o\ & (\d[0]~input_o\)) ) ) ) # ( r_reg(0) & ( !r_reg(1) & ( 
-- (!\ctrl[0]~input_o\ & ((!\ctrl[1]~input_o\))) # (\ctrl[0]~input_o\ & (\d[0]~input_o\)) ) ) ) # ( !r_reg(0) & ( !r_reg(1) & ( (\d[0]~input_o\ & \ctrl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110100011101000100011101000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[0]~input_o\,
	datab => \ALT_INV_ctrl[0]~input_o\,
	datac => \ALT_INV_ctrl[1]~input_o\,
	datae => ALT_INV_r_reg(0),
	dataf => ALT_INV_r_reg(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X67_Y2_N56
\r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(0));

-- Location: LABCELL_X37_Y10_N0
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


