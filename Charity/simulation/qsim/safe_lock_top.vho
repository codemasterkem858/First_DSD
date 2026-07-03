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

-- DATE "06/22/2026 14:27:59"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
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

ENTITY 	safe_lock_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END safe_lock_top;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF safe_lock_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \reset_db|counter~0_combout\ : std_logic;
SIGNAL \reset_db|counter~1_combout\ : std_logic;
SIGNAL \reset_db|counter~2_combout\ : std_logic;
SIGNAL \reset_db|stable~0_combout\ : std_logic;
SIGNAL \reset_db|stable~q\ : std_logic;
SIGNAL \reset_db|stable_prev~q\ : std_logic;
SIGNAL \reset_db|pulse_out~combout\ : std_logic;
SIGNAL \delay_counter~7_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \enter_db|counter~0_combout\ : std_logic;
SIGNAL \enter_db|counter~1_combout\ : std_logic;
SIGNAL \enter_db|counter~2_combout\ : std_logic;
SIGNAL \enter_db|stable~0_combout\ : std_logic;
SIGNAL \enter_db|stable~q\ : std_logic;
SIGNAL \enter_db|stable_prev~q\ : std_logic;
SIGNAL \entry_count[2]~3_combout\ : std_logic;
SIGNAL \entry_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \entered[0][3]~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \entered[0][2]~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \entered[0][1]~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \entered[0][0]~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \entered[1][1]~q\ : std_logic;
SIGNAL \entered[1][0]~q\ : std_logic;
SIGNAL \entered[1][3]~q\ : std_logic;
SIGNAL \entered[1][2]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \entered[2][2]~q\ : std_logic;
SIGNAL \entered[2][3]~q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \reset_db|stable_prev~DUPLICATE_q\ : std_logic;
SIGNAL \delay_counter[5]~1_combout\ : std_logic;
SIGNAL \entered[3][2]~q\ : std_logic;
SIGNAL \entered[3][1]~q\ : std_logic;
SIGNAL \entered[3][3]~q\ : std_logic;
SIGNAL \entered[2][0]~q\ : std_logic;
SIGNAL \entered[3][0]~q\ : std_logic;
SIGNAL \entered[2][1]~q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \delay_counter[5]~2_combout\ : std_logic;
SIGNAL \delay_counter~3_combout\ : std_logic;
SIGNAL \delay_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \delay_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \delay_counter~4_combout\ : std_logic;
SIGNAL \delay_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \delay_counter~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \delay_counter~6_combout\ : std_logic;
SIGNAL \delay_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.S_LOCKOUT~q\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.S_INVALID~q\ : std_logic;
SIGNAL \delay_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \fail_count[0]~1_combout\ : std_logic;
SIGNAL \fail_count~0_combout\ : std_logic;
SIGNAL \fail_count~2_combout\ : std_logic;
SIGNAL \fail_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fail_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.S_LOCKOUT~DUPLICATE_q\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \delay_counter~0_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.S_INVALID~DUPLICATE_q\ : std_logic;
SIGNAL \entry_count[2]~1_combout\ : std_logic;
SIGNAL \entry_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.S_ENTER~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.S_ENTER~DUPLICATE_q\ : std_logic;
SIGNAL \entry_count~2_combout\ : std_logic;
SIGNAL \entry_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \entry_count~0_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.S_CHECK~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.S_UNLOCKED~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL entry_count : std_logic_vector(2 DOWNTO 0);
SIGNAL fail_count : std_logic_vector(1 DOWNTO 0);
SIGNAL delay_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \reset_db|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \enter_db|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_entry_count[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_state~20_combout\ : std_logic;
SIGNAL \ALT_INV_state~17_combout\ : std_logic;
SIGNAL \ALT_INV_state~16_combout\ : std_logic;
SIGNAL \ALT_INV_state~15_combout\ : std_logic;
SIGNAL \ALT_INV_state~13_combout\ : std_logic;
SIGNAL \ALT_INV_state~12_combout\ : std_logic;
SIGNAL ALT_INV_delay_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_state~11_combout\ : std_logic;
SIGNAL \enter_db|ALT_INV_stable_prev~q\ : std_logic;
SIGNAL \enter_db|ALT_INV_stable~q\ : std_logic;
SIGNAL \reset_db|ALT_INV_pulse_out~combout\ : std_logic;
SIGNAL \reset_db|ALT_INV_stable_prev~q\ : std_logic;
SIGNAL \reset_db|ALT_INV_stable~q\ : std_logic;
SIGNAL \ALT_INV_HEX5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_entered[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_entered[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_entered[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_entered[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_entered[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_entered[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_entered[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_entered[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_entered[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_entered[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_entered[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_entered[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_entered[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_entered[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_entered[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_entered[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_state.S_CHECK~q\ : std_logic;
SIGNAL \ALT_INV_HEX5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL ALT_INV_fail_count : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_entry_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_state.S_LOCKOUT~q\ : std_logic;
SIGNAL \ALT_INV_state.S_INVALID~q\ : std_logic;
SIGNAL \ALT_INV_state.S_ENTER~q\ : std_logic;
SIGNAL \ALT_INV_state.S_UNLOCKED~q\ : std_logic;
SIGNAL \ALT_INV_delay_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \reset_db|ALT_INV_stable_prev~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_fail_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_fail_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_entry_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_entry_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_entry_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_LOCKOUT~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_INVALID~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_ENTER~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_delay_counter[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \enter_db|ALT_INV_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \reset_db|ALT_INV_counter\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entry_count[2]~1_combout\ <= NOT \entry_count[2]~1_combout\;
\ALT_INV_state~20_combout\ <= NOT \state~20_combout\;
\ALT_INV_state~17_combout\ <= NOT \state~17_combout\;
\ALT_INV_state~16_combout\ <= NOT \state~16_combout\;
\ALT_INV_state~15_combout\ <= NOT \state~15_combout\;
\ALT_INV_state~13_combout\ <= NOT \state~13_combout\;
\ALT_INV_state~12_combout\ <= NOT \state~12_combout\;
ALT_INV_delay_counter(4) <= NOT delay_counter(4);
ALT_INV_delay_counter(3) <= NOT delay_counter(3);
ALT_INV_delay_counter(2) <= NOT delay_counter(2);
ALT_INV_delay_counter(1) <= NOT delay_counter(1);
ALT_INV_delay_counter(5) <= NOT delay_counter(5);
\ALT_INV_state~11_combout\ <= NOT \state~11_combout\;
\enter_db|ALT_INV_stable_prev~q\ <= NOT \enter_db|stable_prev~q\;
\enter_db|ALT_INV_stable~q\ <= NOT \enter_db|stable~q\;
\reset_db|ALT_INV_pulse_out~combout\ <= NOT \reset_db|pulse_out~combout\;
\reset_db|ALT_INV_stable_prev~q\ <= NOT \reset_db|stable_prev~q\;
\reset_db|ALT_INV_stable~q\ <= NOT \reset_db|stable~q\;
\ALT_INV_HEX5~1_combout\ <= NOT \HEX5~1_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_entered[1][3]~q\ <= NOT \entered[1][3]~q\;
\ALT_INV_entered[1][2]~q\ <= NOT \entered[1][2]~q\;
\ALT_INV_entered[1][1]~q\ <= NOT \entered[1][1]~q\;
\ALT_INV_entered[1][0]~q\ <= NOT \entered[1][0]~q\;
\ALT_INV_entered[2][3]~q\ <= NOT \entered[2][3]~q\;
\ALT_INV_entered[2][2]~q\ <= NOT \entered[2][2]~q\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_entered[2][1]~q\ <= NOT \entered[2][1]~q\;
\ALT_INV_entered[3][0]~q\ <= NOT \entered[3][0]~q\;
\ALT_INV_entered[3][1]~q\ <= NOT \entered[3][1]~q\;
\ALT_INV_entered[3][2]~q\ <= NOT \entered[3][2]~q\;
\ALT_INV_entered[3][3]~q\ <= NOT \entered[3][3]~q\;
\ALT_INV_entered[2][0]~q\ <= NOT \entered[2][0]~q\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_entered[0][3]~q\ <= NOT \entered[0][3]~q\;
\ALT_INV_entered[0][2]~q\ <= NOT \entered[0][2]~q\;
\ALT_INV_entered[0][1]~q\ <= NOT \entered[0][1]~q\;
\ALT_INV_entered[0][0]~q\ <= NOT \entered[0][0]~q\;
\ALT_INV_state.S_CHECK~q\ <= NOT \state.S_CHECK~q\;
\ALT_INV_HEX5~0_combout\ <= NOT \HEX5~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
ALT_INV_fail_count(1) <= NOT fail_count(1);
ALT_INV_fail_count(0) <= NOT fail_count(0);
ALT_INV_entry_count(2) <= NOT entry_count(2);
ALT_INV_entry_count(0) <= NOT entry_count(0);
ALT_INV_entry_count(1) <= NOT entry_count(1);
\ALT_INV_state.S_LOCKOUT~q\ <= NOT \state.S_LOCKOUT~q\;
\ALT_INV_state.S_INVALID~q\ <= NOT \state.S_INVALID~q\;
\ALT_INV_state.S_ENTER~q\ <= NOT \state.S_ENTER~q\;
\ALT_INV_state.S_UNLOCKED~q\ <= NOT \state.S_UNLOCKED~q\;
\ALT_INV_delay_counter[4]~DUPLICATE_q\ <= NOT \delay_counter[4]~DUPLICATE_q\;
\ALT_INV_delay_counter[3]~DUPLICATE_q\ <= NOT \delay_counter[3]~DUPLICATE_q\;
\ALT_INV_delay_counter[2]~DUPLICATE_q\ <= NOT \delay_counter[2]~DUPLICATE_q\;
\ALT_INV_delay_counter[1]~DUPLICATE_q\ <= NOT \delay_counter[1]~DUPLICATE_q\;
\ALT_INV_delay_counter[5]~DUPLICATE_q\ <= NOT \delay_counter[5]~DUPLICATE_q\;
\reset_db|ALT_INV_stable_prev~DUPLICATE_q\ <= NOT \reset_db|stable_prev~DUPLICATE_q\;
\ALT_INV_fail_count[1]~DUPLICATE_q\ <= NOT \fail_count[1]~DUPLICATE_q\;
\ALT_INV_fail_count[0]~DUPLICATE_q\ <= NOT \fail_count[0]~DUPLICATE_q\;
\ALT_INV_entry_count[2]~DUPLICATE_q\ <= NOT \entry_count[2]~DUPLICATE_q\;
\ALT_INV_entry_count[0]~DUPLICATE_q\ <= NOT \entry_count[0]~DUPLICATE_q\;
\ALT_INV_entry_count[1]~DUPLICATE_q\ <= NOT \entry_count[1]~DUPLICATE_q\;
\ALT_INV_state.S_LOCKOUT~DUPLICATE_q\ <= NOT \state.S_LOCKOUT~DUPLICATE_q\;
\ALT_INV_state.S_INVALID~DUPLICATE_q\ <= NOT \state.S_INVALID~DUPLICATE_q\;
\ALT_INV_state.S_ENTER~DUPLICATE_q\ <= NOT \state.S_ENTER~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_delay_counter[5]~1_combout\ <= NOT \delay_counter[5]~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
ALT_INV_delay_counter(0) <= NOT delay_counter(0);
\enter_db|ALT_INV_counter\(2) <= NOT \enter_db|counter\(2);
\enter_db|ALT_INV_counter\(1) <= NOT \enter_db|counter\(1);
\enter_db|ALT_INV_counter\(0) <= NOT \enter_db|counter\(0);
\reset_db|ALT_INV_counter\(2) <= NOT \reset_db|counter\(2);
\reset_db|ALT_INV_counter\(1) <= NOT \reset_db|counter\(1);
\reset_db|ALT_INV_counter\(0) <= NOT \reset_db|counter\(0);

-- Location: IOOBUF_X36_Y45_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S_UNLOCKED~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X16_Y45_N93
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S_ENTER~q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X32_Y45_N42
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S_INVALID~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X54_Y21_N39
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

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X20_Y45_N53
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S_LOCKOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X20_Y45_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X16_Y45_N76
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X20_Y45_N2
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X16_Y45_N42
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X22_Y45_N19
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X16_Y45_N59
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X20_Y45_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X34_Y45_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X36_Y45_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X34_Y45_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X34_Y45_N2
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_fail_count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X22_Y45_N2
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X36_Y45_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => fail_count(1),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X32_Y45_N76
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S_INVALID~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X32_Y45_N59
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S_UNLOCKED~q\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X36_Y45_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S_UNLOCKED~q\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X54_Y21_N5
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X54_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X54_Y21_N22
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X32_Y45_N93
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S_INVALID~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X54_Y18_N44
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X22_Y45_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X16_Y44_N33
\reset_db|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_db|counter~0_combout\ = ( \reset_db|stable~q\ & ( (\KEY[0]~input_o\ & !\reset_db|counter\(0)) ) ) # ( !\reset_db|stable~q\ & ( (!\KEY[0]~input_o\ & !\reset_db|counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datad => \reset_db|ALT_INV_counter\(0),
	dataf => \reset_db|ALT_INV_stable~q\,
	combout => \reset_db|counter~0_combout\);

-- Location: FF_X16_Y44_N35
\reset_db|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \reset_db|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|counter\(0));

-- Location: LABCELL_X16_Y44_N45
\reset_db|counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_db|counter~1_combout\ = ( \reset_db|counter\(0) & ( (!\reset_db|counter\(2) & (!\reset_db|counter\(1) & (!\reset_db|stable~q\ $ (\KEY[0]~input_o\)))) ) ) # ( !\reset_db|counter\(0) & ( (\reset_db|counter\(1) & (!\reset_db|stable~q\ $ 
-- (\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset_db|ALT_INV_stable~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \reset_db|ALT_INV_counter\(2),
	datad => \reset_db|ALT_INV_counter\(1),
	dataf => \reset_db|ALT_INV_counter\(0),
	combout => \reset_db|counter~1_combout\);

-- Location: FF_X16_Y44_N47
\reset_db|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \reset_db|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|counter\(1));

-- Location: LABCELL_X16_Y44_N42
\reset_db|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_db|counter~2_combout\ = ( \reset_db|counter\(1) & ( (!\reset_db|stable~q\ & (!\KEY[0]~input_o\ & (!\reset_db|counter\(0) $ (!\reset_db|counter\(2))))) # (\reset_db|stable~q\ & (\KEY[0]~input_o\ & (!\reset_db|counter\(0) $ 
-- (!\reset_db|counter\(2))))) ) ) # ( !\reset_db|counter\(1) & ( (!\reset_db|counter\(0) & (\reset_db|counter\(2) & (!\reset_db|stable~q\ $ (\KEY[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000001001100100000000100110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset_db|ALT_INV_stable~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \reset_db|ALT_INV_counter\(0),
	datad => \reset_db|ALT_INV_counter\(2),
	dataf => \reset_db|ALT_INV_counter\(1),
	combout => \reset_db|counter~2_combout\);

-- Location: FF_X16_Y44_N44
\reset_db|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \reset_db|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|counter\(2));

-- Location: LABCELL_X16_Y44_N30
\reset_db|stable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_db|stable~0_combout\ = ( \reset_db|stable~q\ & ( (!\KEY[0]~input_o\) # ((!\reset_db|counter\(2)) # ((!\reset_db|counter\(0)) # (\reset_db|counter\(1)))) ) ) # ( !\reset_db|stable~q\ & ( (!\KEY[0]~input_o\ & (\reset_db|counter\(2) & 
-- (\reset_db|counter\(0) & !\reset_db|counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000011111110111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \reset_db|ALT_INV_counter\(2),
	datac => \reset_db|ALT_INV_counter\(0),
	datad => \reset_db|ALT_INV_counter\(1),
	dataf => \reset_db|ALT_INV_stable~q\,
	combout => \reset_db|stable~0_combout\);

-- Location: FF_X16_Y43_N14
\reset_db|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \reset_db|stable~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|stable~q\);

-- Location: FF_X16_Y43_N32
\reset_db|stable_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \reset_db|stable~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|stable_prev~q\);

-- Location: LABCELL_X16_Y43_N51
\reset_db|pulse_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_db|pulse_out~combout\ = ( \reset_db|stable~q\ & ( !\reset_db|stable_prev~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset_db|ALT_INV_stable_prev~q\,
	dataf => \reset_db|ALT_INV_stable~q\,
	combout => \reset_db|pulse_out~combout\);

-- Location: LABCELL_X17_Y43_N9
\delay_counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~7_combout\ = ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & !delay_counter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datac => \ALT_INV_state~12_combout\,
	datad => ALT_INV_delay_counter(0),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~7_combout\);

-- Location: IOIBUF_X18_Y45_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X22_Y45_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X16_Y44_N54
\enter_db|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enter_db|counter~0_combout\ = (!\enter_db|counter\(0) & (!\enter_db|stable~q\ $ (\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000010011001000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enter_db|ALT_INV_stable~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \enter_db|ALT_INV_counter\(0),
	combout => \enter_db|counter~0_combout\);

-- Location: FF_X16_Y44_N56
\enter_db|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \enter_db|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter_db|counter\(0));

-- Location: LABCELL_X16_Y44_N57
\enter_db|counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enter_db|counter~1_combout\ = ( \enter_db|counter\(0) & ( (!\enter_db|counter\(2) & (!\enter_db|counter\(1) & (!\enter_db|stable~q\ $ (\KEY[1]~input_o\)))) ) ) # ( !\enter_db|counter\(0) & ( (\enter_db|counter\(1) & (!\enter_db|stable~q\ $ 
-- (\KEY[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100110010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enter_db|ALT_INV_stable~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \enter_db|ALT_INV_counter\(2),
	datad => \enter_db|ALT_INV_counter\(1),
	dataf => \enter_db|ALT_INV_counter\(0),
	combout => \enter_db|counter~1_combout\);

-- Location: FF_X16_Y44_N59
\enter_db|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \enter_db|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter_db|counter\(1));

-- Location: LABCELL_X16_Y44_N18
\enter_db|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \enter_db|counter~2_combout\ = ( \enter_db|counter\(1) & ( \enter_db|stable~q\ & ( (\KEY[1]~input_o\ & (!\enter_db|counter\(2) $ (!\enter_db|counter\(0)))) ) ) ) # ( !\enter_db|counter\(1) & ( \enter_db|stable~q\ & ( (\enter_db|counter\(2) & 
-- (\KEY[1]~input_o\ & !\enter_db|counter\(0))) ) ) ) # ( \enter_db|counter\(1) & ( !\enter_db|stable~q\ & ( (!\KEY[1]~input_o\ & (!\enter_db|counter\(2) $ (!\enter_db|counter\(0)))) ) ) ) # ( !\enter_db|counter\(1) & ( !\enter_db|stable~q\ & ( 
-- (\enter_db|counter\(2) & (!\KEY[1]~input_o\ & !\enter_db|counter\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010010000100100000010000000100000001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enter_db|ALT_INV_counter\(2),
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \enter_db|ALT_INV_counter\(0),
	datae => \enter_db|ALT_INV_counter\(1),
	dataf => \enter_db|ALT_INV_stable~q\,
	combout => \enter_db|counter~2_combout\);

-- Location: FF_X16_Y44_N2
\enter_db|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \enter_db|counter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter_db|counter\(2));

-- Location: LABCELL_X16_Y44_N9
\enter_db|stable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enter_db|stable~0_combout\ = ( \enter_db|counter\(1) & ( \enter_db|stable~q\ ) ) # ( !\enter_db|counter\(1) & ( \enter_db|stable~q\ & ( (!\enter_db|counter\(0)) # ((!\KEY[1]~input_o\) # (!\enter_db|counter\(2))) ) ) ) # ( !\enter_db|counter\(1) & ( 
-- !\enter_db|stable~q\ & ( (\enter_db|counter\(0) & (!\KEY[1]~input_o\ & \enter_db|counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000011111111111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enter_db|ALT_INV_counter\(0),
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \enter_db|ALT_INV_counter\(2),
	datae => \enter_db|ALT_INV_counter\(1),
	dataf => \enter_db|ALT_INV_stable~q\,
	combout => \enter_db|stable~0_combout\);

-- Location: FF_X16_Y43_N11
\enter_db|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \enter_db|stable~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter_db|stable~q\);

-- Location: FF_X16_Y43_N56
\enter_db|stable_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \enter_db|stable~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enter_db|stable_prev~q\);

-- Location: FF_X16_Y43_N7
\entry_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entry_count(2));

-- Location: LABCELL_X16_Y43_N6
\entry_count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry_count[2]~3_combout\ = ( entry_count(2) & ( \reset_db|pulse_out~combout\ & ( !\entry_count[2]~1_combout\ ) ) ) # ( entry_count(2) & ( !\reset_db|pulse_out~combout\ & ( (!\entry_count[2]~1_combout\) # ((!\state.S_ENTER~DUPLICATE_q\ & 
-- ((!\entry_count[0]~DUPLICATE_q\) # (!\entry_count[1]~DUPLICATE_q\)))) ) ) ) # ( !entry_count(2) & ( !\reset_db|pulse_out~combout\ & ( (!\state.S_ENTER~DUPLICATE_q\ & (\entry_count[2]~1_combout\ & (\entry_count[0]~DUPLICATE_q\ & 
-- \entry_count[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111011101110110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_ENTER~DUPLICATE_q\,
	datab => \ALT_INV_entry_count[2]~1_combout\,
	datac => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datad => \ALT_INV_entry_count[1]~DUPLICATE_q\,
	datae => ALT_INV_entry_count(2),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \entry_count[2]~3_combout\);

-- Location: FF_X16_Y43_N8
\entry_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry_count[2]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N24
\state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~11_combout\ = ( !\entry_count[2]~DUPLICATE_q\ & ( (\enter_db|stable~q\ & (!\state.S_ENTER~DUPLICATE_q\ & !\enter_db|stable_prev~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \enter_db|ALT_INV_stable~q\,
	datac => \ALT_INV_state.S_ENTER~DUPLICATE_q\,
	datad => \enter_db|ALT_INV_stable_prev~q\,
	dataf => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	combout => \state~11_combout\);

-- Location: LABCELL_X16_Y43_N3
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( !\reset_db|pulse_out~combout\ & ( \state~11_combout\ & ( (!\entry_count[1]~DUPLICATE_q\ & !\entry_count[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entry_count[1]~DUPLICATE_q\,
	datad => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datae => \reset_db|ALT_INV_pulse_out~combout\,
	dataf => \ALT_INV_state~11_combout\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X16_Y44_N38
\entered[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[0][3]~q\);

-- Location: IOIBUF_X18_Y45_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X16_Y44_N29
\entered[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[0][2]~q\);

-- Location: IOIBUF_X18_Y45_N18
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X16_Y44_N52
\entered[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[0][1]~q\);

-- Location: IOIBUF_X18_Y45_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X16_Y44_N20
\entered[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[0][0]~q\);

-- Location: LABCELL_X16_Y44_N0
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\entered[0][1]~q\ & ( \entered[0][0]~q\ & ( (!\entered[0][3]~q\ & !\entered[0][2]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entered[0][3]~q\,
	datac => \ALT_INV_entered[0][2]~q\,
	datae => \ALT_INV_entered[0][1]~q\,
	dataf => \ALT_INV_entered[0][0]~q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X16_Y43_N36
\Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ( !\reset_db|pulse_out~combout\ & ( (\entry_count[0]~DUPLICATE_q\ & (\state~11_combout\ & !\entry_count[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datac => \ALT_INV_state~11_combout\,
	datad => \ALT_INV_entry_count[1]~DUPLICATE_q\,
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X17_Y43_N23
\entered[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[1][1]~q\);

-- Location: FF_X17_Y43_N47
\entered[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[1][0]~q\);

-- Location: FF_X17_Y43_N35
\entered[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[1][3]~q\);

-- Location: FF_X17_Y43_N32
\entered[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[1][2]~q\);

-- Location: LABCELL_X16_Y43_N21
\Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\entry_count[0]~DUPLICATE_q\ & (\entry_count[1]~DUPLICATE_q\ & (!\reset_db|pulse_out~combout\ & \state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datab => \ALT_INV_entry_count[1]~DUPLICATE_q\,
	datac => \reset_db|ALT_INV_pulse_out~combout\,
	datad => \ALT_INV_state~11_combout\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X16_Y43_N43
\entered[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[2][2]~q\);

-- Location: FF_X16_Y43_N4
\entered[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[2][3]~q\);

-- Location: LABCELL_X17_Y43_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\entered[2][2]~q\ & ( !\entered[2][3]~q\ & ( (\entered[1][1]~q\ & (!\entered[1][0]~q\ & (!\entered[1][3]~q\ & !\entered[1][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entered[1][1]~q\,
	datab => \ALT_INV_entered[1][0]~q\,
	datac => \ALT_INV_entered[1][3]~q\,
	datad => \ALT_INV_entered[1][2]~q\,
	datae => \ALT_INV_entered[2][2]~q\,
	dataf => \ALT_INV_entered[2][3]~q\,
	combout => \Equal1~2_combout\);

-- Location: FF_X16_Y43_N31
\reset_db|stable_prev~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \reset_db|stable~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_db|stable_prev~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N48
\delay_counter[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter[5]~1_combout\ = ( \state.S_UNLOCKED~q\ & ( (\reset_db|stable~q\ & !\reset_db|stable_prev~DUPLICATE_q\) ) ) # ( !\state.S_UNLOCKED~q\ & ( ((\reset_db|stable~q\ & !\reset_db|stable_prev~DUPLICATE_q\)) # (\state.S_ENTER~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset_db|ALT_INV_stable~q\,
	datac => \ALT_INV_state.S_ENTER~DUPLICATE_q\,
	datad => \reset_db|ALT_INV_stable_prev~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_UNLOCKED~q\,
	combout => \delay_counter[5]~1_combout\);

-- Location: FF_X17_Y43_N5
\entered[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[3][2]~q\);

-- Location: FF_X17_Y43_N17
\entered[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[3][1]~q\);

-- Location: FF_X17_Y43_N1
\entered[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[3][3]~q\);

-- Location: FF_X16_Y43_N19
\entered[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[2][0]~q\);

-- Location: FF_X17_Y43_N14
\entered[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[3][0]~q\);

-- Location: FF_X16_Y43_N1
\entered[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entered[2][1]~q\);

-- Location: LABCELL_X17_Y43_N12
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\entered[3][0]~q\ & ( \entered[2][1]~q\ & ( (\entered[3][2]~q\ & (!\entered[3][1]~q\ & (!\entered[3][3]~q\ & \entered[2][0]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entered[3][2]~q\,
	datab => \ALT_INV_entered[3][1]~q\,
	datac => \ALT_INV_entered[3][3]~q\,
	datad => \ALT_INV_entered[2][0]~q\,
	datae => \ALT_INV_entered[3][0]~q\,
	dataf => \ALT_INV_entered[2][1]~q\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X17_Y43_N0
\delay_counter[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter[5]~2_combout\ = ( \delay_counter[5]~1_combout\ & ( \Equal1~1_combout\ & ( ((!\state.S_CHECK~q\) # ((!\Equal1~0_combout\) # (!\Equal1~2_combout\))) # (\reset_db|pulse_out~combout\) ) ) ) # ( \delay_counter[5]~1_combout\ & ( 
-- !\Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset_db|ALT_INV_pulse_out~combout\,
	datab => \ALT_INV_state.S_CHECK~q\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_delay_counter[5]~1_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \delay_counter[5]~2_combout\);

-- Location: FF_X17_Y43_N10
\delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~7_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(0));

-- Location: LABCELL_X17_Y43_N6
\delay_counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~3_combout\ = ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & (!delay_counter(0) $ (!delay_counter(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datab => \ALT_INV_state~12_combout\,
	datac => ALT_INV_delay_counter(0),
	datad => ALT_INV_delay_counter(1),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~3_combout\);

-- Location: FF_X17_Y43_N7
\delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~3_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(1));

-- Location: FF_X17_Y43_N28
\delay_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~5_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter[3]~DUPLICATE_q\);

-- Location: FF_X17_Y43_N8
\delay_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~3_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter[1]~DUPLICATE_q\);

-- Location: FF_X17_Y43_N38
\delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~4_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(2));

-- Location: LABCELL_X17_Y43_N36
\delay_counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~4_combout\ = ( delay_counter(2) & ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & ((!delay_counter(0)) # (!\delay_counter[1]~DUPLICATE_q\)))) ) ) ) # ( !delay_counter(2) & ( !\reset_db|pulse_out~combout\ & ( 
-- (!\state.S_CHECK~q\ & (!\state~12_combout\ & (delay_counter(0) & \delay_counter[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datab => \ALT_INV_state~12_combout\,
	datac => ALT_INV_delay_counter(0),
	datad => \ALT_INV_delay_counter[1]~DUPLICATE_q\,
	datae => ALT_INV_delay_counter(2),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~4_combout\);

-- Location: FF_X17_Y43_N37
\delay_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~4_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter[2]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y43_N6
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( \delay_counter[2]~DUPLICATE_q\ & ( !\delay_counter[3]~DUPLICATE_q\ $ (((!delay_counter(1)) # (!delay_counter(0)))) ) ) # ( !\delay_counter[2]~DUPLICATE_q\ & ( \delay_counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter(1),
	datac => ALT_INV_delay_counter(0),
	datad => \ALT_INV_delay_counter[3]~DUPLICATE_q\,
	dataf => \ALT_INV_delay_counter[2]~DUPLICATE_q\,
	combout => \Add1~1_combout\);

-- Location: LABCELL_X17_Y43_N27
\delay_counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~5_combout\ = ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & \Add1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datac => \ALT_INV_state~12_combout\,
	datad => \ALT_INV_Add1~1_combout\,
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~5_combout\);

-- Location: FF_X17_Y43_N29
\delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~5_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(3));

-- Location: MLABCELL_X18_Y43_N51
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( delay_counter(0) & ( \delay_counter[2]~DUPLICATE_q\ & ( (delay_counter(1) & \delay_counter[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter(1),
	datad => \ALT_INV_delay_counter[3]~DUPLICATE_q\,
	datae => ALT_INV_delay_counter(0),
	dataf => \ALT_INV_delay_counter[2]~DUPLICATE_q\,
	combout => \Add1~0_combout\);

-- Location: FF_X17_Y43_N25
\delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~6_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(4));

-- Location: LABCELL_X17_Y43_N24
\delay_counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~6_combout\ = ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & (!\Add1~0_combout\ $ (!delay_counter(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datab => \ALT_INV_state~12_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => ALT_INV_delay_counter(4),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~6_combout\);

-- Location: FF_X17_Y43_N26
\delay_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~6_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter[4]~DUPLICATE_q\);

-- Location: FF_X16_Y43_N28
\entry_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count~2_combout\,
	ena => \entry_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entry_count(0));

-- Location: MLABCELL_X18_Y43_N33
\state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~20_combout\ = ( \state~11_combout\ & ( entry_count(1) & ( (!\state.S_CHECK~q\ & !entry_count(0)) ) ) ) # ( !\state~11_combout\ & ( entry_count(1) & ( !\state.S_CHECK~q\ ) ) ) # ( \state~11_combout\ & ( !entry_count(1) & ( !\state.S_CHECK~q\ ) ) ) # 
-- ( !\state~11_combout\ & ( !entry_count(1) & ( !\state.S_CHECK~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datac => ALT_INV_entry_count(0),
	datae => \ALT_INV_state~11_combout\,
	dataf => ALT_INV_entry_count(1),
	combout => \state~20_combout\);

-- Location: FF_X18_Y43_N20
\state.S_LOCKOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LOCKOUT~q\);

-- Location: MLABCELL_X18_Y43_N42
\HEX5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = ( !\state.S_INVALID~q\ & ( !\state.S_LOCKOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.S_INVALID~q\,
	dataf => \ALT_INV_state.S_LOCKOUT~q\,
	combout => \HEX5~1_combout\);

-- Location: LABCELL_X17_Y43_N30
\state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~13_combout\ = ( \HEX5~1_combout\ & ( \state~12_combout\ & ( (!\reset_db|pulse_out~combout\ & ((!entry_count(1)) # ((!\state~11_combout\) # (!entry_count(0))))) ) ) ) # ( \HEX5~1_combout\ & ( !\state~12_combout\ & ( (!\reset_db|pulse_out~combout\ & 
-- ((!entry_count(1)) # ((!\state~11_combout\) # (!entry_count(0))))) ) ) ) # ( !\HEX5~1_combout\ & ( !\state~12_combout\ & ( (!\reset_db|pulse_out~combout\ & ((!entry_count(1)) # ((!\state~11_combout\) # (!entry_count(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000000000000000000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_entry_count(1),
	datab => \ALT_INV_state~11_combout\,
	datac => \reset_db|ALT_INV_pulse_out~combout\,
	datad => ALT_INV_entry_count(0),
	datae => \ALT_INV_HEX5~1_combout\,
	dataf => \ALT_INV_state~12_combout\,
	combout => \state~13_combout\);

-- Location: LABCELL_X17_Y43_N51
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~0_combout\ & ( (\Equal1~1_combout\ & \Equal1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: MLABCELL_X18_Y43_N36
\state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~19_combout\ = ( \Equal1~3_combout\ & ( (!\state.S_CHECK~q\ & (\state~13_combout\ & \state.S_INVALID~q\)) ) ) # ( !\Equal1~3_combout\ & ( (\state~13_combout\ & ((\state.S_INVALID~q\) # (\state.S_CHECK~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datac => \ALT_INV_state~13_combout\,
	datad => \ALT_INV_state.S_INVALID~q\,
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \state~19_combout\);

-- Location: FF_X18_Y43_N38
\state.S_INVALID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_INVALID~q\);

-- Location: FF_X17_Y43_N55
\delay_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~0_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y43_N27
\state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~15_combout\ = ( \delay_counter[3]~DUPLICATE_q\ & ( \delay_counter[5]~DUPLICATE_q\ & ( \state.S_INVALID~q\ ) ) ) # ( !\delay_counter[3]~DUPLICATE_q\ & ( \delay_counter[5]~DUPLICATE_q\ & ( \state.S_INVALID~q\ ) ) ) # ( \delay_counter[3]~DUPLICATE_q\ 
-- & ( !\delay_counter[5]~DUPLICATE_q\ & ( (\state.S_INVALID~q\ & delay_counter(4)) ) ) ) # ( !\delay_counter[3]~DUPLICATE_q\ & ( !\delay_counter[5]~DUPLICATE_q\ & ( (\state.S_INVALID~q\ & (delay_counter(4) & \delay_counter[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_INVALID~q\,
	datac => ALT_INV_delay_counter(4),
	datad => \ALT_INV_delay_counter[2]~DUPLICATE_q\,
	datae => \ALT_INV_delay_counter[3]~DUPLICATE_q\,
	dataf => \ALT_INV_delay_counter[5]~DUPLICATE_q\,
	combout => \state~15_combout\);

-- Location: MLABCELL_X18_Y43_N15
\fail_count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fail_count[0]~1_combout\ = ( \state~15_combout\ & ( \reset_db|pulse_out~combout\ ) ) # ( !\state~15_combout\ & ( \reset_db|pulse_out~combout\ ) ) # ( \state~15_combout\ & ( !\reset_db|pulse_out~combout\ ) ) # ( !\state~15_combout\ & ( 
-- !\reset_db|pulse_out~combout\ & ( \state~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state~17_combout\,
	datae => \ALT_INV_state~15_combout\,
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \fail_count[0]~1_combout\);

-- Location: FF_X18_Y43_N55
\fail_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fail_count~2_combout\,
	ena => \fail_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fail_count(1));

-- Location: MLABCELL_X18_Y43_N57
\fail_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fail_count~0_combout\ = ( \reset_db|stable~q\ & ( (!\state.S_LOCKOUT~q\ & (\reset_db|stable_prev~DUPLICATE_q\ & !fail_count(0))) ) ) # ( !\reset_db|stable~q\ & ( (!\state.S_LOCKOUT~q\ & !fail_count(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOCKOUT~q\,
	datab => \reset_db|ALT_INV_stable_prev~DUPLICATE_q\,
	datad => ALT_INV_fail_count(0),
	dataf => \reset_db|ALT_INV_stable~q\,
	combout => \fail_count~0_combout\);

-- Location: FF_X18_Y43_N59
\fail_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fail_count~0_combout\,
	ena => \fail_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fail_count(0));

-- Location: MLABCELL_X18_Y43_N54
\fail_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fail_count~2_combout\ = ( fail_count(0) & ( (!\state.S_LOCKOUT~q\ & (!fail_count(1) & ((!\reset_db|stable~q\) # (\reset_db|stable_prev~DUPLICATE_q\)))) ) ) # ( !fail_count(0) & ( (!\state.S_LOCKOUT~q\ & (fail_count(1) & ((!\reset_db|stable~q\) # 
-- (\reset_db|stable_prev~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100010000000001010001010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOCKOUT~q\,
	datab => \reset_db|ALT_INV_stable_prev~DUPLICATE_q\,
	datac => \reset_db|ALT_INV_stable~q\,
	datad => ALT_INV_fail_count(1),
	dataf => ALT_INV_fail_count(0),
	combout => \fail_count~2_combout\);

-- Location: FF_X18_Y43_N56
\fail_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fail_count~2_combout\,
	ena => \fail_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fail_count[1]~DUPLICATE_q\);

-- Location: FF_X18_Y43_N58
\fail_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \fail_count~0_combout\,
	ena => \fail_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fail_count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y43_N9
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\fail_count[0]~DUPLICATE_q\ & ( \fail_count[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_fail_count[1]~DUPLICATE_q\,
	dataf => \ALT_INV_fail_count[0]~DUPLICATE_q\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X18_Y43_N18
\state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~21_combout\ = ( \state.S_LOCKOUT~q\ & ( \state~15_combout\ & ( (!\reset_db|pulse_out~combout\ & (!\state~17_combout\ & (\state~20_combout\ & \Mux8~0_combout\))) ) ) ) # ( !\state.S_LOCKOUT~q\ & ( \state~15_combout\ & ( 
-- (!\reset_db|pulse_out~combout\ & (!\state~17_combout\ & (\state~20_combout\ & \Mux8~0_combout\))) ) ) ) # ( \state.S_LOCKOUT~q\ & ( !\state~15_combout\ & ( (!\reset_db|pulse_out~combout\ & (!\state~17_combout\ & \state~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset_db|ALT_INV_pulse_out~combout\,
	datab => \ALT_INV_state~17_combout\,
	datac => \ALT_INV_state~20_combout\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_state.S_LOCKOUT~q\,
	dataf => \ALT_INV_state~15_combout\,
	combout => \state~21_combout\);

-- Location: FF_X18_Y43_N19
\state.S_LOCKOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LOCKOUT~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N15
\state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~12_combout\ = ( \delay_counter[1]~DUPLICATE_q\ & ( \state.S_LOCKOUT~DUPLICATE_q\ & ( (\delay_counter[4]~DUPLICATE_q\ & delay_counter(5)) ) ) ) # ( !\delay_counter[1]~DUPLICATE_q\ & ( \state.S_LOCKOUT~DUPLICATE_q\ & ( (\delay_counter[4]~DUPLICATE_q\ 
-- & (delay_counter(5) & ((\delay_counter[2]~DUPLICATE_q\) # (delay_counter(3))))) ) ) ) # ( \delay_counter[1]~DUPLICATE_q\ & ( !\state.S_LOCKOUT~DUPLICATE_q\ & ( ((\delay_counter[4]~DUPLICATE_q\ & ((\delay_counter[2]~DUPLICATE_q\) # (delay_counter(3))))) # 
-- (delay_counter(5)) ) ) ) # ( !\delay_counter[1]~DUPLICATE_q\ & ( !\state.S_LOCKOUT~DUPLICATE_q\ & ( ((\delay_counter[4]~DUPLICATE_q\ & ((\delay_counter[2]~DUPLICATE_q\) # (delay_counter(3))))) # (delay_counter(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100111111000111110011111100000001000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter(3),
	datab => \ALT_INV_delay_counter[4]~DUPLICATE_q\,
	datac => ALT_INV_delay_counter(5),
	datad => \ALT_INV_delay_counter[2]~DUPLICATE_q\,
	datae => \ALT_INV_delay_counter[1]~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_LOCKOUT~DUPLICATE_q\,
	combout => \state~12_combout\);

-- Location: LABCELL_X17_Y43_N54
\delay_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay_counter~0_combout\ = ( delay_counter(5) & ( !\reset_db|pulse_out~combout\ & ( (!\state.S_CHECK~q\ & (!\state~12_combout\ & ((!\delay_counter[4]~DUPLICATE_q\) # (!\Add1~0_combout\)))) ) ) ) # ( !delay_counter(5) & ( !\reset_db|pulse_out~combout\ & ( 
-- (!\state.S_CHECK~q\ & (!\state~12_combout\ & (\delay_counter[4]~DUPLICATE_q\ & \Add1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CHECK~q\,
	datab => \ALT_INV_state~12_combout\,
	datac => \ALT_INV_delay_counter[4]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => ALT_INV_delay_counter(5),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \delay_counter~0_combout\);

-- Location: FF_X17_Y43_N56
\delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \delay_counter~0_combout\,
	ena => \delay_counter[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_counter(5));

-- Location: LABCELL_X17_Y43_N18
\state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~17_combout\ = ( delay_counter(2) & ( \state.S_LOCKOUT~q\ & ( (delay_counter(5) & \delay_counter[4]~DUPLICATE_q\) ) ) ) # ( !delay_counter(2) & ( \state.S_LOCKOUT~q\ & ( (delay_counter(5) & (\delay_counter[4]~DUPLICATE_q\ & 
-- ((\delay_counter[1]~DUPLICATE_q\) # (\delay_counter[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay_counter(5),
	datab => \ALT_INV_delay_counter[3]~DUPLICATE_q\,
	datac => \ALT_INV_delay_counter[4]~DUPLICATE_q\,
	datad => \ALT_INV_delay_counter[1]~DUPLICATE_q\,
	datae => ALT_INV_delay_counter(2),
	dataf => \ALT_INV_state.S_LOCKOUT~q\,
	combout => \state~17_combout\);

-- Location: FF_X18_Y43_N37
\state.S_INVALID~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_INVALID~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N45
\entry_count[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry_count[2]~1_combout\ = ( \state.S_INVALID~DUPLICATE_q\ & ( \state~12_combout\ ) ) # ( !\state.S_INVALID~DUPLICATE_q\ & ( \state~12_combout\ & ( ((\state~11_combout\) # (\state~17_combout\)) # (\reset_db|pulse_out~combout\) ) ) ) # ( 
-- \state.S_INVALID~DUPLICATE_q\ & ( !\state~12_combout\ & ( ((\state~11_combout\) # (\state~17_combout\)) # (\reset_db|pulse_out~combout\) ) ) ) # ( !\state.S_INVALID~DUPLICATE_q\ & ( !\state~12_combout\ & ( ((\state~11_combout\) # (\state~17_combout\)) # 
-- (\reset_db|pulse_out~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset_db|ALT_INV_pulse_out~combout\,
	datac => \ALT_INV_state~17_combout\,
	datad => \ALT_INV_state~11_combout\,
	datae => \ALT_INV_state.S_INVALID~DUPLICATE_q\,
	dataf => \ALT_INV_state~12_combout\,
	combout => \entry_count[2]~1_combout\);

-- Location: FF_X16_Y43_N41
\entry_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count~0_combout\,
	ena => \entry_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N18
\state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~16_combout\ = ( !\enter_db|stable_prev~q\ & ( (\entry_count[0]~DUPLICATE_q\ & (\entry_count[1]~DUPLICATE_q\ & (\enter_db|stable~q\ & !entry_count(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datab => \ALT_INV_entry_count[1]~DUPLICATE_q\,
	datac => \enter_db|ALT_INV_stable~q\,
	datad => ALT_INV_entry_count(2),
	dataf => \enter_db|ALT_INV_stable_prev~q\,
	combout => \state~16_combout\);

-- Location: FF_X16_Y43_N34
\state.S_ENTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_ENTER~q\);

-- Location: LABCELL_X16_Y43_N33
\state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~18_combout\ = ( \state.S_ENTER~q\ & ( !\reset_db|pulse_out~combout\ & ( (!\state~17_combout\ & ((!\state~15_combout\) # (\Mux8~0_combout\))) ) ) ) # ( !\state.S_ENTER~q\ & ( !\reset_db|pulse_out~combout\ & ( (!\state~17_combout\ & 
-- ((!\state~15_combout\ & (\state~16_combout\)) # (\state~15_combout\ & ((\Mux8~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100110011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~16_combout\,
	datab => \ALT_INV_state~17_combout\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_state~15_combout\,
	datae => \ALT_INV_state.S_ENTER~q\,
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \state~18_combout\);

-- Location: FF_X16_Y43_N35
\state.S_ENTER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_ENTER~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N27
\entry_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry_count~2_combout\ = ( \reset_db|stable_prev~q\ & ( (!\state.S_ENTER~DUPLICATE_q\ & !entry_count(0)) ) ) # ( !\reset_db|stable_prev~q\ & ( (!\state.S_ENTER~DUPLICATE_q\ & (!\reset_db|stable~q\ & !entry_count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_ENTER~DUPLICATE_q\,
	datac => \reset_db|ALT_INV_stable~q\,
	datad => ALT_INV_entry_count(0),
	dataf => \reset_db|ALT_INV_stable_prev~q\,
	combout => \entry_count~2_combout\);

-- Location: FF_X16_Y43_N29
\entry_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count~2_combout\,
	ena => \entry_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y43_N39
\entry_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry_count~0_combout\ = ( !\state.S_ENTER~q\ & ( (!\reset_db|stable_prev~q\ & (!\reset_db|stable~q\ & (!\entry_count[0]~DUPLICATE_q\ $ (!entry_count(1))))) # (\reset_db|stable_prev~q\ & (!\entry_count[0]~DUPLICATE_q\ $ (((!entry_count(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110100010010100011010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entry_count[0]~DUPLICATE_q\,
	datab => \reset_db|ALT_INV_stable_prev~q\,
	datac => \reset_db|ALT_INV_stable~q\,
	datad => ALT_INV_entry_count(1),
	dataf => \ALT_INV_state.S_ENTER~q\,
	combout => \entry_count~0_combout\);

-- Location: FF_X16_Y43_N40
\entry_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \entry_count~0_combout\,
	ena => \entry_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => entry_count(1));

-- Location: LABCELL_X17_Y43_N48
\state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~22_combout\ = ( !\reset_db|pulse_out~combout\ & ( (entry_count(1) & (\state~11_combout\ & entry_count(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_entry_count(1),
	datac => \ALT_INV_state~11_combout\,
	datad => ALT_INV_entry_count(0),
	dataf => \reset_db|ALT_INV_pulse_out~combout\,
	combout => \state~22_combout\);

-- Location: FF_X16_Y43_N53
\state.S_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \state~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CHECK~q\);

-- Location: LABCELL_X16_Y43_N57
\state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~14_combout\ = ( \state~13_combout\ & ( (!\state.S_CHECK~q\ & (\state.S_UNLOCKED~q\)) # (\state.S_CHECK~q\ & ((\Equal1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_UNLOCKED~q\,
	datac => \ALT_INV_state.S_CHECK~q\,
	datad => \ALT_INV_Equal1~3_combout\,
	dataf => \ALT_INV_state~13_combout\,
	combout => \state~14_combout\);

-- Location: FF_X16_Y43_N58
\state.S_UNLOCKED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_UNLOCKED~q\);

-- Location: LABCELL_X17_Y44_N27
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\entry_count[2]~DUPLICATE_q\ & ( entry_count(0) & ( !entry_count(1) ) ) ) # ( \entry_count[2]~DUPLICATE_q\ & ( !entry_count(0) & ( !entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_entry_count(1),
	datae => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_entry_count(0),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X16_Y44_N48
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( entry_count(0) & ( \entry_count[2]~DUPLICATE_q\ & ( !entry_count(1) ) ) ) # ( !entry_count(0) & ( \entry_count[2]~DUPLICATE_q\ & ( entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_entry_count(1),
	datae => ALT_INV_entry_count(0),
	dataf => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X17_Y44_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\entry_count[2]~DUPLICATE_q\ & ( !entry_count(0) & ( entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_entry_count(1),
	datae => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_entry_count(0),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X16_Y44_N15
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( entry_count(1) & ( \entry_count[2]~DUPLICATE_q\ & ( entry_count(0) ) ) ) # ( !entry_count(1) & ( \entry_count[2]~DUPLICATE_q\ & ( !entry_count(0) ) ) ) # ( !entry_count(1) & ( !\entry_count[2]~DUPLICATE_q\ & ( entry_count(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_entry_count(0),
	datae => ALT_INV_entry_count(1),
	dataf => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X17_Y44_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \entry_count[2]~DUPLICATE_q\ & ( entry_count(0) ) ) # ( !\entry_count[2]~DUPLICATE_q\ & ( entry_count(0) ) ) # ( \entry_count[2]~DUPLICATE_q\ & ( !entry_count(0) & ( !entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_entry_count(1),
	datae => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_entry_count(0),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X16_Y44_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( entry_count(0) & ( \entry_count[2]~DUPLICATE_q\ & ( entry_count(1) ) ) ) # ( entry_count(0) & ( !\entry_count[2]~DUPLICATE_q\ ) ) # ( !entry_count(0) & ( !\entry_count[2]~DUPLICATE_q\ & ( entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_entry_count(1),
	datae => ALT_INV_entry_count(0),
	dataf => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X17_Y44_N6
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \entry_count[2]~DUPLICATE_q\ & ( entry_count(0) & ( entry_count(1) ) ) ) # ( !\entry_count[2]~DUPLICATE_q\ & ( entry_count(0) & ( !entry_count(1) ) ) ) # ( !\entry_count[2]~DUPLICATE_q\ & ( !entry_count(0) & ( !entry_count(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_entry_count(1),
	datae => \ALT_INV_entry_count[2]~DUPLICATE_q\,
	dataf => ALT_INV_entry_count(0),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X34_Y44_N27
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( !fail_count(1) & ( \fail_count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_fail_count(1),
	dataf => \ALT_INV_fail_count[0]~DUPLICATE_q\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X18_Y43_N39
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \fail_count[0]~DUPLICATE_q\ & ( !\fail_count[1]~DUPLICATE_q\ ) ) # ( !\fail_count[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_fail_count[1]~DUPLICATE_q\,
	dataf => \ALT_INV_fail_count[0]~DUPLICATE_q\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X16_Y43_N54
\HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = ( \state.S_LOCKOUT~DUPLICATE_q\ ) # ( !\state.S_LOCKOUT~DUPLICATE_q\ & ( ((!\state.S_ENTER~DUPLICATE_q\) # (\state.S_INVALID~DUPLICATE_q\)) # (\state.S_UNLOCKED~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_UNLOCKED~q\,
	datab => \ALT_INV_state.S_INVALID~DUPLICATE_q\,
	datac => \ALT_INV_state.S_ENTER~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_LOCKOUT~DUPLICATE_q\,
	combout => \HEX5~0_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X25_Y31_N0
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


