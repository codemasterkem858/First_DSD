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

-- DATE "05/27/2026 18:25:20"

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
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

ENTITY 	Divider IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	r : OUT std_logic_vector(15 DOWNTO 0);
	q : OUT std_logic_vector(15 DOWNTO 0);
	z : OUT std_logic;
	o : OUT std_logic
	);
END Divider;

-- Design Ports Information
-- r[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[10]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[11]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[13]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[14]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divider IS
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
SIGNAL ww_r : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL ww_o : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \v4|m[12]~2_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \v4|m[14]~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \v4|m[13]~1_combout\ : std_logic;
SIGNAL \v4|m[11]~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \v4|m[10]~4_combout\ : std_logic;
SIGNAL \v4|m[8]~13_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \o~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \o~1_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \v2|m[13]~2_combout\ : std_logic;
SIGNAL \v4|m[6]~7_combout\ : std_logic;
SIGNAL \v4|m[7]~6_combout\ : std_logic;
SIGNAL \v4|m[9]~5_combout\ : std_logic;
SIGNAL \v4|m[1]~11_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \v4|m[5]~8_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \o~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \v4|m[3]~12_combout\ : std_logic;
SIGNAL \v4|m[2]~10_combout\ : std_logic;
SIGNAL \v4|m[4]~9_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|m~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|s~0_combout\ : std_logic;
SIGNAL \o~3_combout\ : std_logic;
SIGNAL \v2|m[14]~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u1|u1|u2|m~2_combout\ : std_logic;
SIGNAL \u1|u1|u2|m~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u4|co~combout\ : std_logic;
SIGNAL \u1|u2|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u1|u1|u2|m[0]~4_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u2|s~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[1]~6_combout\ : std_logic;
SIGNAL \u1|u2|u2|m[0]~7_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u1|u1|u2|m~3_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u3|s~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[2]~5_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|co~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|s~combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u3|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|s~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u2|u2|m[8]~2_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u4|s~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[7]~3_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u3|s~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[6]~8_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u1|s~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[4]~4_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|m~5_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|s~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u4|co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|co~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u2|u2|m[10]~1_combout\ : std_logic;
SIGNAL \u1|u2|u2|m[11]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[4]~6_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[5]~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \v2|m[12]~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[1]~8_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[2]~7_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|s~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[6]~4_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[7]~9_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[11]~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|co~combout\ : std_logic;
SIGNAL \u1|u2|u2|m[9]~9_combout\ : std_logic;
SIGNAL \u1|u3|u2|m[10]~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[9]~3_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[12]~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[10]~10_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|m[11]~2_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[12]~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u4|co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[5]~5_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[3]~10_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[4]~6_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \v2|m[11]~3_combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|m[0]~11_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[1]~8_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[2]~7_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|m[6]~4_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[7]~3_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u3|u2|m[8]~12_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|m[9]~9_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[11]~7_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[6]~4_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[4]~14_combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[2]~6_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[0]~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[1]~0_combout\ : std_logic;
SIGNAL \o~4_combout\ : std_logic;
SIGNAL \v2|m[10]~4_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[5]~5_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[7]~3_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[10]~1_combout\ : std_logic;
SIGNAL \u1|u4|u2|m[8]~11_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[9]~2_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[14]~13_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[13]~9_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[12]~8_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[12]~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[13]~10_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[14]~11_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u1|u2|m[8]~10_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[9]~4_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[10]~3_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[6]~6_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[0]~12_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[1]~9_combout\ : std_logic;
SIGNAL \v2|m[9]~5_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[2]~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u2|u1|u2|m[3]~11_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[4]~8_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[5]~7_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[7]~5_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[11]~2_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[13]~12_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[14]~11_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[10]~5_combout\ : std_logic;
SIGNAL \v2|m[8]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[0]~12_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[1]~2_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[2]~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[5]~9_combout\ : std_logic;
SIGNAL \u2|u2|u2|m[3]~14_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[4]~10_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[6]~8_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[7]~7_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u2|u2|m[8]~13_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[9]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[12]~3_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[11]~4_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[12]~3_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|m[11]~4_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[10]~5_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|m[6]~8_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[2]~2_combout\ : std_logic;
SIGNAL \u2|u3|u2|m[0]~13_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[1]~1_combout\ : std_logic;
SIGNAL \v2|m[7]~7_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[5]~9_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[3]~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[4]~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[7]~7_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|m[8]~14_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[9]~6_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[11]~5_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[12]~4_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[10]~6_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[0]~13_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[1]~3_combout\ : std_logic;
SIGNAL \v2|m[6]~8_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[2]~2_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[3]~12_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[4]~1_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[5]~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[6]~9_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[7]~8_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u2|m[8]~14_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[9]~7_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[11]~6_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[12]~5_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[10]~7_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[6]~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[7]~9_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \o~5_combout\ : std_logic;
SIGNAL \v2|m[5]~9_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[2]~2_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[0]~13_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[1]~3_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[5]~4_combout\ : std_logic;
SIGNAL \u3|u1|u2|m[3]~12_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[4]~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u1|u2|m[8]~14_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[9]~8_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[5]~2_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[0]~13_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[1]~5_combout\ : std_logic;
SIGNAL \v2|m[4]~10_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[2]~4_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u3|u2|u2|m[3]~12_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[4]~3_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[6]~1_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[7]~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u3|u2|u2|m[8]~14_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[9]~9_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[11]~7_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[10]~8_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[12]~6_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[10]~9_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[11]~8_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[8]~14_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[9]~6_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[7]~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[6]~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|m[3]~12_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[4]~3_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[5]~2_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \v2|m[3]~11_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[2]~4_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u3|u3|u2|m[0]~13_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[1]~5_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u3|u4|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[12]~7_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[11]~8_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[13]~11_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[14]~10_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[8]~12_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[9]~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[10]~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[6]~3_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[7]~2_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[3]~13_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[4]~5_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \v2|m[2]~12_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[2]~6_combout\ : std_logic;
SIGNAL \u3|u4|u2|m[0]~14_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[1]~7_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u4|u1|u2|m[5]~4_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[12]~9_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[10]~2_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[7]~4_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u4|u2|u2|m[6]~5_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[3]~13_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[4]~7_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[2]~8_combout\ : std_logic;
SIGNAL \v2|m[1]~13_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[0]~14_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[1]~9_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[5]~6_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u4|u1|u2|m[8]~12_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[9]~3_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u4|u2|u2|m[11]~1_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u4|u2|u2|m[14]~11_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u1|co~combout\ : std_logic;
SIGNAL \u4|u2|u2|m[13]~10_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|co~2_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[12]~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|s~0_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[12]~1_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[11]~2_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[2]~9_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|s~0_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[0]~14_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[1]~10_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[5]~7_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u4|co~combout\ : std_logic;
SIGNAL \u4|u2|u2|m[3]~13_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[4]~8_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[7]~5_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[6]~6_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[10]~3_combout\ : std_logic;
SIGNAL \u4|u2|u2|m[8]~12_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[9]~4_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u4|co~combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[14]~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|m[0]~0_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[0]~11_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u2|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[1]~1_combout\ : std_logic;
SIGNAL \v8|m[1]~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u3|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[2]~2_combout\ : std_logic;
SIGNAL \v8|m[2]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u4|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[3]~3_combout\ : std_logic;
SIGNAL \v8|m[3]~2_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|s~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[3]~12_combout\ : std_logic;
SIGNAL \u4|u4|u2|m[4]~4_combout\ : std_logic;
SIGNAL \v8|m[4]~3_combout\ : std_logic;
SIGNAL \v7|u1|u4|co~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u2|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[5]~5_combout\ : std_logic;
SIGNAL \v8|m[5]~4_combout\ : std_logic;
SIGNAL \v7|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u3|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[6]~6_combout\ : std_logic;
SIGNAL \v8|m[6]~5_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u4|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[7]~7_combout\ : std_logic;
SIGNAL \v8|m[7]~6_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u1|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[8]~8_combout\ : std_logic;
SIGNAL \v8|m[8]~7_combout\ : std_logic;
SIGNAL \u4|u3|u2|m[8]~13_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[9]~9_combout\ : std_logic;
SIGNAL \v8|m[9]~8_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u3|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[10]~10_combout\ : std_logic;
SIGNAL \v7|u3|u1|co~0_combout\ : std_logic;
SIGNAL \v8|m[10]~9_combout\ : std_logic;
SIGNAL \v7|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u4|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[11]~11_combout\ : std_logic;
SIGNAL \v8|m[11]~10_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u1|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[12]~12_combout\ : std_logic;
SIGNAL \v8|m[12]~11_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u2|s~combout\ : std_logic;
SIGNAL \u4|u4|u2|m[13]~13_combout\ : std_logic;
SIGNAL \v8|m[13]~12_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u2|m[13]~14_combout\ : std_logic;
SIGNAL \u4|u4|u2|m[14]~14_combout\ : std_logic;
SIGNAL \v8|m[14]~13_combout\ : std_logic;
SIGNAL \u4|u4|u2|m[15]~15_combout\ : std_logic;
SIGNAL \v7|u4|u2|co~0_combout\ : std_logic;
SIGNAL \v8|m[15]~14_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[1]~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[2]~1_combout\ : std_logic;
SIGNAL \v5|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[3]~2_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[4]~3_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[5]~4_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[6]~5_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v5|u2|u2|co~0_combout\ : std_logic;
SIGNAL \v6|m[7]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v5|u2|u4|co~0_combout\ : std_logic;
SIGNAL \v6|m[8]~7_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[9]~8_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[10]~9_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|co~combout\ : std_logic;
SIGNAL \v6|m[11]~10_combout\ : std_logic;
SIGNAL \v5|u3|u4|co~0_combout\ : std_logic;
SIGNAL \v6|m[12]~11_combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u4|co~1_combout\ : std_logic;
SIGNAL \v6|m[13]~12_combout\ : std_logic;
SIGNAL \v6|m[14]~13_combout\ : std_logic;
SIGNAL \v6|m[15]~14_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \o~6_combout\ : std_logic;
SIGNAL \o~7_combout\ : std_logic;
SIGNAL \o~8_combout\ : std_logic;
SIGNAL \o~9_combout\ : std_logic;
SIGNAL \o~10_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[11]~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m~2_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[14]~1_combout\ : std_logic;
SIGNAL \ALT_INV_o~3_combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[8]~13_combout\ : std_logic;
SIGNAL \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u1|u1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \ALT_INV_o~2_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_o~1_combout\ : std_logic;
SIGNAL \ALT_INV_o~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[1]~11_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[2]~10_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[4]~9_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[6]~7_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[7]~6_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[9]~5_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[10]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[11]~3_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[12]~2_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[13]~1_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[14]~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[4]~14_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[2]~6_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[5]~5_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[6]~4_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[7]~3_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[9]~2_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[8]~11_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[10]~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[10]~4_combout\ : std_logic;
SIGNAL \ALT_INV_o~4_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[1]~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[10]~10_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[9]~9_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[8]~12_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[1]~8_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[0]~11_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[2]~7_combout\ : std_logic;
SIGNAL \u2|u1|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[4]~6_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[3]~10_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[5]~5_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[6]~4_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[7]~3_combout\ : std_logic;
SIGNAL \u2|u1|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[11]~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[12]~1_combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[11]~3_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_m[0]~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[7]~9_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[1]~8_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[2]~7_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[4]~6_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[5]~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[6]~4_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u4|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[9]~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[10]~2_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[9]~9_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[11]~1_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_m[12]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[6]~8_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[13]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[0]~7_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[1]~6_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m[0]~4_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[2]~5_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u1|u2|ALT_INV_m~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[4]~4_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[7]~3_combout\ : std_logic;
SIGNAL \u1|u2|u1|u2|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[8]~2_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\ : std_logic;
SIGNAL \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_m[10]~1_combout\ : std_logic;
SIGNAL \u1|u1|u1|u3|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[6]~8_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[1]~3_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[0]~13_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[2]~2_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[4]~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[5]~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[5]~9_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[6]~8_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[7]~7_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[9]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[8]~14_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[10]~5_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[11]~4_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[12]~3_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[2]~2_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[1]~1_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[0]~13_combout\ : std_logic;
SIGNAL \u3|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[7]~7_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[4]~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[13]~12_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[14]~11_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[4]~10_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[3]~14_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[5]~9_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[6]~8_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[7]~7_combout\ : std_logic;
SIGNAL \u2|u4|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[9]~6_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[8]~13_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[10]~5_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[11]~4_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[12]~3_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[8]~6_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[1]~2_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[0]~12_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[2]~1_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_m[3]~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[14]~11_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[13]~10_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[9]~5_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[1]~9_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[0]~12_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[4]~8_combout\ : std_logic;
SIGNAL \u2|u2|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[3]~11_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[5]~7_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[6]~6_combout\ : std_logic;
SIGNAL \u2|u2|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[7]~5_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[9]~4_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[8]~10_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[10]~3_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[11]~2_combout\ : std_logic;
SIGNAL \u2|u2|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[12]~1_combout\ : std_logic;
SIGNAL \u2|u2|u2|ALT_INV_m[2]~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[13]~9_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[12]~8_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[11]~7_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[10]~9_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[11]~8_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[12]~7_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[9]~6_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[8]~14_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[3]~11_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[1]~5_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[0]~13_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[2]~4_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[4]~3_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[5]~2_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[6]~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[7]~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[9]~9_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[8]~14_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[10]~8_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[11]~7_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[12]~6_combout\ : std_logic;
SIGNAL \u3|u4|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[4]~10_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[1]~5_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[0]~13_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[2]~4_combout\ : std_logic;
SIGNAL \u3|u4|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[4]~3_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[5]~2_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[6]~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_m[7]~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[7]~9_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[9]~8_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[8]~14_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[10]~7_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[11]~6_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[12]~5_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[5]~4_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[5]~9_combout\ : std_logic;
SIGNAL \ALT_INV_o~5_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[1]~3_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[0]~13_combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[2]~2_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[4]~1_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \u3|u2|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u2|ALT_INV_m[6]~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[6]~9_combout\ : std_logic;
SIGNAL \u3|u1|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[7]~8_combout\ : std_logic;
SIGNAL \u3|u2|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[9]~7_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_m[8]~14_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[10]~6_combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[11]~5_combout\ : std_logic;
SIGNAL \u3|u1|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u1|u2|ALT_INV_m[12]~4_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u2|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[4]~4_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[3]~12_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[3]~3_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[2]~2_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[1]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[0]~11_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[0]~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[1]~10_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[0]~14_combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[2]~9_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[4]~8_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[3]~13_combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[5]~7_combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[6]~6_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[7]~5_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[9]~4_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[8]~12_combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[10]~3_combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[11]~2_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[12]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[14]~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[14]~11_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[13]~10_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[1]~13_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[1]~9_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[0]~14_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[2]~8_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[4]~7_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[3]~13_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[5]~6_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[6]~5_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[7]~4_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[9]~3_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[8]~12_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[10]~2_combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[11]~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u2|ALT_INV_m[12]~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[12]~9_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[11]~8_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v2|ALT_INV_m[2]~12_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[1]~7_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[0]~14_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[2]~6_combout\ : std_logic;
SIGNAL \u4|u2|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[4]~5_combout\ : std_logic;
SIGNAL \u4|u1|u1|u1|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[3]~13_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[5]~4_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[6]~3_combout\ : std_logic;
SIGNAL \u4|u1|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[7]~2_combout\ : std_logic;
SIGNAL \u4|u2|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[9]~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[8]~12_combout\ : std_logic;
SIGNAL \u4|u1|u2|ALT_INV_m[10]~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[13]~11_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_m[14]~10_combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u2|u1|u3|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u1|u2|ALT_INV_m[14]~13_combout\ : std_logic;
SIGNAL \ALT_INV_o~9_combout\ : std_logic;
SIGNAL \ALT_INV_o~8_combout\ : std_logic;
SIGNAL \ALT_INV_o~7_combout\ : std_logic;
SIGNAL \ALT_INV_o~6_combout\ : std_logic;
SIGNAL \u1|u3|u1|u4|u4|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \v5|u3|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u1|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u2|u4|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u1|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u2|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u1|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u2|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u4|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[15]~15_combout\ : std_logic;
SIGNAL \v7|u4|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[14]~14_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[13]~14_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[13]~13_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[12]~12_combout\ : std_logic;
SIGNAL \u4|u4|u1|u4|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[11]~11_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \v7|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[10]~10_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \v7|u3|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[9]~9_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u3|u2|ALT_INV_m[8]~13_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[8]~8_combout\ : std_logic;
SIGNAL \u4|u4|u1|u3|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[7]~7_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u4|ALT_INV_s~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[6]~6_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \v7|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_m[5]~5_combout\ : std_logic;
SIGNAL \u4|u4|u1|u2|u2|ALT_INV_s~combout\ : std_logic;
SIGNAL \v7|u1|u4|ALT_INV_co~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
r <= ww_r;
q <= ww_q;
z <= ww_z;
o <= ww_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|u2|u2|ALT_INV_m[11]~0_combout\ <= NOT \u1|u2|u2|m[11]~0_combout\;
\u1|u2|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u1|u2|u1|u4|u4|co~1_combout\;
\u1|u2|u1|u2|u4|ALT_INV_co~combout\ <= NOT \u1|u2|u1|u2|u4|co~combout\;
\u1|u2|u1|u2|u2|ALT_INV_co~1_combout\ <= NOT \u1|u2|u1|u2|u2|co~1_combout\;
\u1|u2|u1|u2|u2|ALT_INV_s~0_combout\ <= NOT \u1|u2|u1|u2|u2|s~0_combout\;
\u1|u1|u2|ALT_INV_m~2_combout\ <= NOT \u1|u1|u2|m~2_combout\;
\u1|u2|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u1|u2|u1|u1|u3|co~combout\;
\v2|ALT_INV_m[14]~1_combout\ <= NOT \v2|m[14]~1_combout\;
\ALT_INV_o~3_combout\ <= NOT \o~3_combout\;
\u1|u1|u2|ALT_INV_m~1_combout\ <= NOT \u1|u1|u2|m~1_combout\;
\u1|u2|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u1|u2|u1|u2|u2|co~0_combout\;
\u1|u1|u2|ALT_INV_m~0_combout\ <= NOT \u1|u1|u2|m~0_combout\;
\u1|u1|u1|u1|u3|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u1|u3|co~0_combout\;
\u1|u1|u1|u2|u3|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u2|u3|co~0_combout\;
\u1|u1|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u1|u1|u1|u4|u4|co~2_combout\;
\u1|u1|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u1|u1|u1|u4|u4|co~1_combout\;
\u1|u1|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u4|u4|co~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\u1|u1|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u3|u2|co~0_combout\;
\v4|ALT_INV_m[8]~13_combout\ <= NOT \v4|m[8]~13_combout\;
\u1|u1|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u2|u2|co~0_combout\;
\u1|u1|u1|u1|u1|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u1|u1|co~0_combout\;
\ALT_INV_o~2_combout\ <= NOT \o~2_combout\;
\v4|ALT_INV_m[3]~12_combout\ <= NOT \v4|m[3]~12_combout\;
\v2|ALT_INV_m[12]~0_combout\ <= NOT \v2|m[12]~0_combout\;
\ALT_INV_o~1_combout\ <= NOT \o~1_combout\;
\ALT_INV_o~0_combout\ <= NOT \o~0_combout\;
\v4|ALT_INV_m[1]~11_combout\ <= NOT \v4|m[1]~11_combout\;
\v4|ALT_INV_m[2]~10_combout\ <= NOT \v4|m[2]~10_combout\;
\v4|ALT_INV_m[4]~9_combout\ <= NOT \v4|m[4]~9_combout\;
\v4|ALT_INV_m[5]~8_combout\ <= NOT \v4|m[5]~8_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\v4|ALT_INV_m[6]~7_combout\ <= NOT \v4|m[6]~7_combout\;
\v4|ALT_INV_m[7]~6_combout\ <= NOT \v4|m[7]~6_combout\;
\v4|ALT_INV_m[9]~5_combout\ <= NOT \v4|m[9]~5_combout\;
\v4|ALT_INV_m[10]~4_combout\ <= NOT \v4|m[10]~4_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\v4|ALT_INV_m[11]~3_combout\ <= NOT \v4|m[11]~3_combout\;
\v4|ALT_INV_m[12]~2_combout\ <= NOT \v4|m[12]~2_combout\;
\v4|ALT_INV_m[13]~1_combout\ <= NOT \v4|m[13]~1_combout\;
\v4|ALT_INV_m[14]~0_combout\ <= NOT \v4|m[14]~0_combout\;
\u1|u2|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u1|u2|u1|u4|u4|co~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\u2|u1|u2|ALT_INV_m[4]~14_combout\ <= NOT \u2|u1|u2|m[4]~14_combout\;
\u2|u1|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u3|u3|co~combout\;
\u2|u2|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u3|u4|co~combout\;
\u2|u2|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u2|u2|u1|u3|u2|co~1_combout\;
\u2|u2|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u2|u2|u1|u3|u2|s~0_combout\;
\u2|u2|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u2|u3|co~combout\;
\u2|u2|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u2|u2|u1|u2|u1|co~1_combout\;
\u2|u2|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u2|u2|u1|u2|u1|s~0_combout\;
\u2|u1|u2|ALT_INV_m[2]~6_combout\ <= NOT \u2|u1|u2|m[2]~6_combout\;
\u2|u2|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u2|u2|u1|u2|u1|co~0_combout\;
\u2|u1|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u2|u1|u1|u1|u4|s~combout\;
\u2|u1|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u1|u4|co~combout\;
\u2|u1|u2|ALT_INV_m[5]~5_combout\ <= NOT \u2|u1|u2|m[5]~5_combout\;
\u2|u1|u2|ALT_INV_m[6]~4_combout\ <= NOT \u2|u1|u2|m[6]~4_combout\;
\u2|u1|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u2|u2|co~combout\;
\u2|u1|u2|ALT_INV_m[7]~3_combout\ <= NOT \u2|u1|u2|m[7]~3_combout\;
\u2|u2|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u2|u2|u1|u3|u2|co~0_combout\;
\u2|u1|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u2|u1|u1|u3|u1|s~combout\;
\u2|u1|u2|ALT_INV_m[9]~2_combout\ <= NOT \u2|u1|u2|m[9]~2_combout\;
\u2|u1|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u3|u1|co~combout\;
\u1|u4|u2|ALT_INV_m[8]~11_combout\ <= NOT \u1|u4|u2|m[8]~11_combout\;
\u2|u1|u2|ALT_INV_m[10]~1_combout\ <= NOT \u2|u1|u2|m[10]~1_combout\;
\u2|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[10]~4_combout\ <= NOT \v2|m[10]~4_combout\;
\ALT_INV_o~4_combout\ <= NOT \o~4_combout\;
\u2|u1|u2|ALT_INV_m[1]~0_combout\ <= NOT \u2|u1|u2|m[1]~0_combout\;
\u2|u1|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u2|u1|u1|u4|u4|co~2_combout\;
\u2|u1|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u2|u1|u1|u4|u4|co~1_combout\;
\u2|u1|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u2|u1|u1|u4|u4|co~0_combout\;
\u1|u4|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u4|u1|co~combout\;
\u2|u1|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u3|u4|co~combout\;
\u1|u4|u2|ALT_INV_m[10]~10_combout\ <= NOT \u1|u4|u2|m[10]~10_combout\;
\u1|u4|u2|ALT_INV_m[9]~9_combout\ <= NOT \u1|u4|u2|m[9]~9_combout\;
\u1|u4|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u3|u1|co~combout\;
\u1|u3|u2|ALT_INV_m[8]~12_combout\ <= NOT \u1|u3|u2|m[8]~12_combout\;
\u2|u1|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u2|u1|u1|u3|u2|co~1_combout\;
\u2|u1|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u2|u1|u1|u3|u2|s~0_combout\;
\u2|u1|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u2|u3|co~combout\;
\u2|u1|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u2|u1|u1|u2|u1|co~1_combout\;
\u2|u1|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u2|u1|u1|u2|u1|s~0_combout\;
\u2|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u1|u2|co~combout\;
\u1|u4|u2|ALT_INV_m[1]~8_combout\ <= NOT \u1|u4|u2|m[1]~8_combout\;
\u1|u3|u2|ALT_INV_m[0]~11_combout\ <= NOT \u1|u3|u2|m[0]~11_combout\;
\u1|u4|u2|ALT_INV_m[2]~7_combout\ <= NOT \u1|u4|u2|m[2]~7_combout\;
\u2|u1|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u2|u1|u1|u2|u1|co~0_combout\;
\u1|u4|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u1|u4|u1|u1|u4|s~combout\;
\u1|u4|u2|ALT_INV_m[4]~6_combout\ <= NOT \u1|u4|u2|m[4]~6_combout\;
\u1|u4|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u1|u4|co~combout\;
\u1|u3|u2|ALT_INV_m[3]~10_combout\ <= NOT \u1|u3|u2|m[3]~10_combout\;
\u1|u4|u2|ALT_INV_m[5]~5_combout\ <= NOT \u1|u4|u2|m[5]~5_combout\;
\u1|u4|u2|ALT_INV_m[6]~4_combout\ <= NOT \u1|u4|u2|m[6]~4_combout\;
\u1|u4|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u2|u2|co~combout\;
\u1|u4|u2|ALT_INV_m[7]~3_combout\ <= NOT \u1|u4|u2|m[7]~3_combout\;
\u2|u1|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u2|u1|u1|u3|u2|co~0_combout\;
\u1|u4|u1|u2|u4|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u2|u4|co~combout\;
\u1|u4|u2|ALT_INV_m[11]~2_combout\ <= NOT \u1|u4|u2|m[11]~2_combout\;
\u1|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u3|u3|co~combout\;
\u1|u4|u2|ALT_INV_m[12]~1_combout\ <= NOT \u1|u4|u2|m[12]~1_combout\;
\v2|ALT_INV_m[11]~3_combout\ <= NOT \v2|m[11]~3_combout\;
\u1|u4|u2|ALT_INV_m[0]~0_combout\ <= NOT \u1|u4|u2|m[0]~0_combout\;
\u1|u4|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u1|u4|u1|u4|u4|co~1_combout\;
\u1|u4|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u1|u4|u1|u4|u4|co~0_combout\;
\u1|u4|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u3|u4|co~combout\;
\u1|u4|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u1|u4|u1|u3|u2|co~1_combout\;
\u1|u4|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u1|u4|u1|u3|u2|s~0_combout\;
\u1|u3|u2|ALT_INV_m[7]~9_combout\ <= NOT \u1|u3|u2|m[7]~9_combout\;
\u1|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u2|u3|co~combout\;
\u1|u4|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u2|u3|co~combout\;
\u1|u4|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u1|u4|u1|u2|u1|co~1_combout\;
\u1|u4|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u1|u4|u1|u2|u1|s~0_combout\;
\u1|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u1|u2|co~combout\;
\u1|u3|u2|ALT_INV_m[1]~8_combout\ <= NOT \u1|u3|u2|m[1]~8_combout\;
\u1|u3|u2|ALT_INV_m[2]~7_combout\ <= NOT \u1|u3|u2|m[2]~7_combout\;
\u1|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u1|u2|co~combout\;
\u1|u4|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u1|u4|u1|u2|u1|co~0_combout\;
\u1|u3|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u1|u3|u1|u1|u4|s~combout\;
\u1|u3|u2|ALT_INV_m[4]~6_combout\ <= NOT \u1|u3|u2|m[4]~6_combout\;
\u1|u3|u1|u2|u1|ALT_INV_s~combout\ <= NOT \u1|u3|u1|u2|u1|s~combout\;
\u1|u3|u2|ALT_INV_m[5]~5_combout\ <= NOT \u1|u3|u2|m[5]~5_combout\;
\u1|u3|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u2|u1|co~combout\;
\u1|u3|u2|ALT_INV_m[6]~4_combout\ <= NOT \u1|u3|u2|m[6]~4_combout\;
\u1|u3|u1|u2|u3|ALT_INV_s~combout\ <= NOT \u1|u3|u1|u2|u3|s~combout\;
\u1|u4|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u1|u4|u1|u3|u2|co~0_combout\;
\u1|u3|u2|ALT_INV_m[9]~3_combout\ <= NOT \u1|u3|u2|m[9]~3_combout\;
\u1|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u3|u1|co~combout\;
\u1|u3|u2|ALT_INV_m[10]~2_combout\ <= NOT \u1|u3|u2|m[10]~2_combout\;
\u1|u3|u1|u3|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u3|u2|co~combout\;
\u1|u2|u2|ALT_INV_m[9]~9_combout\ <= NOT \u1|u2|u2|m[9]~9_combout\;
\u1|u3|u2|ALT_INV_m[11]~1_combout\ <= NOT \u1|u3|u2|m[11]~1_combout\;
\u1|u3|u2|ALT_INV_m[12]~0_combout\ <= NOT \u1|u3|u2|m[12]~0_combout\;
\u1|u3|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u4|u4|co~0_combout\;
\u1|u3|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u3|u3|co~combout\;
\u1|u3|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u4|u1|co~combout\;
\u1|u3|u1|u3|u3|ALT_INV_co~1_combout\ <= NOT \u1|u3|u1|u3|u3|co~1_combout\;
\u1|u3|u1|u3|u3|ALT_INV_s~0_combout\ <= NOT \u1|u3|u1|u3|u3|s~0_combout\;
\u1|u3|u1|u2|u4|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u2|u4|co~combout\;
\u1|u3|u1|u2|u3|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u2|u3|co~0_combout\;
\u1|u2|u2|ALT_INV_m[6]~8_combout\ <= NOT \u1|u2|u2|m[6]~8_combout\;
\u1|u2|u1|u2|u3|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u2|u3|s~combout\;
\u1|u3|u1|u2|u3|ALT_INV_s~0_combout\ <= NOT \u1|u3|u1|u2|u3|s~0_combout\;
\u1|u2|u1|u2|u2|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u2|u2|s~combout\;
\u1|u1|u2|ALT_INV_m~5_combout\ <= NOT \u1|u1|u2|m~5_combout\;
\u1|u3|u1|u2|u2|ALT_INV_co~1_combout\ <= NOT \u1|u3|u1|u2|u2|co~1_combout\;
\u1|u3|u1|u2|u2|ALT_INV_s~0_combout\ <= NOT \u1|u3|u1|u2|u2|s~0_combout\;
\u1|u3|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u1|u3|u1|u2|u1|s~0_combout\;
\u1|u3|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u1|u3|co~combout\;
\v2|ALT_INV_m[13]~2_combout\ <= NOT \v2|m[13]~2_combout\;
\u1|u2|u2|ALT_INV_m[0]~7_combout\ <= NOT \u1|u2|u2|m[0]~7_combout\;
\u1|u2|u2|ALT_INV_m[1]~6_combout\ <= NOT \u1|u2|u2|m[1]~6_combout\;
\u1|u2|u1|u1|u2|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u1|u2|s~combout\;
\u1|u1|u2|ALT_INV_m[0]~4_combout\ <= NOT \u1|u1|u2|m[0]~4_combout\;
\u1|u2|u2|ALT_INV_m[2]~5_combout\ <= NOT \u1|u2|u2|m[2]~5_combout\;
\u1|u2|u1|u1|u3|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u1|u3|s~combout\;
\u1|u1|u2|ALT_INV_m~3_combout\ <= NOT \u1|u1|u2|m~3_combout\;
\u1|u3|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u2|u1|co~0_combout\;
\u1|u2|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u1|u4|s~combout\;
\u1|u3|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u2|u2|co~0_combout\;
\u1|u2|u2|ALT_INV_m[4]~4_combout\ <= NOT \u1|u2|u2|m[4]~4_combout\;
\u1|u2|u1|u2|u1|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u2|u1|s~combout\;
\u1|u2|u2|ALT_INV_m[7]~3_combout\ <= NOT \u1|u2|u2|m[7]~3_combout\;
\u1|u2|u1|u2|u4|ALT_INV_s~combout\ <= NOT \u1|u2|u1|u2|u4|s~combout\;
\u1|u2|u2|ALT_INV_m[8]~2_combout\ <= NOT \u1|u2|u2|m[8]~2_combout\;
\u1|u3|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u3|u3|co~0_combout\;
\u1|u2|u1|u4|u4|ALT_INV_co~3_combout\ <= NOT \u1|u2|u1|u4|u4|co~3_combout\;
\u1|u2|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u1|u2|u1|u4|u4|co~2_combout\;
\u1|u1|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u1|u1|u1|u3|u1|s~combout\;
\u1|u2|u2|ALT_INV_m[10]~1_combout\ <= NOT \u1|u2|u2|m[10]~1_combout\;
\u1|u1|u1|u3|u1|ALT_INV_co~0_combout\ <= NOT \u1|u1|u1|u3|u1|co~0_combout\;
\u3|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[6]~8_combout\ <= NOT \v2|m[6]~8_combout\;
\u3|u1|u2|ALT_INV_m[1]~3_combout\ <= NOT \u3|u1|u2|m[1]~3_combout\;
\u2|u4|u2|ALT_INV_m[0]~13_combout\ <= NOT \u2|u4|u2|m[0]~13_combout\;
\u3|u1|u2|ALT_INV_m[2]~2_combout\ <= NOT \u3|u1|u2|m[2]~2_combout\;
\u3|u2|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u3|u2|u1|u2|u1|co~0_combout\;
\u3|u1|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u3|u1|u1|u1|u4|s~combout\;
\u3|u1|u2|ALT_INV_m[4]~1_combout\ <= NOT \u3|u1|u2|m[4]~1_combout\;
\u3|u1|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u1|u4|co~combout\;
\u2|u4|u2|ALT_INV_m[3]~12_combout\ <= NOT \u2|u4|u2|m[3]~12_combout\;
\u3|u1|u2|ALT_INV_m[5]~0_combout\ <= NOT \u3|u1|u2|m[5]~0_combout\;
\u3|u1|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u3|u1|u1|u4|u4|co~2_combout\;
\u3|u1|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u3|u1|u1|u4|u4|co~1_combout\;
\u3|u1|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u3|u1|u1|u4|u4|co~0_combout\;
\u2|u4|u2|ALT_INV_m[13]~11_combout\ <= NOT \u2|u4|u2|m[13]~11_combout\;
\u2|u4|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u4|u1|co~combout\;
\u2|u4|u2|ALT_INV_m[14]~10_combout\ <= NOT \u2|u4|u2|m[14]~10_combout\;
\u2|u4|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u4|u2|co~combout\;
\u3|u1|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u3|u4|co~combout\;
\u3|u1|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u3|u1|u1|u3|u2|co~1_combout\;
\u3|u1|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u3|u1|u1|u3|u2|s~0_combout\;
\u3|u1|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u2|u3|co~combout\;
\u2|u4|u2|ALT_INV_m[5]~9_combout\ <= NOT \u2|u4|u2|m[5]~9_combout\;
\u2|u4|u2|ALT_INV_m[6]~8_combout\ <= NOT \u2|u4|u2|m[6]~8_combout\;
\u2|u4|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u2|u2|co~combout\;
\u2|u4|u2|ALT_INV_m[7]~7_combout\ <= NOT \u2|u4|u2|m[7]~7_combout\;
\u3|u1|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u3|u1|u1|u3|u2|co~0_combout\;
\u2|u4|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u2|u4|u1|u3|u1|s~combout\;
\u2|u4|u2|ALT_INV_m[9]~6_combout\ <= NOT \u2|u4|u2|m[9]~6_combout\;
\u2|u4|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u3|u1|co~combout\;
\u2|u3|u2|ALT_INV_m[8]~14_combout\ <= NOT \u2|u3|u2|m[8]~14_combout\;
\u2|u4|u2|ALT_INV_m[10]~5_combout\ <= NOT \u2|u4|u2|m[10]~5_combout\;
\u2|u4|u2|ALT_INV_m[11]~4_combout\ <= NOT \u2|u4|u2|m[11]~4_combout\;
\u2|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u3|u3|co~combout\;
\u2|u4|u2|ALT_INV_m[12]~3_combout\ <= NOT \u2|u4|u2|m[12]~3_combout\;
\u3|u1|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u3|u1|u1|u2|u1|co~1_combout\;
\u3|u1|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u3|u1|u1|u2|u1|s~0_combout\;
\u2|u4|u2|ALT_INV_m[2]~2_combout\ <= NOT \u2|u4|u2|m[2]~2_combout\;
\u2|u4|u2|ALT_INV_m[1]~1_combout\ <= NOT \u2|u4|u2|m[1]~1_combout\;
\u2|u3|u2|ALT_INV_m[0]~13_combout\ <= NOT \u2|u3|u2|m[0]~13_combout\;
\u3|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[7]~7_combout\ <= NOT \v2|m[7]~7_combout\;
\u3|u1|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u3|u1|u1|u2|u1|co~0_combout\;
\u2|u4|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u2|u4|u1|u1|u4|s~combout\;
\u2|u4|u2|ALT_INV_m[4]~0_combout\ <= NOT \u2|u4|u2|m[4]~0_combout\;
\u2|u4|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u2|u4|u1|u4|u4|co~2_combout\;
\u2|u4|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u2|u4|u1|u4|u4|co~1_combout\;
\u2|u4|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u2|u4|u1|u4|u4|co~0_combout\;
\u2|u3|u2|ALT_INV_m[13]~12_combout\ <= NOT \u2|u3|u2|m[13]~12_combout\;
\u2|u3|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u4|u1|co~combout\;
\u2|u3|u2|ALT_INV_m[14]~11_combout\ <= NOT \u2|u3|u2|m[14]~11_combout\;
\u2|u3|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u4|u2|co~combout\;
\u2|u4|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u3|u4|co~combout\;
\u2|u4|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u2|u4|u1|u3|u2|co~1_combout\;
\u2|u4|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u2|u4|u1|u3|u2|s~0_combout\;
\u2|u4|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u2|u3|co~combout\;
\u2|u4|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u2|u4|u1|u2|u1|co~1_combout\;
\u2|u4|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u2|u4|u1|u2|u1|s~0_combout\;
\u2|u4|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u2|u4|u1|u2|u1|co~0_combout\;
\u2|u3|u2|ALT_INV_m[4]~10_combout\ <= NOT \u2|u3|u2|m[4]~10_combout\;
\u2|u3|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u1|u4|co~combout\;
\u2|u2|u2|ALT_INV_m[3]~14_combout\ <= NOT \u2|u2|u2|m[3]~14_combout\;
\u2|u3|u2|ALT_INV_m[5]~9_combout\ <= NOT \u2|u3|u2|m[5]~9_combout\;
\u2|u3|u2|ALT_INV_m[6]~8_combout\ <= NOT \u2|u3|u2|m[6]~8_combout\;
\u2|u3|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u2|u2|co~combout\;
\u2|u3|u2|ALT_INV_m[7]~7_combout\ <= NOT \u2|u3|u2|m[7]~7_combout\;
\u2|u4|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u2|u4|u1|u3|u2|co~0_combout\;
\u2|u3|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u2|u3|u1|u3|u1|s~combout\;
\u2|u3|u2|ALT_INV_m[9]~6_combout\ <= NOT \u2|u3|u2|m[9]~6_combout\;
\u2|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u3|u1|co~combout\;
\u2|u2|u2|ALT_INV_m[8]~13_combout\ <= NOT \u2|u2|u2|m[8]~13_combout\;
\u2|u3|u2|ALT_INV_m[10]~5_combout\ <= NOT \u2|u3|u2|m[10]~5_combout\;
\u2|u3|u2|ALT_INV_m[11]~4_combout\ <= NOT \u2|u3|u2|m[11]~4_combout\;
\u2|u3|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u3|u3|co~combout\;
\u2|u3|u2|ALT_INV_m[12]~3_combout\ <= NOT \u2|u3|u2|m[12]~3_combout\;
\u2|u4|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u1|u4|co~combout\;
\u2|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[8]~6_combout\ <= NOT \v2|m[8]~6_combout\;
\u2|u3|u2|ALT_INV_m[1]~2_combout\ <= NOT \u2|u3|u2|m[1]~2_combout\;
\u2|u2|u2|ALT_INV_m[0]~12_combout\ <= NOT \u2|u2|u2|m[0]~12_combout\;
\u2|u3|u2|ALT_INV_m[2]~1_combout\ <= NOT \u2|u3|u2|m[2]~1_combout\;
\u2|u3|u2|ALT_INV_m[3]~0_combout\ <= NOT \u2|u3|u2|m[3]~0_combout\;
\u2|u3|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u2|u3|u1|u1|u4|s~combout\;
\u2|u3|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u2|u3|u1|u4|u4|co~2_combout\;
\u2|u3|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u2|u3|u1|u4|u4|co~1_combout\;
\u2|u3|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u4|u4|co~0_combout\;
\u2|u2|u2|ALT_INV_m[14]~11_combout\ <= NOT \u2|u2|u2|m[14]~11_combout\;
\u2|u2|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u4|u2|co~combout\;
\u2|u2|u2|ALT_INV_m[13]~10_combout\ <= NOT \u2|u2|u2|m[13]~10_combout\;
\u2|u2|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u4|u1|co~combout\;
\u2|u3|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u3|u4|co~combout\;
\u2|u3|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u2|u3|u1|u3|u2|co~1_combout\;
\u2|u3|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u2|u3|u1|u3|u2|s~0_combout\;
\u2|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u2|u3|co~combout\;
\u2|u3|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u2|u3|u1|u2|u1|co~1_combout\;
\u2|u3|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u2|u3|u1|u2|u1|s~0_combout\;
\u2|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[9]~5_combout\ <= NOT \v2|m[9]~5_combout\;
\u2|u2|u2|ALT_INV_m[1]~9_combout\ <= NOT \u2|u2|u2|m[1]~9_combout\;
\u2|u1|u2|ALT_INV_m[0]~12_combout\ <= NOT \u2|u1|u2|m[0]~12_combout\;
\u2|u3|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u2|u1|co~0_combout\;
\u2|u2|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u2|u2|u1|u1|u4|s~combout\;
\u2|u2|u2|ALT_INV_m[4]~8_combout\ <= NOT \u2|u2|u2|m[4]~8_combout\;
\u2|u2|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u1|u4|co~combout\;
\u2|u1|u2|ALT_INV_m[3]~11_combout\ <= NOT \u2|u1|u2|m[3]~11_combout\;
\u2|u2|u2|ALT_INV_m[5]~7_combout\ <= NOT \u2|u2|u2|m[5]~7_combout\;
\u2|u2|u2|ALT_INV_m[6]~6_combout\ <= NOT \u2|u2|u2|m[6]~6_combout\;
\u2|u2|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u2|u2|co~combout\;
\u2|u2|u2|ALT_INV_m[7]~5_combout\ <= NOT \u2|u2|u2|m[7]~5_combout\;
\u2|u3|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u3|u2|co~0_combout\;
\u2|u2|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u2|u2|u1|u3|u1|s~combout\;
\u2|u2|u2|ALT_INV_m[9]~4_combout\ <= NOT \u2|u2|u2|m[9]~4_combout\;
\u2|u2|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u3|u1|co~combout\;
\u2|u1|u2|ALT_INV_m[8]~10_combout\ <= NOT \u2|u1|u2|m[8]~10_combout\;
\u2|u2|u2|ALT_INV_m[10]~3_combout\ <= NOT \u2|u2|u2|m[10]~3_combout\;
\u2|u2|u2|ALT_INV_m[11]~2_combout\ <= NOT \u2|u2|u2|m[11]~2_combout\;
\u2|u2|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u3|u3|co~combout\;
\u2|u2|u2|ALT_INV_m[12]~1_combout\ <= NOT \u2|u2|u2|m[12]~1_combout\;
\u2|u2|u2|ALT_INV_m[2]~0_combout\ <= NOT \u2|u2|u2|m[2]~0_combout\;
\u2|u2|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u2|u2|u1|u4|u4|co~2_combout\;
\u2|u2|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u2|u2|u1|u4|u4|co~1_combout\;
\u2|u2|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u2|u2|u1|u4|u4|co~0_combout\;
\u2|u1|u2|ALT_INV_m[13]~9_combout\ <= NOT \u2|u1|u2|m[13]~9_combout\;
\u2|u1|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u4|u1|co~combout\;
\u2|u1|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u4|u2|co~combout\;
\u2|u1|u2|ALT_INV_m[12]~8_combout\ <= NOT \u2|u1|u2|m[12]~8_combout\;
\u2|u1|u2|ALT_INV_m[11]~7_combout\ <= NOT \u2|u1|u2|m[11]~7_combout\;
\u4|u1|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u3|u4|co~combout\;
\u3|u4|u2|ALT_INV_m[10]~9_combout\ <= NOT \u3|u4|u2|m[10]~9_combout\;
\u3|u4|u2|ALT_INV_m[11]~8_combout\ <= NOT \u3|u4|u2|m[11]~8_combout\;
\u3|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u3|u3|co~combout\;
\u3|u4|u2|ALT_INV_m[12]~7_combout\ <= NOT \u3|u4|u2|m[12]~7_combout\;
\u3|u4|u2|ALT_INV_m[9]~6_combout\ <= NOT \u3|u4|u2|m[9]~6_combout\;
\u3|u4|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u3|u1|co~combout\;
\u3|u3|u2|ALT_INV_m[8]~14_combout\ <= NOT \u3|u3|u2|m[8]~14_combout\;
\u4|u1|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u4|u1|u1|u3|u2|co~1_combout\;
\u4|u1|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u4|u1|u1|u3|u2|s~0_combout\;
\u4|u1|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u2|u3|co~combout\;
\u4|u1|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u4|u1|u1|u2|u1|co~1_combout\;
\u4|u1|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u4|u1|u1|u2|u1|s~0_combout\;
\u4|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[3]~11_combout\ <= NOT \v2|m[3]~11_combout\;
\u3|u4|u2|ALT_INV_m[1]~5_combout\ <= NOT \u3|u4|u2|m[1]~5_combout\;
\u3|u3|u2|ALT_INV_m[0]~13_combout\ <= NOT \u3|u3|u2|m[0]~13_combout\;
\u3|u4|u2|ALT_INV_m[2]~4_combout\ <= NOT \u3|u4|u2|m[2]~4_combout\;
\u4|u1|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u4|u1|u1|u2|u1|co~0_combout\;
\u3|u4|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u3|u4|u1|u1|u4|s~combout\;
\u3|u4|u2|ALT_INV_m[4]~3_combout\ <= NOT \u3|u4|u2|m[4]~3_combout\;
\u3|u4|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u1|u4|co~combout\;
\u3|u3|u2|ALT_INV_m[3]~12_combout\ <= NOT \u3|u3|u2|m[3]~12_combout\;
\u3|u4|u2|ALT_INV_m[5]~2_combout\ <= NOT \u3|u4|u2|m[5]~2_combout\;
\u3|u4|u2|ALT_INV_m[6]~1_combout\ <= NOT \u3|u4|u2|m[6]~1_combout\;
\u3|u4|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u2|u2|co~combout\;
\u3|u4|u2|ALT_INV_m[7]~0_combout\ <= NOT \u3|u4|u2|m[7]~0_combout\;
\u4|u1|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u4|u1|u1|u3|u2|co~0_combout\;
\u3|u4|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u3|u4|u1|u4|u4|co~2_combout\;
\u3|u4|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u3|u4|u1|u4|u4|co~1_combout\;
\u3|u4|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u3|u4|u1|u4|u4|co~0_combout\;
\u3|u3|u2|ALT_INV_m[13]~11_combout\ <= NOT \u3|u3|u2|m[13]~11_combout\;
\u3|u3|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u4|u1|co~combout\;
\u3|u3|u2|ALT_INV_m[14]~10_combout\ <= NOT \u3|u3|u2|m[14]~10_combout\;
\u3|u3|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u4|u2|co~combout\;
\u3|u4|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u3|u4|co~combout\;
\u3|u4|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u3|u4|u1|u3|u2|co~1_combout\;
\u3|u4|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u3|u4|u1|u3|u2|s~0_combout\;
\u3|u4|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u3|u4|u1|u3|u2|co~0_combout\;
\u3|u3|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u3|u3|u1|u3|u1|s~combout\;
\u3|u3|u2|ALT_INV_m[9]~9_combout\ <= NOT \u3|u3|u2|m[9]~9_combout\;
\u3|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u3|u1|co~combout\;
\u3|u2|u2|ALT_INV_m[8]~14_combout\ <= NOT \u3|u2|u2|m[8]~14_combout\;
\u3|u3|u2|ALT_INV_m[10]~8_combout\ <= NOT \u3|u3|u2|m[10]~8_combout\;
\u3|u3|u2|ALT_INV_m[11]~7_combout\ <= NOT \u3|u3|u2|m[11]~7_combout\;
\u3|u3|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u3|u3|co~combout\;
\u3|u3|u2|ALT_INV_m[12]~6_combout\ <= NOT \u3|u3|u2|m[12]~6_combout\;
\u3|u4|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u3|u4|u1|u3|u1|s~combout\;
\u3|u4|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u2|u3|co~combout\;
\u3|u4|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u3|u4|u1|u2|u1|co~1_combout\;
\u3|u4|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u3|u4|u1|u2|u1|s~0_combout\;
\u3|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[4]~10_combout\ <= NOT \v2|m[4]~10_combout\;
\u3|u3|u2|ALT_INV_m[1]~5_combout\ <= NOT \u3|u3|u2|m[1]~5_combout\;
\u3|u2|u2|ALT_INV_m[0]~13_combout\ <= NOT \u3|u2|u2|m[0]~13_combout\;
\u3|u3|u2|ALT_INV_m[2]~4_combout\ <= NOT \u3|u3|u2|m[2]~4_combout\;
\u3|u4|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u3|u4|u1|u2|u1|co~0_combout\;
\u3|u3|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u3|u3|u1|u1|u4|s~combout\;
\u3|u3|u2|ALT_INV_m[4]~3_combout\ <= NOT \u3|u3|u2|m[4]~3_combout\;
\u3|u3|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u1|u4|co~combout\;
\u3|u2|u2|ALT_INV_m[3]~12_combout\ <= NOT \u3|u2|u2|m[3]~12_combout\;
\u3|u3|u2|ALT_INV_m[5]~2_combout\ <= NOT \u3|u3|u2|m[5]~2_combout\;
\u3|u3|u2|ALT_INV_m[6]~1_combout\ <= NOT \u3|u3|u2|m[6]~1_combout\;
\u3|u3|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u2|u2|co~combout\;
\u3|u3|u2|ALT_INV_m[7]~0_combout\ <= NOT \u3|u3|u2|m[7]~0_combout\;
\u3|u3|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u3|u3|u1|u4|u4|co~2_combout\;
\u3|u3|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u3|u3|u1|u4|u4|co~1_combout\;
\u3|u3|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u4|u4|co~0_combout\;
\u3|u2|u2|ALT_INV_m[13]~11_combout\ <= NOT \u3|u2|u2|m[13]~11_combout\;
\u3|u2|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u4|u1|co~combout\;
\u3|u2|u2|ALT_INV_m[14]~10_combout\ <= NOT \u3|u2|u2|m[14]~10_combout\;
\u3|u2|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u4|u2|co~combout\;
\u3|u3|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u3|u4|co~combout\;
\u3|u3|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u3|u3|u1|u3|u2|co~1_combout\;
\u3|u3|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u3|u3|u1|u3|u2|s~0_combout\;
\u3|u2|u2|ALT_INV_m[7]~9_combout\ <= NOT \u3|u2|u2|m[7]~9_combout\;
\u3|u3|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u3|u2|co~0_combout\;
\u3|u2|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u3|u2|u1|u3|u1|s~combout\;
\u3|u2|u2|ALT_INV_m[9]~8_combout\ <= NOT \u3|u2|u2|m[9]~8_combout\;
\u3|u2|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u3|u1|co~combout\;
\u3|u1|u2|ALT_INV_m[8]~14_combout\ <= NOT \u3|u1|u2|m[8]~14_combout\;
\u3|u2|u2|ALT_INV_m[10]~7_combout\ <= NOT \u3|u2|u2|m[10]~7_combout\;
\u3|u2|u2|ALT_INV_m[11]~6_combout\ <= NOT \u3|u2|u2|m[11]~6_combout\;
\u3|u2|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u3|u3|co~combout\;
\u3|u2|u2|ALT_INV_m[12]~5_combout\ <= NOT \u3|u2|u2|m[12]~5_combout\;
\u3|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u2|u3|co~combout\;
\u3|u2|u2|ALT_INV_m[5]~4_combout\ <= NOT \u3|u2|u2|m[5]~4_combout\;
\u3|u3|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u3|u3|u1|u2|u1|co~1_combout\;
\u3|u3|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u3|u3|u1|u2|u1|s~0_combout\;
\u3|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[5]~9_combout\ <= NOT \v2|m[5]~9_combout\;
\ALT_INV_o~5_combout\ <= NOT \o~5_combout\;
\u3|u2|u2|ALT_INV_m[1]~3_combout\ <= NOT \u3|u2|u2|m[1]~3_combout\;
\u3|u1|u2|ALT_INV_m[0]~13_combout\ <= NOT \u3|u1|u2|m[0]~13_combout\;
\u3|u2|u2|ALT_INV_m[2]~2_combout\ <= NOT \u3|u2|u2|m[2]~2_combout\;
\u3|u3|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u2|u1|co~0_combout\;
\u3|u2|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u3|u2|u1|u1|u4|s~combout\;
\u3|u2|u2|ALT_INV_m[4]~1_combout\ <= NOT \u3|u2|u2|m[4]~1_combout\;
\u3|u1|u2|ALT_INV_m[3]~12_combout\ <= NOT \u3|u1|u2|m[3]~12_combout\;
\u3|u2|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u1|u4|co~combout\;
\u3|u2|u2|ALT_INV_m[6]~0_combout\ <= NOT \u3|u2|u2|m[6]~0_combout\;
\u3|u2|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u3|u2|u1|u4|u4|co~2_combout\;
\u3|u2|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u3|u2|u1|u4|u4|co~1_combout\;
\u3|u2|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u3|u2|u1|u4|u4|co~0_combout\;
\u3|u1|u2|ALT_INV_m[13]~11_combout\ <= NOT \u3|u1|u2|m[13]~11_combout\;
\u3|u1|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u4|u1|co~combout\;
\u3|u1|u2|ALT_INV_m[14]~10_combout\ <= NOT \u3|u1|u2|m[14]~10_combout\;
\u3|u1|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u4|u2|co~combout\;
\u3|u2|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u3|u4|co~combout\;
\u3|u2|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u3|u2|u1|u3|u2|co~1_combout\;
\u3|u2|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u3|u2|u1|u3|u2|s~0_combout\;
\u3|u2|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u2|u3|co~combout\;
\u3|u1|u2|ALT_INV_m[6]~9_combout\ <= NOT \u3|u1|u2|m[6]~9_combout\;
\u3|u1|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u2|u2|co~combout\;
\u3|u1|u2|ALT_INV_m[7]~8_combout\ <= NOT \u3|u1|u2|m[7]~8_combout\;
\u3|u2|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u3|u2|u1|u3|u2|co~0_combout\;
\u3|u1|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u3|u1|u1|u3|u1|s~combout\;
\u3|u1|u2|ALT_INV_m[9]~7_combout\ <= NOT \u3|u1|u2|m[9]~7_combout\;
\u3|u1|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u3|u1|co~combout\;
\u2|u4|u2|ALT_INV_m[8]~14_combout\ <= NOT \u2|u4|u2|m[8]~14_combout\;
\u3|u1|u2|ALT_INV_m[10]~6_combout\ <= NOT \u3|u1|u2|m[10]~6_combout\;
\u3|u1|u2|ALT_INV_m[11]~5_combout\ <= NOT \u3|u1|u2|m[11]~5_combout\;
\u3|u1|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u3|u3|co~combout\;
\u3|u1|u2|ALT_INV_m[12]~4_combout\ <= NOT \u3|u1|u2|m[12]~4_combout\;
\u3|u2|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u2|u2|co~combout\;
\u3|u2|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u3|u2|u1|u2|u1|co~1_combout\;
\u3|u2|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u3|u2|u1|u2|u1|s~0_combout\;
\u4|u4|u2|ALT_INV_m[4]~4_combout\ <= NOT \u4|u4|u2|m[4]~4_combout\;
\u4|u4|u1|u2|u1|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u2|u1|s~combout\;
\u4|u3|u2|ALT_INV_m[3]~12_combout\ <= NOT \u4|u3|u2|m[3]~12_combout\;
\u4|u4|u2|ALT_INV_m[3]~3_combout\ <= NOT \u4|u4|u2|m[3]~3_combout\;
\u4|u4|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u1|u4|s~combout\;
\u4|u4|u2|ALT_INV_m[2]~2_combout\ <= NOT \u4|u4|u2|m[2]~2_combout\;
\u4|u4|u1|u1|u3|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u1|u3|s~combout\;
\u4|u4|u2|ALT_INV_m[1]~1_combout\ <= NOT \u4|u4|u2|m[1]~1_combout\;
\u4|u4|u1|u1|u2|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u1|u2|s~combout\;
\u4|u3|u2|ALT_INV_m[0]~11_combout\ <= NOT \u4|u3|u2|m[0]~11_combout\;
\u4|u4|u2|ALT_INV_m[0]~0_combout\ <= NOT \u4|u4|u2|m[0]~0_combout\;
\u4|u4|u1|u4|u3|ALT_INV_co~1_combout\ <= NOT \u4|u4|u1|u4|u3|co~1_combout\;
\u4|u4|u1|u4|u3|ALT_INV_s~0_combout\ <= NOT \u4|u4|u1|u4|u3|s~0_combout\;
\u4|u4|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u3|u4|co~combout\;
\u4|u4|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u4|u4|u1|u3|u2|co~1_combout\;
\u4|u4|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u4|u4|u1|u3|u2|s~0_combout\;
\u4|u4|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u2|u3|co~combout\;
\u4|u4|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u4|u4|u1|u2|u1|co~1_combout\;
\u4|u4|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u4|u4|u1|u2|u1|s~0_combout\;
\u4|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u1|u2|co~combout\;
\u4|u3|u2|ALT_INV_m[1]~10_combout\ <= NOT \u4|u3|u2|m[1]~10_combout\;
\u4|u2|u2|ALT_INV_m[0]~14_combout\ <= NOT \u4|u2|u2|m[0]~14_combout\;
\u4|u3|u2|ALT_INV_m[2]~9_combout\ <= NOT \u4|u3|u2|m[2]~9_combout\;
\u4|u4|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u4|u4|u1|u2|u1|co~0_combout\;
\u4|u3|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u4|u3|u1|u1|u4|s~combout\;
\u4|u3|u2|ALT_INV_m[4]~8_combout\ <= NOT \u4|u3|u2|m[4]~8_combout\;
\u4|u3|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u1|u4|co~combout\;
\u4|u2|u2|ALT_INV_m[3]~13_combout\ <= NOT \u4|u2|u2|m[3]~13_combout\;
\u4|u3|u2|ALT_INV_m[5]~7_combout\ <= NOT \u4|u3|u2|m[5]~7_combout\;
\u4|u3|u2|ALT_INV_m[6]~6_combout\ <= NOT \u4|u3|u2|m[6]~6_combout\;
\u4|u3|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u2|u2|co~combout\;
\u4|u3|u2|ALT_INV_m[7]~5_combout\ <= NOT \u4|u3|u2|m[7]~5_combout\;
\u4|u4|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u4|u4|u1|u3|u2|co~0_combout\;
\u4|u3|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u4|u3|u1|u3|u1|s~combout\;
\u4|u3|u2|ALT_INV_m[9]~4_combout\ <= NOT \u4|u3|u2|m[9]~4_combout\;
\u4|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u3|u1|co~combout\;
\u4|u2|u2|ALT_INV_m[8]~12_combout\ <= NOT \u4|u2|u2|m[8]~12_combout\;
\u4|u3|u2|ALT_INV_m[10]~3_combout\ <= NOT \u4|u3|u2|m[10]~3_combout\;
\u4|u3|u2|ALT_INV_m[11]~2_combout\ <= NOT \u4|u3|u2|m[11]~2_combout\;
\u4|u3|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u3|u3|co~combout\;
\u4|u3|u2|ALT_INV_m[12]~1_combout\ <= NOT \u4|u3|u2|m[12]~1_combout\;
\u4|u4|u1|u4|u3|ALT_INV_co~0_combout\ <= NOT \u4|u4|u1|u4|u3|co~0_combout\;
\u4|u3|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u4|u1|co~combout\;
\u4|u3|u2|ALT_INV_m[14]~0_combout\ <= NOT \u4|u3|u2|m[14]~0_combout\;
\u4|u3|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u4|u3|u1|u4|u4|co~2_combout\;
\u4|u3|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u4|u3|u1|u4|u4|co~1_combout\;
\u4|u3|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u4|u4|co~0_combout\;
\u4|u2|u2|ALT_INV_m[14]~11_combout\ <= NOT \u4|u2|u2|m[14]~11_combout\;
\u4|u2|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u4|u2|co~combout\;
\u4|u2|u2|ALT_INV_m[13]~10_combout\ <= NOT \u4|u2|u2|m[13]~10_combout\;
\u4|u2|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u4|u1|co~combout\;
\u4|u3|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u4|u2|co~combout\;
\u4|u3|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u3|u4|co~combout\;
\u4|u3|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u4|u3|u1|u3|u2|co~1_combout\;
\u4|u3|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u4|u3|u1|u3|u2|s~0_combout\;
\u4|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u2|u3|co~combout\;
\u4|u3|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u4|u3|u1|u2|u1|co~1_combout\;
\u4|u3|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u4|u3|u1|u2|u1|s~0_combout\;
\u4|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[1]~13_combout\ <= NOT \v2|m[1]~13_combout\;
\u4|u2|u2|ALT_INV_m[1]~9_combout\ <= NOT \u4|u2|u2|m[1]~9_combout\;
\u4|u1|u2|ALT_INV_m[0]~14_combout\ <= NOT \u4|u1|u2|m[0]~14_combout\;
\u4|u2|u2|ALT_INV_m[2]~8_combout\ <= NOT \u4|u2|u2|m[2]~8_combout\;
\u4|u3|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u2|u1|co~0_combout\;
\u4|u2|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u4|u2|u1|u1|u4|s~combout\;
\u4|u2|u2|ALT_INV_m[4]~7_combout\ <= NOT \u4|u2|u2|m[4]~7_combout\;
\u4|u2|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u1|u4|co~combout\;
\u4|u1|u2|ALT_INV_m[3]~13_combout\ <= NOT \u4|u1|u2|m[3]~13_combout\;
\u4|u2|u2|ALT_INV_m[5]~6_combout\ <= NOT \u4|u2|u2|m[5]~6_combout\;
\u4|u2|u2|ALT_INV_m[6]~5_combout\ <= NOT \u4|u2|u2|m[6]~5_combout\;
\u4|u2|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u2|u2|co~combout\;
\u4|u2|u2|ALT_INV_m[7]~4_combout\ <= NOT \u4|u2|u2|m[7]~4_combout\;
\u4|u3|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u3|u2|co~0_combout\;
\u4|u2|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u4|u2|u1|u3|u1|s~combout\;
\u4|u2|u2|ALT_INV_m[9]~3_combout\ <= NOT \u4|u2|u2|m[9]~3_combout\;
\u4|u2|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u3|u1|co~combout\;
\u4|u1|u2|ALT_INV_m[8]~12_combout\ <= NOT \u4|u1|u2|m[8]~12_combout\;
\u4|u2|u2|ALT_INV_m[10]~2_combout\ <= NOT \u4|u2|u2|m[10]~2_combout\;
\u4|u2|u2|ALT_INV_m[11]~1_combout\ <= NOT \u4|u2|u2|m[11]~1_combout\;
\u4|u2|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u3|u3|co~combout\;
\u4|u2|u2|ALT_INV_m[12]~0_combout\ <= NOT \u4|u2|u2|m[12]~0_combout\;
\u4|u2|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u4|u2|u1|u4|u4|co~2_combout\;
\u4|u2|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u4|u2|u1|u4|u4|co~1_combout\;
\u4|u2|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u4|u2|u1|u4|u4|co~0_combout\;
\u4|u1|u2|ALT_INV_m[13]~11_combout\ <= NOT \u4|u1|u2|m[13]~11_combout\;
\u4|u1|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u4|u1|co~combout\;
\u4|u1|u2|ALT_INV_m[14]~10_combout\ <= NOT \u4|u1|u2|m[14]~10_combout\;
\u4|u1|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u4|u2|co~combout\;
\u4|u1|u2|ALT_INV_m[12]~9_combout\ <= NOT \u4|u1|u2|m[12]~9_combout\;
\u4|u1|u2|ALT_INV_m[11]~8_combout\ <= NOT \u4|u1|u2|m[11]~8_combout\;
\u4|u1|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u3|u3|co~combout\;
\u4|u2|u1|u3|u4|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u3|u4|co~combout\;
\u4|u2|u1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u4|u2|u1|u3|u2|co~1_combout\;
\u4|u2|u1|u3|u2|ALT_INV_s~0_combout\ <= NOT \u4|u2|u1|u3|u2|s~0_combout\;
\u4|u2|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u2|u3|co~combout\;
\u4|u2|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u4|u2|u1|u2|u1|co~1_combout\;
\u4|u2|u1|u2|u1|ALT_INV_s~0_combout\ <= NOT \u4|u2|u1|u2|u1|s~0_combout\;
\u4|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u1|u2|co~combout\;
\v2|ALT_INV_m[2]~12_combout\ <= NOT \v2|m[2]~12_combout\;
\u4|u1|u2|ALT_INV_m[1]~7_combout\ <= NOT \u4|u1|u2|m[1]~7_combout\;
\u3|u4|u2|ALT_INV_m[0]~14_combout\ <= NOT \u3|u4|u2|m[0]~14_combout\;
\u4|u1|u2|ALT_INV_m[2]~6_combout\ <= NOT \u4|u1|u2|m[2]~6_combout\;
\u4|u2|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u4|u2|u1|u2|u1|co~0_combout\;
\u4|u1|u1|u1|u4|ALT_INV_s~combout\ <= NOT \u4|u1|u1|u1|u4|s~combout\;
\u4|u1|u2|ALT_INV_m[4]~5_combout\ <= NOT \u4|u1|u2|m[4]~5_combout\;
\u4|u1|u1|u1|u4|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u1|u4|co~combout\;
\u3|u4|u2|ALT_INV_m[3]~13_combout\ <= NOT \u3|u4|u2|m[3]~13_combout\;
\u4|u1|u2|ALT_INV_m[5]~4_combout\ <= NOT \u4|u1|u2|m[5]~4_combout\;
\u4|u1|u2|ALT_INV_m[6]~3_combout\ <= NOT \u4|u1|u2|m[6]~3_combout\;
\u4|u1|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u2|u2|co~combout\;
\u4|u1|u2|ALT_INV_m[7]~2_combout\ <= NOT \u4|u1|u2|m[7]~2_combout\;
\u4|u2|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u4|u2|u1|u3|u2|co~0_combout\;
\u4|u1|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u4|u1|u1|u3|u1|s~combout\;
\u4|u1|u2|ALT_INV_m[9]~1_combout\ <= NOT \u4|u1|u2|m[9]~1_combout\;
\u4|u1|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u3|u1|co~combout\;
\u3|u4|u2|ALT_INV_m[8]~12_combout\ <= NOT \u3|u4|u2|m[8]~12_combout\;
\u4|u1|u2|ALT_INV_m[10]~0_combout\ <= NOT \u4|u1|u2|m[10]~0_combout\;
\u4|u1|u1|u4|u4|ALT_INV_co~2_combout\ <= NOT \u4|u1|u1|u4|u4|co~2_combout\;
\u4|u1|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u4|u1|u1|u4|u4|co~1_combout\;
\u4|u1|u1|u4|u4|ALT_INV_co~0_combout\ <= NOT \u4|u1|u1|u4|u4|co~0_combout\;
\u3|u4|u2|ALT_INV_m[13]~11_combout\ <= NOT \u3|u4|u2|m[13]~11_combout\;
\u3|u4|u1|u4|u1|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u4|u1|co~combout\;
\u3|u4|u2|ALT_INV_m[14]~10_combout\ <= NOT \u3|u4|u2|m[14]~10_combout\;
\u3|u4|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u4|u2|co~combout\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\u1|u2|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u1|u2|u1|u3|u3|co~0_combout\;
\u1|u2|u1|u3|u1|ALT_INV_co~0_combout\ <= NOT \u1|u2|u1|u3|u1|co~0_combout\;
\u2|u1|u2|ALT_INV_m[14]~13_combout\ <= NOT \u2|u1|u2|m[14]~13_combout\;
\ALT_INV_o~9_combout\ <= NOT \o~9_combout\;
\ALT_INV_o~8_combout\ <= NOT \o~8_combout\;
\ALT_INV_o~7_combout\ <= NOT \o~7_combout\;
\ALT_INV_o~6_combout\ <= NOT \o~6_combout\;
\u1|u3|u1|u4|u4|ALT_INV_co~1_combout\ <= NOT \u1|u3|u1|u4|u4|co~1_combout\;
\v5|u3|u4|ALT_INV_co~0_combout\ <= NOT \v5|u3|u4|co~0_combout\;
\u2|u1|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u2|u1|u1|u4|u4|co~combout\;
\u2|u2|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u2|u2|u1|u4|u4|co~combout\;
\u2|u3|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u4|u4|co~combout\;
\v5|u2|u4|ALT_INV_co~0_combout\ <= NOT \v5|u2|u4|co~0_combout\;
\u2|u4|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u4|u4|co~combout\;
\v5|u2|u2|ALT_INV_co~0_combout\ <= NOT \v5|u2|u2|co~0_combout\;
\u3|u1|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u3|u1|u1|u4|u4|co~combout\;
\u3|u2|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u3|u2|u1|u4|u4|co~combout\;
\u3|u3|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u4|u4|co~combout\;
\u3|u4|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u4|u4|co~combout\;
\v5|u1|u3|ALT_INV_co~0_combout\ <= NOT \v5|u1|u3|co~0_combout\;
\u4|u1|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u4|u1|u1|u4|u4|co~combout\;
\u4|u2|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u4|u2|u1|u4|u4|co~combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\u4|u3|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u4|u4|co~combout\;
\u4|u4|u1|u4|u4|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u4|u4|co~combout\;
\u4|u4|u2|ALT_INV_m[15]~15_combout\ <= NOT \u4|u4|u2|m[15]~15_combout\;
\v7|u4|u2|ALT_INV_co~0_combout\ <= NOT \v7|u4|u2|co~0_combout\;
\u4|u4|u2|ALT_INV_m[14]~14_combout\ <= NOT \u4|u4|u2|m[14]~14_combout\;
\u4|u4|u1|u4|u2|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u4|u2|co~combout\;
\u4|u3|u2|ALT_INV_m[13]~14_combout\ <= NOT \u4|u3|u2|m[13]~14_combout\;
\u4|u4|u2|ALT_INV_m[13]~13_combout\ <= NOT \u4|u4|u2|m[13]~13_combout\;
\u4|u4|u1|u4|u2|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u4|u2|s~combout\;
\u4|u4|u2|ALT_INV_m[12]~12_combout\ <= NOT \u4|u4|u2|m[12]~12_combout\;
\u4|u4|u1|u4|u1|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u4|u1|s~combout\;
\u4|u4|u2|ALT_INV_m[11]~11_combout\ <= NOT \u4|u4|u2|m[11]~11_combout\;
\u4|u4|u1|u3|u4|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u3|u4|s~combout\;
\v7|u3|u3|ALT_INV_co~0_combout\ <= NOT \v7|u3|u3|co~0_combout\;
\u4|u4|u2|ALT_INV_m[10]~10_combout\ <= NOT \u4|u4|u2|m[10]~10_combout\;
\u4|u4|u1|u3|u3|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u3|u3|s~combout\;
\v7|u3|u1|ALT_INV_co~0_combout\ <= NOT \v7|u3|u1|co~0_combout\;
\u4|u4|u2|ALT_INV_m[9]~9_combout\ <= NOT \u4|u4|u2|m[9]~9_combout\;
\u4|u4|u1|u3|u2|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u3|u2|s~combout\;
\u4|u3|u2|ALT_INV_m[8]~13_combout\ <= NOT \u4|u3|u2|m[8]~13_combout\;
\u4|u4|u2|ALT_INV_m[8]~8_combout\ <= NOT \u4|u4|u2|m[8]~8_combout\;
\u4|u4|u1|u3|u1|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u3|u1|s~combout\;
\u4|u4|u2|ALT_INV_m[7]~7_combout\ <= NOT \u4|u4|u2|m[7]~7_combout\;
\u4|u4|u1|u2|u4|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u2|u4|s~combout\;
\u4|u4|u2|ALT_INV_m[6]~6_combout\ <= NOT \u4|u4|u2|m[6]~6_combout\;
\u4|u4|u1|u2|u3|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u2|u3|s~combout\;
\v7|u2|u2|ALT_INV_co~0_combout\ <= NOT \v7|u2|u2|co~0_combout\;
\u4|u4|u2|ALT_INV_m[5]~5_combout\ <= NOT \u4|u4|u2|m[5]~5_combout\;
\u4|u4|u1|u2|u2|ALT_INV_s~combout\ <= NOT \u4|u4|u1|u2|u2|s~combout\;
\v7|u1|u4|ALT_INV_co~0_combout\ <= NOT \v7|u1|u4|co~0_combout\;

-- Location: IOOBUF_X38_Y0_N19
\r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u4|u2|m[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(0));

-- Location: IOOBUF_X14_Y0_N19
\r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_r(1));

-- Location: IOOBUF_X38_Y0_N2
\r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_r(2));

-- Location: IOOBUF_X54_Y17_N56
\r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_r(3));

-- Location: IOOBUF_X25_Y0_N2
\r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_r(4));

-- Location: IOOBUF_X34_Y0_N2
\r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_r(5));

-- Location: IOOBUF_X38_Y0_N53
\r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_r(6));

-- Location: IOOBUF_X0_Y18_N96
\r[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[7]~6_combout\,
	devoe => ww_devoe,
	o => ww_r(7));

-- Location: IOOBUF_X25_Y0_N19
\r[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[8]~7_combout\,
	devoe => ww_devoe,
	o => ww_r(8));

-- Location: IOOBUF_X25_Y0_N53
\r[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[9]~8_combout\,
	devoe => ww_devoe,
	o => ww_r(9));

-- Location: IOOBUF_X36_Y0_N2
\r[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[10]~9_combout\,
	devoe => ww_devoe,
	o => ww_r(10));

-- Location: IOOBUF_X23_Y0_N93
\r[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[11]~10_combout\,
	devoe => ww_devoe,
	o => ww_r(11));

-- Location: IOOBUF_X24_Y0_N53
\r[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[12]~11_combout\,
	devoe => ww_devoe,
	o => ww_r(12));

-- Location: IOOBUF_X0_Y20_N5
\r[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[13]~12_combout\,
	devoe => ww_devoe,
	o => ww_r(13));

-- Location: IOOBUF_X12_Y0_N2
\r[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[14]~13_combout\,
	devoe => ww_devoe,
	o => ww_r(14));

-- Location: IOOBUF_X25_Y0_N36
\r[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v8|m[15]~14_combout\,
	devoe => ww_devoe,
	o => ww_r(15));

-- Location: IOOBUF_X0_Y21_N5
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u4|u1|u4|u4|co~combout\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X24_Y0_N19
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X54_Y14_N62
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X11_Y0_N53
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X12_Y0_N53
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X23_Y0_N76
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X29_Y0_N53
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X0_Y20_N56
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[7]~6_combout\,
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X29_Y0_N19
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[8]~7_combout\,
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X12_Y0_N36
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[9]~8_combout\,
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOOBUF_X0_Y18_N45
\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[10]~9_combout\,
	devoe => ww_devoe,
	o => ww_q(10));

-- Location: IOOBUF_X16_Y45_N76
\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[11]~10_combout\,
	devoe => ww_devoe,
	o => ww_q(11));

-- Location: IOOBUF_X16_Y45_N42
\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[12]~11_combout\,
	devoe => ww_devoe,
	o => ww_q(12));

-- Location: IOOBUF_X0_Y19_N22
\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[13]~12_combout\,
	devoe => ww_devoe,
	o => ww_q(13));

-- Location: IOOBUF_X14_Y0_N2
\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[14]~13_combout\,
	devoe => ww_devoe,
	o => ww_q(14));

-- Location: IOOBUF_X0_Y19_N5
\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[15]~14_combout\,
	devoe => ww_devoe,
	o => ww_q(15));

-- Location: IOOBUF_X22_Y45_N36
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOOBUF_X0_Y18_N62
\o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o~10_combout\,
	devoe => ww_devoe,
	o => ww_o);

-- Location: IOIBUF_X23_Y0_N41
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
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
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X54_Y15_N38
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y19_N38
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X12_Y6_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\b[2]~input_o\ & ( !\b[3]~input_o\ & ( (!\b[5]~input_o\ & (!\b[0]~input_o\ & (!\b[1]~input_o\ & !\b[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LABCELL_X7_Y8_N0
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\b[7]~input_o\ & ( !\b[6]~input_o\ & ( (!\b[8]~input_o\ & (!\b[10]~input_o\ & (!\b[9]~input_o\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_b[10]~input_o\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X0_Y19_N55
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LABCELL_X10_Y9_N51
\v4|m[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[12]~2_combout\ = ( \b[11]~input_o\ & ( \b[12]~input_o\ & ( !\b[15]~input_o\ ) ) ) # ( !\b[11]~input_o\ & ( \b[12]~input_o\ & ( (!\b[15]~input_o\) # (\Equal0~1_combout\) ) ) ) # ( \b[11]~input_o\ & ( !\b[12]~input_o\ & ( \b[15]~input_o\ ) ) ) # ( 
-- !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( (\b[15]~input_o\ & !\Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010110101111101011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \v4|m[12]~2_combout\);

-- Location: IOIBUF_X0_Y21_N21
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LABCELL_X10_Y9_N6
\v4|m[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[14]~0_combout\ = ( \b[11]~input_o\ & ( \b[12]~input_o\ & ( !\b[15]~input_o\ $ (!\b[14]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( \b[12]~input_o\ & ( !\b[15]~input_o\ $ (!\b[14]~input_o\) ) ) ) # ( \b[11]~input_o\ & ( !\b[12]~input_o\ & ( 
-- !\b[15]~input_o\ $ (!\b[14]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( !\b[14]~input_o\ $ (((!\b[15]~input_o\) # ((!\b[13]~input_o\ & \Equal0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_b[14]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \v4|m[14]~0_combout\);

-- Location: LABCELL_X10_Y9_N0
\u1|u2|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u4|u4|co~0_combout\ = ( !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( (\b[15]~input_o\ & (!\b[14]~input_o\ & (!\b[13]~input_o\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_b[14]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \u1|u2|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X10_Y9_N42
\v4|m[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[13]~1_combout\ = ( \b[11]~input_o\ & ( \b[12]~input_o\ & ( !\b[15]~input_o\ $ (!\b[13]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( \b[12]~input_o\ & ( !\b[15]~input_o\ $ (!\b[13]~input_o\) ) ) ) # ( \b[11]~input_o\ & ( !\b[12]~input_o\ & ( 
-- !\b[15]~input_o\ $ (!\b[13]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( !\b[13]~input_o\ $ (((!\b[15]~input_o\) # (\Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_b[13]~input_o\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \v4|m[13]~1_combout\);

-- Location: LABCELL_X10_Y9_N24
\v4|m[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[11]~3_combout\ = ( \b[11]~input_o\ & ( \b[15]~input_o\ & ( \Equal0~1_combout\ ) ) ) # ( !\b[11]~input_o\ & ( \b[15]~input_o\ & ( !\Equal0~1_combout\ ) ) ) # ( \b[11]~input_o\ & ( !\b[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[11]~3_combout\);

-- Location: LABCELL_X7_Y8_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\b[6]~input_o\ & ( (!\b[7]~input_o\ & (!\b[8]~input_o\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datac => \ALT_INV_b[8]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X7_Y8_N9
\v4|m[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[10]~4_combout\ = ( \b[15]~input_o\ & ( !\b[10]~input_o\ $ (((\Equal0~2_combout\ & !\b[9]~input_o\))) ) ) # ( !\b[15]~input_o\ & ( \b[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[10]~input_o\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_b[9]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[10]~4_combout\);

-- Location: LABCELL_X7_Y8_N27
\v4|m[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[8]~13_combout\ = ( \b[6]~input_o\ & ( !\b[8]~input_o\ $ (!\b[15]~input_o\) ) ) # ( !\b[6]~input_o\ & ( !\b[8]~input_o\ $ (((!\b[15]~input_o\) # ((\Equal0~0_combout\ & !\b[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011010010110010101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \v4|m[8]~13_combout\);

-- Location: IOIBUF_X36_Y0_N18
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N18
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N38
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y18_N78
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X12_Y5_N30
\o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~0_combout\ = ( !\a[5]~input_o\ & ( !\a[4]~input_o\ & ( (!\a[1]~input_o\ & (!\a[2]~input_o\ & (!\a[3]~input_o\ & !\a[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[5]~input_o\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \o~0_combout\);

-- Location: IOIBUF_X14_Y0_N52
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LABCELL_X12_Y4_N0
\o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~1_combout\ = ( !\a[10]~input_o\ & ( !\a[9]~input_o\ & ( (!\a[8]~input_o\ & (!\a[6]~input_o\ & (\o~0_combout\ & !\a[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_o~0_combout\,
	datad => \ALT_INV_a[7]~input_o\,
	datae => \ALT_INV_a[10]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \o~1_combout\);

-- Location: IOIBUF_X10_Y0_N41
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LABCELL_X12_Y4_N54
\v2|m[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[13]~2_combout\ = ( \a[13]~input_o\ & ( (!\a[15]~input_o\) # ((!\a[12]~input_o\ & (!\a[11]~input_o\ & \o~1_combout\))) ) ) # ( !\a[13]~input_o\ & ( (\a[15]~input_o\ & (((!\o~1_combout\) # (\a[11]~input_o\)) # (\a[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011111110000111110001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[12]~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_o~1_combout\,
	dataf => \ALT_INV_a[13]~input_o\,
	combout => \v2|m[13]~2_combout\);

-- Location: LABCELL_X7_Y9_N30
\v4|m[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[6]~7_combout\ = ( \b[6]~input_o\ & ( \b[15]~input_o\ & ( \Equal0~0_combout\ ) ) ) # ( !\b[6]~input_o\ & ( \b[15]~input_o\ & ( !\Equal0~0_combout\ ) ) ) # ( \b[6]~input_o\ & ( !\b[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[6]~7_combout\);

-- Location: LABCELL_X7_Y8_N51
\v4|m[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[7]~6_combout\ = ( \b[6]~input_o\ & ( !\b[7]~input_o\ $ (!\b[15]~input_o\) ) ) # ( !\b[6]~input_o\ & ( !\b[7]~input_o\ $ (((!\b[15]~input_o\) # (\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001100110011001100101011001010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[7]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_b[6]~input_o\,
	combout => \v4|m[7]~6_combout\);

-- Location: LABCELL_X7_Y8_N42
\v4|m[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[9]~5_combout\ = ( \b[7]~input_o\ & ( \b[6]~input_o\ & ( !\b[9]~input_o\ $ (!\b[15]~input_o\) ) ) ) # ( !\b[7]~input_o\ & ( \b[6]~input_o\ & ( !\b[9]~input_o\ $ (!\b[15]~input_o\) ) ) ) # ( \b[7]~input_o\ & ( !\b[6]~input_o\ & ( !\b[9]~input_o\ $ 
-- (!\b[15]~input_o\) ) ) ) # ( !\b[7]~input_o\ & ( !\b[6]~input_o\ & ( !\b[9]~input_o\ $ (((!\b[15]~input_o\) # ((!\b[8]~input_o\ & \Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111010010000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \v4|m[9]~5_combout\);

-- Location: LABCELL_X12_Y6_N0
\v4|m[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[1]~11_combout\ = ( \b[0]~input_o\ & ( !\b[15]~input_o\ $ (!\b[1]~input_o\) ) ) # ( !\b[0]~input_o\ & ( \b[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \v4|m[1]~11_combout\);

-- Location: LABCELL_X12_Y6_N39
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\b[3]~input_o\ & ( (!\b[1]~input_o\ & (!\b[0]~input_o\ & !\b[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X12_Y6_N15
\v4|m[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[5]~8_combout\ = ( \b[4]~input_o\ & ( !\b[5]~input_o\ $ (!\b[15]~input_o\) ) ) # ( !\b[4]~input_o\ & ( !\b[5]~input_o\ $ (((!\b[15]~input_o\) # (\Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \v4|m[5]~8_combout\);

-- Location: IOIBUF_X36_Y0_N52
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LABCELL_X12_Y4_N12
\o~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~2_combout\ = (\a[15]~input_o\ & !\a[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[14]~input_o\,
	combout => \o~2_combout\);

-- Location: LABCELL_X12_Y4_N18
\u1|u1|u1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u1|co~0_combout\ = ( \o~1_combout\ & ( \o~2_combout\ & ( (\b[0]~input_o\ & (((\a[13]~input_o\) # (\a[11]~input_o\)) # (\a[12]~input_o\))) ) ) ) # ( !\o~1_combout\ & ( \o~2_combout\ & ( \b[0]~input_o\ ) ) ) # ( \o~1_combout\ & ( !\o~2_combout\ 
-- & ( \b[0]~input_o\ ) ) ) # ( !\o~1_combout\ & ( !\o~2_combout\ & ( \b[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[12]~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_a[13]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_o~1_combout\,
	dataf => \ALT_INV_o~2_combout\,
	combout => \u1|u1|u1|u1|u1|co~0_combout\);

-- Location: LABCELL_X12_Y6_N36
\v4|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[3]~12_combout\ = ( \b[15]~input_o\ & ( !\b[3]~input_o\ $ (((!\b[1]~input_o\ & (!\b[0]~input_o\ & !\b[2]~input_o\)))) ) ) # ( !\b[15]~input_o\ & ( \b[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[3]~12_combout\);

-- Location: LABCELL_X12_Y6_N27
\v4|m[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[2]~10_combout\ = ( \b[15]~input_o\ & ( !\b[2]~input_o\ $ (((!\b[1]~input_o\ & !\b[0]~input_o\))) ) ) # ( !\b[15]~input_o\ & ( \b[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[2]~10_combout\);

-- Location: LABCELL_X12_Y6_N48
\v4|m[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[4]~9_combout\ = ( \b[2]~input_o\ & ( \b[4]~input_o\ & ( !\b[15]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( \b[4]~input_o\ & ( (!\b[15]~input_o\) # ((!\b[3]~input_o\ & (!\b[0]~input_o\ & !\b[1]~input_o\))) ) ) ) # ( \b[2]~input_o\ & ( !\b[4]~input_o\ & ( 
-- \b[15]~input_o\ ) ) ) # ( !\b[2]~input_o\ & ( !\b[4]~input_o\ & ( (\b[15]~input_o\ & (((\b[1]~input_o\) # (\b[0]~input_o\)) # (\b[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111111111111100000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \v4|m[4]~9_combout\);

-- Location: LABCELL_X10_Y7_N30
\u1|u1|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u2|co~0_combout\ = ( !\v4|m[2]~10_combout\ & ( !\v4|m[4]~9_combout\ & ( (!\v4|m[1]~11_combout\ & (!\v4|m[5]~8_combout\ & (!\u1|u1|u1|u1|u1|co~0_combout\ & !\v4|m[3]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~11_combout\,
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u1|u1|u1|u1|u1|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	datae => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u1|u1|u2|u2|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N3
\u1|u1|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|u2|co~0_combout\ = ( !\v4|m[8]~13_combout\ & ( (!\v4|m[6]~7_combout\ & (!\v4|m[7]~6_combout\ & (!\v4|m[9]~5_combout\ & \u1|u1|u1|u2|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \v4|ALT_INV_m[7]~6_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u1|u1|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X10_Y9_N30
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\b[12]~input_o\ & ( (\Equal0~1_combout\ & (!\b[13]~input_o\ & !\b[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X10_Y9_N33
\u1|u1|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u4|u4|co~0_combout\ = ( \b[15]~input_o\ & ( (!\b[13]~input_o\ & (\Equal0~1_combout\ & (!\b[11]~input_o\ & !\b[12]~input_o\))) # (\b[13]~input_o\ & (!\Equal0~1_combout\ & (\b[11]~input_o\ & \b[12]~input_o\))) ) ) # ( !\b[15]~input_o\ & ( 
-- (!\b[13]~input_o\ & (!\b[11]~input_o\ & !\b[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[13]~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_b[11]~input_o\,
	datad => \ALT_INV_b[12]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \u1|u1|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X10_Y9_N36
\u1|u1|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u4|u4|co~1_combout\ = ( !\v4|m[10]~4_combout\ & ( (\u1|u1|u1|u4|u4|co~0_combout\ & ((!\b[15]~input_o\ & ((!\b[14]~input_o\))) # (\b[15]~input_o\ & (!\Equal0~4_combout\ & \b[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000100000010100000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \u1|u1|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[14]~input_o\,
	dataf => \v4|ALT_INV_m[10]~4_combout\,
	combout => \u1|u1|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X9_Y9_N6
\u1|u1|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u4|u4|co~2_combout\ = ( \u1|u1|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ & ( (!\v4|m[6]~7_combout\ & (\u1|u1|u1|u2|u2|co~0_combout\ & (!\v4|m[8]~13_combout\ & !\v4|m[7]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	datae => \u1|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u1|u1|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X10_Y7_N27
\u1|u2|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u4|u4|co~2_combout\ = ( \v4|m[10]~4_combout\ & ( (\u1|u1|u1|u3|u2|co~0_combout\ & \u1|u1|u1|u4|u4|co~2_combout\) ) ) # ( !\v4|m[10]~4_combout\ & ( (!\u1|u1|u1|u3|u2|co~0_combout\ & \u1|u1|u1|u4|u4|co~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[10]~4_combout\,
	combout => \u1|u2|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X10_Y7_N36
\u1|u1|u1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u1|u3|co~0_combout\ = ( !\v4|m[1]~11_combout\ & ( (!\u1|u1|u1|u1|u1|co~0_combout\ & !\v4|m[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u1|u1|u1|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u1|u1|u1|u3|co~0_combout\);

-- Location: LABCELL_X10_Y7_N42
\u1|u2|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u2|co~0_combout\ = ( !\v4|m[5]~8_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\v4|m[4]~9_combout\ $ (((\u1|u1|u1|u1|u3|co~0_combout\ & !\v4|m[3]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011100000000001001110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[4]~9_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u1|u2|u1|u2|u2|co~0_combout\);

-- Location: LABCELL_X10_Y7_N39
\u1|u1|u2|m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m~0_combout\ = ( \v4|m[4]~9_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & !\v4|m[5]~8_combout\) ) ) # ( !\v4|m[4]~9_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\v4|m[5]~8_combout\ $ (((!\v4|m[3]~12_combout\ & 
-- \u1|u1|u1|u1|u3|co~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010100010100000001010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \v4|ALT_INV_m[3]~12_combout\,
	datac => \v4|ALT_INV_m[5]~8_combout\,
	datad => \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u1|u2|m~0_combout\);

-- Location: LABCELL_X12_Y6_N42
\u1|u2|u1|u2|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u2|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( !\v4|m[5]~8_combout\ $ (((!\u1|u1|u1|u4|u4|co~2_combout\) # ((!\u1|u1|u1|u1|u3|co~0_combout\) # (\v4|m[3]~12_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\v4|m[5]~8_combout\ $ 
-- (((!\u1|u1|u1|u4|u4|co~2_combout\) # ((\u1|u1|u1|u1|u3|co~0_combout\ & !\v4|m[3]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010110111010010001011011101000010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u2|u1|u2|u2|s~0_combout\);

-- Location: LABCELL_X12_Y4_N57
\o~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~3_combout\ = ( !\a[13]~input_o\ & ( (!\a[12]~input_o\ & (!\a[11]~input_o\ & (\o~2_combout\ & \o~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[12]~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_o~2_combout\,
	datad => \ALT_INV_o~1_combout\,
	dataf => \ALT_INV_a[13]~input_o\,
	combout => \o~3_combout\);

-- Location: LABCELL_X12_Y4_N30
\v2|m[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[14]~1_combout\ = ( \a[15]~input_o\ & ( \a[13]~input_o\ & ( !\a[14]~input_o\ ) ) ) # ( !\a[15]~input_o\ & ( \a[13]~input_o\ & ( \a[14]~input_o\ ) ) ) # ( \a[15]~input_o\ & ( !\a[13]~input_o\ & ( !\a[14]~input_o\ $ (((!\a[12]~input_o\ & 
-- (!\a[11]~input_o\ & \o~1_combout\)))) ) ) ) # ( !\a[15]~input_o\ & ( !\a[13]~input_o\ & ( \a[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111101110000100000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[12]~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_o~1_combout\,
	datad => \ALT_INV_a[14]~input_o\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[13]~input_o\,
	combout => \v2|m[14]~1_combout\);

-- Location: LABCELL_X12_Y6_N6
\u1|u2|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u1|u3|co~combout\ = ( \v4|m[1]~11_combout\ & ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[2]~10_combout\ & ((!\b[0]~input_o\) # ((\v2|m[14]~1_combout\) # (\o~3_combout\)))) # (\v4|m[2]~10_combout\ & (!\b[0]~input_o\ & (\o~3_combout\))) ) ) ) # ( 
-- !\v4|m[1]~11_combout\ & ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\b[0]~input_o\ & (!\v4|m[2]~10_combout\)) # (\b[0]~input_o\ & ((!\o~3_combout\) # ((!\v4|m[2]~10_combout\ & \v2|m[14]~1_combout\)))) ) ) ) # ( \v4|m[1]~11_combout\ & ( 
-- !\u1|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[2]~10_combout\ & (\o~3_combout\ & ((!\b[0]~input_o\) # (\v2|m[14]~1_combout\)))) ) ) ) # ( !\v4|m[1]~11_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[2]~10_combout\ & ((!\b[0]~input_o\) # 
-- ((\v2|m[14]~1_combout\) # (\o~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010000010000000101010111000101110101000111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_o~3_combout\,
	datad => \v2|ALT_INV_m[14]~1_combout\,
	datae => \v4|ALT_INV_m[1]~11_combout\,
	dataf => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u1|u2|u1|u1|u3|co~combout\);

-- Location: LABCELL_X12_Y6_N45
\u1|u1|u2|m~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m~2_combout\ = (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u1|u3|co~0_combout\ $ (\v4|m[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u1|u1|u2|m~2_combout\);

-- Location: MLABCELL_X9_Y8_N3
\u1|u1|u2|m~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m~1_combout\ = ( \v4|m[1]~11_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & !\v4|m[2]~10_combout\) ) ) # ( !\v4|m[1]~11_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u1|u1|co~0_combout\ $ (!\v4|m[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u1|u1|u1|u1|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u1|u2|m~1_combout\);

-- Location: LABCELL_X12_Y6_N18
\u1|u2|u1|u2|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u2|co~1_combout\ = ( \u1|u1|u2|m~1_combout\ & ( \v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u2|u2|s~0_combout\ & (\u1|u1|u2|m~2_combout\ & ((!\v4|m[3]~12_combout\) # (\u1|u2|u1|u1|u3|co~combout\)))) ) ) ) # ( !\u1|u1|u2|m~1_combout\ & ( 
-- \v4|m[4]~9_combout\ & ( (!\v4|m[3]~12_combout\ & (!\u1|u2|u1|u2|u2|s~0_combout\ & (\u1|u2|u1|u1|u3|co~combout\ & \u1|u1|u2|m~2_combout\))) ) ) ) # ( \u1|u1|u2|m~1_combout\ & ( !\v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u2|u2|s~0_combout\ & 
-- ((!\v4|m[3]~12_combout\) # ((\u1|u1|u2|m~2_combout\) # (\u1|u2|u1|u1|u3|co~combout\)))) ) ) ) # ( !\u1|u1|u2|m~1_combout\ & ( !\v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u2|u2|s~0_combout\ & (((!\v4|m[3]~12_combout\ & \u1|u2|u1|u1|u3|co~combout\)) # 
-- (\u1|u1|u2|m~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001100100011001100110000000000000010000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~12_combout\,
	datab => \u1|u2|u1|u2|u2|ALT_INV_s~0_combout\,
	datac => \u1|u2|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u1|u1|u2|ALT_INV_m~2_combout\,
	datae => \u1|u1|u2|ALT_INV_m~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u2|u1|u2|u2|co~1_combout\);

-- Location: LABCELL_X10_Y7_N48
\u1|u2|u1|u2|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u4|co~combout\ = ( \u1|u2|u1|u2|u2|co~1_combout\ & ( (!\v4|m[7]~6_combout\ & ((!\v4|m[6]~7_combout\) # (\u1|u1|u2|m~0_combout\))) ) ) # ( !\u1|u2|u1|u2|u2|co~1_combout\ & ( (!\v4|m[7]~6_combout\ & ((!\v4|m[6]~7_combout\ & 
-- ((\u1|u1|u2|m~0_combout\) # (\u1|u2|u1|u2|u2|co~0_combout\))) # (\v4|m[6]~7_combout\ & (\u1|u2|u1|u2|u2|co~0_combout\ & \u1|u1|u2|m~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010110000001000001011000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \u1|u2|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u1|u1|u2|ALT_INV_m~0_combout\,
	dataf => \u1|u2|u1|u2|u2|ALT_INV_co~1_combout\,
	combout => \u1|u2|u1|u2|u4|co~combout\);

-- Location: MLABCELL_X9_Y9_N27
\u1|u2|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u3|u3|co~0_combout\ = ( \u1|u2|u1|u2|u4|co~combout\ & ( (!\v4|m[8]~13_combout\ & !\v4|m[9]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u1|u2|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u2|u1|u3|u3|co~0_combout\);

-- Location: LABCELL_X10_Y9_N12
\u1|u2|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u4|u4|co~1_combout\ = ( \b[11]~input_o\ & ( \b[12]~input_o\ & ( (\b[15]~input_o\ & (\b[14]~input_o\ & (\b[13]~input_o\ & !\Equal0~1_combout\))) ) ) ) # ( !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( (!\b[15]~input_o\ & (!\b[14]~input_o\ & 
-- !\b[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_b[14]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \u1|u2|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X9_Y8_N21
\u1|u1|u2|m[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m[0]~4_combout\ = ( \b[0]~input_o\ & ( !\o~3_combout\ $ (!\u1|u1|u1|u4|u4|co~2_combout\) ) ) # ( !\b[0]~input_o\ & ( \o~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_o~3_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \u1|u1|u2|m[0]~4_combout\);

-- Location: MLABCELL_X9_Y8_N18
\u1|u2|u1|u1|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u1|u2|s~combout\ = ( \v4|m[1]~11_combout\ & ( !\o~3_combout\ $ (((!\b[0]~input_o\) # (!\v2|m[14]~1_combout\ $ (!\u1|u1|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[1]~11_combout\ & ( !\o~3_combout\ $ (((\b[0]~input_o\ & (!\v2|m[14]~1_combout\ $ 
-- (\u1|u1|u1|u4|u4|co~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101010101001100110101010100101100101010101100110010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_o~3_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \v2|ALT_INV_m[14]~1_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u2|u1|u1|u2|s~combout\);

-- Location: MLABCELL_X9_Y8_N45
\u1|u2|u2|m[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[1]~6_combout\ = ( \u1|u1|u2|m[0]~4_combout\ & ( \u1|u2|u1|u1|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~1_combout\) # ((!\u1|u2|u1|u4|u4|co~2_combout\ & ((!\u1|u2|u1|u3|u3|co~0_combout\) # (\v4|m[10]~4_combout\)))) ) ) ) # ( 
-- \u1|u1|u2|m[0]~4_combout\ & ( !\u1|u2|u1|u1|u2|s~combout\ ) ) # ( !\u1|u1|u2|m[0]~4_combout\ & ( !\u1|u2|u1|u1|u2|s~combout\ & ( (\u1|u2|u1|u4|u4|co~1_combout\ & (((!\v4|m[10]~4_combout\ & \u1|u2|u1|u3|u3|co~0_combout\)) # 
-- (\u1|u2|u1|u4|u4|co~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111011111111111111111100000000000000001111111111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u1|u1|u2|ALT_INV_m[0]~4_combout\,
	dataf => \u1|u2|u1|u1|u2|ALT_INV_s~combout\,
	combout => \u1|u2|u2|m[1]~6_combout\);

-- Location: MLABCELL_X9_Y8_N24
\u1|u2|u2|m[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[0]~7_combout\ = ( \u1|u2|u1|u4|u4|co~1_combout\ & ( \u1|u2|u1|u3|u3|co~0_combout\ & ( !\v2|m[14]~1_combout\ $ (((!\b[0]~input_o\) # ((\v4|m[10]~4_combout\ & !\u1|u2|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~1_combout\ & ( 
-- \u1|u2|u1|u3|u3|co~0_combout\ & ( \v2|m[14]~1_combout\ ) ) ) # ( \u1|u2|u1|u4|u4|co~1_combout\ & ( !\u1|u2|u1|u3|u3|co~0_combout\ & ( !\v2|m[14]~1_combout\ $ (((!\b[0]~input_o\) # (!\u1|u2|u1|u4|u4|co~2_combout\))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~1_combout\ 
-- & ( !\u1|u2|u1|u3|u3|co~0_combout\ & ( \v2|m[14]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010110011001010101010101010110010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[14]~1_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	combout => \u1|u2|u2|m[0]~7_combout\);

-- Location: MLABCELL_X9_Y8_N30
\u1|u3|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u3|co~combout\ = ( \v4|m[2]~10_combout\ & ( \v4|m[1]~11_combout\ & ( (!\u1|u2|u2|m[1]~6_combout\) # ((!\u1|u2|u2|m[0]~7_combout\) # ((!\v2|m[13]~2_combout\ & \b[0]~input_o\))) ) ) ) # ( !\v4|m[2]~10_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- (!\u1|u2|u2|m[1]~6_combout\ & ((!\u1|u2|u2|m[0]~7_combout\) # ((!\v2|m[13]~2_combout\ & \b[0]~input_o\)))) ) ) ) # ( \v4|m[2]~10_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\u1|u2|u2|m[1]~6_combout\) # ((!\v2|m[13]~2_combout\ & (!\u1|u2|u2|m[0]~7_combout\ & 
-- \b[0]~input_o\))) ) ) ) # ( !\v4|m[2]~10_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[13]~2_combout\ & (!\u1|u2|u2|m[1]~6_combout\ & (!\u1|u2|u2|m[0]~7_combout\ & \b[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000110011001110110011000000110010001111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[13]~2_combout\,
	datab => \u1|u2|u2|ALT_INV_m[1]~6_combout\,
	datac => \u1|u2|u2|ALT_INV_m[0]~7_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u3|u1|u1|u3|co~combout\);

-- Location: MLABCELL_X9_Y8_N0
\u1|u1|u2|m~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m~3_combout\ = ( \v4|m[1]~11_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & !\u1|u1|u1|u1|u1|co~0_combout\) ) ) # ( !\v4|m[1]~11_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & \u1|u1|u1|u1|u1|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u1|u1|u1|u1|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u1|u2|m~3_combout\);

-- Location: MLABCELL_X9_Y8_N6
\u1|u2|u1|u1|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u1|u3|s~combout\ = ( \u1|u1|u1|u4|u4|co~2_combout\ & ( \o~3_combout\ & ( !\v4|m[2]~10_combout\ $ (((!\b[0]~input_o\ & ((\v4|m[1]~11_combout\))) # (\b[0]~input_o\ & (!\v2|m[14]~1_combout\ & !\v4|m[1]~11_combout\)))) ) ) ) # ( 
-- !\u1|u1|u1|u4|u4|co~2_combout\ & ( \o~3_combout\ & ( !\v4|m[2]~10_combout\ $ (((\b[0]~input_o\ & (!\v2|m[14]~1_combout\ & \v4|m[1]~11_combout\)))) ) ) ) # ( \u1|u1|u1|u4|u4|co~2_combout\ & ( !\o~3_combout\ & ( !\v4|m[2]~10_combout\ $ (((\b[0]~input_o\ & 
-- ((!\v2|m[14]~1_combout\) # (!\v4|m[1]~11_combout\))))) ) ) ) # ( !\u1|u1|u1|u4|u4|co~2_combout\ & ( !\o~3_combout\ & ( !\v4|m[2]~10_combout\ $ ((((\b[0]~input_o\ & !\v2|m[14]~1_combout\)) # (\v4|m[1]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001010101100110011001101010101010100110101001101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \v2|ALT_INV_m[14]~1_combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \ALT_INV_o~3_combout\,
	combout => \u1|u2|u1|u1|u3|s~combout\);

-- Location: MLABCELL_X9_Y8_N42
\u1|u2|u2|m[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[2]~5_combout\ = ( \u1|u1|u2|m~3_combout\ & ( \u1|u2|u1|u1|u3|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~1_combout\) # ((!\u1|u2|u1|u4|u4|co~2_combout\ & ((!\u1|u2|u1|u3|u3|co~0_combout\) # (\v4|m[10]~4_combout\)))) ) ) ) # ( \u1|u1|u2|m~3_combout\ & 
-- ( !\u1|u2|u1|u1|u3|s~combout\ ) ) # ( !\u1|u1|u2|m~3_combout\ & ( !\u1|u2|u1|u1|u3|s~combout\ & ( (\u1|u2|u1|u4|u4|co~1_combout\ & (((!\v4|m[10]~4_combout\ & \u1|u2|u1|u3|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001011111111111111111100000000000000001111110011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datae => \u1|u1|u2|ALT_INV_m~3_combout\,
	dataf => \u1|u2|u1|u1|u3|ALT_INV_s~combout\,
	combout => \u1|u2|u2|m[2]~5_combout\);

-- Location: LABCELL_X10_Y7_N51
\u1|u2|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u1|u1|u2|m~1_combout\ $ (\u1|u2|u1|u1|u3|co~combout\) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u1|u1|u2|m~1_combout\ $ (!\u1|u2|u1|u1|u3|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|u2|ALT_INV_m~1_combout\,
	datad => \u1|u2|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u1|u2|u1|u1|u4|s~combout\);

-- Location: LABCELL_X10_Y7_N3
\u1|u2|u1|u4|u4|co~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u4|u4|co~3_combout\ = ( \u1|u2|u1|u4|u4|co~1_combout\ & ( ((\u1|u2|u1|u3|u3|co~0_combout\ & !\v4|m[10]~4_combout\)) # (\u1|u2|u1|u4|u4|co~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111010101010111011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u1|u2|u1|u4|u4|co~3_combout\);

-- Location: LABCELL_X10_Y7_N21
\u1|u3|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u1|u2|m~1_combout\))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u2|u1|u1|u4|s~combout\)) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & 
-- ((\u1|u1|u2|m~1_combout\))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\u1|u2|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101011001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u1|u4|ALT_INV_s~combout\,
	datab => \u1|u1|u2|ALT_INV_m~1_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u3|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X10_Y8_N48
\u1|u3|u1|u2|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|s~combout\ = ( \u1|u3|u1|u2|u1|s~0_combout\ & ( (!\u1|u3|u1|u1|u3|co~combout\ & (\v4|m[3]~12_combout\ & !\u1|u2|u2|m[2]~5_combout\)) # (\u1|u3|u1|u1|u3|co~combout\ & ((!\u1|u2|u2|m[2]~5_combout\) # (\v4|m[3]~12_combout\))) ) ) # ( 
-- !\u1|u3|u1|u2|u1|s~0_combout\ & ( (!\u1|u3|u1|u1|u3|co~combout\ & ((!\v4|m[3]~12_combout\) # (\u1|u2|u2|m[2]~5_combout\))) # (\u1|u3|u1|u1|u3|co~combout\ & (!\v4|m[3]~12_combout\ & \u1|u2|u2|m[2]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011101110100010001110111001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	dataf => \u1|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	combout => \u1|u3|u1|u2|u1|s~combout\);

-- Location: LABCELL_X10_Y9_N18
\u1|u3|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u4|u4|co~0_combout\ = ( \b[11]~input_o\ & ( \b[12]~input_o\ & ( (!\b[15]~input_o\ & (!\b[14]~input_o\ & !\b[13]~input_o\)) # (\b[15]~input_o\ & (\b[14]~input_o\ & \b[13]~input_o\)) ) ) ) # ( !\b[11]~input_o\ & ( \b[12]~input_o\ & ( 
-- (!\b[15]~input_o\ & (!\b[14]~input_o\ & !\b[13]~input_o\)) # (\b[15]~input_o\ & (\b[14]~input_o\ & \b[13]~input_o\)) ) ) ) # ( \b[11]~input_o\ & ( !\b[12]~input_o\ & ( (!\b[15]~input_o\ & (!\b[14]~input_o\ & !\b[13]~input_o\)) # (\b[15]~input_o\ & 
-- (\b[14]~input_o\ & \b[13]~input_o\)) ) ) ) # ( !\b[11]~input_o\ & ( !\b[12]~input_o\ & ( (!\b[15]~input_o\ & (!\b[14]~input_o\ & (!\b[13]~input_o\))) # (\b[15]~input_o\ & (\b[14]~input_o\ & (\b[13]~input_o\ & !\Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110000000100000011000000110000001100000011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_b[14]~input_o\,
	datac => \ALT_INV_b[13]~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \u1|u3|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N18
\u1|u2|u1|u3|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u3|u1|co~0_combout\ = ( \u1|u2|u1|u2|u4|co~combout\ & ( !\v4|m[8]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m[8]~13_combout\,
	dataf => \u1|u2|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u2|u1|u3|u1|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N15
\u1|u1|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|u1|s~combout\ = ( \v4|m[8]~13_combout\ & ( ((!\u1|u1|u1|u2|u2|co~0_combout\) # (\v4|m[7]~6_combout\)) # (\v4|m[6]~7_combout\) ) ) # ( !\v4|m[8]~13_combout\ & ( (!\v4|m[6]~7_combout\ & (\u1|u1|u1|u2|u2|co~0_combout\ & !\v4|m[7]~6_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u1|u1|u1|u3|u1|s~combout\);

-- Location: MLABCELL_X9_Y9_N54
\u1|u3|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u3|co~0_combout\ = ( !\v4|m[10]~4_combout\ & ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (((!\u1|u1|u1|u3|u1|s~combout\)))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\v4|m[9]~5_combout\ $ 
-- ((\u1|u2|u1|u3|u1|co~0_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ & ( (\u1|u2|u1|u4|u4|co~3_combout\ & (!\v4|m[9]~5_combout\ $ (\u1|u2|u1|u3|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001000000000000000011101011010000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u2|u1|u3|u1|ALT_INV_co~0_combout\,
	datad => \u1|u1|u1|u3|u1|ALT_INV_s~combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u1|u3|u1|u3|u3|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N36
\u1|u3|u1|u3|u3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u3|s~0_combout\ = ( \v4|m[10]~4_combout\ & ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (((\u1|u1|u1|u3|u1|s~combout\)))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\v4|m[9]~5_combout\ $ ((!\u1|u2|u1|u3|u1|co~0_combout\)))) 
-- ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (((!\u1|u1|u1|u3|u1|s~combout\)))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\v4|m[9]~5_combout\ $ ((\u1|u2|u1|u3|u1|co~0_combout\)))) ) ) ) # ( 
-- \v4|m[10]~4_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\) # (!\v4|m[9]~5_combout\ $ (!\u1|u2|u1|u3|u1|co~0_combout\)) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ & ( (\u1|u2|u1|u4|u4|co~3_combout\ 
-- & (!\v4|m[9]~5_combout\ $ (\u1|u2|u1|u3|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001101111101011111011101011010000010001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u2|u1|u3|u1|ALT_INV_co~0_combout\,
	datad => \u1|u1|u1|u3|u1|ALT_INV_s~combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u1|u3|u1|u3|u3|s~0_combout\);

-- Location: MLABCELL_X9_Y9_N12
\u1|u1|u1|u2|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u2|u3|co~0_combout\ = (!\v4|m[6]~7_combout\ & \u1|u1|u1|u2|u2|co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\,
	combout => \u1|u1|u1|u2|u3|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N30
\u1|u2|u2|m[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[8]~2_combout\ = ( \u1|u2|u1|u4|u4|co~3_combout\ & ( \v4|m[7]~6_combout\ & ( !\u1|u2|u1|u2|u4|co~combout\ $ ((((\u1|u1|u1|u4|u4|co~2_combout\ & \u1|u1|u1|u2|u3|co~0_combout\)) # (\v4|m[8]~13_combout\))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~3_combout\ 
-- & ( \v4|m[7]~6_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & \u1|u1|u1|u2|u3|co~0_combout\) ) ) ) # ( \u1|u2|u1|u4|u4|co~3_combout\ & ( !\v4|m[7]~6_combout\ & ( !\u1|u2|u1|u2|u4|co~combout\ $ ((((\u1|u1|u1|u4|u4|co~2_combout\ & 
-- !\u1|u1|u1|u2|u3|co~0_combout\)) # (\v4|m[8]~13_combout\))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~3_combout\ & ( !\v4|m[7]~6_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & !\u1|u1|u1|u2|u3|co~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000100101011010010100000000001100111010010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u2|u4|ALT_INV_co~combout\,
	datab => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u1|u1|u1|u2|u3|ALT_INV_co~0_combout\,
	datae => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u1|u2|u2|m[8]~2_combout\);

-- Location: LABCELL_X10_Y7_N9
\u1|u2|u1|u2|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u4|s~combout\ = ( \v4|m[7]~6_combout\ & ( (!\u1|u1|u2|m~0_combout\ & (((!\u1|u2|u1|u2|u2|co~1_combout\ & !\u1|u2|u1|u2|u2|co~0_combout\)) # (\v4|m[6]~7_combout\))) # (\u1|u1|u2|m~0_combout\ & (!\u1|u2|u1|u2|u2|co~1_combout\ & 
-- (!\u1|u2|u1|u2|u2|co~0_combout\ & \v4|m[6]~7_combout\))) ) ) # ( !\v4|m[7]~6_combout\ & ( (!\u1|u1|u2|m~0_combout\ & (!\v4|m[6]~7_combout\ & ((\u1|u2|u1|u2|u2|co~0_combout\) # (\u1|u2|u1|u2|u2|co~1_combout\)))) # (\u1|u1|u2|m~0_combout\ & 
-- (((!\v4|m[6]~7_combout\) # (\u1|u2|u1|u2|u2|co~0_combout\)) # (\u1|u2|u1|u2|u2|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111011111110000011110000000111110001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u2|u2|ALT_INV_co~1_combout\,
	datab => \u1|u2|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \u1|u1|u2|ALT_INV_m~0_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u1|u2|u1|u2|u4|s~combout\);

-- Location: LABCELL_X10_Y7_N0
\u1|u2|u2|m[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[7]~3_combout\ = ( !\u1|u2|u1|u2|u4|s~combout\ & ( (\u1|u2|u1|u4|u4|co~1_combout\ & (((\u1|u2|u1|u3|u3|co~0_combout\ & !\v4|m[10]~4_combout\)) # (\u1|u2|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000101000001110000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u2|u1|u2|u4|ALT_INV_s~combout\,
	combout => \u1|u2|u2|m[7]~3_combout\);

-- Location: LABCELL_X10_Y7_N6
\u1|u2|u1|u2|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u3|s~combout\ = ( \u1|u2|u1|u2|u2|co~1_combout\ & ( !\v4|m[6]~7_combout\ $ (\u1|u1|u2|m~0_combout\) ) ) # ( !\u1|u2|u1|u2|u2|co~1_combout\ & ( !\u1|u2|u1|u2|u2|co~0_combout\ $ (!\v4|m[6]~7_combout\ $ (\u1|u1|u2|m~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u1|u1|u2|ALT_INV_m~0_combout\,
	dataf => \u1|u2|u1|u2|u2|ALT_INV_co~1_combout\,
	combout => \u1|u2|u1|u2|u3|s~combout\);

-- Location: LABCELL_X10_Y7_N12
\u1|u2|u2|m[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[6]~8_combout\ = ( \u1|u1|u2|m~0_combout\ & ( \u1|u2|u1|u2|u3|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~1_combout\) # ((!\u1|u2|u1|u4|u4|co~2_combout\ & ((!\u1|u2|u1|u3|u3|co~0_combout\) # (\v4|m[10]~4_combout\)))) ) ) ) # ( \u1|u1|u2|m~0_combout\ & 
-- ( !\u1|u2|u1|u2|u3|s~combout\ ) ) # ( !\u1|u1|u2|m~0_combout\ & ( !\u1|u2|u1|u2|u3|s~combout\ & ( (\u1|u2|u1|u4|u4|co~1_combout\ & (((!\v4|m[10]~4_combout\ & \u1|u2|u1|u3|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111111111111111111100000000000000001111111111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u1|u1|u2|ALT_INV_m~0_combout\,
	dataf => \u1|u2|u1|u2|u3|ALT_INV_s~combout\,
	combout => \u1|u2|u2|m[6]~8_combout\);

-- Location: LABCELL_X10_Y7_N24
\u1|u2|u1|u2|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u1|s~combout\ = ( \v4|m[4]~9_combout\ & ( !\u1|u1|u2|m~2_combout\ $ (((!\u1|u1|u2|m~1_combout\ & (!\v4|m[3]~12_combout\ & \u1|u2|u1|u1|u3|co~combout\)) # (\u1|u1|u2|m~1_combout\ & ((!\v4|m[3]~12_combout\) # (\u1|u2|u1|u1|u3|co~combout\))))) ) 
-- ) # ( !\v4|m[4]~9_combout\ & ( !\u1|u1|u2|m~2_combout\ $ (((!\u1|u1|u2|m~1_combout\ & ((!\u1|u2|u1|u1|u3|co~combout\) # (\v4|m[3]~12_combout\))) # (\u1|u1|u2|m~1_combout\ & (\v4|m[3]~12_combout\ & !\u1|u2|u1|u1|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110100110011001011010011010011010010110011001101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ALT_INV_m~2_combout\,
	datab => \u1|u1|u2|ALT_INV_m~1_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u2|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u2|u1|u2|u1|s~combout\);

-- Location: LABCELL_X10_Y7_N15
\u1|u2|u2|m[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[4]~4_combout\ = ( \u1|u1|u2|m~2_combout\ & ( \u1|u2|u1|u2|u1|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~1_combout\) # ((!\u1|u2|u1|u4|u4|co~2_combout\ & ((!\u1|u2|u1|u3|u3|co~0_combout\) # (\v4|m[10]~4_combout\)))) ) ) ) # ( \u1|u1|u2|m~2_combout\ & 
-- ( !\u1|u2|u1|u2|u1|s~combout\ ) ) # ( !\u1|u1|u2|m~2_combout\ & ( !\u1|u2|u1|u2|u1|s~combout\ & ( (\u1|u2|u1|u4|u4|co~1_combout\ & (((!\v4|m[10]~4_combout\ & \u1|u2|u1|u3|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111111111111111111100000000000000001111110111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u1|u1|u2|ALT_INV_m~2_combout\,
	dataf => \u1|u2|u1|u2|u1|ALT_INV_s~combout\,
	combout => \u1|u2|u2|m[4]~4_combout\);

-- Location: LABCELL_X10_Y7_N54
\u1|u3|u1|u2|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|s~0_combout\ = ( \v4|m[5]~8_combout\ & ( !\u1|u2|u2|m[4]~4_combout\ ) ) # ( !\v4|m[5]~8_combout\ & ( \u1|u2|u2|m[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|u2|ALT_INV_m[4]~4_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u1|u3|u1|u2|u2|s~0_combout\);

-- Location: LABCELL_X10_Y7_N18
\u1|u3|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & ((\u1|u1|u2|m~1_combout\))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\u1|u2|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u1|u4|ALT_INV_s~combout\,
	datab => \u1|u1|u2|ALT_INV_m~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u3|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X10_Y8_N0
\u1|u3|u1|u2|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|co~1_combout\ = ( \u1|u3|u1|u2|u1|co~0_combout\ & ( \u1|u3|u1|u2|u1|s~0_combout\ & ( !\u1|u3|u1|u2|u2|s~0_combout\ ) ) ) # ( \u1|u3|u1|u2|u1|co~0_combout\ & ( !\u1|u3|u1|u2|u1|s~0_combout\ & ( !\u1|u3|u1|u2|u2|s~0_combout\ ) ) ) # ( 
-- !\u1|u3|u1|u2|u1|co~0_combout\ & ( !\u1|u3|u1|u2|u1|s~0_combout\ & ( (!\u1|u3|u1|u2|u2|s~0_combout\ & ((!\u1|u2|u2|m[2]~5_combout\ & (!\u1|u3|u1|u1|u3|co~combout\ & !\v4|m[3]~12_combout\)) # (\u1|u2|u2|m[2]~5_combout\ & ((!\u1|u3|u1|u1|u3|co~combout\) # 
-- (!\v4|m[3]~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_s~0_combout\,
	datab => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	datac => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	datae => \u1|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	combout => \u1|u3|u1|u2|u2|co~1_combout\);

-- Location: LABCELL_X12_Y7_N3
\u1|u3|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|co~0_combout\ = ( !\v4|m[5]~8_combout\ & ( \u1|u2|u2|m[4]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u2|u2|ALT_INV_m[4]~4_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u1|u3|u1|u2|u2|co~0_combout\);

-- Location: LABCELL_X10_Y7_N45
\u1|u1|u2|m~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u2|m~5_combout\ = ( \v4|m[4]~9_combout\ & ( (\u1|u1|u1|u1|u3|co~0_combout\ & (!\v4|m[3]~12_combout\ & \u1|u1|u1|u4|u4|co~2_combout\)) ) ) # ( !\v4|m[4]~9_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & ((!\u1|u1|u1|u1|u3|co~0_combout\) # 
-- (\v4|m[3]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u1|u3|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u1|u2|m~5_combout\);

-- Location: LABCELL_X12_Y6_N54
\u1|u2|u1|u2|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u2|u2|s~combout\ = ( \u1|u1|u2|m~1_combout\ & ( \v4|m[4]~9_combout\ & ( !\u1|u2|u1|u2|u2|s~0_combout\ $ (((!\u1|u1|u2|m~2_combout\) # ((\v4|m[3]~12_combout\ & !\u1|u2|u1|u1|u3|co~combout\)))) ) ) ) # ( !\u1|u1|u2|m~1_combout\ & ( 
-- \v4|m[4]~9_combout\ & ( !\u1|u2|u1|u2|u2|s~0_combout\ $ ((((!\u1|u2|u1|u1|u3|co~combout\) # (!\u1|u1|u2|m~2_combout\)) # (\v4|m[3]~12_combout\))) ) ) ) # ( \u1|u1|u2|m~1_combout\ & ( !\v4|m[4]~9_combout\ & ( !\u1|u2|u1|u2|u2|s~0_combout\ $ 
-- (((\v4|m[3]~12_combout\ & (!\u1|u2|u1|u1|u3|co~combout\ & !\u1|u1|u2|m~2_combout\)))) ) ) ) # ( !\u1|u1|u2|m~1_combout\ & ( !\v4|m[4]~9_combout\ & ( !\u1|u2|u1|u2|u2|s~0_combout\ $ (((!\u1|u1|u2|m~2_combout\ & ((!\u1|u2|u1|u1|u3|co~combout\) # 
-- (\v4|m[3]~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111001100100111001100110000110011001110010011001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~12_combout\,
	datab => \u1|u2|u1|u2|u2|ALT_INV_s~0_combout\,
	datac => \u1|u2|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u1|u1|u2|ALT_INV_m~2_combout\,
	datae => \u1|u1|u2|ALT_INV_m~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u2|u1|u2|u2|s~combout\);

-- Location: LABCELL_X10_Y7_N57
\u1|u3|u1|u2|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u3|co~0_combout\ = ( \u1|u2|u1|u2|u2|s~combout\ & ( (!\v4|m[6]~7_combout\ & (\u1|u1|u2|m~5_combout\ & !\u1|u2|u1|u4|u4|co~3_combout\)) ) ) # ( !\u1|u2|u1|u2|u2|s~combout\ & ( (!\v4|m[6]~7_combout\ & ((\u1|u2|u1|u4|u4|co~3_combout\) # 
-- (\u1|u1|u2|m~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datac => \u1|u1|u2|ALT_INV_m~5_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	dataf => \u1|u2|u1|u2|u2|ALT_INV_s~combout\,
	combout => \u1|u3|u1|u2|u3|co~0_combout\);

-- Location: LABCELL_X12_Y7_N36
\u1|u3|u1|u2|u3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u3|s~0_combout\ = ( \u1|u2|u1|u2|u2|s~combout\ & ( !\v4|m[6]~7_combout\ $ (((!\u1|u1|u2|m~5_combout\) # (\u1|u2|u1|u4|u4|co~3_combout\))) ) ) # ( !\u1|u2|u1|u2|u2|s~combout\ & ( !\v4|m[6]~7_combout\ $ (((!\u1|u2|u1|u4|u4|co~3_combout\ & 
-- !\u1|u1|u2|m~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000000001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	datac => \u1|u1|u2|ALT_INV_m~5_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u1|u2|u1|u2|u2|ALT_INV_s~combout\,
	combout => \u1|u3|u1|u2|u3|s~0_combout\);

-- Location: LABCELL_X12_Y7_N12
\u1|u3|u1|u2|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u4|co~combout\ = ( \u1|u3|u1|u2|u3|s~0_combout\ & ( \v4|m[7]~6_combout\ & ( (!\u1|u2|u2|m[6]~8_combout\) # (!\u1|u3|u1|u2|u3|co~0_combout\) ) ) ) # ( !\u1|u3|u1|u2|u3|s~0_combout\ & ( \v4|m[7]~6_combout\ & ( (!\u1|u2|u2|m[6]~8_combout\) # 
-- ((!\u1|u3|u1|u2|u2|co~1_combout\ & (!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u3|u1|u2|u3|co~0_combout\))) ) ) ) # ( \u1|u3|u1|u2|u3|s~0_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\u1|u2|u2|m[6]~8_combout\ & !\u1|u3|u1|u2|u3|co~0_combout\) ) ) ) # ( 
-- !\u1|u3|u1|u2|u3|s~0_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\u1|u2|u2|m[6]~8_combout\ & (!\u1|u3|u1|u2|u2|co~1_combout\ & (!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u3|u1|u2|u3|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101010100000000011101010101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[6]~8_combout\,
	datab => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datac => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datad => \u1|u3|u1|u2|u3|ALT_INV_co~0_combout\,
	datae => \u1|u3|u1|u2|u3|ALT_INV_s~0_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u1|u3|u1|u2|u4|co~combout\);

-- Location: MLABCELL_X9_Y9_N42
\u1|u3|u1|u3|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u3|co~1_combout\ = ( \u1|u2|u2|m[7]~3_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( (!\u1|u3|u1|u3|u3|s~0_combout\ & ((!\v4|m[8]~13_combout\ & ((!\v4|m[9]~5_combout\) # (\u1|u2|u2|m[8]~2_combout\))) # (\v4|m[8]~13_combout\ & 
-- (!\v4|m[9]~5_combout\ & \u1|u2|u2|m[8]~2_combout\)))) ) ) ) # ( !\u1|u2|u2|m[7]~3_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[9]~5_combout\ & (!\u1|u3|u1|u3|u3|s~0_combout\ & \u1|u2|u2|m[8]~2_combout\)) ) ) ) # ( \u1|u2|u2|m[7]~3_combout\ & ( 
-- !\u1|u3|u1|u2|u4|co~combout\ & ( (!\u1|u3|u1|u3|u3|s~0_combout\ & ((!\v4|m[9]~5_combout\) # (\u1|u2|u2|m[8]~2_combout\))) ) ) ) # ( !\u1|u2|u2|m[7]~3_combout\ & ( !\u1|u3|u1|u2|u4|co~combout\ & ( (!\u1|u3|u1|u3|u3|s~0_combout\ & ((!\v4|m[8]~13_combout\ & 
-- ((!\v4|m[9]~5_combout\) # (\u1|u2|u2|m[8]~2_combout\))) # (\v4|m[8]~13_combout\ & (!\v4|m[9]~5_combout\ & \u1|u2|u2|m[8]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000110000001111000000000000110000001000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u3|u1|u3|u3|ALT_INV_s~0_combout\,
	datad => \u1|u2|u2|ALT_INV_m[8]~2_combout\,
	datae => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u3|u1|u3|u3|co~1_combout\);

-- Location: MLABCELL_X9_Y9_N0
\u1|u1|u1|u3|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u1|u3|u1|co~0_combout\ = ( !\v4|m[8]~13_combout\ & ( (!\v4|m[7]~6_combout\ & (!\v4|m[6]~7_combout\ & \u1|u1|u1|u2|u2|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[7]~6_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u1|u1|u1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u1|u1|u1|u3|u1|co~0_combout\);

-- Location: MLABCELL_X9_Y9_N48
\u1|u2|u2|m[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[10]~1_combout\ = ( \u1|u2|u1|u4|u4|co~1_combout\ & ( \u1|u2|u1|u3|u1|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & ((!\v4|m[9]~5_combout\ & ((\v4|m[10]~4_combout\))) # (\v4|m[9]~5_combout\ & ((!\v4|m[10]~4_combout\) # 
-- (\u1|u1|u1|u3|u1|co~0_combout\))))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~1_combout\ & ( \u1|u2|u1|u3|u1|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u3|u1|co~0_combout\ $ (\v4|m[9]~5_combout\))) ) ) ) # ( \u1|u2|u1|u4|u4|co~1_combout\ & ( 
-- !\u1|u2|u1|u3|u1|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & ((!\u1|u1|u1|u3|u1|co~0_combout\ & ((!\v4|m[9]~5_combout\) # (!\v4|m[10]~4_combout\))) # (\u1|u1|u1|u3|u1|co~0_combout\ & (\v4|m[9]~5_combout\)))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~1_combout\ 
-- & ( !\u1|u2|u1|u3|u1|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u3|u1|co~0_combout\ $ (\v4|m[9]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001011100100000000100110010000000000111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u3|u1|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u1|u2|u1|u3|u1|ALT_INV_co~0_combout\,
	combout => \u1|u2|u2|m[10]~1_combout\);

-- Location: LABCELL_X7_Y9_N6
\u1|u2|u2|m[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[11]~0_combout\ = ( \v4|m[11]~3_combout\ & ( \u1|u2|u1|u3|u3|co~0_combout\ & ( (!\u1|u2|u1|u4|u4|co~1_combout\ & (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u3|u2|co~0_combout\ $ (\v4|m[10]~4_combout\)))) # (\u1|u2|u1|u4|u4|co~1_combout\ & 
-- (((!\v4|m[10]~4_combout\)))) ) ) ) # ( !\v4|m[11]~3_combout\ & ( \u1|u2|u1|u3|u3|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & ((!\u1|u1|u1|u3|u2|co~0_combout\ & (!\v4|m[10]~4_combout\ & !\u1|u2|u1|u4|u4|co~1_combout\)) # 
-- (\u1|u1|u1|u3|u2|co~0_combout\ & (\v4|m[10]~4_combout\)))) ) ) ) # ( \v4|m[11]~3_combout\ & ( !\u1|u2|u1|u3|u3|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u2|u1|u4|u4|co~1_combout\ & (!\u1|u1|u1|u3|u2|co~0_combout\ $ (\v4|m[10]~4_combout\)))) 
-- ) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u1|u2|u1|u3|u3|co~0_combout\ & ( (\u1|u1|u1|u4|u4|co~2_combout\ & (!\u1|u1|u1|u3|u2|co~0_combout\ $ (\v4|m[10]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010000000001000001000000010100000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u1|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \v4|ALT_INV_m[11]~3_combout\,
	dataf => \u1|u2|u1|u3|u3|ALT_INV_co~0_combout\,
	combout => \u1|u2|u2|m[11]~0_combout\);

-- Location: LABCELL_X7_Y9_N42
\u1|u3|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u4|u1|co~combout\ = ( \v4|m[12]~2_combout\ & ( \u1|u2|u2|m[11]~0_combout\ & ( (!\u1|u2|u2|m[10]~1_combout\ & (((!\u1|u3|u1|u3|u3|co~0_combout\ & !\u1|u3|u1|u3|u3|co~1_combout\)) # (\v4|m[11]~3_combout\))) # (\u1|u2|u2|m[10]~1_combout\ & 
-- (!\u1|u3|u1|u3|u3|co~0_combout\ & (!\u1|u3|u1|u3|u3|co~1_combout\ & \v4|m[11]~3_combout\))) ) ) ) # ( \v4|m[12]~2_combout\ & ( !\u1|u2|u2|m[11]~0_combout\ ) ) # ( !\v4|m[12]~2_combout\ & ( !\u1|u2|u2|m[11]~0_combout\ & ( (!\u1|u2|u2|m[10]~1_combout\ & 
-- (((!\u1|u3|u1|u3|u3|co~0_combout\ & !\u1|u3|u1|u3|u3|co~1_combout\)) # (\v4|m[11]~3_combout\))) # (\u1|u2|u2|m[10]~1_combout\ & (!\u1|u3|u1|u3|u3|co~0_combout\ & (!\u1|u3|u1|u3|u3|co~1_combout\ & \v4|m[11]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111000111111111111111100000000000000001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u3|u3|ALT_INV_co~0_combout\,
	datab => \u1|u3|u1|u3|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u2|ALT_INV_m[10]~1_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \v4|ALT_INV_m[12]~2_combout\,
	dataf => \u1|u2|u2|ALT_INV_m[11]~0_combout\,
	combout => \u1|u3|u1|u4|u1|co~combout\);

-- Location: LABCELL_X10_Y8_N24
\u1|u3|u2|m[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[4]~6_combout\ = ( \u1|u3|u1|u4|u4|co~0_combout\ & ( \u1|u3|u1|u4|u1|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~1_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u2|u1|u1|u4|s~combout\))) ) ) ) # ( 
-- !\u1|u3|u1|u4|u4|co~0_combout\ & ( \u1|u3|u1|u4|u1|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~1_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u2|u1|u1|u4|s~combout\))) ) ) ) # ( \u1|u3|u1|u4|u4|co~0_combout\ & ( 
-- !\u1|u3|u1|u4|u1|co~combout\ & ( !\u1|u3|u1|u2|u1|s~combout\ ) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( !\u1|u3|u1|u4|u1|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~1_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & 
-- ((!\u1|u2|u1|u1|u4|s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000101010101010101000111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u1|ALT_INV_s~combout\,
	datab => \u1|u1|u2|ALT_INV_m~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	datad => \u1|u2|u1|u1|u4|ALT_INV_s~combout\,
	datae => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[4]~6_combout\);

-- Location: LABCELL_X10_Y8_N9
\u1|u3|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|co~combout\ = ( \u1|u3|u1|u2|u1|s~0_combout\ & ( !\u1|u3|u1|u2|u1|co~0_combout\ ) ) # ( !\u1|u3|u1|u2|u1|s~0_combout\ & ( (!\u1|u3|u1|u2|u1|co~0_combout\ & ((!\u1|u3|u1|u1|u3|co~combout\ & (!\u1|u2|u2|m[2]~5_combout\ & 
-- \v4|m[3]~12_combout\)) # (\u1|u3|u1|u1|u3|co~combout\ & ((!\u1|u2|u2|m[2]~5_combout\) # (\v4|m[3]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100000000010011010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	combout => \u1|u3|u1|u2|u1|co~combout\);

-- Location: LABCELL_X10_Y8_N15
\u1|u3|u2|m[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[5]~5_combout\ = ( \u1|u3|u1|u2|u1|co~combout\ & ( !\u1|u2|u2|m[4]~4_combout\ $ ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (\v4|m[5]~8_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) # ( !\u1|u3|u1|u2|u1|co~combout\ & ( !\u1|u2|u2|m[4]~4_combout\ $ 
-- ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\v4|m[5]~8_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101101000011110010110100101101000011110010110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u2|u2|ALT_INV_m[4]~4_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u1|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[5]~5_combout\);

-- Location: LABCELL_X10_Y8_N51
\u1|u3|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u4|s~combout\ = !\u1|u3|u1|u1|u3|co~combout\ $ (!\v4|m[3]~12_combout\ $ (!\u1|u2|u2|m[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[3]~12_combout\,
	datac => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	combout => \u1|u3|u1|u1|u4|s~combout\);

-- Location: LABCELL_X10_Y8_N12
\u1|u4|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ & ((!\u1|u3|u1|u4|u4|co~0_combout\ & ((\u1|u2|u2|m[2]~5_combout\))) # (\u1|u3|u1|u4|u4|co~0_combout\ & (!\u1|u3|u1|u1|u4|s~combout\)))) # (\u1|u3|u1|u4|u1|co~combout\ 
-- & (((\u1|u2|u2|m[2]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111101001000001111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u4|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X12_Y4_N39
\v2|m[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[12]~0_combout\ = ( \a[11]~input_o\ & ( !\a[15]~input_o\ $ (!\a[12]~input_o\) ) ) # ( !\a[11]~input_o\ & ( !\a[12]~input_o\ $ (((!\a[15]~input_o\) # (\o~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010111011010001001011101101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_o~1_combout\,
	datad => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \v2|m[12]~0_combout\);

-- Location: MLABCELL_X9_Y8_N54
\u1|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u1|u2|co~combout\ = ( \u1|u3|u1|u4|u4|co~0_combout\ & ( \v4|m[1]~11_combout\ & ( (!\b[0]~input_o\ & (!\v2|m[13]~2_combout\)) # (\b[0]~input_o\ & ((!\v2|m[12]~0_combout\) # (!\v2|m[13]~2_combout\ $ (!\u1|u3|u1|u4|u1|co~combout\)))) ) ) ) # ( 
-- !\u1|u3|u1|u4|u4|co~0_combout\ & ( \v4|m[1]~11_combout\ & ( (!\v2|m[13]~2_combout\) # ((\b[0]~input_o\ & !\v2|m[12]~0_combout\)) ) ) ) # ( \u1|u3|u1|u4|u4|co~0_combout\ & ( !\v4|m[1]~11_combout\ & ( (\b[0]~input_o\ & (!\v2|m[12]~0_combout\ & 
-- (!\v2|m[13]~2_combout\ $ (!\u1|u3|u1|u4|u1|co~combout\)))) ) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[13]~2_combout\ & (\b[0]~input_o\ & !\v2|m[12]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000100100000000010111011101010101011101110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[13]~2_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \v2|ALT_INV_m[12]~0_combout\,
	datae => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u4|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X9_Y8_N48
\u1|u3|u2|m[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[1]~8_combout\ = ( \u1|u3|u1|u4|u4|co~0_combout\ & ( \v2|m[13]~2_combout\ & ( !\u1|u2|u2|m[0]~7_combout\ $ (((!\v4|m[1]~11_combout\) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( \v2|m[13]~2_combout\ & ( 
-- \u1|u2|u2|m[0]~7_combout\ ) ) ) # ( \u1|u3|u1|u4|u4|co~0_combout\ & ( !\v2|m[13]~2_combout\ & ( !\u1|u2|u2|m[0]~7_combout\ $ (((!\b[0]~input_o\ $ (\v4|m[1]~11_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( 
-- !\v2|m[13]~2_combout\ & ( \u1|u2|u2|m[0]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001011001010101010101010101010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[0]~7_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \v2|ALT_INV_m[13]~2_combout\,
	combout => \u1|u3|u2|m[1]~8_combout\);

-- Location: MLABCELL_X9_Y8_N36
\u1|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u2|co~combout\ = ( \v4|m[1]~11_combout\ & ( (!\u1|u2|u2|m[0]~7_combout\) # ((!\v2|m[13]~2_combout\ & \b[0]~input_o\)) ) ) # ( !\v4|m[1]~11_combout\ & ( (!\v2|m[13]~2_combout\ & (\b[0]~input_o\ & !\u1|u2|u2|m[0]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[13]~2_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u1|u2|u2|ALT_INV_m[0]~7_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u3|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X9_Y8_N12
\u1|u3|u2|m[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[2]~7_combout\ = ( \u1|u2|u2|m[1]~6_combout\ & ( ((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\u1|u3|u1|u1|u2|co~combout\ $ (\v4|m[2]~10_combout\))) # (\u1|u3|u1|u4|u1|co~combout\) ) ) # ( !\u1|u2|u2|m[1]~6_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ & 
-- (\u1|u3|u1|u4|u4|co~0_combout\ & (!\u1|u3|u1|u1|u2|co~combout\ $ (!\v4|m[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000011111101110111111111110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u1|u2|u2|ALT_INV_m[1]~6_combout\,
	combout => \u1|u3|u2|m[2]~7_combout\);

-- Location: MLABCELL_X9_Y8_N15
\u1|u4|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ & ((!\u1|u3|u1|u4|u4|co~0_combout\ & (!\u1|u2|u2|m[2]~5_combout\)) # (\u1|u3|u1|u4|u4|co~0_combout\ & ((\u1|u3|u1|u1|u4|s~combout\))))) # (\u1|u3|u1|u4|u1|co~combout\ & 
-- (((!\u1|u2|u2|m[2]~5_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ & ((!\u1|u3|u1|u4|u4|co~0_combout\ & (\u1|u2|u2|m[2]~5_combout\)) # (\u1|u3|u1|u4|u4|co~0_combout\ & ((!\u1|u3|u1|u1|u4|s~combout\))))) # 
-- (\u1|u3|u1|u4|u1|co~combout\ & (((\u1|u2|u2|m[2]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001101001011110000110111010000111100101101000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	datad => \u1|u3|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u4|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X10_Y8_N30
\u1|u4|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u1|co~1_combout\ = ( \u1|u3|u2|m[2]~7_combout\ & ( !\u1|u4|u1|u2|u1|s~0_combout\ & ( (!\v4|m[3]~12_combout\) # ((!\u1|u4|u1|u1|u2|co~combout\ & ((!\v4|m[2]~10_combout\) # (\u1|u3|u2|m[1]~8_combout\))) # (\u1|u4|u1|u1|u2|co~combout\ & 
-- (!\v4|m[2]~10_combout\ & \u1|u3|u2|m[1]~8_combout\))) ) ) ) # ( !\u1|u3|u2|m[2]~7_combout\ & ( !\u1|u4|u1|u2|u1|s~0_combout\ & ( (!\v4|m[3]~12_combout\ & ((!\u1|u4|u1|u1|u2|co~combout\ & ((!\v4|m[2]~10_combout\) # (\u1|u3|u2|m[1]~8_combout\))) # 
-- (\u1|u4|u1|u1|u2|co~combout\ & (!\v4|m[2]~10_combout\ & \u1|u3|u2|m[1]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000000000111111111000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u1|u3|u2|ALT_INV_m[1]~8_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	datae => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	dataf => \u1|u4|u1|u2|u1|ALT_INV_s~0_combout\,
	combout => \u1|u4|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X10_Y8_N36
\u1|u4|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u3|co~combout\ = ( \v4|m[5]~8_combout\ & ( \u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u3|u2|m[4]~6_combout\ & ((!\u1|u3|u2|m[5]~5_combout\) # (\v4|m[6]~7_combout\))) # (\u1|u3|u2|m[4]~6_combout\ & (!\u1|u3|u2|m[5]~5_combout\ & 
-- \v4|m[6]~7_combout\)) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u3|u2|m[5]~5_combout\ & \v4|m[6]~7_combout\) ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u3|u2|m[5]~5_combout\ & 
-- ((!\u1|u3|u2|m[4]~6_combout\) # ((!\u1|u4|u1|u2|u1|co~0_combout\) # (\v4|m[6]~7_combout\)))) # (\u1|u3|u2|m[5]~5_combout\ & (\v4|m[6]~7_combout\ & ((!\u1|u3|u2|m[4]~6_combout\) # (!\u1|u4|u1|u2|u1|co~0_combout\)))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( 
-- !\u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u3|u2|m[5]~5_combout\ & (((!\u1|u3|u2|m[4]~6_combout\ & !\u1|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[6]~7_combout\))) # (\u1|u3|u2|m[5]~5_combout\ & (!\u1|u3|u2|m[4]~6_combout\ & (\v4|m[6]~7_combout\ & 
-- !\u1|u4|u1|u2|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000001100110011111000111000001100000011001000111010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_m[4]~6_combout\,
	datab => \u1|u3|u2|ALT_INV_m[5]~5_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u1|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u1|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u1|u4|u1|u2|u3|co~combout\);

-- Location: LABCELL_X7_Y8_N36
\u1|u4|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u2|s~0_combout\ = ( \v4|m[8]~13_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ $ (!\v4|m[9]~5_combout\) ) ) ) # ( !\v4|m[8]~13_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ $ 
-- (!\v4|m[9]~5_combout\ $ (((!\u1|u3|u1|u4|u1|co~combout\ & \u1|u3|u1|u4|u4|co~0_combout\)))) ) ) ) # ( \v4|m[8]~13_combout\ & ( !\u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ $ (!\v4|m[9]~5_combout\ $ (((!\u1|u3|u1|u4|u1|co~combout\ & 
-- \u1|u3|u1|u4|u4|co~0_combout\)))) ) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ $ (!\v4|m[9]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001101001011001100110100101100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[8]~13_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u4|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X12_Y7_N39
\u1|u3|u1|u2|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u3|s~combout\ = !\u1|u3|u1|u2|u3|s~0_combout\ $ (((!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u3|u1|u2|u2|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datad => \u1|u3|u1|u2|u3|ALT_INV_s~0_combout\,
	combout => \u1|u3|u1|u2|u3|s~combout\);

-- Location: LABCELL_X12_Y7_N48
\u1|u3|u2|m[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[6]~4_combout\ = ( \u1|u3|u1|u4|u4|co~0_combout\ & ( \u1|u3|u1|u2|u3|s~combout\ & ( (\u1|u3|u1|u4|u1|co~combout\ & ((!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~5_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & 
-- ((!\u1|u2|u1|u2|u2|s~combout\))))) ) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( \u1|u3|u1|u2|u3|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~5_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u2|u1|u2|u2|s~combout\))) ) ) ) # ( 
-- \u1|u3|u1|u4|u4|co~0_combout\ & ( !\u1|u3|u1|u2|u3|s~combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\) # ((!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~5_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u2|u1|u2|u2|s~combout\)))) ) ) ) # ( 
-- !\u1|u3|u1|u4|u4|co~0_combout\ & ( !\u1|u3|u1|u2|u3|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (\u1|u1|u2|m~5_combout\)) # (\u1|u2|u1|u4|u4|co~3_combout\ & ((!\u1|u2|u1|u2|u2|s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100111101111111010001110111010001000000011100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|u2|ALT_INV_m~5_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	datac => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u1|u2|u1|u2|u2|ALT_INV_s~combout\,
	datae => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u2|u3|ALT_INV_s~combout\,
	combout => \u1|u3|u2|m[6]~4_combout\);

-- Location: LABCELL_X12_Y7_N0
\u1|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u3|co~combout\ = (!\u1|u3|u1|u2|u3|co~0_combout\ & (((!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u3|u1|u2|u2|co~1_combout\)) # (\u1|u3|u1|u2|u3|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000001100100011000000110010001100000011001000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datab => \u1|u3|u1|u2|u3|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u2|u3|ALT_INV_s~0_combout\,
	datad => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	combout => \u1|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X12_Y8_N15
\u1|u3|u2|m[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[7]~9_combout\ = ( \u1|u2|u2|m[6]~8_combout\ & ( ((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\v4|m[7]~6_combout\ $ (\u1|u3|u1|u2|u3|co~combout\))) # (\u1|u3|u1|u4|u1|co~combout\) ) ) # ( !\u1|u2|u2|m[6]~8_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ & 
-- (\u1|u3|u1|u4|u4|co~0_combout\ & (!\v4|m[7]~6_combout\ $ (!\u1|u3|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000011111101110111111111110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u1|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u2|u2|ALT_INV_m[6]~8_combout\,
	combout => \u1|u3|u2|m[7]~9_combout\);

-- Location: LABCELL_X7_Y8_N12
\u1|u4|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u2|co~1_combout\ = ( \u1|u3|u2|m[7]~9_combout\ & ( \v4|m[7]~6_combout\ & ( (!\u1|u4|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((!\u1|u4|u1|u2|u3|co~combout\ & \u1|u3|u2|m[6]~4_combout\)))) ) ) ) # ( !\u1|u3|u2|m[7]~9_combout\ & ( 
-- \v4|m[7]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u1|u4|u1|u2|u3|co~combout\ & (!\u1|u4|u1|u3|u2|s~0_combout\ & \u1|u3|u2|m[6]~4_combout\))) ) ) ) # ( \u1|u3|u2|m[7]~9_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\u1|u4|u1|u3|u2|s~0_combout\ & 
-- ((!\v4|m[8]~13_combout\) # ((!\u1|u4|u1|u2|u3|co~combout\) # (\u1|u3|u2|m[6]~4_combout\)))) ) ) ) # ( !\u1|u3|u2|m[7]~9_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u1|u4|u1|u3|u2|s~0_combout\ & ((!\u1|u4|u1|u2|u3|co~combout\) # 
-- (\u1|u3|u2|m[6]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000111000001111000000000000100000001010000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u1|u4|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u1|u4|u1|u3|u2|ALT_INV_s~0_combout\,
	datad => \u1|u3|u2|ALT_INV_m[6]~4_combout\,
	datae => \u1|u3|u2|ALT_INV_m[7]~9_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u1|u4|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X7_Y9_N3
\u1|u4|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u4|u4|co~0_combout\ = ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( !\v4|m[14]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u1|u4|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X7_Y9_N51
\u1|u3|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u3|co~combout\ = ( !\u1|u3|u1|u3|u3|co~0_combout\ & ( !\u1|u3|u1|u3|u3|co~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u3|u1|u3|u3|ALT_INV_co~1_combout\,
	dataf => \u1|u3|u1|u3|u3|ALT_INV_co~0_combout\,
	combout => \u1|u3|u1|u3|u3|co~combout\);

-- Location: LABCELL_X7_Y9_N48
\u1|u3|u2|m[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[11]~1_combout\ = ( \u1|u3|u1|u4|u4|co~0_combout\ & ( !\u1|u2|u2|m[10]~1_combout\ $ (((!\u1|u3|u1|u3|u3|co~combout\ $ (\v4|m[11]~3_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) # ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( 
-- \u1|u2|u2|m[10]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011001100101010101100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[10]~1_combout\,
	datab => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datac => \u1|u3|u1|u3|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	dataf => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u1|u3|u2|m[11]~1_combout\);

-- Location: MLABCELL_X9_Y9_N24
\u1|u3|u1|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u2|co~combout\ = ( \u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[9]~5_combout\ & (((!\v4|m[8]~13_combout\ & \u1|u2|u2|m[7]~3_combout\)) # (\u1|u2|u2|m[8]~2_combout\))) # (\v4|m[9]~5_combout\ & (!\v4|m[8]~13_combout\ & (\u1|u2|u2|m[8]~2_combout\ & 
-- \u1|u2|u2|m[7]~3_combout\))) ) ) # ( !\u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[9]~5_combout\ & ((!\v4|m[8]~13_combout\) # ((\u1|u2|u2|m[7]~3_combout\) # (\u1|u2|u2|m[8]~2_combout\)))) # (\v4|m[9]~5_combout\ & (\u1|u2|u2|m[8]~2_combout\ & 
-- ((!\v4|m[8]~13_combout\) # (\u1|u2|u2|m[7]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111011001111100011101100111100001100100011100000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u2|u2|ALT_INV_m[8]~2_combout\,
	datad => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u3|u1|u3|u2|co~combout\);

-- Location: MLABCELL_X9_Y9_N21
\u1|u2|u2|m[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|m[9]~9_combout\ = ( \u1|u1|u1|u4|u4|co~2_combout\ & ( (!\u1|u2|u1|u4|u4|co~3_combout\ & (((!\u1|u1|u1|u3|u1|s~combout\)))) # (\u1|u2|u1|u4|u4|co~3_combout\ & (!\u1|u2|u1|u3|u1|co~0_combout\ $ (((\v4|m[9]~5_combout\))))) ) ) # ( 
-- !\u1|u1|u1|u4|u4|co~2_combout\ & ( (\u1|u2|u1|u4|u4|co~3_combout\ & (!\u1|u2|u1|u3|u1|co~0_combout\ $ (\v4|m[9]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010111001100101001011100110010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u3|u1|ALT_INV_co~0_combout\,
	datab => \u1|u1|u1|u3|u1|ALT_INV_s~combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	dataf => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u1|u2|u2|m[9]~9_combout\);

-- Location: LABCELL_X12_Y8_N33
\u1|u3|u2|m[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[10]~2_combout\ = ( \u1|u2|u2|m[9]~9_combout\ & ( ((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\u1|u3|u1|u3|u2|co~combout\ $ (!\v4|m[10]~4_combout\))) # (\u1|u3|u1|u4|u1|co~combout\) ) ) # ( !\u1|u2|u2|m[9]~9_combout\ & ( (!\u1|u3|u1|u4|u1|co~combout\ 
-- & (\u1|u3|u1|u4|u4|co~0_combout\ & (!\u1|u3|u1|u3|u2|co~combout\ $ (\v4|m[10]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010001000000000001011011111111111011101111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u3|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u2|u2|ALT_INV_m[9]~9_combout\,
	combout => \u1|u3|u2|m[10]~2_combout\);

-- Location: LABCELL_X7_Y8_N30
\u1|u4|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u2|co~0_combout\ = ( \v4|m[8]~13_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( (\u1|u2|u2|m[7]~3_combout\ & !\v4|m[9]~5_combout\) ) ) ) # ( !\v4|m[8]~13_combout\ & ( \u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[9]~5_combout\ & 
-- (!\u1|u2|u2|m[7]~3_combout\ $ (((!\u1|u3|u1|u4|u4|co~0_combout\) # (\u1|u3|u1|u4|u1|co~combout\))))) ) ) ) # ( \v4|m[8]~13_combout\ & ( !\u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[9]~5_combout\ & (!\u1|u2|u2|m[7]~3_combout\ $ 
-- (((!\u1|u3|u1|u4|u4|co~0_combout\) # (\u1|u3|u1|u4|u1|co~combout\))))) ) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u1|u3|u1|u2|u4|co~combout\ & ( (\u1|u2|u2|m[7]~3_combout\ & !\v4|m[9]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001001000010001000100100001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[8]~13_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u4|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X12_Y8_N39
\u1|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u1|co~combout\ = ( \u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[8]~13_combout\ & \u1|u2|u2|m[7]~3_combout\) ) ) # ( !\u1|u3|u1|u2|u4|co~combout\ & ( (!\v4|m[8]~13_combout\) # (\u1|u2|u2|m[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X12_Y8_N30
\u1|u3|u2|m[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[9]~3_combout\ = ( \u1|u3|u1|u3|u1|co~combout\ & ( !\u1|u2|u2|m[8]~2_combout\ $ ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\v4|m[9]~5_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) # ( !\u1|u3|u1|u3|u1|co~combout\ & ( !\u1|u2|u2|m[8]~2_combout\ 
-- $ ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (\v4|m[9]~5_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100001111001011010000111100001111001011010000111100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u1|u2|u2|ALT_INV_m[8]~2_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u1|u3|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[9]~3_combout\);

-- Location: LABCELL_X12_Y8_N48
\u1|u4|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u3|u2|m[10]~2_combout\ & (((!\u1|u4|u1|u3|u2|co~1_combout\ & !\u1|u4|u1|u3|u2|co~0_combout\)) # (\v4|m[11]~3_combout\))) # (\u1|u3|u2|m[10]~2_combout\ & 
-- (!\u1|u4|u1|u3|u2|co~1_combout\ & (!\u1|u4|u1|u3|u2|co~0_combout\ & \v4|m[11]~3_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u3|u2|m[10]~2_combout\ & \v4|m[11]~3_combout\) ) ) ) # ( \v4|m[10]~4_combout\ & ( 
-- !\u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u3|u2|m[10]~2_combout\) # (\v4|m[11]~3_combout\) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u3|u2|m[10]~2_combout\ & (((!\u1|u4|u1|u3|u2|co~1_combout\ & !\u1|u4|u1|u3|u2|co~0_combout\)) # 
-- (\v4|m[11]~3_combout\))) # (\u1|u3|u2|m[10]~2_combout\ & (!\u1|u4|u1|u3|u2|co~1_combout\ & (!\u1|u4|u1|u3|u2|co~0_combout\ & \v4|m[11]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101010101010101111111100000000101010101000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_m[10]~2_combout\,
	datab => \u1|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[9]~3_combout\,
	combout => \u1|u4|u1|u3|u4|co~combout\);

-- Location: LABCELL_X7_Y9_N24
\u1|u3|u2|m[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[12]~0_combout\ = ( \v4|m[12]~2_combout\ & ( \u1|u3|u1|u4|u4|co~0_combout\ & ( (\u1|u2|u2|m[11]~0_combout\ & ((!\u1|u2|u2|m[10]~1_combout\ & ((\v4|m[11]~3_combout\) # (\u1|u3|u1|u3|u3|co~combout\))) # (\u1|u2|u2|m[10]~1_combout\ & 
-- (\u1|u3|u1|u3|u3|co~combout\ & \v4|m[11]~3_combout\)))) ) ) ) # ( !\v4|m[12]~2_combout\ & ( \u1|u3|u1|u4|u4|co~0_combout\ & ( (\u1|u2|u2|m[11]~0_combout\ & ((!\u1|u2|u2|m[10]~1_combout\ & (!\u1|u3|u1|u3|u3|co~combout\ & !\v4|m[11]~3_combout\)) # 
-- (\u1|u2|u2|m[10]~1_combout\ & ((!\u1|u3|u1|u3|u3|co~combout\) # (!\v4|m[11]~3_combout\))))) ) ) ) # ( \v4|m[12]~2_combout\ & ( !\u1|u3|u1|u4|u4|co~0_combout\ & ( \u1|u2|u2|m[11]~0_combout\ ) ) ) # ( !\v4|m[12]~2_combout\ & ( !\u1|u3|u1|u4|u4|co~0_combout\ 
-- & ( \u1|u2|u2|m[11]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110001000100000000001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_m[10]~1_combout\,
	datab => \u1|u2|u2|ALT_INV_m[11]~0_combout\,
	datac => \u1|u3|u1|u3|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \v4|ALT_INV_m[12]~2_combout\,
	dataf => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u1|u3|u2|m[12]~0_combout\);

-- Location: LABCELL_X7_Y9_N36
\u1|u4|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u4|u4|co~1_combout\ = ( \u1|u4|u1|u3|u4|co~combout\ & ( \u1|u3|u2|m[12]~0_combout\ & ( (\u1|u4|u1|u4|u4|co~0_combout\ & ((!\v4|m[13]~1_combout\) # ((\u1|u3|u2|m[11]~1_combout\ & !\v4|m[12]~2_combout\)))) ) ) ) # ( !\u1|u4|u1|u3|u4|co~combout\ & 
-- ( \u1|u3|u2|m[12]~0_combout\ & ( (\u1|u4|u1|u4|u4|co~0_combout\ & ((!\v4|m[13]~1_combout\) # ((!\v4|m[12]~2_combout\) # (\u1|u3|u2|m[11]~1_combout\)))) ) ) ) # ( \u1|u4|u1|u3|u4|co~combout\ & ( !\u1|u3|u2|m[12]~0_combout\ & ( 
-- (\u1|u4|u1|u4|u4|co~0_combout\ & (!\v4|m[13]~1_combout\ & (\u1|u3|u2|m[11]~1_combout\ & !\v4|m[12]~2_combout\))) ) ) ) # ( !\u1|u4|u1|u3|u4|co~combout\ & ( !\u1|u3|u2|m[12]~0_combout\ & ( (\u1|u4|u1|u4|u4|co~0_combout\ & (!\v4|m[13]~1_combout\ & 
-- ((!\v4|m[12]~2_combout\) # (\u1|u3|u2|m[11]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100000001000000000001010101010001010100010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u1|u3|u2|ALT_INV_m[11]~1_combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	datae => \u1|u4|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u1|u3|u2|ALT_INV_m[12]~0_combout\,
	combout => \u1|u4|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X12_Y8_N42
\u1|u4|u2|m[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[10]~10_combout\ = ( \u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[10]~4_combout\ $ (((!\u1|u4|u1|u3|u2|co~1_combout\ & !\u1|u4|u1|u3|u2|co~0_combout\)))) ) ) # ( !\u1|u3|u2|m[9]~3_combout\ & ( 
-- (\u1|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[10]~4_combout\ $ (((\u1|u4|u1|u3|u2|co~0_combout\) # (\u1|u4|u1|u3|u2|co~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000101000010010000010111110110111110101111011011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[9]~3_combout\,
	combout => \u1|u4|u2|m[10]~10_combout\);

-- Location: LABCELL_X12_Y8_N27
\u1|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u3|co~combout\ = ( \u1|u3|u2|m[9]~3_combout\ & ( (!\u1|u4|u1|u3|u2|co~0_combout\ & (!\u1|u4|u1|u3|u2|co~1_combout\ & \v4|m[10]~4_combout\)) ) ) # ( !\u1|u3|u2|m[9]~3_combout\ & ( ((!\u1|u4|u1|u3|u2|co~0_combout\ & 
-- !\u1|u4|u1|u3|u2|co~1_combout\)) # (\v4|m[10]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111111101000001111111100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u1|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[9]~3_combout\,
	combout => \u1|u4|u1|u3|u3|co~combout\);

-- Location: LABCELL_X12_Y8_N24
\u1|u4|u2|m[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[11]~2_combout\ = ( \u1|u3|u2|m[10]~2_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[11]~3_combout\ $ (\u1|u4|u1|u3|u3|co~combout\)) ) ) # ( !\u1|u3|u2|m[10]~2_combout\ & ( (\u1|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[11]~3_combout\ $ 
-- (!\u1|u4|u1|u3|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[11]~3_combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u2|ALT_INV_m[10]~2_combout\,
	combout => \u1|u4|u2|m[11]~2_combout\);

-- Location: MLABCELL_X4_Y7_N33
\u1|u4|u2|m[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[12]~1_combout\ = ( \u1|u3|u2|m[11]~1_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[12]~2_combout\ $ (\u1|u4|u1|u3|u4|co~combout\)) ) ) # ( !\u1|u3|u2|m[11]~1_combout\ & ( (\u1|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ 
-- (!\u1|u4|u1|u3|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111111101001011111111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datac => \u1|u4|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[11]~1_combout\,
	combout => \u1|u4|u2|m[12]~1_combout\);

-- Location: LABCELL_X7_Y8_N21
\u1|u4|u1|u2|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u4|co~combout\ = ( \u1|u4|u1|u2|u3|co~combout\ & ( \u1|u3|u2|m[6]~4_combout\ & ( !\v4|m[7]~6_combout\ ) ) ) # ( !\u1|u4|u1|u2|u3|co~combout\ & ( \u1|u3|u2|m[6]~4_combout\ ) ) # ( !\u1|u4|u1|u2|u3|co~combout\ & ( !\u1|u3|u2|m[6]~4_combout\ & ( 
-- !\v4|m[7]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000011111111111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datae => \u1|u4|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u2|ALT_INV_m[6]~4_combout\,
	combout => \u1|u4|u1|u2|u4|co~combout\);

-- Location: LABCELL_X12_Y8_N3
\u2|u1|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u2|co~0_combout\ = ( !\v4|m[9]~5_combout\ & ( !\u1|u3|u2|m[7]~9_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[8]~13_combout\ $ (!\u1|u4|u1|u2|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100110110011000110011011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u1|u3|u2|ALT_INV_m[7]~9_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u1|u4|u1|u2|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u2|u1|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X10_Y8_N21
\u1|u4|u2|m[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[5]~5_combout\ = ( \u1|u3|u2|m[4]~6_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[5]~8_combout\ $ (((!\u1|u4|u1|u2|u1|co~1_combout\ & !\u1|u4|u1|u2|u1|co~0_combout\)))) ) ) # ( !\u1|u3|u2|m[4]~6_combout\ & ( 
-- (\u1|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[5]~8_combout\ $ (((\u1|u4|u1|u2|u1|co~0_combout\) # (\u1|u4|u1|u2|u1|co~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010110111111111010101011111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u1|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[4]~6_combout\,
	combout => \u1|u4|u2|m[5]~5_combout\);

-- Location: LABCELL_X10_Y8_N54
\u1|u4|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u1|u4|s~combout\ = ( \u1|u4|u1|u1|u2|co~combout\ & ( !\u1|u3|u2|m[2]~7_combout\ $ (!\v4|m[3]~12_combout\ $ (((\u1|u3|u2|m[1]~8_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u1|u4|u1|u1|u2|co~combout\ & ( !\u1|u3|u2|m[2]~7_combout\ $ 
-- (!\v4|m[3]~12_combout\ $ (((!\v4|m[2]~10_combout\) # (\u1|u3|u2|m[1]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110101001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_m[1]~8_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u1|u4|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|u1|u4|s~combout\);

-- Location: LABCELL_X5_Y8_N18
\u2|u1|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\ & ((\u1|u3|u2|m[2]~7_combout\))) # (\u1|u4|u1|u4|u4|co~1_combout\ & (!\u1|u4|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u1|u4|ALT_INV_s~combout\,
	datab => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u1|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X10_Y8_N57
\u1|u4|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u1|u4|co~combout\ = ( \u1|u4|u1|u1|u2|co~combout\ & ( (!\v4|m[3]~12_combout\ & (((\u1|u3|u2|m[1]~8_combout\ & !\v4|m[2]~10_combout\)) # (\u1|u3|u2|m[2]~7_combout\))) # (\v4|m[3]~12_combout\ & (\u1|u3|u2|m[1]~8_combout\ & (!\v4|m[2]~10_combout\ & 
-- \u1|u3|u2|m[2]~7_combout\))) ) ) # ( !\u1|u4|u1|u1|u2|co~combout\ & ( (!\v4|m[3]~12_combout\ & (((!\v4|m[2]~10_combout\) # (\u1|u3|u2|m[2]~7_combout\)) # (\u1|u3|u2|m[1]~8_combout\))) # (\v4|m[3]~12_combout\ & (\u1|u3|u2|m[2]~7_combout\ & 
-- ((!\v4|m[2]~10_combout\) # (\u1|u3|u2|m[1]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111101110100001111110101000000111101000100000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_m[1]~8_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	dataf => \u1|u4|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|u1|u4|co~combout\);

-- Location: LABCELL_X10_Y8_N6
\u1|u3|u2|m[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[3]~10_combout\ = ( \u1|u3|u1|u4|u1|co~combout\ & ( \u1|u2|u2|m[2]~5_combout\ ) ) # ( !\u1|u3|u1|u4|u1|co~combout\ & ( (!\u1|u3|u1|u4|u4|co~0_combout\ & (\u1|u2|u2|m[2]~5_combout\)) # (\u1|u3|u1|u4|u4|co~0_combout\ & 
-- ((!\u1|u3|u1|u1|u4|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u2|u2|ALT_INV_m[2]~5_combout\,
	datac => \u1|u3|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[3]~10_combout\);

-- Location: LABCELL_X5_Y8_N12
\u1|u4|u2|m[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[4]~6_combout\ = ( \v4|m[4]~9_combout\ & ( !\u1|u3|u2|m[3]~10_combout\ $ (((!\u1|u4|u1|u1|u4|co~combout\) # (!\u1|u4|u1|u4|u4|co~1_combout\))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u1|u3|u2|m[3]~10_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # 
-- (\u1|u4|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u1|u1|u4|ALT_INV_co~combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u3|u2|ALT_INV_m[3]~10_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u1|u4|u2|m[4]~6_combout\);

-- Location: LABCELL_X5_Y8_N21
\u2|u1|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\ & ((!\u1|u3|u2|m[2]~7_combout\))) # (\u1|u4|u1|u4|u4|co~1_combout\ & (\u1|u4|u1|u1|u4|s~combout\)) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\ & 
-- ((\u1|u3|u2|m[2]~7_combout\))) # (\u1|u4|u1|u4|u4|co~1_combout\ & (!\u1|u4|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u1|u4|ALT_INV_s~combout\,
	datab => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u1|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X12_Y4_N36
\v2|m[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[11]~3_combout\ = ( \a[11]~input_o\ & ( (!\a[15]~input_o\) # (\o~1_combout\) ) ) # ( !\a[11]~input_o\ & ( (\a[15]~input_o\ & !\o~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_o~1_combout\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \v2|m[11]~3_combout\);

-- Location: LABCELL_X5_Y8_N57
\u2|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u1|u2|co~combout\ = ( \v2|m[11]~3_combout\ & ( (\v4|m[1]~11_combout\ & (!\v2|m[12]~0_combout\ $ (((\u1|u4|u1|u4|u4|co~1_combout\ & \b[0]~input_o\))))) ) ) # ( !\v2|m[11]~3_combout\ & ( (!\v4|m[1]~11_combout\ & (\b[0]~input_o\ & 
-- (!\u1|u4|u1|u4|u4|co~1_combout\ $ (\v2|m[12]~0_combout\)))) # (\v4|m[1]~11_combout\ & (((!\v2|m[12]~0_combout\) # (\b[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010011111000011001001111100001100000010010000110000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v2|ALT_INV_m[12]~0_combout\,
	datac => \v4|ALT_INV_m[1]~11_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[11]~3_combout\,
	combout => \u2|u1|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X9_Y8_N39
\u1|u3|u2|m[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[0]~11_combout\ = ( \u1|u3|u1|u4|u1|co~combout\ & ( \v2|m[13]~2_combout\ ) ) # ( !\u1|u3|u1|u4|u1|co~combout\ & ( !\v2|m[13]~2_combout\ $ (((!\b[0]~input_o\) # (!\u1|u3|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[13]~2_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[0]~11_combout\);

-- Location: LABCELL_X5_Y8_N54
\u1|u4|u2|m[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[1]~8_combout\ = ( \v4|m[1]~11_combout\ & ( !\u1|u3|u2|m[0]~11_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # ((!\v2|m[12]~0_combout\ & \b[0]~input_o\)))) ) ) # ( !\v4|m[1]~11_combout\ & ( !\u1|u3|u2|m[0]~11_combout\ $ 
-- (((!\u1|u4|u1|u4|u4|co~1_combout\) # ((!\b[0]~input_o\) # (\v2|m[12]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111011000001001111101101010001101011100101000110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v2|ALT_INV_m[12]~0_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \u1|u3|u2|ALT_INV_m[0]~11_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u1|u4|u2|m[1]~8_combout\);

-- Location: LABCELL_X10_Y8_N18
\u1|u4|u2|m[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[2]~7_combout\ = ( \v4|m[2]~10_combout\ & ( !\u1|u3|u2|m[1]~8_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # (\u1|u4|u1|u1|u2|co~combout\))) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u1|u3|u2|m[1]~8_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # 
-- (!\u1|u4|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u2|ALT_INV_m[1]~8_combout\,
	dataf => \v4|ALT_INV_m[2]~10_combout\,
	combout => \u1|u4|u2|m[2]~7_combout\);

-- Location: LABCELL_X5_Y8_N30
\u2|u1|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u2|u1|co~1_combout\ = ( \v4|m[2]~10_combout\ & ( \v4|m[3]~12_combout\ & ( (!\u2|u1|u1|u2|u1|s~0_combout\ & (!\u2|u1|u1|u1|u2|co~combout\ & (\u1|u4|u2|m[1]~8_combout\ & \u1|u4|u2|m[2]~7_combout\))) ) ) ) # ( !\v4|m[2]~10_combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\u2|u1|u1|u2|u1|s~0_combout\ & (\u1|u4|u2|m[2]~7_combout\ & ((!\u2|u1|u1|u1|u2|co~combout\) # (\u1|u4|u2|m[1]~8_combout\)))) ) ) ) # ( \v4|m[2]~10_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u2|u1|u1|u2|u1|s~0_combout\ & 
-- (((!\u2|u1|u1|u1|u2|co~combout\ & \u1|u4|u2|m[1]~8_combout\)) # (\u1|u4|u2|m[2]~7_combout\))) ) ) ) # ( !\v4|m[2]~10_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u2|u1|u1|u2|u1|s~0_combout\ & ((!\u2|u1|u1|u1|u2|co~combout\) # ((\u1|u4|u2|m[2]~7_combout\) # 
-- (\u1|u4|u2|m[1]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010101010000010001010101000000000100010100000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u2|u1|ALT_INV_s~0_combout\,
	datab => \u2|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u4|u2|ALT_INV_m[1]~8_combout\,
	datad => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datae => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u1|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X5_Y8_N36
\u2|u1|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u2|u3|co~combout\ = ( \v4|m[5]~8_combout\ & ( \u2|u1|u1|u2|u1|co~1_combout\ & ( (!\u1|u4|u2|m[5]~5_combout\ & ((!\u1|u4|u2|m[4]~6_combout\) # (\v4|m[6]~7_combout\))) # (\u1|u4|u2|m[5]~5_combout\ & (\v4|m[6]~7_combout\ & 
-- !\u1|u4|u2|m[4]~6_combout\)) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u2|u1|u1|u2|u1|co~1_combout\ & ( (!\u1|u4|u2|m[5]~5_combout\ & \v4|m[6]~7_combout\) ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u2|u1|u1|u2|u1|co~1_combout\ & ( (!\u1|u4|u2|m[5]~5_combout\ & 
-- (((!\u2|u1|u1|u2|u1|co~0_combout\) # (!\u1|u4|u2|m[4]~6_combout\)) # (\v4|m[6]~7_combout\))) # (\u1|u4|u2|m[5]~5_combout\ & (\v4|m[6]~7_combout\ & ((!\u2|u1|u1|u2|u1|co~0_combout\) # (!\u1|u4|u2|m[4]~6_combout\)))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( 
-- !\u2|u1|u1|u2|u1|co~1_combout\ & ( (!\u1|u4|u2|m[5]~5_combout\ & (((!\u2|u1|u1|u2|u1|co~0_combout\ & !\u1|u4|u2|m[4]~6_combout\)) # (\v4|m[6]~7_combout\))) # (\u1|u4|u2|m[5]~5_combout\ & (\v4|m[6]~7_combout\ & (!\u2|u1|u1|u2|u1|co~0_combout\ & 
-- !\u1|u4|u2|m[4]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000100010101110111011001000100010001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[5]~5_combout\,
	datab => \v4|ALT_INV_m[6]~7_combout\,
	datac => \u2|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u1|u4|u2|ALT_INV_m[4]~6_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u2|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u2|u1|u1|u2|u3|co~combout\);

-- Location: LABCELL_X10_Y8_N42
\u1|u4|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u2|u2|co~combout\ = ( \u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u3|u2|m[4]~6_combout\ & \v4|m[5]~8_combout\) ) ) # ( !\u1|u4|u1|u2|u1|co~1_combout\ & ( (!\u1|u4|u1|u2|u1|co~0_combout\ & ((!\u1|u3|u2|m[4]~6_combout\) # (\v4|m[5]~8_combout\))) # 
-- (\u1|u4|u1|u2|u1|co~0_combout\ & (!\u1|u3|u2|m[4]~6_combout\ & \v4|m[5]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u1|u3|u2|ALT_INV_m[4]~6_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u1|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u1|u4|u1|u2|u2|co~combout\);

-- Location: LABCELL_X10_Y8_N45
\u1|u4|u2|m[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[6]~4_combout\ = ( \v4|m[6]~7_combout\ & ( !\u1|u3|u2|m[5]~5_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # (\u1|u4|u1|u2|u2|co~combout\))) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u1|u3|u2|m[5]~5_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # 
-- (!\u1|u4|u1|u2|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u3|u2|ALT_INV_m[5]~5_combout\,
	datad => \u1|u4|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u1|u4|u2|m[6]~4_combout\);

-- Location: MLABCELL_X9_Y7_N3
\u1|u4|u2|m[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[7]~3_combout\ = ( \u1|u3|u2|m[6]~4_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[7]~6_combout\ $ (\u1|u4|u1|u2|u3|co~combout\)) ) ) # ( !\u1|u3|u2|m[6]~4_combout\ & ( (\u1|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[7]~6_combout\ $ 
-- (!\u1|u4|u1|u2|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u4|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u2|ALT_INV_m[6]~4_combout\,
	combout => \u1|u4|u2|m[7]~3_combout\);

-- Location: LABCELL_X12_Y8_N0
\u2|u1|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u2|s~0_combout\ = ( \v4|m[8]~13_combout\ & ( !\u1|u3|u2|m[7]~9_combout\ $ (!\v4|m[9]~5_combout\ $ (((\u1|u4|u1|u4|u4|co~1_combout\ & \u1|u4|u1|u2|u4|co~combout\)))) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u1|u3|u2|m[7]~9_combout\ $ 
-- (!\v4|m[9]~5_combout\ $ (((\u1|u4|u1|u4|u4|co~1_combout\ & !\u1|u4|u1|u2|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100011010010011110000111100011010010011110001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u1|u3|u2|ALT_INV_m[7]~9_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u1|u4|u1|u2|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u2|u1|u1|u3|u2|s~0_combout\);

-- Location: MLABCELL_X9_Y7_N36
\u2|u1|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u2|co~1_combout\ = ( \u1|u4|u2|m[7]~3_combout\ & ( !\u2|u1|u1|u3|u2|s~0_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\v4|m[7]~6_combout\ & ((!\u2|u1|u1|u2|u3|co~combout\) # (\u1|u4|u2|m[6]~4_combout\))) # (\v4|m[7]~6_combout\ & 
-- (!\u2|u1|u1|u2|u3|co~combout\ & \u1|u4|u2|m[6]~4_combout\))) ) ) ) # ( !\u1|u4|u2|m[7]~3_combout\ & ( !\u2|u1|u1|u3|u2|s~0_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u2|u1|u1|u2|u3|co~combout\) # (\u1|u4|u2|m[6]~4_combout\))) # 
-- (\v4|m[7]~6_combout\ & (!\u2|u1|u1|u2|u3|co~combout\ & \u1|u4|u2|m[6]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011001000111011001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u4|u2|ALT_INV_m[6]~4_combout\,
	datae => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u2|u1|u1|u3|u2|ALT_INV_s~0_combout\,
	combout => \u2|u1|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X12_Y8_N12
\u1|u3|u2|m[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|m[8]~12_combout\ = ( \u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ $ ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (\v4|m[8]~13_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) ) # ( !\u1|u3|u1|u2|u4|co~combout\ & ( !\u1|u2|u2|m[7]~3_combout\ 
-- $ ((((!\u1|u3|u1|u4|u4|co~0_combout\) # (!\v4|m[8]~13_combout\)) # (\u1|u3|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101000000101111110100100000110111110010000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u1|u2|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u1|u3|u1|u2|u4|ALT_INV_co~combout\,
	combout => \u1|u3|u2|m[8]~12_combout\);

-- Location: LABCELL_X12_Y8_N36
\u1|u4|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u3|u1|co~combout\ = ( \u1|u3|u2|m[7]~9_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\u1|u3|u2|m[6]~4_combout\ & (!\u1|u4|u1|u2|u3|co~combout\ & !\v4|m[7]~6_combout\)) # (\u1|u3|u2|m[6]~4_combout\ & ((!\u1|u4|u1|u2|u3|co~combout\) # 
-- (!\v4|m[7]~6_combout\)))) ) ) # ( !\u1|u3|u2|m[7]~9_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\u1|u3|u2|m[6]~4_combout\ & (!\u1|u4|u1|u2|u3|co~combout\ & !\v4|m[7]~6_combout\)) # (\u1|u3|u2|m[6]~4_combout\ & ((!\u1|u4|u1|u2|u3|co~combout\) # 
-- (!\v4|m[7]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100000101000100010000011111011101110101111101110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u1|u3|u2|ALT_INV_m[6]~4_combout\,
	datac => \u1|u4|u1|u2|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[7]~9_combout\,
	combout => \u1|u4|u1|u3|u1|co~combout\);

-- Location: LABCELL_X12_Y8_N9
\u1|u4|u2|m[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[9]~9_combout\ = ( \v4|m[9]~5_combout\ & ( !\u1|u3|u2|m[8]~12_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # (!\u1|u4|u1|u3|u1|co~combout\))) ) ) # ( !\v4|m[9]~5_combout\ & ( !\u1|u3|u2|m[8]~12_combout\ $ (((!\u1|u4|u1|u4|u4|co~1_combout\) # 
-- (\u1|u4|u1|u3|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u3|u2|ALT_INV_m[8]~12_combout\,
	datad => \u1|u4|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u1|u4|u2|m[9]~9_combout\);

-- Location: LABCELL_X12_Y8_N18
\u2|u1|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \u1|u4|u2|m[10]~10_combout\ & ( (\v4|m[11]~3_combout\ & ((!\u1|u4|u2|m[9]~9_combout\) # ((!\u2|u1|u1|u3|u2|co~0_combout\ & !\u2|u1|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( 
-- \u1|u4|u2|m[10]~10_combout\ & ( (!\u2|u1|u1|u3|u2|co~0_combout\ & (\v4|m[11]~3_combout\ & (!\u2|u1|u1|u3|u2|co~1_combout\ & !\u1|u4|u2|m[9]~9_combout\))) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\u1|u4|u2|m[10]~10_combout\ & ( ((!\u1|u4|u2|m[9]~9_combout\) # 
-- ((!\u2|u1|u1|u3|u2|co~0_combout\ & !\u2|u1|u1|u3|u2|co~1_combout\))) # (\v4|m[11]~3_combout\) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u1|u4|u2|m[10]~10_combout\ & ( ((!\u2|u1|u1|u3|u2|co~0_combout\ & (!\u2|u1|u1|u3|u2|co~1_combout\ & 
-- !\u1|u4|u2|m[9]~9_combout\))) # (\v4|m[11]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100110011111111111011001100100000000000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[11]~3_combout\,
	datac => \u2|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u1|u4|u2|ALT_INV_m[9]~9_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[10]~10_combout\,
	combout => \u2|u1|u1|u3|u4|co~combout\);

-- Location: LABCELL_X7_Y9_N12
\u1|u4|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u4|u1|co~combout\ = ( \v4|m[12]~2_combout\ & ( (!\u1|u4|u1|u3|u4|co~combout\ & \u1|u3|u2|m[11]~1_combout\) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\u1|u4|u1|u3|u4|co~combout\) # (\u1|u3|u2|m[11]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000010100000101010101111101011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u1|u3|u2|ALT_INV_m[11]~1_combout\,
	datae => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u1|u4|u1|u4|u1|co~combout\);

-- Location: MLABCELL_X4_Y7_N36
\u2|u1|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u4|co~0_combout\ = ( \u1|u4|u1|u4|u1|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u1|u3|u2|m[12]~0_combout\ & ((!\v4|m[14]~0_combout\))) # (\u1|u3|u2|m[12]~0_combout\ & ((\v4|m[14]~0_combout\) # (\v4|m[13]~1_combout\))))) ) ) # ( 
-- !\u1|u4|u1|u4|u1|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u1|u3|u2|m[12]~0_combout\ & ((!\v4|m[14]~0_combout\))) # (\u1|u3|u2|m[12]~0_combout\ & ((!\v4|m[13]~1_combout\) # (\v4|m[14]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000100010101010000010001010001010001000101000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \u1|u3|u2|ALT_INV_m[12]~0_combout\,
	datac => \v4|ALT_INV_m[13]~1_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u1|u4|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u2|u1|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X4_Y7_N42
\u2|u1|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u4|co~1_combout\ = ( \u2|u1|u1|u4|u4|co~0_combout\ & ( \v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((\u1|u4|u2|m[11]~2_combout\ & !\u2|u1|u1|u3|u4|co~combout\)) # (\u1|u4|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & 
-- (\u1|u4|u2|m[11]~2_combout\ & (\u1|u4|u2|m[12]~1_combout\ & !\u2|u1|u1|u3|u4|co~combout\))) ) ) ) # ( \u2|u1|u1|u4|u4|co~0_combout\ & ( !\v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((!\u2|u1|u1|u3|u4|co~combout\) # (\u1|u4|u2|m[12]~1_combout\)) # 
-- (\u1|u4|u2|m[11]~2_combout\))) # (\v4|m[13]~1_combout\ & (\u1|u4|u2|m[12]~1_combout\ & ((!\u2|u1|u1|u3|u4|co~combout\) # (\u1|u4|u2|m[11]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011110010101100000000000000000010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u1|u4|u2|ALT_INV_m[11]~2_combout\,
	datac => \u1|u4|u2|ALT_INV_m[12]~1_combout\,
	datad => \u2|u1|u1|u3|u4|ALT_INV_co~combout\,
	datae => \u2|u1|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u2|u1|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X4_Y7_N39
\u2|u1|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u4|co~2_combout\ = ( \v4|m[13]~1_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (\u1|u3|u2|m[12]~0_combout\ & (!\u1|u4|u1|u4|u1|co~combout\ & !\v4|m[14]~0_combout\))) ) ) # ( !\v4|m[13]~1_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & 
-- (\u1|u3|u2|m[12]~0_combout\ & (\u1|u4|u1|u4|u1|co~combout\ & !\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \u1|u3|u2|ALT_INV_m[12]~0_combout\,
	datac => \u1|u4|u1|u4|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u1|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X12_Y8_N45
\u2|u1|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u3|co~combout\ = ( \u2|u1|u1|u3|u2|co~1_combout\ & ( (\v4|m[10]~4_combout\ & !\u1|u4|u2|m[9]~9_combout\) ) ) # ( !\u2|u1|u1|u3|u2|co~1_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u1|u4|u2|m[9]~9_combout\ & !\u2|u1|u1|u3|u2|co~0_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u1|u4|u2|m[9]~9_combout\) # (!\u2|u1|u1|u3|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u1|u4|u2|ALT_INV_m[9]~9_combout\,
	datad => \u2|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	dataf => \u2|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	combout => \u2|u1|u1|u3|u3|co~combout\);

-- Location: MLABCELL_X9_Y7_N42
\u2|u1|u2|m[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[11]~7_combout\ = ( \u2|u1|u1|u4|u4|co~2_combout\ & ( \u2|u1|u1|u3|u3|co~combout\ & ( !\v4|m[11]~3_combout\ $ (\u1|u4|u2|m[10]~10_combout\) ) ) ) # ( !\u2|u1|u1|u4|u4|co~2_combout\ & ( \u2|u1|u1|u3|u3|co~combout\ & ( 
-- !\u1|u4|u2|m[10]~10_combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\) # (\v4|m[11]~3_combout\))) ) ) ) # ( \u2|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u1|u1|u3|u3|co~combout\ & ( !\v4|m[11]~3_combout\ $ (!\u1|u4|u2|m[10]~10_combout\) ) ) ) # ( 
-- !\u2|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u1|u1|u3|u3|co~combout\ & ( !\u1|u4|u2|m[10]~10_combout\ $ (((!\v4|m[11]~3_combout\) # (!\u2|u1|u1|u4|u4|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110011001100110011000111001001110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~3_combout\,
	datab => \u1|u4|u2|ALT_INV_m[10]~10_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u1|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u2|u1|u2|m[11]~7_combout\);

-- Location: LABCELL_X5_Y8_N15
\u2|u1|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u2|u2|co~combout\ = ( \u1|u4|u2|m[4]~6_combout\ & ( (!\u2|u1|u1|u2|u1|co~0_combout\ & (!\u2|u1|u1|u2|u1|co~1_combout\ & \v4|m[5]~8_combout\)) ) ) # ( !\u1|u4|u2|m[4]~6_combout\ & ( ((!\u2|u1|u1|u2|u1|co~0_combout\ & 
-- !\u2|u1|u1|u2|u1|co~1_combout\)) # (\v4|m[5]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111111101000001111111100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[4]~6_combout\,
	combout => \u2|u1|u1|u2|u2|co~combout\);

-- Location: MLABCELL_X9_Y7_N33
\u2|u1|u2|m[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[6]~4_combout\ = ( \u1|u4|u2|m[5]~5_combout\ & ( (!\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u4|u4|co~2_combout\) # (!\u2|u1|u1|u2|u2|co~combout\ $ (\v4|m[6]~7_combout\)))) # (\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u2|u2|co~combout\ $ 
-- (\v4|m[6]~7_combout\)))) ) ) # ( !\u1|u4|u2|m[5]~5_combout\ & ( (!\u2|u1|u1|u4|u4|co~1_combout\ & (\u2|u1|u1|u4|u4|co~2_combout\ & (!\u2|u1|u1|u2|u2|co~combout\ $ (!\v4|m[6]~7_combout\)))) # (\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u2|u2|co~combout\ 
-- $ (!\v4|m[6]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u1|u1|u2|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[5]~5_combout\,
	combout => \u2|u1|u2|m[6]~4_combout\);

-- Location: MLABCELL_X9_Y7_N21
\u2|u1|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u1|s~combout\ = ( \u2|u1|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ (!\u1|u4|u2|m[7]~3_combout\ $ (((!\v4|m[7]~6_combout\ & \u1|u4|u2|m[6]~4_combout\)))) ) ) # ( !\u2|u1|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ 
-- (!\u1|u4|u2|m[7]~3_combout\ $ (((!\v4|m[7]~6_combout\) # (\u1|u4|u2|m[6]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001001011101101000100101100101101110100100010110111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u1|u4|u2|ALT_INV_m[6]~4_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u2|u1|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u1|u1|u3|u1|s~combout\);

-- Location: MLABCELL_X9_Y7_N24
\u2|u2|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u2|s~0_combout\ = ( \u2|u1|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (\u2|u1|u1|u3|u1|s~combout\) ) ) # ( !\u2|u1|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (((!\u2|u1|u1|u4|u4|co~2_combout\ & (!\u1|u4|u2|m[7]~3_combout\)) # 
-- (\u2|u1|u1|u4|u4|co~2_combout\ & ((\u2|u1|u1|u3|u1|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001011001011010100101100110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	datad => \u2|u1|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u2|u2|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X5_Y7_N0
\u2|u1|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u1|u4|u2|m[2]~7_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u2|u1|u1|u1|u2|co~combout\) # (\u1|u4|u2|m[1]~8_combout\))) # (\v4|m[2]~10_combout\ & (!\u2|u1|u1|u1|u2|co~combout\ & 
-- \u1|u4|u2|m[1]~8_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u2|u1|u1|u1|u2|co~combout\) # (\u1|u4|u2|m[1]~8_combout\))) # (\v4|m[2]~10_combout\ & (!\u2|u1|u1|u1|u2|co~combout\ & \u1|u4|u2|m[1]~8_combout\))) # 
-- (\u1|u4|u2|m[2]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111100011111110111100001000000011100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datad => \u1|u4|u2|ALT_INV_m[1]~8_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u1|u1|u1|u4|co~combout\);

-- Location: LABCELL_X5_Y8_N0
\u2|u1|u2|m[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[4]~14_combout\ = ( !\u1|u4|u1|u4|u4|co~1_combout\ & ( !\u1|u3|u2|m[2]~7_combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u4|u4|co~2_combout\) # (!\u2|u1|u1|u1|u4|co~combout\ $ (!\v4|m[4]~9_combout\)))) # 
-- (\u2|u1|u1|u4|u4|co~1_combout\ & (!\u2|u1|u1|u1|u4|co~combout\ $ (((!\v4|m[4]~9_combout\))))))) ) ) # ( \u1|u4|u1|u4|u4|co~1_combout\ & ( !\u1|u4|u1|u1|u4|s~combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\ & (\u2|u1|u1|u4|u4|co~2_combout\ & 
-- (!\u2|u1|u1|u1|u4|co~combout\ $ (\v4|m[4]~9_combout\)))) # (\u2|u1|u1|u4|u4|co~1_combout\ & (!\u2|u1|u1|u1|u4|co~combout\ $ (((\v4|m[4]~9_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010110110100101110100100101101000011110010110101110000110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u1|u4|ALT_INV_co~combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	datag => \u1|u3|u2|ALT_INV_m[2]~7_combout\,
	combout => \u2|u1|u2|m[4]~14_combout\);

-- Location: LABCELL_X5_Y7_N39
\u2|u1|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u1|u4|u2|m[2]~7_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u2|u1|u1|u1|u2|co~combout\) # (\u1|u4|u2|m[1]~8_combout\))) # (\v4|m[2]~10_combout\ & (!\u2|u1|u1|u1|u2|co~combout\ & 
-- \u1|u4|u2|m[1]~8_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u1|u4|u2|m[2]~7_combout\ $ (((!\v4|m[2]~10_combout\ & (\u2|u1|u1|u1|u2|co~combout\ & !\u1|u4|u2|m[1]~8_combout\)) # (\v4|m[2]~10_combout\ & ((!\u1|u4|u2|m[1]~8_combout\) # 
-- (\u2|u1|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110101001100101011010100101101010010101100110101001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u2|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u2|ALT_INV_m[1]~8_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u1|u1|u1|u4|s~combout\);

-- Location: LABCELL_X5_Y7_N42
\u2|u2|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u2|u1|u1|u4|u4|co~2_combout\ & ((!\u2|u1|u1|u4|u4|co~1_combout\ & (\u1|u4|u2|m[2]~7_combout\)) # (\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u1|u4|s~combout\))))) # 
-- (\u2|u1|u1|u4|u4|co~2_combout\ & (((!\u2|u1|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110011001100010111001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datab => \u2|u1|u1|u1|u4|ALT_INV_s~combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u2|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X5_Y7_N45
\u2|u2|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u2|u1|u1|u4|u4|co~2_combout\ & ((!\u2|u1|u1|u4|u4|co~1_combout\ & (!\u1|u4|u2|m[2]~7_combout\)) # (\u2|u1|u1|u4|u4|co~1_combout\ & ((\u2|u1|u1|u1|u4|s~combout\))))) # 
-- (\u2|u1|u1|u4|u4|co~2_combout\ & (((\u2|u1|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u2|u1|u1|u4|u4|co~2_combout\ & ((!\u2|u1|u1|u4|u4|co~1_combout\ & (\u1|u4|u2|m[2]~7_combout\)) # (\u2|u1|u1|u4|u4|co~1_combout\ & 
-- ((!\u2|u1|u1|u1|u4|s~combout\))))) # (\u2|u1|u1|u4|u4|co~2_combout\ & (((!\u2|u1|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110011001100010111001100110010100011001100111010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datab => \u2|u1|u1|u1|u4|ALT_INV_s~combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u2|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X5_Y7_N3
\u2|u1|u2|m[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[2]~6_combout\ = ( \u2|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[2]~10_combout\ $ (!\u2|u1|u1|u1|u2|co~combout\ $ (\u1|u4|u2|m[1]~8_combout\)) ) ) # ( !\u2|u1|u1|u4|u4|co~2_combout\ & ( !\u1|u4|u2|m[1]~8_combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\) 
-- # (!\v4|m[2]~10_combout\ $ (\u2|u1|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111001000001101111100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u1|u4|u2|ALT_INV_m[1]~8_combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u1|u2|m[2]~6_combout\);

-- Location: LABCELL_X5_Y8_N6
\u1|u4|u2|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[0]~0_combout\ = !\v2|m[12]~0_combout\ $ (((!\b[0]~input_o\) # (!\u1|u4|u1|u4|u4|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v2|ALT_INV_m[12]~0_combout\,
	combout => \u1|u4|u2|m[0]~0_combout\);

-- Location: LABCELL_X5_Y8_N42
\u2|u1|u2|m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[1]~0_combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( !\u1|u4|u2|m[0]~0_combout\ $ (((!\v2|m[11]~3_combout\) # ((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u1|u4|u2|m[0]~0_combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\))) ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( !\u1|u4|u2|m[0]~0_combout\ $ ((((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)) # 
-- (\v2|m[11]~3_combout\))) ) ) ) # ( !\b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( \u1|u4|u2|m[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001010101101010100111111110000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[11]~3_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u1|u4|u2|ALT_INV_m[0]~0_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u2|u1|u2|m[1]~0_combout\);

-- Location: LABCELL_X12_Y4_N9
\o~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~4_combout\ = (\o~0_combout\ & (!\a[6]~input_o\ & !\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_o~0_combout\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_a[7]~input_o\,
	combout => \o~4_combout\);

-- Location: LABCELL_X12_Y4_N42
\v2|m[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[10]~4_combout\ = ( \a[9]~input_o\ & ( !\a[10]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[9]~input_o\ & ( !\a[10]~input_o\ $ (((!\a[15]~input_o\) # ((!\a[8]~input_o\ & \o~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111010010000011111101001000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_o~4_combout\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \v2|m[10]~4_combout\);

-- Location: LABCELL_X5_Y8_N48
\u2|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u1|u2|co~combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( (!\v2|m[10]~4_combout\) # (!\v2|m[11]~3_combout\ $ (((\u2|u1|u1|u4|u4|co~2_combout\) # (\u2|u1|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( 
-- !\v2|m[11]~3_combout\ ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[10]~4_combout\ & (!\v2|m[11]~3_combout\ $ (((\u2|u1|u1|u4|u4|co~2_combout\) # (\u2|u1|u1|u4|u4|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101010000000010101010101010101111111110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[11]~3_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v2|ALT_INV_m[10]~4_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u2|u2|u1|u1|u2|co~combout\);

-- Location: LABCELL_X5_Y7_N48
\u2|u2|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u2|u1|co~1_combout\ = ( \u2|u2|u1|u1|u2|co~combout\ & ( \v4|m[3]~12_combout\ & ( (!\v4|m[2]~10_combout\ & (!\u2|u2|u1|u2|u1|s~0_combout\ & (\u2|u1|u2|m[2]~6_combout\ & \u2|u1|u2|m[1]~0_combout\))) ) ) ) # ( !\u2|u2|u1|u1|u2|co~combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\u2|u2|u1|u2|u1|s~0_combout\ & (\u2|u1|u2|m[2]~6_combout\ & ((!\v4|m[2]~10_combout\) # (\u2|u1|u2|m[1]~0_combout\)))) ) ) ) # ( \u2|u2|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u2|u2|u1|u2|u1|s~0_combout\ & 
-- (((!\v4|m[2]~10_combout\ & \u2|u1|u2|m[1]~0_combout\)) # (\u2|u1|u2|m[2]~6_combout\))) ) ) ) # ( !\u2|u2|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u2|u2|u1|u2|u1|s~0_combout\ & ((!\v4|m[2]~10_combout\) # ((\u2|u1|u2|m[1]~0_combout\) # 
-- (\u2|u1|u2|m[2]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100000011001000110000001000000011000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u2|u1|u2|u1|ALT_INV_s~0_combout\,
	datac => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	datad => \u2|u1|u2|ALT_INV_m[1]~0_combout\,
	datae => \u2|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u2|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X5_Y8_N24
\u2|u1|u2|m[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[5]~5_combout\ = ( \v4|m[5]~8_combout\ & ( \u2|u1|u1|u4|u4|co~1_combout\ & ( !\u1|u4|u2|m[4]~6_combout\ $ (((!\u2|u1|u1|u2|u1|co~0_combout\ & !\u2|u1|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u2|u1|u1|u4|u4|co~1_combout\ & ( 
-- !\u1|u4|u2|m[4]~6_combout\ $ (((\u2|u1|u1|u2|u1|co~1_combout\) # (\u2|u1|u1|u2|u1|co~0_combout\))) ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u2|u1|u1|u4|u4|co~1_combout\ & ( !\u1|u4|u2|m[4]~6_combout\ $ (((!\u2|u1|u1|u4|u4|co~2_combout\) # 
-- ((!\u2|u1|u1|u2|u1|co~0_combout\ & !\u2|u1|u1|u2|u1|co~1_combout\)))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( !\u2|u1|u1|u4|u4|co~1_combout\ & ( !\u1|u4|u2|m[4]~6_combout\ $ ((((!\u2|u1|u1|u4|u4|co~2_combout\) # (\u2|u1|u1|u2|u1|co~1_combout\)) # 
-- (\u2|u1|u1|u2|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100110011001101100011110010011001001100110110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \u1|u4|u2|ALT_INV_m[4]~6_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u2|u1|u2|m[5]~5_combout\);

-- Location: LABCELL_X5_Y7_N54
\u2|u2|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u2|u3|co~combout\ = ( \u2|u1|u2|m[5]~5_combout\ & ( \v4|m[6]~7_combout\ & ( (!\u2|u1|u2|m[4]~14_combout\ & (((!\u2|u2|u1|u2|u1|co~0_combout\ & !\u2|u2|u1|u2|u1|co~1_combout\)) # (\v4|m[5]~8_combout\))) # (\u2|u1|u2|m[4]~14_combout\ & 
-- (!\u2|u2|u1|u2|u1|co~0_combout\ & (!\u2|u2|u1|u2|u1|co~1_combout\ & \v4|m[5]~8_combout\))) ) ) ) # ( !\u2|u1|u2|m[5]~5_combout\ & ( \v4|m[6]~7_combout\ ) ) # ( !\u2|u1|u2|m[5]~5_combout\ & ( !\v4|m[6]~7_combout\ & ( (!\u2|u1|u2|m[4]~14_combout\ & 
-- (((!\u2|u2|u1|u2|u1|co~0_combout\ & !\u2|u2|u1|u2|u1|co~1_combout\)) # (\v4|m[5]~8_combout\))) # (\u2|u1|u2|m[4]~14_combout\ & (!\u2|u2|u1|u2|u1|co~0_combout\ & (!\u2|u2|u1|u2|u1|co~1_combout\ & \v4|m[5]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101010000000000000000011111111111111111000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[4]~14_combout\,
	datab => \u2|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u2|u1|u2|ALT_INV_m[5]~5_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u2|u2|u1|u2|u3|co~combout\);

-- Location: MLABCELL_X9_Y7_N18
\u2|u1|u2|m[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[7]~3_combout\ = ( \u2|u1|u1|u2|u3|co~combout\ & ( !\u1|u4|u2|m[6]~4_combout\ $ ((((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)) # (\v4|m[7]~6_combout\))) ) ) # ( !\u2|u1|u1|u2|u3|co~combout\ & ( !\u1|u4|u2|m[6]~4_combout\ 
-- $ (((!\v4|m[7]~6_combout\) # ((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100110001101100110011000111001100110010011100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u1|u4|u2|ALT_INV_m[6]~4_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u1|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u1|u2|m[7]~3_combout\);

-- Location: MLABCELL_X9_Y7_N6
\u2|u2|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u2|co~1_combout\ = ( \u2|u2|u1|u2|u3|co~combout\ & ( \u2|u1|u2|m[7]~3_combout\ & ( (!\u2|u2|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((!\v4|m[7]~6_combout\ & \u2|u1|u2|m[6]~4_combout\)))) ) ) ) # ( !\u2|u2|u1|u2|u3|co~combout\ & ( 
-- \u2|u1|u2|m[7]~3_combout\ & ( (!\u2|u2|u1|u3|u2|s~0_combout\ & ((!\v4|m[7]~6_combout\) # ((!\v4|m[8]~13_combout\) # (\u2|u1|u2|m[6]~4_combout\)))) ) ) ) # ( \u2|u2|u1|u2|u3|co~combout\ & ( !\u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[7]~6_combout\ & 
-- (!\v4|m[8]~13_combout\ & (\u2|u1|u2|m[6]~4_combout\ & !\u2|u2|u1|u3|u2|s~0_combout\))) ) ) ) # ( !\u2|u2|u1|u2|u3|co~combout\ & ( !\u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u2|u2|u1|u3|u2|s~0_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (\u2|u1|u2|m[6]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000000010000000000011101111000000001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u1|u2|ALT_INV_m[6]~4_combout\,
	datad => \u2|u2|u1|u3|u2|ALT_INV_s~0_combout\,
	datae => \u2|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u2|u1|u3|u2|co~1_combout\);

-- Location: MLABCELL_X9_Y7_N27
\u2|u2|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u2|co~0_combout\ = ( \u2|u1|u1|u4|u4|co~1_combout\ & ( (!\v4|m[9]~5_combout\ & !\u2|u1|u1|u3|u1|s~combout\) ) ) # ( !\u2|u1|u1|u4|u4|co~1_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u2|u1|u1|u4|u4|co~2_combout\ & ((\u1|u4|u2|m[7]~3_combout\))) # 
-- (\u2|u1|u1|u4|u4|co~2_combout\ & (!\u2|u1|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u1|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u2|u2|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X12_Y8_N54
\u2|u1|u2|m[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[10]~1_combout\ = ( \u2|u1|u1|u3|u2|co~0_combout\ & ( \u2|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[10]~4_combout\ $ (!\u1|u4|u2|m[9]~9_combout\) ) ) ) # ( !\u2|u1|u1|u3|u2|co~0_combout\ & ( \u2|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[10]~4_combout\ $ 
-- (!\u1|u4|u2|m[9]~9_combout\ $ (!\u2|u1|u1|u3|u2|co~1_combout\)) ) ) ) # ( \u2|u1|u1|u3|u2|co~0_combout\ & ( !\u2|u1|u1|u4|u4|co~2_combout\ & ( !\u1|u4|u2|m[9]~9_combout\ $ (((!\v4|m[10]~4_combout\) # (!\u2|u1|u1|u4|u4|co~1_combout\))) ) ) ) # ( 
-- !\u2|u1|u1|u3|u2|co~0_combout\ & ( !\u2|u1|u1|u4|u4|co~2_combout\ & ( !\u1|u4|u2|m[9]~9_combout\ $ (((!\u2|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[10]~4_combout\ $ (!\u2|u1|u1|u3|u2|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110010110001100110110011010010110100101100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u1|u4|u2|ALT_INV_m[9]~9_combout\,
	datac => \u2|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u2|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u1|u2|m[10]~1_combout\);

-- Location: LABCELL_X12_Y8_N6
\u1|u4|u2|m[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|m[8]~11_combout\ = ( \u1|u3|u2|m[7]~9_combout\ & ( (!\u1|u4|u1|u4|u4|co~1_combout\) # (!\u1|u4|u1|u2|u4|co~combout\ $ (!\v4|m[8]~13_combout\)) ) ) # ( !\u1|u3|u2|m[7]~9_combout\ & ( (\u1|u4|u1|u4|u4|co~1_combout\ & (!\u1|u4|u1|u2|u4|co~combout\ 
-- $ (\v4|m[8]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010110101111111110101010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u4|u1|u2|u4|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[8]~13_combout\,
	dataf => \u1|u3|u2|ALT_INV_m[7]~9_combout\,
	combout => \u1|u4|u2|m[8]~11_combout\);

-- Location: MLABCELL_X9_Y7_N0
\u2|u1|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u3|u1|co~combout\ = ( \u1|u4|u2|m[6]~4_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\) # ((!\u2|u1|u1|u2|u3|co~combout\) # (\u1|u4|u2|m[7]~3_combout\)))) # (\v4|m[8]~13_combout\ & (\u1|u4|u2|m[7]~3_combout\ & 
-- ((!\v4|m[7]~6_combout\) # (!\u2|u1|u1|u2|u3|co~combout\)))) ) ) # ( !\u1|u4|u2|m[6]~4_combout\ & ( (!\v4|m[8]~13_combout\ & (((!\v4|m[7]~6_combout\ & !\u2|u1|u1|u2|u3|co~combout\)) # (\u1|u4|u2|m[7]~3_combout\))) # (\v4|m[8]~13_combout\ & 
-- (!\v4|m[7]~6_combout\ & (!\u2|u1|u1|u2|u3|co~combout\ & \u1|u4|u2|m[7]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101100100000001110110011001000111111101100100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[6]~4_combout\,
	combout => \u2|u1|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X9_Y7_N15
\u2|u1|u2|m[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[9]~2_combout\ = ( \v4|m[9]~5_combout\ & ( !\u1|u4|u2|m[8]~11_combout\ $ (((!\u2|u1|u1|u3|u1|co~combout\) # ((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[9]~5_combout\ & ( !\u1|u4|u2|m[8]~11_combout\ $ 
-- ((((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)) # (\u2|u1|u1|u3|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u1|u4|u2|ALT_INV_m[8]~11_combout\,
	datad => \u2|u1|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u2|u1|u2|m[9]~2_combout\);

-- Location: LABCELL_X6_Y7_N30
\u2|u2|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u4|co~combout\ = ( \u2|u1|u2|m[9]~2_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u2|u1|u2|m[10]~1_combout\) # ((!\u2|u2|u1|u3|u2|co~1_combout\ & (\v4|m[10]~4_combout\ & !\u2|u2|u1|u3|u2|co~0_combout\))) ) ) ) # ( !\u2|u1|u2|m[9]~2_combout\ & ( 
-- \v4|m[11]~3_combout\ & ( ((!\u2|u1|u2|m[10]~1_combout\) # ((!\u2|u2|u1|u3|u2|co~1_combout\ & !\u2|u2|u1|u3|u2|co~0_combout\))) # (\v4|m[10]~4_combout\) ) ) ) # ( \u2|u1|u2|m[9]~2_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u2|u2|u1|u3|u2|co~1_combout\ & 
-- (\v4|m[10]~4_combout\ & (!\u2|u2|u1|u3|u2|co~0_combout\ & !\u2|u1|u2|m[10]~1_combout\))) ) ) ) # ( !\u2|u1|u2|m[9]~2_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u2|u1|u2|m[10]~1_combout\ & (((!\u2|u2|u1|u3|u2|co~1_combout\ & !\u2|u2|u1|u3|u2|co~0_combout\)) 
-- # (\v4|m[10]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100000000001000000000000011111111101100111111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u2|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \u2|u1|u2|ALT_INV_m[10]~1_combout\,
	datae => \u2|u1|u2|ALT_INV_m[9]~2_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u2|u2|u1|u3|u4|co~combout\);

-- Location: MLABCELL_X4_Y7_N57
\u2|u1|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u2|co~combout\ = ( \u1|u4|u2|m[11]~2_combout\ & ( (!\u1|u4|u2|m[12]~1_combout\ & (!\v4|m[13]~1_combout\ & ((!\u2|u1|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\)))) # (\u1|u4|u2|m[12]~1_combout\ & ((!\v4|m[13]~1_combout\) # 
-- ((!\u2|u1|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\)))) ) ) # ( !\u1|u4|u2|m[11]~2_combout\ & ( (!\u1|u4|u2|m[12]~1_combout\ & (!\v4|m[13]~1_combout\ & (!\u2|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\))) # (\u1|u4|u2|m[12]~1_combout\ & 
-- ((!\v4|m[13]~1_combout\) # ((!\u2|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010001000100110101000100010011011101110101001101110111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[12]~1_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u2|u1|u1|u3|u4|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[11]~2_combout\,
	combout => \u2|u1|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X4_Y7_N24
\u2|u1|u2|m[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[14]~13_combout\ = ( \u1|u3|u2|m[12]~0_combout\ & ( \u1|u2|u1|u4|u4|co~0_combout\ ) ) # ( \u1|u3|u2|m[12]~0_combout\ & ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( (!\u2|u1|u1|u4|u2|co~combout\ & (((\v4|m[14]~0_combout\)))) # 
-- (\u2|u1|u1|u4|u2|co~combout\ & (!\v4|m[14]~0_combout\ & (!\v4|m[13]~1_combout\ $ (!\u1|u4|u1|u4|u1|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001101111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u1|u4|u1|u4|u1|ALT_INV_co~combout\,
	datac => \u2|u1|u1|u4|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	datae => \u1|u3|u2|ALT_INV_m[12]~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u1|u2|m[14]~13_combout\);

-- Location: MLABCELL_X4_Y7_N18
\u2|u1|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u1|co~combout\ = ( \u1|u4|u2|m[11]~2_combout\ & ( (!\v4|m[12]~2_combout\) # (!\u2|u1|u1|u3|u4|co~combout\) ) ) # ( !\u1|u4|u2|m[11]~2_combout\ & ( (!\v4|m[12]~2_combout\ & !\u2|u1|u1|u3|u4|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|ALT_INV_m[11]~2_combout\,
	combout => \u2|u1|u1|u4|u1|co~combout\);

-- Location: MLABCELL_X4_Y7_N54
\u2|u1|u2|m[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[13]~9_combout\ = ( \u2|u1|u1|u4|u4|co~2_combout\ & ( !\u1|u4|u2|m[12]~1_combout\ $ (!\v4|m[13]~1_combout\ $ (!\u2|u1|u1|u4|u1|co~combout\)) ) ) # ( !\u2|u1|u1|u4|u4|co~2_combout\ & ( (\u1|u4|u2|m[12]~1_combout\ & 
-- ((!\u2|u1|u1|u4|u4|co~0_combout\) # (!\v4|m[13]~1_combout\ $ (!\u2|u1|u1|u4|u1|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010100010100010101010010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[12]~1_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u2|u1|u1|u4|u1|ALT_INV_co~combout\,
	dataf => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u1|u2|m[13]~9_combout\);

-- Location: MLABCELL_X4_Y7_N0
\u2|u2|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u4|co~0_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (\u2|u1|u2|m[14]~13_combout\ & (!\u2|u1|u2|m[13]~9_combout\ $ (\v4|m[14]~0_combout\))) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( (!\u2|u1|u2|m[14]~13_combout\ & 
-- (!\u2|u1|u2|m[13]~9_combout\ $ (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[14]~13_combout\,
	datab => \u2|u1|u2|ALT_INV_m[13]~9_combout\,
	datac => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u2|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X4_Y7_N21
\u2|u1|u2|m[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[12]~8_combout\ = ( \u1|u4|u2|m[11]~2_combout\ & ( (!\u2|u1|u1|u4|u4|co~2_combout\ & ((!\u2|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[12]~2_combout\ $ (\u2|u1|u1|u3|u4|co~combout\)))) # (\u2|u1|u1|u4|u4|co~2_combout\ & (!\v4|m[12]~2_combout\ $ 
-- ((\u2|u1|u1|u3|u4|co~combout\)))) ) ) # ( !\u1|u4|u2|m[11]~2_combout\ & ( (!\u2|u1|u1|u4|u4|co~2_combout\ & (\u2|u1|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ (!\u2|u1|u1|u3|u4|co~combout\)))) # (\u2|u1|u1|u4|u4|co~2_combout\ & 
-- (!\v4|m[12]~2_combout\ $ ((!\u2|u1|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100110000001100110011011111001100110011111100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u1|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u1|u4|u2|ALT_INV_m[11]~2_combout\,
	combout => \u2|u1|u2|m[12]~8_combout\);

-- Location: MLABCELL_X4_Y7_N6
\u2|u2|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u4|co~1_combout\ = ( \u2|u1|u2|m[12]~8_combout\ & ( \v4|m[12]~2_combout\ & ( (\u2|u2|u1|u4|u4|co~0_combout\ & ((!\v4|m[13]~1_combout\) # ((\u2|u1|u2|m[11]~7_combout\ & !\u2|u2|u1|u3|u4|co~combout\)))) ) ) ) # ( !\u2|u1|u2|m[12]~8_combout\ & ( 
-- \v4|m[12]~2_combout\ & ( (\u2|u1|u2|m[11]~7_combout\ & (!\v4|m[13]~1_combout\ & (!\u2|u2|u1|u3|u4|co~combout\ & \u2|u2|u1|u4|u4|co~0_combout\))) ) ) ) # ( \u2|u1|u2|m[12]~8_combout\ & ( !\v4|m[12]~2_combout\ & ( (\u2|u2|u1|u4|u4|co~0_combout\ & 
-- (((!\v4|m[13]~1_combout\) # (!\u2|u2|u1|u3|u4|co~combout\)) # (\u2|u1|u2|m[11]~7_combout\))) ) ) ) # ( !\u2|u1|u2|m[12]~8_combout\ & ( !\v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (\u2|u2|u1|u4|u4|co~0_combout\ & ((!\u2|u2|u1|u3|u4|co~combout\) # 
-- (\u2|u1|u2|m[11]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001111110100000000010000000000000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[11]~7_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u2|u2|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \u2|u1|u2|ALT_INV_m[12]~8_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u2|u2|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X4_Y7_N3
\u2|u2|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u4|co~2_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (\u2|u1|u2|m[14]~13_combout\ & (\u2|u1|u2|m[13]~9_combout\ & !\v4|m[14]~0_combout\)) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( ((\u2|u1|u2|m[13]~9_combout\ & !\v4|m[14]~0_combout\)) # 
-- (\u2|u1|u2|m[14]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[14]~13_combout\,
	datab => \u2|u1|u2|ALT_INV_m[13]~9_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u2|u1|u4|u4|co~2_combout\);

-- Location: MLABCELL_X4_Y7_N30
\u2|u2|u2|m[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[12]~1_combout\ = ( \u2|u1|u2|m[11]~7_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & ((!\u2|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[12]~2_combout\ $ (\u2|u2|u1|u3|u4|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ 
-- ((\u2|u2|u1|u3|u4|co~combout\)))) ) ) # ( !\u2|u1|u2|m[11]~7_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & (\u2|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[12]~2_combout\ $ (!\u2|u2|u1|u3|u4|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & 
-- (!\v4|m[12]~2_combout\ $ ((!\u2|u2|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001011010000100100101101011101101101001011110110110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u1|u2|ALT_INV_m[11]~7_combout\,
	combout => \u2|u2|u2|m[12]~1_combout\);

-- Location: MLABCELL_X4_Y7_N15
\u2|u2|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u1|co~combout\ = ( \u2|u2|u1|u3|u4|co~combout\ & ( (\u2|u1|u2|m[11]~7_combout\ & !\v4|m[12]~2_combout\) ) ) # ( !\u2|u2|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u2|u1|u2|m[11]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u1|u2|ALT_INV_m[11]~7_combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	dataf => \u2|u2|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u2|u2|u1|u4|u1|co~combout\);

-- Location: MLABCELL_X4_Y7_N51
\u2|u2|u2|m[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[13]~10_combout\ = ( \v4|m[13]~1_combout\ & ( !\u2|u1|u2|m[12]~8_combout\ $ (((!\u2|u2|u1|u4|u1|co~combout\) # ((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u2|u1|u2|m[12]~8_combout\ $ 
-- ((((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)) # (\u2|u2|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u2|u1|u2|ALT_INV_m[12]~8_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u2|u2|m[13]~10_combout\);

-- Location: MLABCELL_X4_Y7_N12
\u2|u2|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u2|co~combout\ = ( \v4|m[13]~1_combout\ & ( (\u2|u1|u2|m[12]~8_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u2|u2|u1|u3|u4|co~combout\) # (\u2|u1|u2|m[11]~7_combout\))) # (\v4|m[12]~2_combout\ & (\u2|u1|u2|m[11]~7_combout\ & 
-- !\u2|u2|u1|u3|u4|co~combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( ((!\v4|m[12]~2_combout\ & ((!\u2|u2|u1|u3|u4|co~combout\) # (\u2|u1|u2|m[11]~7_combout\))) # (\v4|m[12]~2_combout\ & (\u2|u1|u2|m[11]~7_combout\ & !\u2|u2|u1|u3|u4|co~combout\))) # 
-- (\u2|u1|u2|m[12]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100101111101111110010111100001011000000100000101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u1|u2|ALT_INV_m[11]~7_combout\,
	datac => \u2|u1|u2|ALT_INV_m[12]~8_combout\,
	datad => \u2|u2|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u2|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X4_Y7_N48
\u2|u2|u2|m[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[14]~11_combout\ = ( \u2|u2|u1|u4|u2|co~combout\ & ( !\u2|u1|u2|m[13]~9_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u2|u2|u1|u4|u2|co~combout\ & ( 
-- !\u2|u1|u2|m[13]~9_combout\ $ ((((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u1|u2|ALT_INV_m[13]~9_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u2|u2|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u2|u2|u2|m[14]~11_combout\);

-- Location: LABCELL_X1_Y7_N12
\u2|u3|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u4|co~0_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (\u2|u2|u2|m[14]~11_combout\ & (!\v4|m[14]~0_combout\ $ (\u2|u2|u2|m[13]~10_combout\))) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( (!\u2|u2|u2|m[14]~11_combout\ & (!\v4|m[14]~0_combout\ $ 
-- (\u2|u2|u2|m[13]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u2|u2|u2|ALT_INV_m[13]~10_combout\,
	datad => \u2|u2|u2|ALT_INV_m[14]~11_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X9_Y7_N51
\u2|u2|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u1|s~combout\ = ( \u2|u1|u2|m[7]~3_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\u2|u1|u2|m[6]~4_combout\ & (!\v4|m[7]~6_combout\ & !\u2|u2|u1|u2|u3|co~combout\)) # (\u2|u1|u2|m[6]~4_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (!\u2|u2|u1|u2|u3|co~combout\))))) ) ) # ( !\u2|u1|u2|m[7]~3_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\u2|u1|u2|m[6]~4_combout\ & ((\u2|u2|u1|u2|u3|co~combout\) # (\v4|m[7]~6_combout\))) # (\u2|u1|u2|m[6]~4_combout\ & (\v4|m[7]~6_combout\ & 
-- \u2|u2|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011001100011110001100110001100111001100111000011100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[6]~4_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u2|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u2|u1|u3|u1|s~combout\);

-- Location: LABCELL_X6_Y7_N24
\u2|u3|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u2|co~0_combout\ = ( \u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u2|u2|u1|u3|u1|s~combout\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[9]~5_combout\ & 
-- (!\u2|u2|u1|u3|u1|s~combout\ & ((\u2|u2|u1|u4|u4|co~2_combout\) # (\u2|u2|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000010011000000000011001100100000001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u3|u1|u3|u2|co~0_combout\);

-- Location: MLABCELL_X9_Y7_N48
\u2|u2|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u1|co~combout\ = ( \u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\u2|u1|u2|m[6]~4_combout\ & (!\v4|m[7]~6_combout\ & !\u2|u2|u1|u2|u3|co~combout\)) # (\u2|u1|u2|m[6]~4_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (!\u2|u2|u1|u2|u3|co~combout\)))) ) ) # ( !\u2|u1|u2|m[7]~3_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\u2|u1|u2|m[6]~4_combout\ & (!\v4|m[7]~6_combout\ & !\u2|u2|u1|u2|u3|co~combout\)) # (\u2|u1|u2|m[6]~4_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (!\u2|u2|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000110001000100000011111101110111001111110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[6]~4_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u2|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u2|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X9_Y7_N12
\u2|u1|u2|m[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[8]~10_combout\ = (!\u2|u1|u1|u4|u4|co~1_combout\ & ((!\u2|u1|u1|u4|u4|co~2_combout\ & (\u1|u4|u2|m[7]~3_combout\)) # (\u2|u1|u1|u4|u4|co~2_combout\ & ((!\u2|u1|u1|u3|u1|s~combout\))))) # (\u2|u1|u1|u4|u4|co~1_combout\ & 
-- (((!\u2|u1|u1|u3|u1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100001111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u1|u4|u2|ALT_INV_m[7]~3_combout\,
	datad => \u2|u1|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u2|u1|u2|m[8]~10_combout\);

-- Location: LABCELL_X6_Y7_N27
\u2|u2|u2|m[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[9]~4_combout\ = ( \u2|u1|u2|m[8]~10_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & ((!\u2|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[9]~5_combout\ $ (!\u2|u2|u1|u3|u1|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & (!\v4|m[9]~5_combout\ $ 
-- ((!\u2|u2|u1|u3|u1|co~combout\)))) ) ) # ( !\u2|u1|u2|m[8]~10_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & (\u2|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[9]~5_combout\ $ (\u2|u2|u1|u3|u1|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & (!\v4|m[9]~5_combout\ 
-- $ ((\u2|u2|u1|u3|u1|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111000011010000011100001110111110001111001011111000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u2|u2|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u1|u2|ALT_INV_m[8]~10_combout\,
	combout => \u2|u2|u2|m[9]~4_combout\);

-- Location: LABCELL_X6_Y7_N48
\u2|u2|u2|m[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[10]~3_combout\ = ( \u2|u1|u2|m[9]~2_combout\ & ( \u2|u2|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) ) ) ) # ( !\u2|u1|u2|m[9]~2_combout\ & ( 
-- \u2|u2|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & ((\u2|u2|u1|u4|u4|co~2_combout\) # (\u2|u2|u1|u4|u4|co~1_combout\))) ) ) ) # ( \u2|u1|u2|m[9]~2_combout\ & ( !\u2|u2|u1|u3|u2|co~0_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & 
-- ((!\u2|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[10]~4_combout\ $ (!\u2|u2|u1|u3|u2|co~1_combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & (!\v4|m[10]~4_combout\ $ ((!\u2|u2|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\u2|u1|u2|m[9]~2_combout\ & ( 
-- !\u2|u2|u1|u3|u2|co~0_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & (\u2|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[10]~4_combout\ $ (\u2|u2|u1|u3|u2|co~1_combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & (!\v4|m[10]~4_combout\ $ 
-- ((\u2|u2|u1|u3|u2|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111000011101111100011110000010001001100111110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u2|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u2|u1|u2|ALT_INV_m[9]~2_combout\,
	dataf => \u2|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u2|u2|m[10]~3_combout\);

-- Location: LABCELL_X1_Y7_N33
\u2|u2|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u2|u2|co~combout\ = ( \u2|u2|u1|u2|u1|co~1_combout\ & ( (!\u2|u1|u2|m[4]~14_combout\ & \v4|m[5]~8_combout\) ) ) # ( !\u2|u2|u1|u2|u1|co~1_combout\ & ( (!\u2|u1|u2|m[4]~14_combout\ & ((!\u2|u2|u1|u2|u1|co~0_combout\) # (\v4|m[5]~8_combout\))) # 
-- (\u2|u1|u2|m[4]~14_combout\ & (\v4|m[5]~8_combout\ & !\u2|u2|u1|u2|u1|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001010101011110000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[4]~14_combout\,
	datac => \v4|ALT_INV_m[5]~8_combout\,
	datad => \u2|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u2|u2|u1|u2|u2|co~combout\);

-- Location: LABCELL_X5_Y7_N9
\u2|u2|u2|m[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[6]~6_combout\ = ( \v4|m[6]~7_combout\ & ( !\u2|u1|u2|m[5]~5_combout\ $ ((((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)) # (\u2|u2|u1|u2|u2|co~combout\))) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u2|u1|u2|m[5]~5_combout\ $ 
-- (((!\u2|u2|u1|u2|u2|co~combout\) # ((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u2|u1|u2|ALT_INV_m[5]~5_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u2|u2|u2|m[6]~6_combout\);

-- Location: LABCELL_X5_Y7_N18
\u2|u2|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u2|u1|u2|m[2]~6_combout\ $ (((!\u2|u2|u1|u1|u2|co~combout\ & ((!\v4|m[2]~10_combout\) # (\u2|u1|u2|m[1]~0_combout\))) # (\u2|u2|u1|u1|u2|co~combout\ & (!\v4|m[2]~10_combout\ & 
-- \u2|u1|u2|m[1]~0_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u2|u1|u2|m[2]~6_combout\ $ (((!\u2|u2|u1|u1|u2|co~combout\ & (\v4|m[2]~10_combout\ & !\u2|u1|u2|m[1]~0_combout\)) # (\u2|u2|u1|u1|u2|co~combout\ & ((!\u2|u1|u2|m[1]~0_combout\) # 
-- (\v4|m[2]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110101001100101011010100101101010010101100110101001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	datab => \u2|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \u2|u1|u2|ALT_INV_m[1]~0_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u2|u1|u1|u4|s~combout\);

-- Location: LABCELL_X5_Y7_N24
\u2|u3|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u2|u2|u1|u4|u4|co~2_combout\ & ((!\u2|u2|u1|u4|u4|co~1_combout\ & (!\u2|u1|u2|m[2]~6_combout\)) # (\u2|u2|u1|u4|u4|co~1_combout\ & ((\u2|u2|u1|u1|u4|s~combout\))))) # 
-- (\u2|u2|u1|u4|u4|co~2_combout\ & (((\u2|u2|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u2|u2|u1|u4|u4|co~2_combout\ & ((!\u2|u2|u1|u4|u4|co~1_combout\ & (\u2|u1|u2|m[2]~6_combout\)) # (\u2|u2|u1|u4|u4|co~1_combout\ & 
-- ((!\u2|u2|u1|u1|u4|s~combout\))))) # (\u2|u2|u1|u4|u4|co~2_combout\ & (((!\u2|u2|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110011001100010111001100110010100011001100111010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	datab => \u2|u2|u1|u1|u4|ALT_INV_s~combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u3|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X5_Y8_N9
\u2|u1|u2|m[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[0]~12_combout\ = ( \v2|m[11]~3_combout\ & ( (!\b[0]~input_o\) # ((!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)) ) ) # ( !\v2|m[11]~3_combout\ & ( (\b[0]~input_o\ & ((\u2|u1|u1|u4|u4|co~2_combout\) # 
-- (\u2|u1|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010111111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[11]~3_combout\,
	combout => \u2|u1|u2|m[0]~12_combout\);

-- Location: LABCELL_X6_Y6_N0
\u2|u2|u2|m[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[1]~9_combout\ = ( \v2|m[10]~4_combout\ & ( \v4|m[1]~11_combout\ & ( !\u2|u1|u2|m[0]~12_combout\ $ (((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\))) ) ) ) # ( !\v2|m[10]~4_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u2|u1|u2|m[0]~12_combout\ $ ((((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) # (\b[0]~input_o\))) ) ) ) # ( \v2|m[10]~4_combout\ & ( !\v4|m[1]~11_combout\ & ( \u2|u1|u2|m[0]~12_combout\ ) ) ) # ( !\v2|m[10]~4_combout\ & ( 
-- !\v4|m[1]~11_combout\ & ( !\u2|u1|u2|m[0]~12_combout\ $ (((!\b[0]~input_o\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110010101010101010101011001100110010101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[0]~12_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \v2|ALT_INV_m[10]~4_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u2|u2|u2|m[1]~9_combout\);

-- Location: LABCELL_X12_Y4_N45
\v2|m[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[9]~5_combout\ = ( \a[9]~input_o\ & ( (!\a[15]~input_o\) # ((!\a[8]~input_o\ & \o~4_combout\)) ) ) # ( !\a[9]~input_o\ & ( (\a[15]~input_o\ & ((!\o~4_combout\) # (\a[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000001101110111111111001000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_o~4_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \v2|m[9]~5_combout\);

-- Location: LABCELL_X6_Y6_N6
\u2|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u2|co~combout\ = ( \u2|u2|u1|u4|u4|co~2_combout\ & ( \v2|m[9]~5_combout\ & ( (\v4|m[1]~11_combout\ & (!\v2|m[10]~4_combout\ $ (\b[0]~input_o\))) ) ) ) # ( !\u2|u2|u1|u4|u4|co~2_combout\ & ( \v2|m[9]~5_combout\ & ( (\v4|m[1]~11_combout\ & 
-- (!\v2|m[10]~4_combout\ $ (((\b[0]~input_o\ & \u2|u2|u1|u4|u4|co~1_combout\))))) ) ) ) # ( \u2|u2|u1|u4|u4|co~2_combout\ & ( !\v2|m[9]~5_combout\ & ( (!\v2|m[10]~4_combout\ & ((\v4|m[1]~11_combout\))) # (\v2|m[10]~4_combout\ & (\b[0]~input_o\)) ) ) ) # ( 
-- !\u2|u2|u1|u4|u4|co~2_combout\ & ( !\v2|m[9]~5_combout\ & ( (!\b[0]~input_o\ & (!\v2|m[10]~4_combout\ & ((\v4|m[1]~11_combout\)))) # (\b[0]~input_o\ & ((!\v2|m[10]~4_combout\ $ (\u2|u2|u1|u4|u4|co~1_combout\)) # (\v4|m[1]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110111011000100011011101100000000101010010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[10]~4_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[9]~5_combout\,
	combout => \u2|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X5_Y7_N30
\u2|u2|u2|m[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[2]~0_combout\ = ( \u2|u2|u1|u1|u2|co~combout\ & ( !\u2|u1|u2|m[1]~0_combout\ $ ((((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[2]~10_combout\))) ) ) # ( !\u2|u2|u1|u1|u2|co~combout\ & ( !\u2|u1|u2|m[1]~0_combout\ 
-- $ (((!\v4|m[2]~10_combout\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100110001101100110011000111001100110010011100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u1|u2|ALT_INV_m[1]~0_combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u2|u2|m[2]~0_combout\);

-- Location: LABCELL_X6_Y6_N42
\u2|u3|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u1|co~1_combout\ = ( \u2|u2|u2|m[2]~0_combout\ & ( \v4|m[3]~12_combout\ & ( (!\u2|u3|u1|u2|u1|s~0_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u2|u3|u1|u1|u2|co~combout\) # (\u2|u2|u2|m[1]~9_combout\))) # (\v4|m[2]~10_combout\ & 
-- (\u2|u2|u2|m[1]~9_combout\ & !\u2|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( \u2|u2|u2|m[2]~0_combout\ & ( !\v4|m[3]~12_combout\ & ( !\u2|u3|u1|u2|u1|s~0_combout\ ) ) ) # ( !\u2|u2|u2|m[2]~0_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u2|u3|u1|u2|u1|s~0_combout\ 
-- & ((!\v4|m[2]~10_combout\ & ((!\u2|u3|u1|u1|u2|co~combout\) # (\u2|u2|u2|m[1]~9_combout\))) # (\v4|m[2]~10_combout\ & (\u2|u2|u2|m[1]~9_combout\ & !\u2|u3|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000001000101010101010101000000000000000001000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u2|u2|u2|ALT_INV_m[1]~9_combout\,
	datad => \u2|u3|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u3|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X5_Y7_N36
\u2|u1|u2|m[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u2|m[3]~11_combout\ = ( \u2|u1|u1|u1|u4|s~combout\ & ( (\u1|u4|u2|m[2]~7_combout\ & (!\u2|u1|u1|u4|u4|co~2_combout\ & !\u2|u1|u1|u4|u4|co~1_combout\)) ) ) # ( !\u2|u1|u1|u1|u4|s~combout\ & ( ((\u2|u1|u1|u4|u4|co~1_combout\) # 
-- (\u2|u1|u1|u4|u4|co~2_combout\)) # (\u1|u4|u2|m[2]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_m[2]~7_combout\,
	datac => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u1|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u2|u1|u2|m[3]~11_combout\);

-- Location: LABCELL_X5_Y7_N33
\u2|u2|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u1|u4|co~combout\ = ( \u2|u1|u2|m[2]~6_combout\ & ( (!\v4|m[3]~12_combout\) # ((!\v4|m[2]~10_combout\ & ((!\u2|u2|u1|u1|u2|co~combout\) # (\u2|u1|u2|m[1]~0_combout\))) # (\v4|m[2]~10_combout\ & (\u2|u1|u2|m[1]~0_combout\ & 
-- !\u2|u2|u1|u1|u2|co~combout\))) ) ) # ( !\u2|u1|u2|m[2]~6_combout\ & ( (!\v4|m[3]~12_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u2|u2|u1|u1|u2|co~combout\) # (\u2|u1|u2|m[1]~0_combout\))) # (\v4|m[2]~10_combout\ & (\u2|u1|u2|m[1]~0_combout\ & 
-- !\u2|u2|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000101100000010000011111011111100101111101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u1|u2|ALT_INV_m[1]~0_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u2|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	combout => \u2|u2|u1|u1|u4|co~combout\);

-- Location: LABCELL_X5_Y7_N6
\u2|u2|u2|m[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[4]~8_combout\ = ( \v4|m[4]~9_combout\ & ( !\u2|u1|u2|m[3]~11_combout\ $ (((!\u2|u2|u1|u1|u4|co~combout\) # ((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u2|u1|u2|m[3]~11_combout\ $ 
-- ((((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)) # (\u2|u2|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u1|u2|ALT_INV_m[3]~11_combout\,
	datad => \u2|u2|u1|u1|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u2|u2|m[4]~8_combout\);

-- Location: LABCELL_X5_Y7_N12
\u2|u2|u2|m[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[5]~7_combout\ = ( \u2|u2|u1|u4|u4|co~1_combout\ & ( \u2|u1|u2|m[4]~14_combout\ & ( !\v4|m[5]~8_combout\ $ (((!\u2|u2|u1|u2|u1|co~1_combout\ & !\u2|u2|u1|u2|u1|co~0_combout\))) ) ) ) # ( !\u2|u2|u1|u4|u4|co~1_combout\ & ( 
-- \u2|u1|u2|m[4]~14_combout\ & ( (!\u2|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[5]~8_combout\ $ (((!\u2|u2|u1|u2|u1|co~1_combout\ & !\u2|u2|u1|u2|u1|co~0_combout\)))) ) ) ) # ( \u2|u2|u1|u4|u4|co~1_combout\ & ( !\u2|u1|u2|m[4]~14_combout\ & ( 
-- !\v4|m[5]~8_combout\ $ (((\u2|u2|u1|u2|u1|co~0_combout\) # (\u2|u2|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\u2|u2|u1|u4|u4|co~1_combout\ & ( !\u2|u1|u2|m[4]~14_combout\ & ( (\u2|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[5]~8_combout\ $ 
-- (((\u2|u2|u1|u2|u1|co~0_combout\) # (\u2|u2|u1|u2|u1|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000111100010000111011111110111111110000111011110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u2|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u1|u2|ALT_INV_m[4]~14_combout\,
	combout => \u2|u2|u2|m[5]~7_combout\);

-- Location: LABCELL_X5_Y7_N27
\u2|u3|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u1|co~0_combout\ = ( \u2|u2|u1|u4|u4|co~1_combout\ & ( (!\u2|u2|u1|u1|u4|s~combout\ & !\v4|m[4]~9_combout\) ) ) # ( !\u2|u2|u1|u4|u4|co~1_combout\ & ( (!\v4|m[4]~9_combout\ & ((!\u2|u2|u1|u4|u4|co~2_combout\ & (\u2|u1|u2|m[2]~6_combout\)) # 
-- (\u2|u2|u1|u4|u4|co~2_combout\ & ((!\u2|u2|u1|u1|u4|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110000000000010111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	datab => \u2|u2|u1|u1|u4|ALT_INV_s~combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[4]~9_combout\,
	dataf => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u2|u3|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X1_Y7_N36
\u2|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u3|co~combout\ = ( \v4|m[5]~8_combout\ & ( \u2|u3|u1|u2|u1|co~0_combout\ & ( (!\u2|u2|u2|m[4]~8_combout\ & ((!\u2|u2|u2|m[5]~7_combout\) # (\v4|m[6]~7_combout\))) # (\u2|u2|u2|m[4]~8_combout\ & (\v4|m[6]~7_combout\ & 
-- !\u2|u2|u2|m[5]~7_combout\)) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u2|u3|u1|u2|u1|co~0_combout\ & ( (\v4|m[6]~7_combout\ & !\u2|u2|u2|m[5]~7_combout\) ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u2|u3|u1|u2|u1|co~0_combout\ & ( (!\v4|m[6]~7_combout\ & 
-- (!\u2|u2|u2|m[5]~7_combout\ & ((!\u2|u3|u1|u2|u1|co~1_combout\) # (!\u2|u2|u2|m[4]~8_combout\)))) # (\v4|m[6]~7_combout\ & ((!\u2|u3|u1|u2|u1|co~1_combout\) # ((!\u2|u2|u2|m[4]~8_combout\) # (!\u2|u2|u2|m[5]~7_combout\)))) ) ) ) # ( !\v4|m[5]~8_combout\ & 
-- ( !\u2|u3|u1|u2|u1|co~0_combout\ & ( (!\v4|m[6]~7_combout\ & (!\u2|u3|u1|u2|u1|co~1_combout\ & (!\u2|u2|u2|m[4]~8_combout\ & !\u2|u2|u2|m[5]~7_combout\))) # (\v4|m[6]~7_combout\ & ((!\u2|u2|u2|m[5]~7_combout\) # ((!\u2|u3|u1|u2|u1|co~1_combout\ & 
-- !\u2|u2|u2|m[4]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001000111011110000111000001111000000001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u2|u2|u2|ALT_INV_m[4]~8_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u2|u2|ALT_INV_m[5]~7_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u2|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u2|u3|co~combout\);

-- Location: MLABCELL_X9_Y7_N57
\u2|u3|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u2|s~0_combout\ = ( \u2|u1|u2|m[7]~3_combout\ & ( !\v4|m[9]~5_combout\ $ (((\u2|u2|u1|u3|u1|s~combout\ & ((\u2|u2|u1|u4|u4|co~2_combout\) # (\u2|u2|u1|u4|u4|co~1_combout\))))) ) ) # ( !\u2|u1|u2|m[7]~3_combout\ & ( !\v4|m[9]~5_combout\ $ 
-- ((((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) # (\u2|u2|u1|u3|u1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111111111000000001111111100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u2|u1|u3|u1|ALT_INV_s~combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u3|u1|u3|u2|s~0_combout\);

-- Location: MLABCELL_X9_Y7_N54
\u2|u2|u2|m[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[7]~5_combout\ = ( \u2|u1|u2|m[6]~4_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & ((!\u2|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[7]~6_combout\ $ (\u2|u2|u1|u2|u3|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & ((!\v4|m[7]~6_combout\ $ 
-- (\u2|u2|u1|u2|u3|co~combout\)))) ) ) # ( !\u2|u1|u2|m[6]~4_combout\ & ( (!\u2|u2|u1|u4|u4|co~1_combout\ & (\u2|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[7]~6_combout\ $ (!\u2|u2|u1|u2|u3|co~combout\)))) # (\u2|u2|u1|u4|u4|co~1_combout\ & ((!\v4|m[7]~6_combout\ 
-- $ (!\u2|u2|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u2|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u1|u2|ALT_INV_m[6]~4_combout\,
	combout => \u2|u2|u2|m[7]~5_combout\);

-- Location: LABCELL_X6_Y7_N0
\u2|u3|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u2|co~1_combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( \v4|m[7]~6_combout\ & ( (!\u2|u3|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((\u2|u2|u2|m[6]~6_combout\ & !\u2|u3|u1|u2|u3|co~combout\)))) ) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( 
-- \v4|m[7]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (\u2|u2|u2|m[6]~6_combout\ & (!\u2|u3|u1|u2|u3|co~combout\ & !\u2|u3|u1|u3|u2|s~0_combout\))) ) ) ) # ( \u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\u2|u3|u1|u3|u2|s~0_combout\ & 
-- ((!\v4|m[8]~13_combout\) # ((!\u2|u3|u1|u2|u3|co~combout\) # (\u2|u2|u2|m[6]~6_combout\)))) ) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u2|u3|u1|u3|u2|s~0_combout\ & ((!\u2|u3|u1|u2|u3|co~combout\) # 
-- (\u2|u2|u2|m[6]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000111110110000000000100000000000001011101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u2|u2|u2|ALT_INV_m[6]~6_combout\,
	datac => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|u3|u1|u3|u2|ALT_INV_s~0_combout\,
	datae => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u2|u3|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X6_Y7_N36
\u2|u3|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u4|co~combout\ = ( \u2|u3|u1|u3|u2|co~1_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u2|u2|u2|m[10]~3_combout\) # ((!\u2|u2|u2|m[9]~4_combout\ & \v4|m[10]~4_combout\)) ) ) ) # ( !\u2|u3|u1|u3|u2|co~1_combout\ & ( \v4|m[11]~3_combout\ & ( 
-- (!\u2|u2|u2|m[10]~3_combout\) # ((!\u2|u3|u1|u3|u2|co~0_combout\ & ((!\u2|u2|u2|m[9]~4_combout\) # (\v4|m[10]~4_combout\))) # (\u2|u3|u1|u3|u2|co~0_combout\ & (!\u2|u2|u2|m[9]~4_combout\ & \v4|m[10]~4_combout\))) ) ) ) # ( \u2|u3|u1|u3|u2|co~1_combout\ & 
-- ( !\v4|m[11]~3_combout\ & ( (!\u2|u2|u2|m[9]~4_combout\ & (!\u2|u2|u2|m[10]~3_combout\ & \v4|m[10]~4_combout\)) ) ) ) # ( !\u2|u3|u1|u3|u2|co~1_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u2|u2|u2|m[10]~3_combout\ & ((!\u2|u3|u1|u3|u2|co~0_combout\ & 
-- ((!\u2|u2|u2|m[9]~4_combout\) # (\v4|m[10]~4_combout\))) # (\u2|u3|u1|u3|u2|co~0_combout\ & (!\u2|u2|u2|m[9]~4_combout\ & \v4|m[10]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000000000001100000011111000111111101111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datab => \u2|u2|u2|ALT_INV_m[9]~4_combout\,
	datac => \u2|u2|u2|ALT_INV_m[10]~3_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	datae => \u2|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u2|u3|u1|u3|u4|co~combout\);

-- Location: LABCELL_X6_Y7_N6
\u2|u2|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u3|u3|co~combout\ = ( \u2|u2|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u2|u1|u2|m[9]~2_combout\) ) ) # ( !\u2|u2|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u2|u2|u1|u3|u2|co~1_combout\ & !\u2|u1|u2|m[9]~2_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u2|u2|u1|u3|u2|co~1_combout\) # (!\u2|u1|u2|m[9]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000111100110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u2|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u2|u1|u2|ALT_INV_m[9]~2_combout\,
	dataf => \u2|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u2|u1|u3|u3|co~combout\);

-- Location: LABCELL_X6_Y7_N45
\u2|u2|u2|m[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[11]~2_combout\ = ( \v4|m[11]~3_combout\ & ( !\u2|u1|u2|m[10]~1_combout\ $ ((((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)) # (\u2|u2|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u2|u1|u2|m[10]~1_combout\ $ 
-- (((!\u2|u2|u1|u3|u3|co~combout\) # ((!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000111100001101100011110001100011110000110110001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u1|u2|ALT_INV_m[10]~1_combout\,
	datac => \u2|u2|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u2|u2|u2|m[11]~2_combout\);

-- Location: LABCELL_X1_Y7_N18
\u2|u3|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u4|co~1_combout\ = ( \u2|u2|u2|m[12]~1_combout\ & ( \v4|m[13]~1_combout\ & ( (\u2|u3|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u2|u3|u1|u3|u4|co~combout\) # (\u2|u2|u2|m[11]~2_combout\))) # (\v4|m[12]~2_combout\ & 
-- (!\u2|u3|u1|u3|u4|co~combout\ & \u2|u2|u2|m[11]~2_combout\)))) ) ) ) # ( \u2|u2|u2|m[12]~1_combout\ & ( !\v4|m[13]~1_combout\ & ( \u2|u3|u1|u4|u4|co~0_combout\ ) ) ) # ( !\u2|u2|u2|m[12]~1_combout\ & ( !\v4|m[13]~1_combout\ & ( 
-- (\u2|u3|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u2|u3|u1|u3|u4|co~combout\) # (\u2|u2|u2|m[11]~2_combout\))) # (\v4|m[12]~2_combout\ & (!\u2|u3|u1|u3|u4|co~combout\ & \u2|u2|u2|m[11]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110010001100110011001100000000000000000010000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u2|u3|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[11]~2_combout\,
	datae => \u2|u2|u2|ALT_INV_m[12]~1_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u3|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X1_Y7_N57
\u2|u3|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u4|co~2_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (!\v4|m[14]~0_combout\ & (\u2|u2|u2|m[14]~11_combout\ & \u2|u2|u2|m[13]~10_combout\)) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( ((!\v4|m[14]~0_combout\ & \u2|u2|u2|m[13]~10_combout\)) # 
-- (\u2|u2|u2|m[14]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u2|u2|u2|ALT_INV_m[14]~11_combout\,
	datad => \u2|u2|u2|ALT_INV_m[13]~10_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X7_Y5_N3
\u2|u3|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u1|co~combout\ = ( \u2|u3|u1|u3|u4|co~combout\ & ( (\u2|u2|u2|m[11]~2_combout\ & !\v4|m[12]~2_combout\) ) ) # ( !\u2|u3|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u2|u2|u2|m[11]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u2|u2|ALT_INV_m[11]~2_combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	dataf => \u2|u3|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u4|u1|co~combout\);

-- Location: LABCELL_X1_Y7_N45
\u2|u3|u2|m[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[13]~12_combout\ = ( \u2|u3|u1|u4|u1|co~combout\ & ( !\u2|u2|u2|m[12]~1_combout\ $ (((!\v4|m[13]~1_combout\) # ((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u2|u3|u1|u4|u1|co~combout\ & ( 
-- !\u2|u2|u2|m[12]~1_combout\ $ ((((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[13]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110011001001110011001100100110110011001100011011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u2|u2|u2|ALT_INV_m[12]~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u2|u3|u2|m[13]~12_combout\);

-- Location: LABCELL_X1_Y7_N42
\u2|u3|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u2|co~combout\ = ( \v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((!\u2|u3|u1|u3|u4|co~combout\ & \u2|u2|u2|m[11]~2_combout\)) # (\u2|u2|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & (\u2|u2|u2|m[12]~1_combout\ & 
-- (!\u2|u3|u1|u3|u4|co~combout\ & \u2|u2|u2|m[11]~2_combout\))) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((!\u2|u3|u1|u3|u4|co~combout\) # (\u2|u2|u2|m[11]~2_combout\)) # (\u2|u2|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & 
-- (\u2|u2|u2|m[12]~1_combout\ & ((!\u2|u3|u1|u3|u4|co~combout\) # (\u2|u2|u2|m[11]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010111011101100101011101100100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u2|u2|u2|ALT_INV_m[12]~1_combout\,
	datac => \u2|u3|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[11]~2_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u2|u3|u1|u4|u2|co~combout\);

-- Location: LABCELL_X1_Y7_N54
\u2|u3|u2|m[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[14]~11_combout\ = ( \u2|u2|u2|m[13]~10_combout\ & ( (!\u2|u3|u1|u4|u4|co~1_combout\ & ((!\u2|u3|u1|u4|u4|co~2_combout\) # (!\v4|m[14]~0_combout\ $ (!\u2|u3|u1|u4|u2|co~combout\)))) # (\u2|u3|u1|u4|u4|co~1_combout\ & (!\v4|m[14]~0_combout\ $ 
-- ((!\u2|u3|u1|u4|u2|co~combout\)))) ) ) # ( !\u2|u2|u2|m[13]~10_combout\ & ( (!\u2|u3|u1|u4|u4|co~1_combout\ & (\u2|u3|u1|u4|u4|co~2_combout\ & (!\v4|m[14]~0_combout\ $ (\u2|u3|u1|u4|u2|co~combout\)))) # (\u2|u3|u1|u4|u4|co~1_combout\ & 
-- (!\v4|m[14]~0_combout\ $ ((\u2|u3|u1|u4|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011001000010011001100111110110011001101111011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datab => \u2|u3|u1|u4|u2|ALT_INV_co~combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u2|u2|ALT_INV_m[13]~10_combout\,
	combout => \u2|u3|u2|m[14]~11_combout\);

-- Location: LABCELL_X1_Y7_N15
\u2|u4|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u4|co~0_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (\u2|u3|u2|m[14]~11_combout\ & (!\v4|m[14]~0_combout\ $ (\u2|u3|u2|m[13]~12_combout\))) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( (!\u2|u3|u2|m[14]~11_combout\ & (!\v4|m[14]~0_combout\ $ 
-- (\u2|u3|u2|m[13]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u2|u3|u2|ALT_INV_m[13]~12_combout\,
	datad => \u2|u3|u2|ALT_INV_m[14]~11_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u4|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X6_Y7_N18
\u2|u3|u2|m[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[10]~5_combout\ = ( \u2|u3|u1|u3|u2|co~1_combout\ & ( \u2|u3|u1|u3|u2|co~0_combout\ & ( !\u2|u2|u2|m[9]~4_combout\ $ (((!\v4|m[10]~4_combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) ) ) # ( 
-- !\u2|u3|u1|u3|u2|co~1_combout\ & ( \u2|u3|u1|u3|u2|co~0_combout\ & ( !\u2|u2|u2|m[9]~4_combout\ $ (((!\v4|m[10]~4_combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) ) ) # ( \u2|u3|u1|u3|u2|co~1_combout\ & ( 
-- !\u2|u3|u1|u3|u2|co~0_combout\ & ( !\u2|u2|u2|m[9]~4_combout\ $ (((!\v4|m[10]~4_combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\u2|u3|u1|u3|u2|co~1_combout\ & ( !\u2|u3|u1|u3|u2|co~0_combout\ & ( 
-- !\u2|u2|u2|m[9]~4_combout\ $ ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[10]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110000110011001100110110110000110011011011000011001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u2|u2|ALT_INV_m[9]~4_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	datae => \u2|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u3|u2|m[10]~5_combout\);

-- Location: LABCELL_X12_Y4_N48
\v2|m[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[8]~6_combout\ = ( \a[8]~input_o\ & ( (!\a[15]~input_o\) # (\o~4_combout\) ) ) # ( !\a[8]~input_o\ & ( (\a[15]~input_o\ & !\o~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_o~4_combout\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \v2|m[8]~6_combout\);

-- Location: LABCELL_X6_Y6_N48
\u2|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u1|u2|co~combout\ = ( \u2|u3|u1|u4|u4|co~1_combout\ & ( \v2|m[9]~5_combout\ & ( (\b[0]~input_o\ & ((!\v2|m[8]~6_combout\) # (\v4|m[1]~11_combout\))) ) ) ) # ( !\u2|u3|u1|u4|u4|co~1_combout\ & ( \v2|m[9]~5_combout\ & ( (\b[0]~input_o\ & 
-- ((!\v2|m[8]~6_combout\ & ((\v4|m[1]~11_combout\) # (\u2|u3|u1|u4|u4|co~2_combout\))) # (\v2|m[8]~6_combout\ & (\u2|u3|u1|u4|u4|co~2_combout\ & \v4|m[1]~11_combout\)))) ) ) ) # ( \u2|u3|u1|u4|u4|co~1_combout\ & ( !\v2|m[9]~5_combout\ & ( 
-- (\v4|m[1]~11_combout\ & ((!\v2|m[8]~6_combout\) # (!\b[0]~input_o\))) ) ) ) # ( !\u2|u3|u1|u4|u4|co~1_combout\ & ( !\v2|m[9]~5_combout\ & ( (!\v2|m[8]~6_combout\ & (((\b[0]~input_o\ & !\u2|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[1]~11_combout\))) # 
-- (\v2|m[8]~6_combout\ & (\v4|m[1]~11_combout\ & ((!\b[0]~input_o\) # (!\u2|u3|u1|u4|u4|co~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011111110000000001110111000000010001000110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[8]~6_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v2|ALT_INV_m[9]~5_combout\,
	combout => \u2|u4|u1|u1|u2|co~combout\);

-- Location: LABCELL_X6_Y6_N39
\u2|u2|u2|m[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[0]~12_combout\ = !\v2|m[10]~4_combout\ $ (((!\b[0]~input_o\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111101100000100111110110000010011111011000001001111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v2|ALT_INV_m[10]~4_combout\,
	combout => \u2|u2|u2|m[0]~12_combout\);

-- Location: LABCELL_X6_Y6_N12
\u2|u3|u2|m[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[1]~2_combout\ = ( \u2|u3|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( !\u2|u2|u2|m[0]~12_combout\ $ (((!\v2|m[9]~5_combout\ & \b[0]~input_o\))) ) ) ) # ( !\u2|u3|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u2|u2|u2|m[0]~12_combout\ $ (((!\u2|u3|u1|u4|u4|co~2_combout\) # ((!\v2|m[9]~5_combout\ & \b[0]~input_o\)))) ) ) ) # ( \u2|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u2|u2|u2|m[0]~12_combout\ $ (((!\b[0]~input_o\) # 
-- (\v2|m[9]~5_combout\))) ) ) ) # ( !\u2|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u2|u2|u2|m[0]~12_combout\ $ ((((!\u2|u3|u1|u4|u4|co~2_combout\) # (!\b[0]~input_o\)) # (\v2|m[9]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111001001100111001100100111100001101101100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[9]~5_combout\,
	datab => \u2|u2|u2|ALT_INV_m[0]~12_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u2|u3|u2|m[1]~2_combout\);

-- Location: LABCELL_X6_Y6_N30
\u2|u3|u2|m[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[2]~1_combout\ = ( \u2|u3|u1|u1|u2|co~combout\ & ( !\u2|u2|u2|m[1]~9_combout\ $ ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[2]~10_combout\))) ) ) # ( !\u2|u3|u1|u1|u2|co~combout\ & ( !\u2|u2|u2|m[1]~9_combout\ 
-- $ (((!\v4|m[2]~10_combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u2|ALT_INV_m[1]~9_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u2|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u3|u2|m[2]~1_combout\);

-- Location: LABCELL_X6_Y6_N18
\u2|u3|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u4|s~combout\ = ( \u2|u3|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ $ (!\u2|u2|u2|m[2]~0_combout\ $ (((\u2|u2|u2|m[1]~9_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u2|u3|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ $ 
-- (!\u2|u2|u2|m[2]~0_combout\ $ (((!\v4|m[2]~10_combout\) # (\u2|u2|u2|m[1]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110101001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u2|ALT_INV_m[1]~9_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \u2|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u1|u4|s~combout\);

-- Location: LABCELL_X6_Y6_N33
\u2|u4|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u2|u1|s~0_combout\ = ( \u2|u3|u1|u1|u4|s~combout\ & ( !\v4|m[4]~9_combout\ $ ((((!\u2|u2|u2|m[2]~0_combout\) # (\u2|u3|u1|u4|u4|co~1_combout\)) # (\u2|u3|u1|u4|u4|co~2_combout\))) ) ) # ( !\u2|u3|u1|u1|u4|s~combout\ & ( !\v4|m[4]~9_combout\ $ 
-- (((!\u2|u3|u1|u4|u4|co~2_combout\ & (!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u2|u2|m[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000000001111100001110000111110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[4]~9_combout\,
	datad => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \u2|u3|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u2|u4|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X2_Y6_N6
\u2|u4|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u2|u1|co~1_combout\ = ( !\u2|u4|u1|u2|u1|s~0_combout\ & ( \v4|m[3]~12_combout\ & ( (\u2|u3|u2|m[2]~1_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u2|u4|u1|u1|u2|co~combout\) # (\u2|u3|u2|m[1]~2_combout\))) # (\v4|m[2]~10_combout\ & 
-- (!\u2|u4|u1|u1|u2|co~combout\ & \u2|u3|u2|m[1]~2_combout\)))) ) ) ) # ( !\u2|u4|u1|u2|u1|s~0_combout\ & ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u2|u4|u1|u1|u2|co~combout\) # (\u2|u3|u2|m[1]~2_combout\))) # (\v4|m[2]~10_combout\ & 
-- (!\u2|u4|u1|u1|u2|co~combout\ & \u2|u3|u2|m[1]~2_combout\))) # (\u2|u3|u2|m[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111011111111000000000000000000000000100011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|u3|u2|ALT_INV_m[1]~2_combout\,
	datad => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datae => \u2|u4|u1|u2|u1|ALT_INV_s~0_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u4|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X6_Y6_N54
\u2|u4|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u2|u3|u1|u4|u4|co~1_combout\ & ((!\u2|u3|u1|u4|u4|co~2_combout\ & ((\u2|u2|u2|m[2]~0_combout\))) # (\u2|u3|u1|u4|u4|co~2_combout\ & (!\u2|u3|u1|u1|u4|s~combout\)))) # 
-- (\u2|u3|u1|u4|u4|co~1_combout\ & (!\u2|u3|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101011101010001010101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u4|ALT_INV_s~combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u4|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X1_Y7_N6
\u2|u3|u2|m[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[5]~9_combout\ = ( \u2|u3|u1|u2|u1|co~1_combout\ & ( \u2|u2|u2|m[4]~8_combout\ & ( (!\v4|m[5]~8_combout\) # ((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)) ) ) ) # ( !\u2|u3|u1|u2|u1|co~1_combout\ & ( 
-- \u2|u2|u2|m[4]~8_combout\ & ( (!\u2|u3|u1|u4|u4|co~1_combout\ & ((!\u2|u3|u1|u4|u4|co~2_combout\) # (!\u2|u3|u1|u2|u1|co~0_combout\ $ (!\v4|m[5]~8_combout\)))) # (\u2|u3|u1|u4|u4|co~1_combout\ & (!\u2|u3|u1|u2|u1|co~0_combout\ $ ((!\v4|m[5]~8_combout\)))) 
-- ) ) ) # ( \u2|u3|u1|u2|u1|co~1_combout\ & ( !\u2|u2|u2|m[4]~8_combout\ & ( (\v4|m[5]~8_combout\ & ((\u2|u3|u1|u4|u4|co~2_combout\) # (\u2|u3|u1|u4|u4|co~1_combout\))) ) ) ) # ( !\u2|u3|u1|u2|u1|co~1_combout\ & ( !\u2|u2|u2|m[4]~8_combout\ & ( 
-- (!\u2|u3|u1|u4|u4|co~1_combout\ & (\u2|u3|u1|u4|u4|co~2_combout\ & (!\u2|u3|u1|u2|u1|co~0_combout\ $ (\v4|m[5]~8_combout\)))) # (\u2|u3|u1|u4|u4|co~1_combout\ & (!\u2|u3|u1|u2|u1|co~0_combout\ $ ((\v4|m[5]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110011001000000110011001111110110011001101111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u2|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	dataf => \u2|u2|u2|ALT_INV_m[4]~8_combout\,
	combout => \u2|u3|u2|m[5]~9_combout\);

-- Location: LABCELL_X5_Y7_N21
\u2|u2|u2|m[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[3]~14_combout\ = ( \u2|u2|u1|u1|u4|s~combout\ & ( (\u2|u1|u2|m[2]~6_combout\ & (!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) ) ) # ( !\u2|u2|u1|u1|u4|s~combout\ & ( ((\u2|u2|u1|u4|u4|co~2_combout\) # 
-- (\u2|u2|u1|u4|u4|co~1_combout\)) # (\u2|u1|u2|m[2]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u2|ALT_INV_m[2]~6_combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u2|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u2|u2|u2|m[3]~14_combout\);

-- Location: LABCELL_X6_Y6_N21
\u2|u3|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u2|u2|u2|m[2]~0_combout\ & ((!\u2|u2|u2|m[1]~9_combout\ & (!\v4|m[2]~10_combout\ & !\u2|u3|u1|u1|u2|co~combout\)) # (\u2|u2|u2|m[1]~9_combout\ & ((!\v4|m[2]~10_combout\) # 
-- (!\u2|u3|u1|u1|u2|co~combout\))))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\u2|u2|u2|m[1]~9_combout\ & (!\v4|m[2]~10_combout\ & !\u2|u3|u1|u1|u2|co~combout\)) # (\u2|u2|u2|m[1]~9_combout\ & ((!\v4|m[2]~10_combout\) # (!\u2|u3|u1|u1|u2|co~combout\)))) # 
-- (\u2|u2|u2|m[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011111111110101001111111100000000110101000000000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u2|ALT_INV_m[1]~9_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u2|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u3|u1|u1|u4|co~combout\);

-- Location: LABCELL_X6_Y6_N24
\u2|u3|u2|m[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[4]~10_combout\ = ( \v4|m[4]~9_combout\ & ( !\u2|u2|u2|m[3]~14_combout\ $ (((!\u2|u3|u1|u1|u4|co~combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u2|u2|u2|m[3]~14_combout\ $ 
-- ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\u2|u3|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u2|ALT_INV_m[3]~14_combout\,
	datad => \u2|u3|u1|u1|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u3|u2|m[4]~10_combout\);

-- Location: LABCELL_X2_Y7_N24
\u2|u4|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u2|u3|co~combout\ = ( \v4|m[6]~7_combout\ & ( \u2|u3|u2|m[4]~10_combout\ & ( (!\u2|u3|u2|m[5]~9_combout\) # ((!\u2|u4|u1|u2|u1|co~1_combout\ & (!\u2|u4|u1|u2|u1|co~0_combout\ & \v4|m[5]~8_combout\))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( 
-- \u2|u3|u2|m[4]~10_combout\ & ( (!\u2|u4|u1|u2|u1|co~1_combout\ & (!\u2|u4|u1|u2|u1|co~0_combout\ & (!\u2|u3|u2|m[5]~9_combout\ & \v4|m[5]~8_combout\))) ) ) ) # ( \v4|m[6]~7_combout\ & ( !\u2|u3|u2|m[4]~10_combout\ & ( (!\u2|u3|u2|m[5]~9_combout\) # 
-- (((!\u2|u4|u1|u2|u1|co~1_combout\ & !\u2|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\)) ) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u2|u3|u2|m[4]~10_combout\ & ( (!\u2|u3|u2|m[5]~9_combout\ & (((!\u2|u4|u1|u2|u1|co~1_combout\ & 
-- !\u2|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110000111110001111111100000000100000001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u3|u2|ALT_INV_m[5]~9_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u3|u2|ALT_INV_m[4]~10_combout\,
	combout => \u2|u4|u1|u2|u3|co~combout\);

-- Location: LABCELL_X2_Y7_N33
\u2|u3|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u1|s~combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\v4|m[7]~6_combout\ & ((!\u2|u3|u1|u2|u3|co~combout\) # (\u2|u2|u2|m[6]~6_combout\))) # (\v4|m[7]~6_combout\ & (!\u2|u3|u1|u2|u3|co~combout\ & 
-- \u2|u2|u2|m[6]~6_combout\)))) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\v4|m[7]~6_combout\ & (\u2|u3|u1|u2|u3|co~combout\ & !\u2|u2|u2|m[6]~6_combout\)) # (\v4|m[7]~6_combout\ & ((!\u2|u2|u2|m[6]~6_combout\) # 
-- (\u2|u3|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001111001001100100111100100101101100001101100110110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[6]~6_combout\,
	dataf => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	combout => \u2|u3|u1|u3|u1|s~combout\);

-- Location: LABCELL_X2_Y7_N6
\u2|u4|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u2|s~0_combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[9]~5_combout\ $ (((\u2|u3|u1|u3|u1|s~combout\ & ((\u2|u3|u1|u4|u4|co~2_combout\) # (\u2|u3|u1|u4|u4|co~1_combout\))))) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( !\v4|m[9]~5_combout\ $ 
-- ((((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)) # (\u2|u3|u1|u3|u1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101011010101001010101101010111101010000101011110101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	combout => \u2|u4|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X1_Y7_N3
\u2|u3|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u2|co~combout\ = ( \u2|u3|u1|u2|u1|co~0_combout\ & ( (\v4|m[5]~8_combout\ & !\u2|u2|u2|m[4]~8_combout\) ) ) # ( !\u2|u3|u1|u2|u1|co~0_combout\ & ( (!\v4|m[5]~8_combout\ & (!\u2|u2|u2|m[4]~8_combout\ & !\u2|u3|u1|u2|u1|co~1_combout\)) # 
-- (\v4|m[5]~8_combout\ & ((!\u2|u2|u2|m[4]~8_combout\) # (!\u2|u3|u1|u2|u1|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000111100110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u2|u2|u2|ALT_INV_m[4]~8_combout\,
	datad => \u2|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u2|u2|co~combout\);

-- Location: LABCELL_X2_Y7_N51
\u2|u3|u2|m[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[6]~8_combout\ = ( \u2|u2|u2|m[5]~7_combout\ & ( (!\u2|u3|u1|u4|u4|co~2_combout\ & ((!\u2|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[6]~7_combout\ $ (\u2|u3|u1|u2|u2|co~combout\)))) # (\u2|u3|u1|u4|u4|co~2_combout\ & ((!\v4|m[6]~7_combout\ $ 
-- (\u2|u3|u1|u2|u2|co~combout\)))) ) ) # ( !\u2|u2|u2|m[5]~7_combout\ & ( (!\u2|u3|u1|u4|u4|co~2_combout\ & (\u2|u3|u1|u4|u4|co~1_combout\ & (!\v4|m[6]~7_combout\ $ (!\u2|u3|u1|u2|u2|co~combout\)))) # (\u2|u3|u1|u4|u4|co~2_combout\ & ((!\v4|m[6]~7_combout\ 
-- $ (!\u2|u3|u1|u2|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u2|u2|u2|ALT_INV_m[5]~7_combout\,
	combout => \u2|u3|u2|m[6]~8_combout\);

-- Location: LABCELL_X2_Y7_N15
\u2|u3|u2|m[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[7]~7_combout\ = ( \v4|m[7]~6_combout\ & ( !\u2|u2|u2|m[6]~6_combout\ $ ((((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)) # (\u2|u3|u1|u2|u3|co~combout\))) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u2|u2|u2|m[6]~6_combout\ $ 
-- (((!\u2|u3|u1|u2|u3|co~combout\) # ((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111101010000101011110101000101010110101010010101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u2|ALT_INV_m[6]~6_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u2|u3|u2|m[7]~7_combout\);

-- Location: LABCELL_X2_Y7_N0
\u2|u4|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u2|co~1_combout\ = ( \u2|u3|u2|m[6]~8_combout\ & ( \u2|u3|u2|m[7]~7_combout\ & ( (!\u2|u4|u1|u3|u2|s~0_combout\ & ((!\u2|u4|u1|u2|u3|co~combout\) # ((!\v4|m[8]~13_combout\) # (!\v4|m[7]~6_combout\)))) ) ) ) # ( !\u2|u3|u2|m[6]~8_combout\ & ( 
-- \u2|u3|u2|m[7]~7_combout\ & ( (!\u2|u4|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((!\u2|u4|u1|u2|u3|co~combout\ & !\v4|m[7]~6_combout\)))) ) ) ) # ( \u2|u3|u2|m[6]~8_combout\ & ( !\u2|u3|u2|m[7]~7_combout\ & ( (!\v4|m[8]~13_combout\ & 
-- (!\u2|u4|u1|u3|u2|s~0_combout\ & ((!\u2|u4|u1|u2|u3|co~combout\) # (!\v4|m[7]~6_combout\)))) ) ) ) # ( !\u2|u3|u2|m[6]~8_combout\ & ( !\u2|u3|u2|m[7]~7_combout\ & ( (!\u2|u4|u1|u2|u3|co~combout\ & (!\v4|m[8]~13_combout\ & (!\v4|m[7]~6_combout\ & 
-- !\u2|u4|u1|u3|u2|s~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000110010000000000011101100000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u2|u4|u1|u3|u2|ALT_INV_s~0_combout\,
	datae => \u2|u3|u2|ALT_INV_m[6]~8_combout\,
	dataf => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	combout => \u2|u4|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X2_Y7_N30
\u2|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u1|co~combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\v4|m[7]~6_combout\ & ((!\u2|u3|u1|u2|u3|co~combout\) # (\u2|u2|u2|m[6]~6_combout\))) # (\v4|m[7]~6_combout\ & (\u2|u2|u2|m[6]~6_combout\ & 
-- !\u2|u3|u1|u2|u3|co~combout\))) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u2|u3|u1|u2|u3|co~combout\) # (\u2|u2|u2|m[6]~6_combout\))) # (\v4|m[7]~6_combout\ & (\u2|u2|u2|m[6]~6_combout\ & 
-- !\u2|u3|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000001000100011000000100011101111110011101110111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u2|u2|ALT_INV_m[6]~6_combout\,
	datad => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	combout => \u2|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X6_Y7_N54
\u2|u2|u2|m[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u2|m[8]~13_combout\ = ( \u2|u1|u2|m[7]~3_combout\ & ( (!\u2|u2|u1|u3|u1|s~combout\) # ((!\u2|u2|u1|u4|u4|co~1_combout\ & !\u2|u2|u1|u4|u4|co~2_combout\)) ) ) # ( !\u2|u1|u2|m[7]~3_combout\ & ( (!\u2|u2|u1|u3|u1|s~combout\ & 
-- ((\u2|u2|u1|u4|u4|co~2_combout\) # (\u2|u2|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u1|u2|ALT_INV_m[7]~3_combout\,
	combout => \u2|u2|u2|m[8]~13_combout\);

-- Location: LABCELL_X6_Y7_N15
\u2|u3|u2|m[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[9]~6_combout\ = ( \v4|m[9]~5_combout\ & ( !\u2|u2|u2|m[8]~13_combout\ $ (((!\u2|u3|u1|u3|u1|co~combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) ) # ( !\v4|m[9]~5_combout\ & ( !\u2|u2|u2|m[8]~13_combout\ $ 
-- ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\u2|u3|u1|u3|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[8]~13_combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u2|u3|u2|m[9]~6_combout\);

-- Location: LABCELL_X2_Y7_N9
\u2|u4|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u2|co~0_combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u2|u3|u1|u3|u1|s~combout\) # ((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( 
-- (!\u2|u3|u1|u3|u1|s~combout\ & (!\v4|m[9]~5_combout\ & ((\u2|u3|u1|u4|u4|co~2_combout\) # (\u2|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000011101010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	combout => \u2|u4|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X5_Y6_N30
\u2|u4|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \u2|u4|u1|u3|u2|co~0_combout\ & ( (!\u2|u3|u2|m[10]~5_combout\ & ((!\u2|u3|u2|m[9]~6_combout\) # (\v4|m[11]~3_combout\))) # (\u2|u3|u2|m[10]~5_combout\ & (!\u2|u3|u2|m[9]~6_combout\ & 
-- \v4|m[11]~3_combout\)) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u2|u4|u1|u3|u2|co~0_combout\ & ( (!\u2|u3|u2|m[10]~5_combout\ & \v4|m[11]~3_combout\) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\u2|u4|u1|u3|u2|co~0_combout\ & ( (!\u2|u3|u2|m[10]~5_combout\ & 
-- ((!\u2|u4|u1|u3|u2|co~1_combout\) # ((!\u2|u3|u2|m[9]~6_combout\) # (\v4|m[11]~3_combout\)))) # (\u2|u3|u2|m[10]~5_combout\ & (\v4|m[11]~3_combout\ & ((!\u2|u4|u1|u3|u2|co~1_combout\) # (!\u2|u3|u2|m[9]~6_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( 
-- !\u2|u4|u1|u3|u2|co~0_combout\ & ( (!\u2|u3|u2|m[10]~5_combout\ & (((!\u2|u4|u1|u3|u2|co~1_combout\ & !\u2|u3|u2|m[9]~6_combout\)) # (\v4|m[11]~3_combout\))) # (\u2|u3|u2|m[10]~5_combout\ & (!\u2|u4|u1|u3|u2|co~1_combout\ & (!\u2|u3|u2|m[9]~6_combout\ & 
-- \v4|m[11]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101010101010001111111000000000101010101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u2|ALT_INV_m[10]~5_combout\,
	datab => \u2|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u2|u3|u2|ALT_INV_m[9]~6_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u2|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u4|u1|u3|u4|co~combout\);

-- Location: LABCELL_X6_Y6_N27
\u2|u3|u2|m[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[12]~3_combout\ = ( \v4|m[12]~2_combout\ & ( !\u2|u2|u2|m[11]~2_combout\ $ ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\u2|u3|u1|u3|u4|co~combout\))) ) ) # ( !\v4|m[12]~2_combout\ & ( !\u2|u2|u2|m[11]~2_combout\ $ 
-- (((!\u2|u3|u1|u3|u4|co~combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u2|u2|ALT_INV_m[11]~2_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u2|u3|u2|m[12]~3_combout\);

-- Location: LABCELL_X6_Y7_N9
\u2|u3|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u3|co~combout\ = ( \u2|u3|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u2|u2|u2|m[9]~4_combout\) ) ) # ( !\u2|u3|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u2|u2|u2|m[9]~4_combout\ & !\u2|u3|u1|u3|u2|co~1_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u2|u2|u2|m[9]~4_combout\) # (!\u2|u3|u1|u3|u2|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000111100110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u2|u2|u2|ALT_INV_m[9]~4_combout\,
	datad => \u2|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u3|u3|co~combout\);

-- Location: LABCELL_X6_Y7_N12
\u2|u3|u2|m[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[11]~4_combout\ = ( \v4|m[11]~3_combout\ & ( !\u2|u2|u2|m[10]~3_combout\ $ ((((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) # (\u2|u3|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u2|u2|u2|m[10]~3_combout\ $ 
-- (((!\u2|u3|u1|u3|u3|co~combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u2|u2|ALT_INV_m[10]~3_combout\,
	datad => \u2|u3|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u2|u3|u2|m[11]~4_combout\);

-- Location: LABCELL_X7_Y7_N30
\u2|u4|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u4|co~1_combout\ = ( \u2|u3|u2|m[11]~4_combout\ & ( \v4|m[13]~1_combout\ & ( (\u2|u4|u1|u4|u4|co~0_combout\ & (\u2|u3|u2|m[12]~3_combout\ & ((!\v4|m[12]~2_combout\) # (!\u2|u4|u1|u3|u4|co~combout\)))) ) ) ) # ( !\u2|u3|u2|m[11]~4_combout\ & ( 
-- \v4|m[13]~1_combout\ & ( (!\v4|m[12]~2_combout\ & (\u2|u4|u1|u4|u4|co~0_combout\ & (!\u2|u4|u1|u3|u4|co~combout\ & \u2|u3|u2|m[12]~3_combout\))) ) ) ) # ( \u2|u3|u2|m[11]~4_combout\ & ( !\v4|m[13]~1_combout\ & ( (\u2|u4|u1|u4|u4|co~0_combout\ & 
-- ((!\v4|m[12]~2_combout\) # ((!\u2|u4|u1|u3|u4|co~combout\) # (\u2|u3|u2|m[12]~3_combout\)))) ) ) ) # ( !\u2|u3|u2|m[11]~4_combout\ & ( !\v4|m[13]~1_combout\ & ( (\u2|u4|u1|u4|u4|co~0_combout\ & (((!\v4|m[12]~2_combout\ & !\u2|u4|u1|u3|u4|co~combout\)) # 
-- (\u2|u3|u2|m[12]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110011001100100011001100000000001000000000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u2|u4|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u3|u2|ALT_INV_m[12]~3_combout\,
	datae => \u2|u3|u2|ALT_INV_m[11]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u4|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X1_Y7_N30
\u2|u4|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u4|co~2_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( (\u2|u3|u2|m[13]~12_combout\ & (\u2|u3|u2|m[14]~11_combout\ & !\v4|m[14]~0_combout\)) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( ((\u2|u3|u2|m[13]~12_combout\ & !\v4|m[14]~0_combout\)) # 
-- (\u2|u3|u2|m[14]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u3|u2|ALT_INV_m[13]~12_combout\,
	datac => \u2|u3|u2|ALT_INV_m[14]~11_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u2|u4|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X7_Y7_N18
\u2|u4|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u2|co~combout\ = ( \v4|m[13]~1_combout\ & ( (\u2|u3|u2|m[12]~3_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u2|u4|u1|u3|u4|co~combout\) # (\u2|u3|u2|m[11]~4_combout\))) # (\v4|m[12]~2_combout\ & (!\u2|u4|u1|u3|u4|co~combout\ & 
-- \u2|u3|u2|m[11]~4_combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( ((!\v4|m[12]~2_combout\ & ((!\u2|u4|u1|u3|u4|co~combout\) # (\u2|u3|u2|m[11]~4_combout\))) # (\v4|m[12]~2_combout\ & (!\u2|u4|u1|u3|u4|co~combout\ & \u2|u3|u2|m[11]~4_combout\))) # 
-- (\u2|u3|u2|m[12]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111100011111110111100001000000011100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u4|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u2|u3|u2|ALT_INV_m[12]~3_combout\,
	datad => \u2|u3|u2|ALT_INV_m[11]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u4|u1|u4|u2|co~combout\);

-- Location: LABCELL_X7_Y7_N27
\u2|u4|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[14]~10_combout\ = ( \u2|u4|u1|u4|u2|co~combout\ & ( !\u2|u3|u2|m[13]~12_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u2|u4|u1|u4|u2|co~combout\ & ( 
-- !\u2|u3|u2|m[13]~12_combout\ $ ((((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[14]~0_combout\,
	datad => \u2|u3|u2|ALT_INV_m[13]~12_combout\,
	dataf => \u2|u4|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u2|m[14]~10_combout\);

-- Location: LABCELL_X7_Y7_N21
\u2|u4|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u1|co~combout\ = ( \u2|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\ & \u2|u3|u2|m[11]~4_combout\) ) ) # ( !\u2|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u2|u3|u2|m[11]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u2|u3|u2|ALT_INV_m[11]~4_combout\,
	dataf => \u2|u4|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u2|u4|u1|u4|u1|co~combout\);

-- Location: LABCELL_X7_Y7_N24
\u2|u4|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[13]~11_combout\ = ( \v4|m[13]~1_combout\ & ( !\u2|u3|u2|m[12]~3_combout\ $ (((!\u2|u4|u1|u4|u1|co~combout\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u2|u3|u2|m[12]~3_combout\ $ 
-- ((((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) # (\u2|u4|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u3|u2|ALT_INV_m[12]~3_combout\,
	datad => \u2|u4|u1|u4|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u2|u4|u2|m[13]~11_combout\);

-- Location: LABCELL_X7_Y7_N3
\u3|u1|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u4|co~2_combout\ = ( \u2|u4|u2|m[13]~11_combout\ & ( (!\u2|u4|u2|m[14]~10_combout\ & (!\v4|m[14]~0_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\)) # (\u2|u4|u2|m[14]~10_combout\ & ((!\v4|m[14]~0_combout\) # (!\u1|u2|u1|u4|u4|co~0_combout\))) ) ) 
-- # ( !\u2|u4|u2|m[13]~11_combout\ & ( (\u2|u4|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[14]~10_combout\,
	datab => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u2|u4|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u1|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X7_Y7_N39
\u2|u4|u2|m[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[12]~3_combout\ = ( \v4|m[12]~2_combout\ & ( !\u2|u3|u2|m[11]~4_combout\ $ ((((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) # (\u2|u4|u1|u3|u4|co~combout\))) ) ) # ( !\v4|m[12]~2_combout\ & ( !\u2|u3|u2|m[11]~4_combout\ $ 
-- (((!\u2|u4|u1|u3|u4|co~combout\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u4|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u2|u3|u2|ALT_INV_m[11]~4_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u2|u4|u2|m[12]~3_combout\);

-- Location: LABCELL_X7_Y7_N0
\u3|u1|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u4|co~0_combout\ = ( \u2|u4|u2|m[13]~11_combout\ & ( (\v4|m[14]~0_combout\ & (!\u2|u4|u2|m[14]~10_combout\ $ (\u1|u2|u1|u4|u4|co~0_combout\))) ) ) # ( !\u2|u4|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u2|u4|u2|m[14]~10_combout\ $ 
-- (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[14]~10_combout\,
	datab => \v4|ALT_INV_m[14]~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u2|u4|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u1|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X6_Y7_N57
\u2|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u3|co~combout\ = ( \v4|m[10]~4_combout\ & ( (!\u2|u3|u2|m[9]~6_combout\) # ((!\u2|u4|u1|u3|u2|co~0_combout\ & !\u2|u4|u1|u3|u2|co~1_combout\)) ) ) # ( !\v4|m[10]~4_combout\ & ( (!\u2|u3|u2|m[9]~6_combout\ & (!\u2|u4|u1|u3|u2|co~0_combout\ & 
-- !\u2|u4|u1|u3|u2|co~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u3|u2|ALT_INV_m[9]~6_combout\,
	datac => \u2|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \u2|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[10]~4_combout\,
	combout => \u2|u4|u1|u3|u3|co~combout\);

-- Location: LABCELL_X7_Y7_N42
\u2|u4|u2|m[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[11]~4_combout\ = ( \v4|m[11]~3_combout\ & ( !\u2|u3|u2|m[10]~5_combout\ $ ((((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) # (\u2|u4|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u2|u3|u2|m[10]~5_combout\ $ 
-- (((!\u2|u4|u1|u3|u3|co~combout\) # ((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101101010010101010110101001101010010101010110101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u2|ALT_INV_m[10]~5_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u2|u4|u2|m[11]~4_combout\);

-- Location: LABCELL_X5_Y6_N36
\u2|u4|u2|m[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[10]~5_combout\ = ( \u2|u4|u1|u4|u4|co~1_combout\ & ( \u2|u4|u1|u3|u2|co~0_combout\ & ( !\u2|u3|u2|m[9]~6_combout\ $ (!\v4|m[10]~4_combout\) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( \u2|u4|u1|u3|u2|co~0_combout\ & ( 
-- !\u2|u3|u2|m[9]~6_combout\ $ (((!\u2|u4|u1|u4|u4|co~2_combout\) # (!\v4|m[10]~4_combout\))) ) ) ) # ( \u2|u4|u1|u4|u4|co~1_combout\ & ( !\u2|u4|u1|u3|u2|co~0_combout\ & ( !\u2|u4|u1|u3|u2|co~1_combout\ $ (!\u2|u3|u2|m[9]~6_combout\ $ 
-- (!\v4|m[10]~4_combout\)) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( !\u2|u4|u1|u3|u2|co~0_combout\ & ( !\u2|u3|u2|m[9]~6_combout\ $ (((!\u2|u4|u1|u4|u4|co~2_combout\) # (!\u2|u4|u1|u3|u2|co~1_combout\ $ (!\v4|m[10]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100011110110000110011110000001111010110100000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u2|u3|u2|ALT_INV_m[9]~6_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	datae => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u2|u4|u2|m[10]~5_combout\);

-- Location: LABCELL_X2_Y7_N39
\u2|u4|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u1|s~combout\ = ( \u2|u4|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ (!\u2|u3|u2|m[7]~7_combout\ $ (((!\v4|m[7]~6_combout\ & \u2|u3|u2|m[6]~8_combout\)))) ) ) # ( !\u2|u4|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ 
-- (!\u2|u3|u2|m[7]~7_combout\ $ (((!\v4|m[7]~6_combout\) # (\u2|u3|u2|m[6]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011011000011100101101100001100111100100101100011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	datad => \u2|u3|u2|ALT_INV_m[6]~8_combout\,
	dataf => \u2|u4|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u4|u1|u3|u1|s~combout\);

-- Location: LABCELL_X2_Y7_N18
\u3|u1|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u2|co~0_combout\ = ( \u2|u4|u1|u3|u1|s~combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & (\u2|u3|u2|m[7]~7_combout\ & (!\v4|m[9]~5_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\))) ) ) # ( !\u2|u4|u1|u3|u1|s~combout\ & ( (!\v4|m[9]~5_combout\ & 
-- (((\u2|u4|u1|u4|u4|co~1_combout\) # (\u2|u3|u2|m[7]~7_combout\)) # (\u2|u4|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u3|u1|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X1_Y7_N0
\u2|u4|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u2|u2|co~combout\ = ( \u2|u3|u2|m[4]~10_combout\ & ( (\v4|m[5]~8_combout\ & (!\u2|u4|u1|u2|u1|co~1_combout\ & !\u2|u4|u1|u2|u1|co~0_combout\)) ) ) # ( !\u2|u3|u2|m[4]~10_combout\ & ( ((!\u2|u4|u1|u2|u1|co~1_combout\ & 
-- !\u2|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011111100110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u2|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \u2|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u3|u2|ALT_INV_m[4]~10_combout\,
	combout => \u2|u4|u1|u2|u2|co~combout\);

-- Location: LABCELL_X2_Y7_N45
\u2|u4|u2|m[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[6]~8_combout\ = ( \u2|u4|u1|u2|u2|co~combout\ & ( !\u2|u3|u2|m[5]~9_combout\ $ ((((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u2|u4|u1|u2|u2|co~combout\ & ( !\u2|u3|u2|m[5]~9_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u2|ALT_INV_m[5]~9_combout\,
	dataf => \u2|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u2|m[6]~8_combout\);

-- Location: LABCELL_X2_Y6_N0
\u2|u4|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u2|u3|u2|m[2]~1_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u2|u4|u1|u1|u2|co~combout\) # (\u2|u3|u2|m[1]~2_combout\))) # (\v4|m[2]~10_combout\ & (\u2|u3|u2|m[1]~2_combout\ & 
-- !\u2|u4|u1|u1|u2|co~combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u2|u3|u2|m[2]~1_combout\ $ (((!\v4|m[2]~10_combout\ & (!\u2|u3|u2|m[1]~2_combout\ & \u2|u4|u1|u1|u2|co~combout\)) # (\v4|m[2]~10_combout\ & ((!\u2|u3|u2|m[1]~2_combout\) # 
-- (\u2|u4|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000111001100111000011100101100011110001100110001111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datac => \u2|u3|u2|ALT_INV_m[1]~2_combout\,
	datad => \u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u4|u1|u1|u4|s~combout\);

-- Location: LABCELL_X2_Y6_N33
\u3|u1|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u2|u4|u1|u4|u4|co~1_combout\ & ((!\u2|u4|u1|u4|u4|co~2_combout\ & (!\u2|u3|u2|m[2]~1_combout\)) # (\u2|u4|u1|u4|u4|co~2_combout\ & ((\u2|u4|u1|u1|u4|s~combout\))))) # 
-- (\u2|u4|u1|u4|u4|co~1_combout\ & (((\u2|u4|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u2|u4|u1|u4|u4|co~1_combout\ & ((!\u2|u4|u1|u4|u4|co~2_combout\ & (\u2|u3|u2|m[2]~1_combout\)) # (\u2|u4|u1|u4|u4|co~2_combout\ & 
-- ((!\u2|u4|u1|u1|u4|s~combout\))))) # (\u2|u4|u1|u4|u4|co~1_combout\ & (((!\u2|u4|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100010000000111101111000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datad => \u2|u4|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u1|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X2_Y6_N30
\u2|u4|u2|m[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[2]~2_combout\ = ( \v4|m[2]~10_combout\ & ( !\u2|u3|u2|m[1]~2_combout\ $ ((((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) # (\u2|u4|u1|u1|u2|co~combout\))) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u2|u3|u2|m[1]~2_combout\ $ 
-- (((!\u2|u4|u1|u1|u2|co~combout\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u3|u2|ALT_INV_m[1]~2_combout\,
	datad => \u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[2]~10_combout\,
	combout => \u2|u4|u2|m[2]~2_combout\);

-- Location: LABCELL_X6_Y6_N36
\u2|u3|u2|m[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[0]~13_combout\ = ( \v2|m[9]~5_combout\ & ( (!\b[0]~input_o\) # ((!\u2|u3|u1|u4|u4|co~1_combout\ & !\u2|u3|u1|u4|u4|co~2_combout\)) ) ) # ( !\v2|m[9]~5_combout\ & ( (\b[0]~input_o\ & ((\u2|u3|u1|u4|u4|co~2_combout\) # 
-- (\u2|u3|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[9]~5_combout\,
	combout => \u2|u3|u2|m[0]~13_combout\);

-- Location: LABCELL_X2_Y6_N24
\u2|u4|u2|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[1]~1_combout\ = ( \u2|u4|u1|u4|u4|co~1_combout\ & ( \v2|m[8]~6_combout\ & ( !\u2|u3|u2|m[0]~13_combout\ $ (!\v4|m[1]~11_combout\) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( \v2|m[8]~6_combout\ & ( !\u2|u3|u2|m[0]~13_combout\ $ 
-- (((!\u2|u4|u1|u4|u4|co~2_combout\) # (!\v4|m[1]~11_combout\))) ) ) ) # ( \u2|u4|u1|u4|u4|co~1_combout\ & ( !\v2|m[8]~6_combout\ & ( !\u2|u3|u2|m[0]~13_combout\ $ (!\b[0]~input_o\ $ (\v4|m[1]~11_combout\)) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( 
-- !\v2|m[8]~6_combout\ & ( !\u2|u3|u2|m[0]~13_combout\ $ (((!\u2|u4|u1|u4|u4|co~2_combout\) # (!\b[0]~input_o\ $ (\v4|m[1]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011001011001101001100101010101010110100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u2|ALT_INV_m[0]~13_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v2|ALT_INV_m[8]~6_combout\,
	combout => \u2|u4|u2|m[1]~1_combout\);

-- Location: LABCELL_X12_Y4_N6
\v2|m[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[7]~7_combout\ = !\a[7]~input_o\ $ (((!\a[15]~input_o\) # ((\o~0_combout\ & !\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101111110100000010111111010000001011111101000000101111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_o~0_combout\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[7]~input_o\,
	combout => \v2|m[7]~7_combout\);

-- Location: LABCELL_X7_Y6_N0
\u3|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u1|u2|co~combout\ = ( \v2|m[8]~6_combout\ & ( \v4|m[1]~11_combout\ & ( (\b[0]~input_o\ & ((!\v2|m[7]~7_combout\) # ((\u2|u4|u1|u4|u4|co~1_combout\) # (\u2|u4|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\v2|m[8]~6_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- (!\v2|m[7]~7_combout\) # ((!\b[0]~input_o\) # ((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\))) ) ) ) # ( \v2|m[8]~6_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[7]~7_combout\ & (\b[0]~input_o\ & ((\u2|u4|u1|u4|u4|co~1_combout\) # 
-- (\u2|u4|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\v2|m[8]~6_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[7]~7_combout\ & (\b[0]~input_o\ & (!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000100010001011111110111011100010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[7]~7_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \v2|ALT_INV_m[8]~6_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u1|u1|u1|u2|co~combout\);

-- Location: LABCELL_X2_Y6_N36
\u3|u1|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u2|u1|co~1_combout\ = ( \u3|u1|u1|u1|u2|co~combout\ & ( \v4|m[3]~12_combout\ & ( (!\u3|u1|u1|u2|u1|s~0_combout\ & (\u2|u4|u2|m[2]~2_combout\ & (!\v4|m[2]~10_combout\ & \u2|u4|u2|m[1]~1_combout\))) ) ) ) # ( !\u3|u1|u1|u1|u2|co~combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\u3|u1|u1|u2|u1|s~0_combout\ & (\u2|u4|u2|m[2]~2_combout\ & ((!\v4|m[2]~10_combout\) # (\u2|u4|u2|m[1]~1_combout\)))) ) ) ) # ( \u3|u1|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u3|u1|u1|u2|u1|s~0_combout\ & 
-- (((!\v4|m[2]~10_combout\ & \u2|u4|u2|m[1]~1_combout\)) # (\u2|u4|u2|m[2]~2_combout\))) ) ) ) # ( !\u3|u1|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u3|u1|u1|u2|u1|s~0_combout\ & (((!\v4|m[2]~10_combout\) # (\u2|u4|u2|m[1]~1_combout\)) # 
-- (\u2|u4|u2|m[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010101010001000101010001000100000001000100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u2|u1|ALT_INV_s~0_combout\,
	datab => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \u2|u4|u2|ALT_INV_m[1]~1_combout\,
	datae => \u3|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u1|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X2_Y6_N18
\u3|u1|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & ((!\u2|u4|u1|u4|u4|co~1_combout\ & (\u2|u3|u2|m[2]~1_combout\)) # (\u2|u4|u1|u4|u4|co~1_combout\ & ((!\u2|u4|u1|u1|u4|s~combout\))))) # 
-- (\u2|u4|u1|u4|u4|co~2_combout\ & (((!\u2|u4|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001011110000011100101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datac => \u2|u4|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u1|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X2_Y6_N12
\u2|u4|u2|m[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[5]~9_combout\ = ( \u2|u4|u1|u4|u4|co~1_combout\ & ( \u2|u4|u1|u2|u1|co~0_combout\ & ( !\v4|m[5]~8_combout\ $ (!\u2|u3|u2|m[4]~10_combout\) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( \u2|u4|u1|u2|u1|co~0_combout\ & ( 
-- !\u2|u3|u2|m[4]~10_combout\ $ (((!\v4|m[5]~8_combout\) # (!\u2|u4|u1|u4|u4|co~2_combout\))) ) ) ) # ( \u2|u4|u1|u4|u4|co~1_combout\ & ( !\u2|u4|u1|u2|u1|co~0_combout\ & ( !\v4|m[5]~8_combout\ $ (!\u2|u4|u1|u2|u1|co~1_combout\ $ 
-- (!\u2|u3|u2|m[4]~10_combout\)) ) ) ) # ( !\u2|u4|u1|u4|u4|co~1_combout\ & ( !\u2|u4|u1|u2|u1|co~0_combout\ & ( !\u2|u3|u2|m[4]~10_combout\ $ (((!\u2|u4|u1|u4|u4|co~2_combout\) # (!\v4|m[5]~8_combout\ $ (!\u2|u4|u1|u2|u1|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111110110100110010110011000000101111110100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u2|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u3|u2|ALT_INV_m[4]~10_combout\,
	datae => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	combout => \u2|u4|u2|m[5]~9_combout\);

-- Location: LABCELL_X2_Y6_N3
\u2|u4|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u2|u3|u2|m[2]~1_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u2|u4|u1|u1|u2|co~combout\) # (\u2|u3|u2|m[1]~2_combout\))) # (\v4|m[2]~10_combout\ & (!\u2|u4|u1|u1|u2|co~combout\ & 
-- \u2|u3|u2|m[1]~2_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u2|u4|u1|u1|u2|co~combout\) # (\u2|u3|u2|m[1]~2_combout\))) # (\v4|m[2]~10_combout\ & (!\u2|u4|u1|u1|u2|co~combout\ & \u2|u3|u2|m[1]~2_combout\))) # 
-- (\u2|u3|u2|m[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111011101100111111101100100000001100100010000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datac => \u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u3|u2|ALT_INV_m[1]~2_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u2|u4|u1|u1|u4|co~combout\);

-- Location: LABCELL_X6_Y6_N57
\u2|u3|u2|m[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[3]~0_combout\ = ( \u2|u3|u1|u1|u4|s~combout\ & ( (!\u2|u3|u1|u4|u4|co~1_combout\ & (!\u2|u3|u1|u4|u4|co~2_combout\ & \u2|u2|u2|m[2]~0_combout\)) ) ) # ( !\u2|u3|u1|u1|u4|s~combout\ & ( ((\u2|u2|u2|m[2]~0_combout\) # 
-- (\u2|u3|u1|u4|u4|co~2_combout\)) # (\u2|u3|u1|u4|u4|co~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u2|ALT_INV_m[2]~0_combout\,
	dataf => \u2|u3|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u2|u3|u2|m[3]~0_combout\);

-- Location: LABCELL_X2_Y6_N42
\u2|u4|u2|m[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[4]~0_combout\ = ( \v4|m[4]~9_combout\ & ( !\u2|u3|u2|m[3]~0_combout\ $ (((!\u2|u4|u1|u1|u4|co~combout\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u2|u3|u2|m[3]~0_combout\ $ 
-- ((((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) # (\u2|u4|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u4|u1|u1|u4|ALT_INV_co~combout\,
	datad => \u2|u3|u2|ALT_INV_m[3]~0_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u2|u4|u2|m[4]~0_combout\);

-- Location: MLABCELL_X4_Y6_N0
\u3|u1|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u2|u3|co~combout\ = ( \v4|m[5]~8_combout\ & ( \u2|u4|u2|m[4]~0_combout\ & ( (!\u2|u4|u2|m[5]~9_combout\ & (((!\u3|u1|u1|u2|u1|co~1_combout\ & !\u3|u1|u1|u2|u1|co~0_combout\)) # (\v4|m[6]~7_combout\))) # (\u2|u4|u2|m[5]~9_combout\ & 
-- (!\u3|u1|u1|u2|u1|co~1_combout\ & (!\u3|u1|u1|u2|u1|co~0_combout\ & \v4|m[6]~7_combout\))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u2|u4|u2|m[4]~0_combout\ & ( (!\u2|u4|u2|m[5]~9_combout\ & \v4|m[6]~7_combout\) ) ) ) # ( \v4|m[5]~8_combout\ & ( 
-- !\u2|u4|u2|m[4]~0_combout\ & ( (!\u2|u4|u2|m[5]~9_combout\) # (\v4|m[6]~7_combout\) ) ) ) # ( !\v4|m[5]~8_combout\ & ( !\u2|u4|u2|m[4]~0_combout\ & ( (!\u2|u4|u2|m[5]~9_combout\ & (((!\u3|u1|u1|u2|u1|co~1_combout\ & !\u3|u1|u1|u2|u1|co~0_combout\)) # 
-- (\v4|m[6]~7_combout\))) # (\u2|u4|u2|m[5]~9_combout\ & (!\u3|u1|u1|u2|u1|co~1_combout\ & (!\u3|u1|u1|u2|u1|co~0_combout\ & \v4|m[6]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111000111100001111111100000000111100001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u4|u2|ALT_INV_m[5]~9_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u2|u4|u2|ALT_INV_m[4]~0_combout\,
	combout => \u3|u1|u1|u2|u3|co~combout\);

-- Location: LABCELL_X2_Y7_N57
\u3|u1|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u2|s~0_combout\ = ( \u2|u3|u2|m[7]~7_combout\ & ( !\v4|m[9]~5_combout\ $ (((\u2|u4|u1|u3|u1|s~combout\ & ((\u2|u4|u1|u4|u4|co~1_combout\) # (\u2|u4|u1|u4|u4|co~2_combout\))))) ) ) # ( !\u2|u3|u2|m[7]~7_combout\ & ( !\v4|m[9]~5_combout\ $ 
-- ((((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) # (\u2|u4|u1|u3|u1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111111111000000001111111100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u4|u1|u3|u1|ALT_INV_s~combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	combout => \u3|u1|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X2_Y7_N54
\u2|u4|u2|m[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[7]~7_combout\ = ( \v4|m[7]~6_combout\ & ( !\u2|u3|u2|m[6]~8_combout\ $ ((((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) # (\u2|u4|u1|u2|u3|co~combout\))) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u2|u3|u2|m[6]~8_combout\ $ 
-- (((!\u2|u4|u1|u2|u3|co~combout\) # ((!\u2|u4|u1|u4|u4|co~2_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u4|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|u3|u2|ALT_INV_m[6]~8_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u2|u4|u2|m[7]~7_combout\);

-- Location: MLABCELL_X4_Y6_N36
\u3|u1|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u2|co~1_combout\ = ( \u2|u4|u2|m[7]~7_combout\ & ( \v4|m[8]~13_combout\ & ( (!\u3|u1|u1|u3|u2|s~0_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u3|u1|u1|u2|u3|co~combout\) # (\u2|u4|u2|m[6]~8_combout\))) # (\v4|m[7]~6_combout\ & 
-- (\u2|u4|u2|m[6]~8_combout\ & !\u3|u1|u1|u2|u3|co~combout\)))) ) ) ) # ( \u2|u4|u2|m[7]~7_combout\ & ( !\v4|m[8]~13_combout\ & ( !\u3|u1|u1|u3|u2|s~0_combout\ ) ) ) # ( !\u2|u4|u2|m[7]~7_combout\ & ( !\v4|m[8]~13_combout\ & ( (!\u3|u1|u1|u3|u2|s~0_combout\ 
-- & ((!\v4|m[7]~6_combout\ & ((!\u3|u1|u1|u2|u3|co~combout\) # (\u2|u4|u2|m[6]~8_combout\))) # (\v4|m[7]~6_combout\ & (\u2|u4|u2|m[6]~8_combout\ & !\u3|u1|u1|u2|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000000000111111110000000000000000000000001011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u2|u4|u2|ALT_INV_m[6]~8_combout\,
	datac => \u3|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u3|u1|u1|u3|u2|ALT_INV_s~0_combout\,
	datae => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u1|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X2_Y7_N36
\u2|u4|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u3|u1|co~combout\ = ( \u2|u4|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~13_combout\ & (((!\v4|m[7]~6_combout\ & \u2|u3|u2|m[6]~8_combout\)) # (\u2|u3|u2|m[7]~7_combout\))) # (\v4|m[8]~13_combout\ & (!\v4|m[7]~6_combout\ & (\u2|u3|u2|m[6]~8_combout\ & 
-- \u2|u3|u2|m[7]~7_combout\))) ) ) # ( !\u2|u4|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\) # ((\u2|u3|u2|m[7]~7_combout\) # (\u2|u3|u2|m[6]~8_combout\)))) # (\v4|m[8]~13_combout\ & (\u2|u3|u2|m[7]~7_combout\ & 
-- ((!\v4|m[7]~6_combout\) # (\u2|u3|u2|m[6]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011101111100011001110111100001000110011100000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u2|u3|u2|ALT_INV_m[6]~8_combout\,
	datad => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	dataf => \u2|u4|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u4|u1|u3|u1|co~combout\);

-- Location: LABCELL_X2_Y7_N48
\u2|u3|u2|m[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|m[8]~14_combout\ = ( \u2|u2|u2|m[7]~5_combout\ & ( (!\u2|u3|u1|u3|u1|s~combout\) # ((!\u2|u3|u1|u4|u4|co~2_combout\ & !\u2|u3|u1|u4|u4|co~1_combout\)) ) ) # ( !\u2|u2|u2|m[7]~5_combout\ & ( (!\u2|u3|u1|u3|u1|s~combout\ & 
-- ((\u2|u3|u1|u4|u4|co~1_combout\) # (\u2|u3|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u3|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u2|u2|u2|ALT_INV_m[7]~5_combout\,
	combout => \u2|u3|u2|m[8]~14_combout\);

-- Location: LABCELL_X2_Y7_N42
\u2|u4|u2|m[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[9]~6_combout\ = ( \u2|u3|u2|m[8]~14_combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & ((!\u2|u4|u1|u4|u4|co~1_combout\) # (!\u2|u4|u1|u3|u1|co~combout\ $ (!\v4|m[9]~5_combout\)))) # (\u2|u4|u1|u4|u4|co~2_combout\ & ((!\u2|u4|u1|u3|u1|co~combout\ 
-- $ (!\v4|m[9]~5_combout\)))) ) ) # ( !\u2|u3|u2|m[8]~14_combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & (\u2|u4|u1|u4|u4|co~1_combout\ & (!\u2|u4|u1|u3|u1|co~combout\ $ (\v4|m[9]~5_combout\)))) # (\u2|u4|u1|u4|u4|co~2_combout\ & 
-- ((!\u2|u4|u1|u3|u1|co~combout\ $ (\v4|m[9]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u4|u1|u3|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u2|u3|u2|ALT_INV_m[8]~14_combout\,
	combout => \u2|u4|u2|m[9]~6_combout\);

-- Location: LABCELL_X5_Y6_N12
\u3|u1|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u2|u4|u2|m[10]~5_combout\) # ((!\u2|u4|u2|m[9]~6_combout\) # ((!\u3|u1|u1|u3|u2|co~0_combout\ & !\u3|u1|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( 
-- \v4|m[11]~3_combout\ & ( (!\u2|u4|u2|m[10]~5_combout\) # ((!\u3|u1|u1|u3|u2|co~0_combout\ & (!\u3|u1|u1|u3|u2|co~1_combout\ & !\u2|u4|u2|m[9]~6_combout\))) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u2|u4|u2|m[10]~5_combout\ & 
-- ((!\u2|u4|u2|m[9]~6_combout\) # ((!\u3|u1|u1|u3|u2|co~0_combout\ & !\u3|u1|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u2|u4|u2|m[10]~5_combout\ & (!\u3|u1|u1|u3|u2|co~0_combout\ & 
-- (!\u3|u1|u1|u3|u2|co~1_combout\ & !\u2|u4|u2|m[9]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101010101000000011101010101010101111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[10]~5_combout\,
	datab => \u3|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u2|u4|u2|ALT_INV_m[9]~6_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u1|u1|u3|u4|co~combout\);

-- Location: LABCELL_X7_Y7_N6
\u3|u1|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u4|co~1_combout\ = ( \u3|u1|u1|u3|u4|co~combout\ & ( \v4|m[13]~1_combout\ & ( (!\v4|m[12]~2_combout\ & (\u2|u4|u2|m[12]~3_combout\ & (\u3|u1|u1|u4|u4|co~0_combout\ & \u2|u4|u2|m[11]~4_combout\))) ) ) ) # ( !\u3|u1|u1|u3|u4|co~combout\ & ( 
-- \v4|m[13]~1_combout\ & ( (\u2|u4|u2|m[12]~3_combout\ & (\u3|u1|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\) # (\u2|u4|u2|m[11]~4_combout\)))) ) ) ) # ( \u3|u1|u1|u3|u4|co~combout\ & ( !\v4|m[13]~1_combout\ & ( (\u3|u1|u1|u4|u4|co~0_combout\ & 
-- (((!\v4|m[12]~2_combout\ & \u2|u4|u2|m[11]~4_combout\)) # (\u2|u4|u2|m[12]~3_combout\))) ) ) ) # ( !\u3|u1|u1|u3|u4|co~combout\ & ( !\v4|m[13]~1_combout\ & ( (\u3|u1|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\) # ((\u2|u4|u2|m[11]~4_combout\) # 
-- (\u2|u4|u2|m[12]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001111000000110000101100000010000000110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u4|u2|ALT_INV_m[12]~3_combout\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u2|u4|u2|ALT_INV_m[11]~4_combout\,
	datae => \u3|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u3|u1|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X7_Y7_N48
\u3|u1|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u2|co~combout\ = ( \u2|u4|u2|m[12]~3_combout\ & ( (!\v4|m[13]~1_combout\) # ((!\v4|m[12]~2_combout\ & ((!\u3|u1|u1|u3|u4|co~combout\) # (\u2|u4|u2|m[11]~4_combout\))) # (\v4|m[12]~2_combout\ & (\u2|u4|u2|m[11]~4_combout\ & 
-- !\u3|u1|u1|u3|u4|co~combout\))) ) ) # ( !\u2|u4|u2|m[12]~3_combout\ & ( (!\v4|m[13]~1_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u3|u1|u1|u3|u4|co~combout\) # (\u2|u4|u2|m[11]~4_combout\))) # (\v4|m[12]~2_combout\ & (\u2|u4|u2|m[11]~4_combout\ & 
-- !\u3|u1|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000100000101100000010000011111011111100101111101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u2|u4|u2|ALT_INV_m[11]~4_combout\,
	datac => \v4|ALT_INV_m[13]~1_combout\,
	datad => \u3|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u2|u4|u2|ALT_INV_m[12]~3_combout\,
	combout => \u3|u1|u1|u4|u2|co~combout\);

-- Location: LABCELL_X7_Y7_N57
\u3|u1|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[14]~10_combout\ = ( \u2|u4|u2|m[13]~11_combout\ & ( (!\u3|u1|u1|u4|u4|co~2_combout\ & ((!\u3|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[14]~0_combout\ $ (!\u3|u1|u1|u4|u2|co~combout\)))) # (\u3|u1|u1|u4|u4|co~2_combout\ & ((!\v4|m[14]~0_combout\ $ 
-- (!\u3|u1|u1|u4|u2|co~combout\)))) ) ) # ( !\u2|u4|u2|m[13]~11_combout\ & ( (!\u3|u1|u1|u4|u4|co~2_combout\ & (\u3|u1|u1|u4|u4|co~1_combout\ & (!\v4|m[14]~0_combout\ $ (\u3|u1|u1|u4|u2|co~combout\)))) # (\u3|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\v4|m[14]~0_combout\ $ (\u3|u1|u1|u4|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[14]~0_combout\,
	datad => \u3|u1|u1|u4|u2|ALT_INV_co~combout\,
	dataf => \u2|u4|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u1|u2|m[14]~10_combout\);

-- Location: LABCELL_X7_Y7_N51
\u3|u1|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u1|co~combout\ = ( \v4|m[12]~2_combout\ & ( (\u2|u4|u2|m[11]~4_combout\ & !\u3|u1|u1|u3|u4|co~combout\) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\u3|u1|u1|u3|u4|co~combout\) # (\u2|u4|u2|m[11]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|u2|ALT_INV_m[11]~4_combout\,
	datad => \u3|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u3|u1|u1|u4|u1|co~combout\);

-- Location: LABCELL_X7_Y7_N54
\u3|u1|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[13]~11_combout\ = ( \u3|u1|u1|u4|u1|co~combout\ & ( !\u2|u4|u2|m[12]~3_combout\ $ (((!\v4|m[13]~1_combout\) # ((!\u3|u1|u1|u4|u4|co~2_combout\ & !\u3|u1|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u3|u1|u1|u4|u1|co~combout\ & ( 
-- !\u2|u4|u2|m[12]~3_combout\ $ ((((!\u3|u1|u1|u4|u4|co~2_combout\ & !\u3|u1|u1|u4|u4|co~1_combout\)) # (\v4|m[13]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[13]~1_combout\,
	datad => \u2|u4|u2|ALT_INV_m[12]~3_combout\,
	dataf => \u3|u1|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u3|u1|u2|m[13]~11_combout\);

-- Location: MLABCELL_X9_Y6_N0
\u3|u2|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u4|co~2_combout\ = ( \u3|u1|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # (\u3|u1|u2|m[14]~10_combout\))) # (\v4|m[14]~0_combout\ & (\u3|u1|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\)) ) ) # 
-- ( !\u3|u1|u2|m[13]~11_combout\ & ( (\u3|u1|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datab => \u3|u1|u2|ALT_INV_m[14]~10_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u3|u1|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u2|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X5_Y6_N48
\u3|u1|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u3|co~combout\ = (!\v4|m[10]~4_combout\ & (!\u3|u1|u1|u3|u2|co~0_combout\ & (!\u3|u1|u1|u3|u2|co~1_combout\ & !\u2|u4|u2|m[9]~6_combout\))) # (\v4|m[10]~4_combout\ & ((!\u2|u4|u2|m[9]~6_combout\) # ((!\u3|u1|u1|u3|u2|co~0_combout\ & 
-- !\u3|u1|u1|u3|u2|co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101000000110101010100000011010101010000001101010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u3|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u2|u4|u2|ALT_INV_m[9]~6_combout\,
	combout => \u3|u1|u1|u3|u3|co~combout\);

-- Location: LABCELL_X5_Y6_N24
\u3|u1|u2|m[11]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[11]~5_combout\ = ( \v4|m[11]~3_combout\ & ( !\u2|u4|u2|m[10]~5_combout\ $ ((((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) # (\u3|u1|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u2|u4|u2|m[10]~5_combout\ $ 
-- (((!\u3|u1|u1|u3|u3|co~combout\) # ((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u1|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u2|ALT_INV_m[10]~5_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u1|u2|m[11]~5_combout\);

-- Location: LABCELL_X7_Y7_N12
\u3|u1|u2|m[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[12]~4_combout\ = ( \u2|u4|u2|m[11]~4_combout\ & ( (!\u3|u1|u1|u4|u4|co~2_combout\ & ((!\u3|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[12]~2_combout\ $ (\u3|u1|u1|u3|u4|co~combout\)))) # (\u3|u1|u1|u4|u4|co~2_combout\ & ((!\v4|m[12]~2_combout\ $ 
-- (\u3|u1|u1|u3|u4|co~combout\)))) ) ) # ( !\u2|u4|u2|m[11]~4_combout\ & ( (!\u3|u1|u1|u4|u4|co~2_combout\ & (\u3|u1|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ (!\u3|u1|u1|u3|u4|co~combout\)))) # (\u3|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\v4|m[12]~2_combout\ $ (!\u3|u1|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u3|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u2|u4|u2|ALT_INV_m[11]~4_combout\,
	combout => \u3|u1|u2|m[12]~4_combout\);

-- Location: MLABCELL_X4_Y6_N33
\u3|u1|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u1|s~combout\ = ( \v4|m[8]~13_combout\ & ( !\u2|u4|u2|m[7]~7_combout\ $ (((!\u3|u1|u1|u2|u3|co~combout\ & ((!\v4|m[7]~6_combout\) # (\u2|u4|u2|m[6]~8_combout\))) # (\u3|u1|u1|u2|u3|co~combout\ & (\u2|u4|u2|m[6]~8_combout\ & 
-- !\v4|m[7]~6_combout\)))) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u2|u4|u2|m[7]~7_combout\ $ (((!\u3|u1|u1|u2|u3|co~combout\ & (!\u2|u4|u2|m[6]~8_combout\ & \v4|m[7]~6_combout\)) # (\u3|u1|u1|u2|u3|co~combout\ & ((!\u2|u4|u2|m[6]~8_combout\) # 
-- (\v4|m[7]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001001001101101100100100110101001101101100100100110110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u2|u4|u2|ALT_INV_m[6]~8_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u1|u1|u3|u1|s~combout\);

-- Location: LABCELL_X5_Y6_N6
\u3|u2|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u2|co~0_combout\ = ( \u3|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[9]~5_combout\ & !\u3|u1|u1|u3|u1|s~combout\) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u3|u1|u1|u4|u4|co~1_combout\ & (\u2|u4|u2|m[7]~7_combout\)) # 
-- (\u3|u1|u1|u4|u4|co~1_combout\ & ((!\u3|u1|u1|u3|u1|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011000000010001001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u3|u1|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u2|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X5_Y6_N0
\u3|u1|u2|m[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[10]~6_combout\ = ( \v4|m[10]~4_combout\ & ( \u3|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u4|u2|m[9]~6_combout\ $ (((!\u3|u1|u1|u3|u2|co~1_combout\ & !\u3|u1|u1|u3|u2|co~0_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u3|u1|u1|u4|u4|co~2_combout\ 
-- & ( !\u2|u4|u2|m[9]~6_combout\ $ (((\u3|u1|u1|u3|u2|co~0_combout\) # (\u3|u1|u1|u3|u2|co~1_combout\))) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u4|u2|m[9]~6_combout\ $ (((!\u3|u1|u1|u4|u4|co~1_combout\) # 
-- ((!\u3|u1|u1|u3|u2|co~1_combout\ & !\u3|u1|u1|u3|u2|co~0_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u4|u2|m[9]~6_combout\ $ (((!\u3|u1|u1|u4|u4|co~1_combout\) # ((\u3|u1|u1|u3|u2|co~0_combout\) # 
-- (\u3|u1|u1|u3|u2|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100110011001101100110011011000011001100110011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u2|ALT_INV_m[9]~6_combout\,
	datac => \u3|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u3|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u1|u2|m[10]~6_combout\);

-- Location: LABCELL_X2_Y6_N45
\u2|u4|u2|m[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[0]~13_combout\ = ( \v2|m[8]~6_combout\ & ( (!\b[0]~input_o\) # ((!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)) ) ) # ( !\v2|m[8]~6_combout\ & ( (\b[0]~input_o\ & ((\u2|u4|u1|u4|u4|co~2_combout\) # 
-- (\u2|u4|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[8]~6_combout\,
	combout => \u2|u4|u2|m[0]~13_combout\);

-- Location: LABCELL_X7_Y6_N36
\u3|u1|u2|m[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[1]~3_combout\ = ( \u2|u4|u2|m[0]~13_combout\ & ( \v4|m[1]~11_combout\ & ( (!\u3|u1|u1|u4|u4|co~1_combout\ & ((!\u3|u1|u1|u4|u4|co~2_combout\) # ((\b[0]~input_o\ & !\v2|m[7]~7_combout\)))) # (\u3|u1|u1|u4|u4|co~1_combout\ & (\b[0]~input_o\ & 
-- ((!\v2|m[7]~7_combout\)))) ) ) ) # ( !\u2|u4|u2|m[0]~13_combout\ & ( \v4|m[1]~11_combout\ & ( (!\u3|u1|u1|u4|u4|co~1_combout\ & (\u3|u1|u1|u4|u4|co~2_combout\ & ((!\b[0]~input_o\) # (\v2|m[7]~7_combout\)))) # (\u3|u1|u1|u4|u4|co~1_combout\ & 
-- ((!\b[0]~input_o\) # ((\v2|m[7]~7_combout\)))) ) ) ) # ( \u2|u4|u2|m[0]~13_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\b[0]~input_o\) # (((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) # (\v2|m[7]~7_combout\)) ) ) ) # ( 
-- !\u2|u4|u2|m[0]~13_combout\ & ( !\v4|m[1]~11_combout\ & ( (\b[0]~input_o\ & (!\v2|m[7]~7_combout\ & ((\u3|u1|u1|u4|u4|co~2_combout\) # (\u3|u1|u1|u4|u4|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000111011001111111101001100010111111011001110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v2|ALT_INV_m[7]~7_combout\,
	datae => \u2|u4|u2|ALT_INV_m[0]~13_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u1|u2|m[1]~3_combout\);

-- Location: LABCELL_X12_Y4_N51
\v2|m[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[6]~8_combout\ = ( \o~0_combout\ & ( \a[6]~input_o\ ) ) # ( !\o~0_combout\ & ( !\a[15]~input_o\ $ (!\a[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_o~0_combout\,
	combout => \v2|m[6]~8_combout\);

-- Location: LABCELL_X7_Y6_N42
\u3|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u1|u2|co~combout\ = ( \u3|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[1]~11_combout\ & ( (!\b[0]~input_o\ & ((!\v2|m[7]~7_combout\))) # (\b[0]~input_o\ & ((!\v2|m[6]~8_combout\) # (\v2|m[7]~7_combout\))) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( 
-- \v4|m[1]~11_combout\ & ( (!\b[0]~input_o\ & (((!\v2|m[7]~7_combout\)))) # (\b[0]~input_o\ & ((!\v2|m[6]~8_combout\) # (!\u3|u1|u1|u4|u4|co~1_combout\ $ (\v2|m[7]~7_combout\)))) ) ) ) # ( \u3|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( 
-- (!\v2|m[6]~8_combout\ & (\b[0]~input_o\ & \v2|m[7]~7_combout\)) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[6]~8_combout\ & (\b[0]~input_o\ & (!\u3|u1|u1|u4|u4|co~1_combout\ $ (\v2|m[7]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010000000000010001011111110001000111110111000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[6]~8_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v2|ALT_INV_m[7]~7_combout\,
	datae => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u2|u1|u1|u2|co~combout\);

-- Location: LABCELL_X2_Y6_N54
\u3|u1|u2|m[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[2]~2_combout\ = ( \v4|m[2]~10_combout\ & ( !\u2|u4|u2|m[1]~1_combout\ $ ((((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) # (\u3|u1|u1|u1|u2|co~combout\))) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u2|u4|u2|m[1]~1_combout\ $ 
-- (((!\u3|u1|u1|u1|u2|co~combout\) # ((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u4|u2|ALT_INV_m[1]~1_combout\,
	datad => \u3|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[2]~10_combout\,
	combout => \u3|u1|u2|m[2]~2_combout\);

-- Location: LABCELL_X2_Y6_N51
\u3|u1|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u2|u4|u2|m[2]~2_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u3|u1|u1|u1|u2|co~combout\) # (\u2|u4|u2|m[1]~1_combout\))) # (\v4|m[2]~10_combout\ & (\u2|u4|u2|m[1]~1_combout\ & 
-- !\u3|u1|u1|u1|u2|co~combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u2|u4|u2|m[2]~2_combout\ $ (((!\v4|m[2]~10_combout\ & (!\u2|u4|u2|m[1]~1_combout\ & \u3|u1|u1|u1|u2|co~combout\)) # (\v4|m[2]~10_combout\ & ((!\u2|u4|u2|m[1]~1_combout\) # 
-- (\u3|u1|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000111001100111000011100101100011110001100110001111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	datac => \u2|u4|u2|ALT_INV_m[1]~1_combout\,
	datad => \u3|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u1|u1|u1|u4|s~combout\);

-- Location: MLABCELL_X4_Y6_N51
\u3|u2|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u2|u1|s~0_combout\ = ( \u3|u1|u1|u1|u4|s~combout\ & ( !\v4|m[4]~9_combout\ $ ((((!\u2|u4|u2|m[2]~2_combout\) # (\u3|u1|u1|u4|u4|co~1_combout\)) # (\u3|u1|u1|u4|u4|co~2_combout\))) ) ) # ( !\u3|u1|u1|u1|u4|s~combout\ & ( !\v4|m[4]~9_combout\ $ 
-- (((!\u3|u1|u1|u4|u4|co~2_combout\ & (!\u3|u1|u1|u4|u4|co~1_combout\ & !\u2|u4|u2|m[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000000001111100001110000111110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[4]~9_combout\,
	datad => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	dataf => \u3|u1|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u3|u2|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X7_Y6_N48
\u3|u2|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u2|u1|co~1_combout\ = ( \v4|m[3]~12_combout\ & ( !\u3|u2|u1|u2|u1|s~0_combout\ & ( (\u3|u1|u2|m[2]~2_combout\ & ((!\u3|u1|u2|m[1]~3_combout\ & (!\u3|u2|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)) # (\u3|u1|u2|m[1]~3_combout\ & 
-- ((!\u3|u2|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\))))) ) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u3|u2|u1|u2|u1|s~0_combout\ & ( ((!\u3|u1|u2|m[1]~3_combout\ & (!\u3|u2|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)) # (\u3|u1|u2|m[1]~3_combout\ & 
-- ((!\u3|u2|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) # (\u3|u1|u2|m[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101001111000011010000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[1]~3_combout\,
	datab => \u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	datae => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u3|u2|u1|u2|u1|ALT_INV_s~0_combout\,
	combout => \u3|u2|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X2_Y6_N21
\u2|u4|u2|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[3]~12_combout\ = ( \u2|u4|u1|u1|u4|s~combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & (\u2|u3|u2|m[2]~1_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) ) ) # ( !\u2|u4|u1|u1|u4|s~combout\ & ( ((\u2|u4|u1|u4|u4|co~1_combout\) # 
-- (\u2|u3|u2|m[2]~1_combout\)) # (\u2|u4|u1|u4|u4|co~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u2|ALT_INV_m[2]~1_combout\,
	datad => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u2|u4|u2|m[3]~12_combout\);

-- Location: LABCELL_X2_Y6_N48
\u3|u1|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u2|u4|u2|m[2]~2_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u3|u1|u1|u1|u2|co~combout\) # (\u2|u4|u2|m[1]~1_combout\))) # (\v4|m[2]~10_combout\ & (!\u3|u1|u1|u1|u2|co~combout\ & 
-- \u2|u4|u2|m[1]~1_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u3|u1|u1|u1|u2|co~combout\) # (\u2|u4|u2|m[1]~1_combout\))) # (\v4|m[2]~10_combout\ & (!\u3|u1|u1|u1|u2|co~combout\ & \u2|u4|u2|m[1]~1_combout\))) # 
-- (\u2|u4|u2|m[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111011101100111111101100100000001100100010000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	datac => \u3|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u2|ALT_INV_m[1]~1_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u1|u1|u1|u4|co~combout\);

-- Location: LABCELL_X2_Y6_N57
\u3|u1|u2|m[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[4]~1_combout\ = ( \u3|u1|u1|u1|u4|co~combout\ & ( !\u2|u4|u2|m[3]~12_combout\ $ (((!\v4|m[4]~9_combout\) # ((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u3|u1|u1|u1|u4|co~combout\ & ( 
-- !\u2|u4|u2|m[3]~12_combout\ $ ((((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) # (\v4|m[4]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[4]~9_combout\,
	datad => \u2|u4|u2|ALT_INV_m[3]~12_combout\,
	dataf => \u3|u1|u1|u1|u4|ALT_INV_co~combout\,
	combout => \u3|u1|u2|m[4]~1_combout\);

-- Location: MLABCELL_X4_Y6_N12
\u3|u1|u2|m[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[5]~0_combout\ = ( \u3|u1|u1|u4|u4|co~2_combout\ & ( \u2|u4|u2|m[4]~0_combout\ & ( !\v4|m[5]~8_combout\ $ (((!\u3|u1|u1|u2|u1|co~1_combout\ & !\u3|u1|u1|u2|u1|co~0_combout\))) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( 
-- \u2|u4|u2|m[4]~0_combout\ & ( (!\u3|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[5]~8_combout\ $ (((!\u3|u1|u1|u2|u1|co~1_combout\ & !\u3|u1|u1|u2|u1|co~0_combout\)))) ) ) ) # ( \u3|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u4|u2|m[4]~0_combout\ & ( !\v4|m[5]~8_combout\ 
-- $ (((\u3|u1|u1|u2|u1|co~0_combout\) # (\u3|u1|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( !\u2|u4|u2|m[4]~0_combout\ & ( (\u3|u1|u1|u4|u4|co~1_combout\ & (!\v4|m[5]~8_combout\ $ (((\u3|u1|u1|u2|u1|co~0_combout\) # 
-- (\u3|u1|u1|u2|u1|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000011101001010000111111011110111111000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[5]~8_combout\,
	datad => \u3|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datae => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u2|u4|u2|ALT_INV_m[4]~0_combout\,
	combout => \u3|u1|u2|m[5]~0_combout\);

-- Location: LABCELL_X1_Y7_N48
\u3|u2|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u2|u1|co~0_combout\ = ( \u3|u1|u1|u4|u4|co~2_combout\ & ( \u3|u1|u1|u4|u4|co~1_combout\ & ( (!\v4|m[4]~9_combout\ & !\u3|u1|u1|u1|u4|s~combout\) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( \u3|u1|u1|u4|u4|co~1_combout\ & ( (!\v4|m[4]~9_combout\ 
-- & !\u3|u1|u1|u1|u4|s~combout\) ) ) ) # ( \u3|u1|u1|u4|u4|co~2_combout\ & ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( (!\v4|m[4]~9_combout\ & !\u3|u1|u1|u1|u4|s~combout\) ) ) ) # ( !\u3|u1|u1|u4|u4|co~2_combout\ & ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( 
-- (\u2|u4|u2|m[2]~2_combout\ & !\v4|m[4]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	datac => \v4|ALT_INV_m[4]~9_combout\,
	datad => \u3|u1|u1|u1|u4|ALT_INV_s~combout\,
	datae => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u2|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X1_Y7_N24
\u3|u2|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u2|u3|co~combout\ = ( \u3|u1|u2|m[5]~0_combout\ & ( \u3|u2|u1|u2|u1|co~0_combout\ & ( (!\u3|u1|u2|m[4]~1_combout\ & (\v4|m[6]~7_combout\ & \v4|m[5]~8_combout\)) ) ) ) # ( !\u3|u1|u2|m[5]~0_combout\ & ( \u3|u2|u1|u2|u1|co~0_combout\ & ( 
-- ((!\u3|u1|u2|m[4]~1_combout\ & \v4|m[5]~8_combout\)) # (\v4|m[6]~7_combout\) ) ) ) # ( \u3|u1|u2|m[5]~0_combout\ & ( !\u3|u2|u1|u2|u1|co~0_combout\ & ( (\v4|m[6]~7_combout\ & ((!\u3|u2|u1|u2|u1|co~1_combout\ & ((!\u3|u1|u2|m[4]~1_combout\) # 
-- (\v4|m[5]~8_combout\))) # (\u3|u2|u1|u2|u1|co~1_combout\ & (!\u3|u1|u2|m[4]~1_combout\ & \v4|m[5]~8_combout\)))) ) ) ) # ( !\u3|u1|u2|m[5]~0_combout\ & ( !\u3|u2|u1|u2|u1|co~0_combout\ & ( ((!\u3|u2|u1|u2|u1|co~1_combout\ & ((!\u3|u1|u2|m[4]~1_combout\) # 
-- (\v4|m[5]~8_combout\))) # (\u3|u2|u1|u2|u1|co~1_combout\ & (!\u3|u1|u2|m[4]~1_combout\ & \v4|m[5]~8_combout\))) # (\v4|m[6]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111000010000000111000001111110011110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u3|u1|u2|ALT_INV_m[4]~1_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u3|u1|u2|ALT_INV_m[5]~0_combout\,
	dataf => \u3|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	combout => \u3|u2|u1|u2|u3|co~combout\);

-- Location: MLABCELL_X4_Y6_N6
\u3|u1|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u2|u2|co~combout\ = ( \u3|u1|u1|u2|u1|co~1_combout\ & ( (!\u2|u4|u2|m[4]~0_combout\ & \v4|m[5]~8_combout\) ) ) # ( !\u3|u1|u1|u2|u1|co~1_combout\ & ( (!\u3|u1|u1|u2|u1|co~0_combout\ & ((!\u2|u4|u2|m[4]~0_combout\) # (\v4|m[5]~8_combout\))) # 
-- (\u3|u1|u1|u2|u1|co~0_combout\ & (!\u2|u4|u2|m[4]~0_combout\ & \v4|m[5]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u2|u4|u2|ALT_INV_m[4]~0_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u3|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u1|u1|u2|u2|co~combout\);

-- Location: MLABCELL_X4_Y6_N48
\u3|u1|u2|m[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[6]~9_combout\ = ( \u3|u1|u1|u2|u2|co~combout\ & ( !\u2|u4|u2|m[5]~9_combout\ $ ((((!\u3|u1|u1|u4|u4|co~2_combout\ & !\u3|u1|u1|u4|u4|co~1_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u3|u1|u1|u2|u2|co~combout\ & ( !\u2|u4|u2|m[5]~9_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u3|u1|u1|u4|u4|co~2_combout\ & !\u3|u1|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u2|u4|u2|ALT_INV_m[5]~9_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u3|u1|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u3|u1|u2|m[6]~9_combout\);

-- Location: MLABCELL_X4_Y6_N30
\u3|u1|u2|m[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[7]~8_combout\ = ( \u3|u1|u1|u4|u4|co~1_combout\ & ( !\u3|u1|u1|u2|u3|co~combout\ $ (!\u2|u4|u2|m[6]~8_combout\ $ (\v4|m[7]~6_combout\)) ) ) # ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( !\u2|u4|u2|m[6]~8_combout\ $ (((!\u3|u1|u1|u4|u4|co~2_combout\) 
-- # (!\u3|u1|u1|u2|u3|co~combout\ $ (\v4|m[7]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000111001001101100011100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u2|u4|u2|ALT_INV_m[6]~8_combout\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u1|u2|m[7]~8_combout\);

-- Location: LABCELL_X5_Y6_N9
\u3|u2|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u2|s~0_combout\ = ( \u3|u1|u1|u3|u1|s~combout\ & ( !\v4|m[9]~5_combout\ $ (((!\u2|u4|u2|m[7]~7_combout\) # ((\u3|u1|u1|u4|u4|co~1_combout\) # (\u3|u1|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u3|u1|u1|u3|u1|s~combout\ & ( !\v4|m[9]~5_combout\ $ 
-- (((!\u2|u4|u2|m[7]~7_combout\ & (!\u3|u1|u1|u4|u4|co~2_combout\ & !\u3|u1|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011001100011011001100110001100011001100110110001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	datab => \v4|ALT_INV_m[9]~5_combout\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u3|u1|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u3|u2|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X5_Y6_N42
\u3|u2|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u2|co~1_combout\ = ( \v4|m[7]~6_combout\ & ( \v4|m[8]~13_combout\ & ( (!\u3|u2|u1|u2|u3|co~combout\ & (\u3|u1|u2|m[6]~9_combout\ & (\u3|u1|u2|m[7]~8_combout\ & !\u3|u2|u1|u3|u2|s~0_combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( 
-- \v4|m[8]~13_combout\ & ( (\u3|u1|u2|m[7]~8_combout\ & (!\u3|u2|u1|u3|u2|s~0_combout\ & ((!\u3|u2|u1|u2|u3|co~combout\) # (\u3|u1|u2|m[6]~9_combout\)))) ) ) ) # ( \v4|m[7]~6_combout\ & ( !\v4|m[8]~13_combout\ & ( (!\u3|u2|u1|u3|u2|s~0_combout\ & 
-- (((!\u3|u2|u1|u2|u3|co~combout\ & \u3|u1|u2|m[6]~9_combout\)) # (\u3|u1|u2|m[7]~8_combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( !\v4|m[8]~13_combout\ & ( (!\u3|u2|u1|u3|u2|s~0_combout\ & ((!\u3|u2|u1|u2|u3|co~combout\) # ((\u3|u1|u2|m[7]~8_combout\) # 
-- (\u3|u1|u2|m[6]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100000000001011110000000000001011000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u3|u1|u2|ALT_INV_m[6]~9_combout\,
	datac => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	datad => \u3|u2|u1|u3|u2|ALT_INV_s~0_combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u2|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X2_Y7_N21
\u2|u4|u2|m[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|m[8]~14_combout\ = ( \u2|u4|u1|u3|u1|s~combout\ & ( (!\u2|u4|u1|u4|u4|co~2_combout\ & (\u2|u3|u2|m[7]~7_combout\ & !\u2|u4|u1|u4|u4|co~1_combout\)) ) ) # ( !\u2|u4|u1|u3|u1|s~combout\ & ( ((\u2|u4|u1|u4|u4|co~1_combout\) # 
-- (\u2|u3|u2|m[7]~7_combout\)) # (\u2|u4|u1|u4|u4|co~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u2|u3|u2|ALT_INV_m[7]~7_combout\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u2|u4|u2|m[8]~14_combout\);

-- Location: MLABCELL_X4_Y6_N54
\u3|u1|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u3|u1|co~combout\ = ( \v4|m[8]~13_combout\ & ( (\u2|u4|u2|m[7]~7_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u3|u1|u1|u2|u3|co~combout\) # (\u2|u4|u2|m[6]~8_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u1|u1|u2|u3|co~combout\ & 
-- \u2|u4|u2|m[6]~8_combout\)))) ) ) # ( !\v4|m[8]~13_combout\ & ( ((!\v4|m[7]~6_combout\ & ((!\u3|u1|u1|u2|u3|co~combout\) # (\u2|u4|u2|m[6]~8_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u1|u1|u2|u3|co~combout\ & \u2|u4|u2|m[6]~8_combout\))) # 
-- (\u2|u4|u2|m[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111101110101011111110101000000010101000100000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	datab => \v4|ALT_INV_m[7]~6_combout\,
	datac => \u3|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u2|ALT_INV_m[6]~8_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u1|u1|u3|u1|co~combout\);

-- Location: LABCELL_X5_Y6_N27
\u3|u1|u2|m[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[9]~7_combout\ = ( \u3|u1|u1|u3|u1|co~combout\ & ( !\u2|u4|u2|m[8]~14_combout\ $ (((!\v4|m[9]~5_combout\) # ((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u3|u1|u1|u3|u1|co~combout\ & ( 
-- !\u2|u4|u2|m[8]~14_combout\ $ ((((!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) # (\v4|m[9]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u2|u4|u2|ALT_INV_m[8]~14_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u1|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u1|u2|m[9]~7_combout\);

-- Location: LABCELL_X5_Y6_N18
\u3|u2|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u4|co~combout\ = ( \u3|u1|u2|m[9]~7_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u3|u1|u2|m[10]~6_combout\) # ((\v4|m[10]~4_combout\ & (!\u3|u2|u1|u3|u2|co~0_combout\ & !\u3|u2|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u3|u1|u2|m[9]~7_combout\ & ( 
-- \v4|m[11]~3_combout\ & ( ((!\u3|u1|u2|m[10]~6_combout\) # ((!\u3|u2|u1|u3|u2|co~0_combout\ & !\u3|u2|u1|u3|u2|co~1_combout\))) # (\v4|m[10]~4_combout\) ) ) ) # ( \u3|u1|u2|m[9]~7_combout\ & ( !\v4|m[11]~3_combout\ & ( (\v4|m[10]~4_combout\ & 
-- (!\u3|u2|u1|u3|u2|co~0_combout\ & (!\u3|u1|u2|m[10]~6_combout\ & !\u3|u2|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u3|u1|u2|m[9]~7_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u3|u1|u2|m[10]~6_combout\ & (((!\u3|u2|u1|u3|u2|co~0_combout\ & 
-- !\u3|u2|u1|u3|u2|co~1_combout\)) # (\v4|m[10]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000010000000000000011111101111101011111010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u3|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u1|u2|ALT_INV_m[10]~6_combout\,
	datad => \u3|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datae => \u3|u1|u2|ALT_INV_m[9]~7_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u2|u1|u3|u4|co~combout\);

-- Location: MLABCELL_X9_Y6_N42
\u3|u2|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u2|co~combout\ = ( \v4|m[13]~1_combout\ & ( (\u3|u1|u2|m[12]~4_combout\ & ((!\u3|u1|u2|m[11]~5_combout\ & (!\v4|m[12]~2_combout\ & !\u3|u2|u1|u3|u4|co~combout\)) # (\u3|u1|u2|m[11]~5_combout\ & ((!\v4|m[12]~2_combout\) # 
-- (!\u3|u2|u1|u3|u4|co~combout\))))) ) ) # ( !\v4|m[13]~1_combout\ & ( ((!\u3|u1|u2|m[11]~5_combout\ & (!\v4|m[12]~2_combout\ & !\u3|u2|u1|u3|u4|co~combout\)) # (\u3|u1|u2|m[11]~5_combout\ & ((!\v4|m[12]~2_combout\) # (!\u3|u2|u1|u3|u4|co~combout\)))) # 
-- (\u3|u1|u2|m[12]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101001111110111110100111100001101000001000000110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[11]~5_combout\,
	datab => \v4|ALT_INV_m[12]~2_combout\,
	datac => \u3|u1|u2|ALT_INV_m[12]~4_combout\,
	datad => \u3|u2|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u3|u2|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X9_Y6_N3
\u3|u2|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u4|co~0_combout\ = ( \u3|u1|u2|m[13]~11_combout\ & ( (\v4|m[14]~0_combout\ & (!\u3|u1|u2|m[14]~10_combout\ $ (\u1|u2|u1|u4|u4|co~0_combout\))) ) ) # ( !\u3|u1|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u3|u1|u2|m[14]~10_combout\ $ 
-- (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u3|u1|u2|ALT_INV_m[14]~10_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u3|u1|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u2|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X9_Y6_N6
\u3|u2|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u4|co~1_combout\ = ( \u3|u2|u1|u4|u4|co~0_combout\ & ( \v4|m[13]~1_combout\ & ( (\u3|u1|u2|m[12]~4_combout\ & ((!\u3|u2|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u3|u1|u2|m[11]~5_combout\))) # (\u3|u2|u1|u3|u4|co~combout\ & 
-- (\u3|u1|u2|m[11]~5_combout\ & !\v4|m[12]~2_combout\)))) ) ) ) # ( \u3|u2|u1|u4|u4|co~0_combout\ & ( !\v4|m[13]~1_combout\ & ( ((!\u3|u2|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u3|u1|u2|m[11]~5_combout\))) # (\u3|u2|u1|u3|u4|co~combout\ & 
-- (\u3|u1|u2|m[11]~5_combout\ & !\v4|m[12]~2_combout\))) # (\u3|u1|u2|m[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110111110101110100000000000000000100010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[12]~4_combout\,
	datab => \u3|u2|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u3|u1|u2|ALT_INV_m[11]~5_combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	datae => \u3|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u3|u2|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X9_Y6_N27
\u3|u2|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[14]~10_combout\ = ( \u3|u2|u1|u4|u4|co~1_combout\ & ( !\u3|u1|u2|m[13]~11_combout\ $ (!\u3|u2|u1|u4|u2|co~combout\ $ (!\v4|m[14]~0_combout\)) ) ) # ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( !\u3|u1|u2|m[13]~11_combout\ $ 
-- (((!\u3|u2|u1|u4|u4|co~2_combout\) # (!\u3|u2|u1|u4|u2|co~combout\ $ (!\v4|m[14]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100110110011000110011011011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u1|u2|ALT_INV_m[13]~11_combout\,
	datac => \u3|u2|u1|u4|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u2|u2|m[14]~10_combout\);

-- Location: MLABCELL_X9_Y6_N24
\u3|u2|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u1|co~combout\ = ( \v4|m[12]~2_combout\ & ( (\u3|u1|u2|m[11]~5_combout\ & !\u3|u2|u1|u3|u4|co~combout\) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\u3|u2|u1|u3|u4|co~combout\) # (\u3|u1|u2|m[11]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u1|u2|ALT_INV_m[11]~5_combout\,
	datad => \u3|u2|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u3|u2|u1|u4|u1|co~combout\);

-- Location: MLABCELL_X9_Y6_N30
\u3|u2|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[13]~11_combout\ = ( \v4|m[13]~1_combout\ & ( !\u3|u1|u2|m[12]~4_combout\ $ (((!\u3|u2|u1|u4|u1|co~combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u3|u1|u2|m[12]~4_combout\ $ 
-- ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\u3|u2|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110100101011001011010010101010110010110100101011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[12]~4_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u2|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u3|u2|u2|m[13]~11_combout\);

-- Location: MLABCELL_X9_Y6_N39
\u3|u3|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u4|co~2_combout\ = ( \u3|u2|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # (\u3|u2|u2|m[14]~10_combout\))) # (\v4|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & \u3|u2|u2|m[14]~10_combout\)) ) ) # 
-- ( !\u3|u2|u2|m[13]~11_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & \u3|u2|u2|m[14]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u3|u2|u2|ALT_INV_m[14]~10_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u3|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X5_Y6_N51
\u3|u2|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u3|co~combout\ = ( \u3|u2|u1|u3|u2|co~1_combout\ & ( (\v4|m[10]~4_combout\ & !\u3|u1|u2|m[9]~7_combout\) ) ) # ( !\u3|u2|u1|u3|u2|co~1_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u3|u2|u1|u3|u2|co~0_combout\ & !\u3|u1|u2|m[9]~7_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u3|u2|u1|u3|u2|co~0_combout\) # (!\u3|u1|u2|m[9]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u3|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \u3|u1|u2|ALT_INV_m[9]~7_combout\,
	dataf => \u3|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	combout => \u3|u2|u1|u3|u3|co~combout\);

-- Location: MLABCELL_X9_Y6_N48
\u3|u2|u2|m[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[11]~6_combout\ = ( \v4|m[11]~3_combout\ & ( !\u3|u1|u2|m[10]~6_combout\ $ ((((!\u3|u2|u1|u4|u4|co~2_combout\ & !\u3|u2|u1|u4|u4|co~1_combout\)) # (\u3|u2|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u3|u1|u2|m[10]~6_combout\ $ 
-- (((!\u3|u2|u1|u3|u3|co~combout\) # ((!\u3|u2|u1|u4|u4|co~2_combout\ & !\u3|u2|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u1|u2|ALT_INV_m[10]~6_combout\,
	datad => \u3|u2|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u2|u2|m[11]~6_combout\);

-- Location: MLABCELL_X9_Y6_N45
\u3|u2|u2|m[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[12]~5_combout\ = ( \u3|u2|u1|u3|u4|co~combout\ & ( !\u3|u1|u2|m[11]~5_combout\ $ ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[12]~2_combout\))) ) ) # ( !\u3|u2|u1|u3|u4|co~combout\ & ( 
-- !\u3|u1|u2|m[11]~5_combout\ $ (((!\v4|m[12]~2_combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110010101100110011001011001100110010101100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[11]~5_combout\,
	datab => \v4|ALT_INV_m[12]~2_combout\,
	datac => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u2|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u3|u2|u2|m[12]~5_combout\);

-- Location: LABCELL_X5_Y6_N54
\u3|u2|u2|m[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[10]~7_combout\ = ( \u3|u1|u2|m[9]~7_combout\ & ( \u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((!\u3|u2|u1|u3|u2|co~0_combout\ & !\u3|u2|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u3|u1|u2|m[9]~7_combout\ & ( 
-- \u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((\u3|u2|u1|u3|u2|co~1_combout\) # (\u3|u2|u1|u3|u2|co~0_combout\))) ) ) ) # ( \u3|u1|u2|m[9]~7_combout\ & ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( (!\u3|u2|u1|u4|u4|co~2_combout\) # 
-- (!\v4|m[10]~4_combout\ $ (((!\u3|u2|u1|u3|u2|co~0_combout\ & !\u3|u2|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\u3|u1|u2|m[9]~7_combout\ & ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( (\u3|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[10]~4_combout\ $ 
-- (((\u3|u2|u1|u3|u2|co~1_combout\) # (\u3|u2|u1|u3|u2|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000101101111101111101011000011000011110011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u3|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datae => \u3|u1|u2|ALT_INV_m[9]~7_combout\,
	dataf => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u2|u2|m[10]~7_combout\);

-- Location: LABCELL_X5_Y5_N3
\u3|u2|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u2|u2|co~combout\ = ( \u3|u2|u1|u2|u1|co~1_combout\ & ( (\v4|m[5]~8_combout\ & !\u3|u1|u2|m[4]~1_combout\) ) ) # ( !\u3|u2|u1|u2|u1|co~1_combout\ & ( (!\v4|m[5]~8_combout\ & (!\u3|u2|u1|u2|u1|co~0_combout\ & !\u3|u1|u2|m[4]~1_combout\)) # 
-- (\v4|m[5]~8_combout\ & ((!\u3|u2|u1|u2|u1|co~0_combout\) # (!\u3|u1|u2|m[4]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000111100110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u3|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u3|u1|u2|ALT_INV_m[4]~1_combout\,
	dataf => \u3|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u2|u1|u2|u2|co~combout\);

-- Location: LABCELL_X5_Y5_N36
\u3|u2|u2|m[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[6]~0_combout\ = ( \v4|m[6]~7_combout\ & ( !\u3|u1|u2|m[5]~0_combout\ $ ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\u3|u2|u1|u2|u2|co~combout\))) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u3|u1|u2|m[5]~0_combout\ $ 
-- (((!\u3|u2|u1|u2|u2|co~combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u1|u2|ALT_INV_m[5]~0_combout\,
	datad => \u3|u2|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u3|u2|u2|m[6]~0_combout\);

-- Location: MLABCELL_X4_Y6_N24
\u3|u2|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u1|s~combout\ = ( \v4|m[8]~13_combout\ & ( !\u3|u1|u2|m[7]~8_combout\ $ (((!\u3|u1|u2|m[6]~9_combout\ & (!\u3|u2|u1|u2|u3|co~combout\ & !\v4|m[7]~6_combout\)) # (\u3|u1|u2|m[6]~9_combout\ & ((!\u3|u2|u1|u2|u3|co~combout\) # 
-- (!\v4|m[7]~6_combout\))))) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u3|u1|u2|m[7]~8_combout\ $ (((!\u3|u1|u2|m[6]~9_combout\ & ((\v4|m[7]~6_combout\) # (\u3|u2|u1|u2|u3|co~combout\))) # (\u3|u1|u2|m[6]~9_combout\ & (\u3|u2|u1|u2|u3|co~combout\ & 
-- \v4|m[7]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011001100011110001100110001100111001100111000011100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[6]~9_combout\,
	datab => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	datac => \u3|u2|u1|u2|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u2|u1|u3|u1|s~combout\);

-- Location: LABCELL_X5_Y5_N39
\u3|u3|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u2|s~0_combout\ = ( \v4|m[9]~5_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & ((!\u3|u1|u2|m[7]~8_combout\))) # (\u3|u2|u1|u4|u4|co~2_combout\ & (\u3|u2|u1|u3|u1|s~combout\)))) # 
-- (\u3|u2|u1|u4|u4|co~1_combout\ & (((\u3|u2|u1|u3|u1|s~combout\)))) ) ) # ( !\v4|m[9]~5_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & ((\u3|u1|u2|m[7]~8_combout\))) # (\u3|u2|u1|u4|u4|co~2_combout\ & 
-- (!\u3|u2|u1|u3|u1|s~combout\)))) # (\u3|u2|u1|u4|u4|co~1_combout\ & (((!\u3|u2|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100010001111000001111000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u3|u3|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X5_Y5_N48
\u3|u2|u2|m[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[7]~9_combout\ = ( \u3|u2|u1|u2|u3|co~combout\ & ( !\u3|u1|u2|m[6]~9_combout\ $ ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[7]~6_combout\))) ) ) # ( !\u3|u2|u1|u2|u3|co~combout\ & ( !\u3|u1|u2|m[6]~9_combout\ 
-- $ (((!\v4|m[7]~6_combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u3|u1|u2|ALT_INV_m[6]~9_combout\,
	dataf => \u3|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u2|u2|m[7]~9_combout\);

-- Location: LABCELL_X7_Y6_N54
\u3|u2|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u1|u4|s~combout\ = ( \u3|u2|u1|u1|u2|co~combout\ & ( !\u3|u1|u2|m[2]~2_combout\ $ (!\v4|m[3]~12_combout\ $ (((\u3|u1|u2|m[1]~3_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u3|u2|u1|u1|u2|co~combout\ & ( !\u3|u1|u2|m[2]~2_combout\ $ 
-- (!\v4|m[3]~12_combout\ $ (((!\v4|m[2]~10_combout\) # (\u3|u1|u2|m[1]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110101001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[1]~3_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u2|u1|u1|u4|s~combout\);

-- Location: LABCELL_X7_Y6_N30
\u3|u3|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & ((\u3|u1|u2|m[2]~2_combout\))) # (\u3|u2|u1|u4|u4|co~2_combout\ & (!\u3|u2|u1|u1|u4|s~combout\)))) # 
-- (\u3|u2|u1|u4|u4|co~1_combout\ & (((!\u3|u2|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u3|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X12_Y5_N39
\o~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~5_combout\ = ( !\a[0]~input_o\ & ( (!\a[3]~input_o\ & (!\a[2]~input_o\ & !\a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \o~5_combout\);

-- Location: LABCELL_X12_Y5_N42
\v2|m[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[5]~9_combout\ = ( \o~5_combout\ & ( !\a[5]~input_o\ $ (((!\a[4]~input_o\) # (!\a[15]~input_o\))) ) ) # ( !\o~5_combout\ & ( !\a[15]~input_o\ $ (!\a[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[5]~input_o\,
	dataf => \ALT_INV_o~5_combout\,
	combout => \v2|m[5]~9_combout\);

-- Location: LABCELL_X7_Y6_N24
\u3|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u2|co~combout\ = ( \u3|u2|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( (!\v2|m[6]~8_combout\ & ((!\v2|m[5]~9_combout\) # (!\b[0]~input_o\))) # (\v2|m[6]~8_combout\ & ((\b[0]~input_o\))) ) ) ) # ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( 
-- \v4|m[1]~11_combout\ & ( (!\b[0]~input_o\ & (((!\v2|m[6]~8_combout\)))) # (\b[0]~input_o\ & ((!\v2|m[5]~9_combout\) # (!\u3|u2|u1|u4|u4|co~2_combout\ $ (\v2|m[6]~8_combout\)))) ) ) ) # ( \u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( 
-- (!\v2|m[5]~9_combout\ & (\v2|m[6]~8_combout\ & \b[0]~input_o\)) ) ) ) # ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[5]~9_combout\ & (\b[0]~input_o\ & (!\u3|u2|u1|u4|u4|co~2_combout\ $ (\v2|m[6]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000000000101011110000111010111111000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[5]~9_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v2|ALT_INV_m[6]~8_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X7_Y6_N6
\u3|u2|u2|m[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[2]~2_combout\ = ( \u3|u2|u1|u1|u2|co~combout\ & ( !\u3|u1|u2|m[1]~3_combout\ $ ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[2]~10_combout\))) ) ) # ( !\u3|u2|u1|u1|u2|co~combout\ & ( !\u3|u1|u2|m[1]~3_combout\ 
-- $ (((!\v4|m[2]~10_combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u1|u2|ALT_INV_m[1]~3_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u2|u2|m[2]~2_combout\);

-- Location: LABCELL_X7_Y6_N9
\u3|u3|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & (!\u3|u1|u2|m[2]~2_combout\)) # (\u3|u2|u1|u4|u4|co~2_combout\ & ((\u3|u2|u1|u1|u4|s~combout\))))) # 
-- (\u3|u2|u1|u4|u4|co~1_combout\ & (((\u3|u2|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & (\u3|u1|u2|m[2]~2_combout\)) # (\u3|u2|u1|u4|u4|co~2_combout\ & 
-- ((!\u3|u2|u1|u1|u4|s~combout\))))) # (\u3|u2|u1|u4|u4|co~1_combout\ & (((!\u3|u2|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100010000000111101111000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	datad => \u3|u2|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u3|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X7_Y6_N12
\u3|u1|u2|m[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[0]~13_combout\ = ( \u3|u1|u1|u4|u4|co~1_combout\ & ( !\b[0]~input_o\ $ (!\v2|m[7]~7_combout\) ) ) # ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( !\v2|m[7]~7_combout\ $ (((!\b[0]~input_o\) # (!\u3|u1|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v2|ALT_INV_m[7]~7_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u1|u2|m[0]~13_combout\);

-- Location: LABCELL_X7_Y6_N18
\u3|u2|u2|m[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[1]~3_combout\ = ( \u3|u2|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( !\u3|u1|u2|m[0]~13_combout\ $ (((\b[0]~input_o\ & !\v2|m[6]~8_combout\))) ) ) ) # ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u3|u1|u2|m[0]~13_combout\ $ (((!\u3|u2|u1|u4|u4|co~2_combout\) # ((\b[0]~input_o\ & !\v2|m[6]~8_combout\)))) ) ) ) # ( \u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u3|u1|u2|m[0]~13_combout\ $ (((!\b[0]~input_o\) # 
-- (\v2|m[6]~8_combout\))) ) ) ) # ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u3|u1|u2|m[0]~13_combout\ $ (((!\b[0]~input_o\) # ((!\u3|u2|u1|u4|u4|co~2_combout\) # (\v2|m[6]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100101011001010110010101010101100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[0]~13_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \v2|ALT_INV_m[6]~8_combout\,
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u2|u2|m[1]~3_combout\);

-- Location: MLABCELL_X4_Y5_N0
\u3|u3|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|co~1_combout\ = ( \u3|u2|u2|m[1]~3_combout\ & ( \v4|m[3]~12_combout\ & ( (\u3|u2|u2|m[2]~2_combout\ & (!\u3|u3|u1|u2|u1|s~0_combout\ & ((!\u3|u3|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) ) ) ) # ( !\u3|u2|u2|m[1]~3_combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\u3|u3|u1|u1|u2|co~combout\ & (!\v4|m[2]~10_combout\ & (\u3|u2|u2|m[2]~2_combout\ & !\u3|u3|u1|u2|u1|s~0_combout\))) ) ) ) # ( \u3|u2|u2|m[1]~3_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u3|u3|u1|u2|u1|s~0_combout\ & 
-- ((!\u3|u3|u1|u1|u2|co~combout\) # ((!\v4|m[2]~10_combout\) # (\u3|u2|u2|m[2]~2_combout\)))) ) ) ) # ( !\u3|u2|u2|m[1]~3_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u3|u3|u1|u2|u1|s~0_combout\ & (((!\u3|u3|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)) # 
-- (\u3|u2|u2|m[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100000000111011110000000000001000000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datad => \u3|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	datae => \u3|u2|u2|ALT_INV_m[1]~3_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u3|u1|u2|u1|co~1_combout\);

-- Location: MLABCELL_X4_Y6_N18
\u3|u2|u2|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[5]~4_combout\ = ( \v4|m[5]~8_combout\ & ( \u3|u2|u1|u2|u1|co~1_combout\ & ( !\u3|u1|u2|m[4]~1_combout\ $ (((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( \u3|u2|u1|u2|u1|co~1_combout\ & ( 
-- \u3|u1|u2|m[4]~1_combout\ ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u3|u2|u1|u2|u1|co~1_combout\ & ( !\u3|u1|u2|m[4]~1_combout\ $ (((!\u3|u2|u1|u2|u1|co~0_combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) ) ) # ( 
-- !\v4|m[5]~8_combout\ & ( !\u3|u2|u1|u2|u1|co~1_combout\ & ( !\u3|u1|u2|m[4]~1_combout\ $ ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\u3|u2|u1|u2|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110011001001101100110011000110011001100110011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \u3|u1|u2|ALT_INV_m[4]~1_combout\,
	datac => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u3|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u2|u2|m[5]~4_combout\);

-- Location: MLABCELL_X4_Y6_N9
\u3|u1|u2|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[3]~12_combout\ = ( \u3|u1|u1|u4|u4|co~1_combout\ & ( !\u3|u1|u1|u1|u4|s~combout\ ) ) # ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( (!\u3|u1|u1|u4|u4|co~2_combout\ & (\u2|u4|u2|m[2]~2_combout\)) # (\u3|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\u3|u1|u1|u1|u4|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[2]~2_combout\,
	datac => \u3|u1|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u1|u2|m[3]~12_combout\);

-- Location: LABCELL_X7_Y6_N57
\u3|u2|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u1|u4|co~combout\ = ( \u3|u2|u1|u1|u2|co~combout\ & ( (!\u3|u1|u2|m[2]~2_combout\ & (\u3|u1|u2|m[1]~3_combout\ & (!\v4|m[2]~10_combout\ & !\v4|m[3]~12_combout\))) # (\u3|u1|u2|m[2]~2_combout\ & ((!\v4|m[3]~12_combout\) # 
-- ((\u3|u1|u2|m[1]~3_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u3|u2|u1|u1|u2|co~combout\ & ( (!\u3|u1|u2|m[2]~2_combout\ & (!\v4|m[3]~12_combout\ & ((!\v4|m[2]~10_combout\) # (\u3|u1|u2|m[1]~3_combout\)))) # (\u3|u1|u2|m[2]~2_combout\ & 
-- (((!\v4|m[2]~10_combout\) # (!\v4|m[3]~12_combout\)) # (\u3|u1|u2|m[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101110111110000110101001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[1]~3_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u2|u1|u1|u4|co~combout\);

-- Location: MLABCELL_X4_Y6_N45
\u3|u2|u2|m[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[4]~1_combout\ = ( \v4|m[4]~9_combout\ & ( !\u3|u1|u2|m[3]~12_combout\ $ (((!\u3|u2|u1|u1|u4|co~combout\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u3|u1|u2|m[3]~12_combout\ $ 
-- ((((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) # (\u3|u2|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u1|u2|ALT_INV_m[3]~12_combout\,
	datad => \u3|u2|u1|u1|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u2|u2|m[4]~1_combout\);

-- Location: LABCELL_X5_Y5_N12
\u3|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u3|co~combout\ = ( \u3|u2|u2|m[4]~1_combout\ & ( \v4|m[6]~7_combout\ & ( (!\u3|u2|u2|m[5]~4_combout\) # ((!\u3|u3|u1|u2|u1|co~0_combout\ & (!\u3|u3|u1|u2|u1|co~1_combout\ & \v4|m[5]~8_combout\))) ) ) ) # ( !\u3|u2|u2|m[4]~1_combout\ & ( 
-- \v4|m[6]~7_combout\ & ( (!\u3|u2|u2|m[5]~4_combout\) # (((!\u3|u3|u1|u2|u1|co~0_combout\ & !\u3|u3|u1|u2|u1|co~1_combout\)) # (\v4|m[5]~8_combout\)) ) ) ) # ( \u3|u2|u2|m[4]~1_combout\ & ( !\v4|m[6]~7_combout\ & ( (!\u3|u3|u1|u2|u1|co~0_combout\ & 
-- (!\u3|u3|u1|u2|u1|co~1_combout\ & (!\u3|u2|u2|m[5]~4_combout\ & \v4|m[5]~8_combout\))) ) ) ) # ( !\u3|u2|u2|m[4]~1_combout\ & ( !\v4|m[6]~7_combout\ & ( (!\u3|u2|u2|m[5]~4_combout\ & (((!\u3|u3|u1|u2|u1|co~0_combout\ & !\u3|u3|u1|u2|u1|co~1_combout\)) # 
-- (\v4|m[5]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110000000000001000000011111000111111111111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u3|u2|u2|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u3|u2|u2|ALT_INV_m[4]~1_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u3|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X5_Y5_N54
\u3|u3|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u2|co~1_combout\ = ( \v4|m[7]~6_combout\ & ( \v4|m[8]~13_combout\ & ( (\u3|u2|u2|m[6]~0_combout\ & (!\u3|u3|u1|u3|u2|s~0_combout\ & (\u3|u2|u2|m[7]~9_combout\ & !\u3|u3|u1|u2|u3|co~combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( 
-- \v4|m[8]~13_combout\ & ( (!\u3|u3|u1|u3|u2|s~0_combout\ & (\u3|u2|u2|m[7]~9_combout\ & ((!\u3|u3|u1|u2|u3|co~combout\) # (\u3|u2|u2|m[6]~0_combout\)))) ) ) ) # ( \v4|m[7]~6_combout\ & ( !\v4|m[8]~13_combout\ & ( (!\u3|u3|u1|u3|u2|s~0_combout\ & 
-- (((\u3|u2|u2|m[6]~0_combout\ & !\u3|u3|u1|u2|u3|co~combout\)) # (\u3|u2|u2|m[7]~9_combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( !\v4|m[8]~13_combout\ & ( (!\u3|u3|u1|u3|u2|s~0_combout\ & (((!\u3|u3|u1|u2|u3|co~combout\) # (\u3|u2|u2|m[7]~9_combout\)) # 
-- (\u3|u2|u2|m[6]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100010011000000110000001100000001000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[6]~0_combout\,
	datab => \u3|u3|u1|u3|u2|ALT_INV_s~0_combout\,
	datac => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	datad => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u3|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X5_Y5_N51
\u3|u3|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u2|co~0_combout\ = ( !\v4|m[9]~5_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\ & ((\u3|u1|u2|m[7]~8_combout\))) # (\u3|u2|u1|u4|u4|co~2_combout\ & (!\u3|u2|u1|u3|u1|s~combout\)))) # 
-- (\u3|u2|u1|u4|u4|co~1_combout\ & (((!\u3|u2|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	dataf => \v4|ALT_INV_m[9]~5_combout\,
	combout => \u3|u3|u1|u3|u2|co~0_combout\);

-- Location: MLABCELL_X4_Y6_N27
\u3|u2|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u3|u1|co~combout\ = ( \v4|m[8]~13_combout\ & ( (\u3|u1|u2|m[7]~8_combout\ & ((!\u3|u1|u2|m[6]~9_combout\ & (!\v4|m[7]~6_combout\ & !\u3|u2|u1|u2|u3|co~combout\)) # (\u3|u1|u2|m[6]~9_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (!\u3|u2|u1|u2|u3|co~combout\))))) ) ) # ( !\v4|m[8]~13_combout\ & ( ((!\u3|u1|u2|m[6]~9_combout\ & (!\v4|m[7]~6_combout\ & !\u3|u2|u1|u2|u3|co~combout\)) # (\u3|u1|u2|m[6]~9_combout\ & ((!\v4|m[7]~6_combout\) # (!\u3|u2|u1|u2|u3|co~combout\)))) # 
-- (\u3|u1|u2|m[7]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101110011111101110111001100110001000100000011000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u2|ALT_INV_m[6]~9_combout\,
	datab => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u3|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u2|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X4_Y6_N57
\u3|u1|u2|m[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u2|m[8]~14_combout\ = ( \u3|u1|u1|u3|u1|s~combout\ & ( (\u2|u4|u2|m[7]~7_combout\ & (!\u3|u1|u1|u4|u4|co~1_combout\ & !\u3|u1|u1|u4|u4|co~2_combout\)) ) ) # ( !\u3|u1|u1|u3|u1|s~combout\ & ( ((\u3|u1|u1|u4|u4|co~2_combout\) # 
-- (\u3|u1|u1|u4|u4|co~1_combout\)) # (\u2|u4|u2|m[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_m[7]~7_combout\,
	datac => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u1|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u3|u1|u2|m[8]~14_combout\);

-- Location: MLABCELL_X4_Y6_N42
\u3|u2|u2|m[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[9]~8_combout\ = ( \u3|u1|u2|m[8]~14_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u4|u4|co~2_combout\) # (!\u3|u2|u1|u3|u1|co~combout\ $ (!\v4|m[9]~5_combout\)))) # (\u3|u2|u1|u4|u4|co~1_combout\ & ((!\u3|u2|u1|u3|u1|co~combout\ 
-- $ (!\v4|m[9]~5_combout\)))) ) ) # ( !\u3|u1|u2|m[8]~14_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & (\u3|u2|u1|u4|u4|co~2_combout\ & (!\u3|u2|u1|u3|u1|co~combout\ $ (\v4|m[9]~5_combout\)))) # (\u3|u2|u1|u4|u4|co~1_combout\ & 
-- ((!\u3|u2|u1|u3|u1|co~combout\ $ (\v4|m[9]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u1|u3|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u1|u2|ALT_INV_m[8]~14_combout\,
	combout => \u3|u2|u2|m[9]~8_combout\);

-- Location: LABCELL_X7_Y5_N36
\u3|u3|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u3|u2|u2|m[10]~7_combout\) # ((!\u3|u2|u2|m[9]~8_combout\) # ((!\u3|u3|u1|u3|u2|co~1_combout\ & !\u3|u3|u1|u3|u2|co~0_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( 
-- \v4|m[11]~3_combout\ & ( (!\u3|u2|u2|m[10]~7_combout\) # ((!\u3|u3|u1|u3|u2|co~1_combout\ & (!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u2|u2|m[9]~8_combout\))) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u3|u2|u2|m[10]~7_combout\ & 
-- ((!\u3|u2|u2|m[9]~8_combout\) # ((!\u3|u3|u1|u3|u2|co~1_combout\ & !\u3|u3|u1|u3|u2|co~0_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u3|u2|u2|m[10]~7_combout\ & (!\u3|u3|u1|u3|u2|co~1_combout\ & 
-- (!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u2|u2|m[9]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101010101000000011101010101010101111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[10]~7_combout\,
	datab => \u3|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \u3|u2|u2|ALT_INV_m[9]~8_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u3|u1|u3|u4|co~combout\);

-- Location: MLABCELL_X9_Y6_N36
\u3|u3|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u4|co~0_combout\ = ( \u3|u2|u2|m[13]~11_combout\ & ( (\v4|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ $ (\u3|u2|u2|m[14]~10_combout\))) ) ) # ( !\u3|u2|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ $ 
-- (\u3|u2|u2|m[14]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u3|u2|u2|ALT_INV_m[14]~10_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u3|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X9_Y6_N12
\u3|u3|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u4|co~1_combout\ = ( \u3|u3|u1|u4|u4|co~0_combout\ & ( \v4|m[13]~1_combout\ & ( (\u3|u2|u2|m[12]~5_combout\ & ((!\u3|u2|u2|m[11]~6_combout\ & (!\u3|u3|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u2|u2|m[11]~6_combout\ & 
-- ((!\u3|u3|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\))))) ) ) ) # ( \u3|u3|u1|u4|u4|co~0_combout\ & ( !\v4|m[13]~1_combout\ & ( ((!\u3|u2|u2|m[11]~6_combout\ & (!\u3|u3|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u2|u2|m[11]~6_combout\ & 
-- ((!\u3|u3|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\)))) # (\u3|u2|u2|m[12]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101110111001100000000000000000011000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[11]~6_combout\,
	datab => \u3|u2|u2|ALT_INV_m[12]~5_combout\,
	datac => \u3|u3|u1|u3|u4|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	datae => \u3|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u3|u3|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X9_Y6_N54
\u3|u3|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u2|co~combout\ = ( \v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((!\u3|u3|u1|u3|u4|co~combout\ & \u3|u2|u2|m[11]~6_combout\)) # (\u3|u2|u2|m[12]~5_combout\))) # (\v4|m[13]~1_combout\ & (\u3|u2|u2|m[12]~5_combout\ & 
-- (!\u3|u3|u1|u3|u4|co~combout\ & \u3|u2|u2|m[11]~6_combout\))) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\v4|m[13]~1_combout\ & (((!\u3|u3|u1|u3|u4|co~combout\) # (\u3|u2|u2|m[11]~6_combout\)) # (\u3|u2|u2|m[12]~5_combout\))) # (\v4|m[13]~1_combout\ & 
-- (\u3|u2|u2|m[12]~5_combout\ & ((!\u3|u3|u1|u3|u4|co~combout\) # (\u3|u2|u2|m[11]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010111011101100101011101100100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u3|u2|u2|ALT_INV_m[12]~5_combout\,
	datac => \u3|u3|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u3|u2|u2|ALT_INV_m[11]~6_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u3|u3|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X9_Y6_N18
\u3|u3|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[14]~10_combout\ = ( \u3|u2|u2|m[13]~11_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\) # (!\u3|u3|u1|u4|u2|co~combout\ $ (!\v4|m[14]~0_combout\)))) # (\u3|u3|u1|u4|u4|co~2_combout\ & 
-- ((!\u3|u3|u1|u4|u2|co~combout\ $ (!\v4|m[14]~0_combout\)))) ) ) # ( !\u3|u2|u2|m[13]~11_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u3|u1|u4|u4|co~1_combout\ & (!\u3|u3|u1|u4|u2|co~combout\ $ (\v4|m[14]~0_combout\)))) # 
-- (\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u2|co~combout\ $ (\v4|m[14]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u1|u4|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u3|u2|m[14]~10_combout\);

-- Location: MLABCELL_X9_Y6_N33
\u3|u3|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u1|co~combout\ = ( \u3|u3|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\ & \u3|u2|u2|m[11]~6_combout\) ) ) # ( !\u3|u3|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u3|u2|u2|m[11]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u3|u2|u2|ALT_INV_m[11]~6_combout\,
	dataf => \u3|u3|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u4|u1|co~combout\);

-- Location: MLABCELL_X9_Y6_N57
\u3|u3|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[13]~11_combout\ = ( \u3|u3|u1|u4|u1|co~combout\ & ( !\u3|u2|u2|m[12]~5_combout\ $ (((!\v4|m[13]~1_combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u3|u3|u1|u4|u1|co~combout\ & ( 
-- !\u3|u2|u2|m[12]~5_combout\ $ ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[13]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110011001001110011001100100110110011001100011011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~1_combout\,
	datab => \u3|u2|u2|ALT_INV_m[12]~5_combout\,
	datac => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u3|u3|u2|m[13]~11_combout\);

-- Location: LABCELL_X10_Y6_N33
\u3|u4|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u4|co~2_combout\ = ( \u3|u3|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # (\u3|u3|u2|m[14]~10_combout\))) # (\v4|m[14]~0_combout\ & (\u3|u3|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\)) ) ) # 
-- ( !\u3|u3|u2|m[13]~11_combout\ & ( (\u3|u3|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000010111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datab => \u3|u3|u2|ALT_INV_m[14]~10_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u3|u3|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u4|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X5_Y5_N6
\u3|u3|u2|m[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[5]~2_combout\ = ( \u3|u2|u2|m[4]~1_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\) # ((!\u3|u3|u1|u2|u1|co~1_combout\ & !\u3|u3|u1|u2|u1|co~0_combout\)))) # 
-- (\u3|u3|u1|u4|u4|co~2_combout\ & (!\u3|u3|u1|u2|u1|co~1_combout\ & (!\u3|u3|u1|u2|u1|co~0_combout\))) ) ) ) # ( !\u3|u2|u2|m[4]~1_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u3|u1|u4|u4|co~1_combout\ & 
-- ((\u3|u3|u1|u2|u1|co~0_combout\) # (\u3|u3|u1|u2|u1|co~1_combout\)))) # (\u3|u3|u1|u4|u4|co~2_combout\ & (((\u3|u3|u1|u2|u1|co~0_combout\)) # (\u3|u3|u1|u2|u1|co~1_combout\))) ) ) ) # ( \u3|u2|u2|m[4]~1_combout\ & ( !\v4|m[5]~8_combout\ & ( 
-- (((!\u3|u3|u1|u4|u4|co~2_combout\ & !\u3|u3|u1|u4|u4|co~1_combout\)) # (\u3|u3|u1|u2|u1|co~0_combout\)) # (\u3|u3|u1|u2|u1|co~1_combout\) ) ) ) # ( !\u3|u2|u2|m[4]~1_combout\ & ( !\v4|m[5]~8_combout\ & ( (!\u3|u3|u1|u2|u1|co~1_combout\ & 
-- (!\u3|u3|u1|u2|u1|co~0_combout\ & ((\u3|u3|u1|u4|u4|co~1_combout\) # (\u3|u3|u1|u4|u4|co~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000101111110011111100010101001111111110101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u3|u2|u2|ALT_INV_m[4]~1_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u3|u3|u2|m[5]~2_combout\);

-- Location: MLABCELL_X4_Y5_N45
\u3|u3|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u3|u2|u2|m[2]~2_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u3|u3|u1|u1|u2|co~combout\) # (\u3|u2|u2|m[1]~3_combout\))) # (\v4|m[2]~10_combout\ & (\u3|u2|u2|m[1]~3_combout\ & 
-- !\u3|u3|u1|u1|u2|co~combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u3|u2|u2|m[2]~2_combout\ $ (((!\v4|m[2]~10_combout\ & (!\u3|u2|u2|m[1]~3_combout\ & \u3|u3|u1|u1|u2|co~combout\)) # (\v4|m[2]~10_combout\ & ((!\u3|u2|u2|m[1]~3_combout\) # 
-- (\u3|u3|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001011001100110100101100101100101101001100110010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u2|u2|ALT_INV_m[1]~3_combout\,
	datad => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u3|u1|u1|u4|s~combout\);

-- Location: MLABCELL_X4_Y5_N57
\u3|u4|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u2|u1|co~0_combout\ = ( \u3|u3|u1|u4|u4|co~1_combout\ & ( (!\u3|u3|u1|u1|u4|s~combout\ & !\v4|m[4]~9_combout\) ) ) # ( !\u3|u3|u1|u4|u4|co~1_combout\ & ( (!\v4|m[4]~9_combout\ & ((!\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u2|u2|m[2]~2_combout\)) # 
-- (\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u1|u4|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010000000000011101000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u3|u1|u1|u4|ALT_INV_s~combout\,
	datad => \v4|ALT_INV_m[4]~9_combout\,
	dataf => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u4|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X7_Y6_N33
\u3|u2|u2|m[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[0]~13_combout\ = ( \v2|m[6]~8_combout\ & ( (!\b[0]~input_o\) # ((!\u3|u2|u1|u4|u4|co~1_combout\ & !\u3|u2|u1|u4|u4|co~2_combout\)) ) ) # ( !\v2|m[6]~8_combout\ & ( (\b[0]~input_o\ & ((\u3|u2|u1|u4|u4|co~2_combout\) # 
-- (\u3|u2|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[6]~8_combout\,
	combout => \u3|u2|u2|m[0]~13_combout\);

-- Location: MLABCELL_X4_Y5_N6
\u3|u3|u2|m[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[1]~5_combout\ = ( \u3|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[5]~9_combout\ & ( !\v4|m[1]~11_combout\ $ (!\u3|u2|u2|m[0]~13_combout\) ) ) ) # ( !\u3|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[5]~9_combout\ & ( !\u3|u2|u2|m[0]~13_combout\ $ 
-- (((!\u3|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[1]~11_combout\))) ) ) ) # ( \u3|u3|u1|u4|u4|co~2_combout\ & ( !\v2|m[5]~9_combout\ & ( !\v4|m[1]~11_combout\ $ (!\b[0]~input_o\ $ (\u3|u2|u2|m[0]~13_combout\)) ) ) ) # ( !\u3|u3|u1|u4|u4|co~2_combout\ & ( 
-- !\v2|m[5]~9_combout\ & ( !\u3|u2|u2|m[0]~13_combout\ $ (((!\u3|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[1]~11_combout\ $ (\b[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010011101011001111001100001100010001111011100011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[1]~11_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \u3|u2|u2|ALT_INV_m[0]~13_combout\,
	datae => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[5]~9_combout\,
	combout => \u3|u3|u2|m[1]~5_combout\);

-- Location: LABCELL_X12_Y5_N45
\v2|m[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[4]~10_combout\ = ( \o~5_combout\ & ( \a[4]~input_o\ ) ) # ( !\o~5_combout\ & ( !\a[4]~input_o\ $ (!\a[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_o~5_combout\,
	combout => \v2|m[4]~10_combout\);

-- Location: MLABCELL_X4_Y5_N12
\u3|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u1|u2|co~combout\ = ( \u3|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[5]~9_combout\ & ( (\b[0]~input_o\ & ((!\v2|m[4]~10_combout\) # (\v4|m[1]~11_combout\))) ) ) ) # ( !\u3|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[5]~9_combout\ & ( (\b[0]~input_o\ & 
-- ((!\v2|m[4]~10_combout\ & ((\v4|m[1]~11_combout\) # (\u3|u3|u1|u4|u4|co~1_combout\))) # (\v2|m[4]~10_combout\ & (\u3|u3|u1|u4|u4|co~1_combout\ & \v4|m[1]~11_combout\)))) ) ) ) # ( \u3|u3|u1|u4|u4|co~2_combout\ & ( !\v2|m[5]~9_combout\ & ( 
-- (\v4|m[1]~11_combout\ & ((!\b[0]~input_o\) # (!\v2|m[4]~10_combout\))) ) ) ) # ( !\u3|u3|u1|u4|u4|co~2_combout\ & ( !\v2|m[5]~9_combout\ & ( (!\b[0]~input_o\ & (((\v4|m[1]~11_combout\)))) # (\b[0]~input_o\ & ((!\v2|m[4]~10_combout\ & 
-- ((!\u3|u3|u1|u4|u4|co~1_combout\) # (\v4|m[1]~11_combout\))) # (\v2|m[4]~10_combout\ & (!\u3|u3|u1|u4|u4|co~1_combout\ & \v4|m[1]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111110000000001110111000000100010001010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \v2|ALT_INV_m[4]~10_combout\,
	datac => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[1]~11_combout\,
	datae => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[5]~9_combout\,
	combout => \u3|u4|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X4_Y5_N33
\u3|u3|u2|m[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[2]~4_combout\ = ( \v4|m[2]~10_combout\ & ( !\u3|u2|u2|m[1]~3_combout\ $ ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\u3|u3|u1|u1|u2|co~combout\))) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u3|u2|u2|m[1]~3_combout\ $ 
-- (((!\u3|u3|u1|u1|u2|co~combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u2|ALT_INV_m[1]~3_combout\,
	datad => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[2]~10_combout\,
	combout => \u3|u3|u2|m[2]~4_combout\);

-- Location: MLABCELL_X4_Y5_N54
\u3|u4|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\ & (!\u3|u2|u2|m[2]~2_combout\)) # (\u3|u3|u1|u4|u4|co~1_combout\ & ((\u3|u3|u1|u1|u4|s~combout\))))) # 
-- (\u3|u3|u1|u4|u4|co~2_combout\ & (((\u3|u3|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\ & (\u3|u2|u2|m[2]~2_combout\)) # (\u3|u3|u1|u4|u4|co~1_combout\ & 
-- ((!\u3|u3|u1|u1|u4|s~combout\))))) # (\u3|u3|u1|u4|u4|co~2_combout\ & (((!\u3|u3|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101000000011111110100000010000000101111111000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u3|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u4|u1|u2|u1|s~0_combout\);

-- Location: MLABCELL_X4_Y5_N48
\u3|u4|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u2|u1|co~1_combout\ = ( !\u3|u4|u1|u2|u1|s~0_combout\ & ( \v4|m[3]~12_combout\ & ( (\u3|u3|u2|m[2]~4_combout\ & ((!\u3|u3|u2|m[1]~5_combout\ & (!\u3|u4|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)) # (\u3|u3|u2|m[1]~5_combout\ & 
-- ((!\u3|u4|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\))))) ) ) ) # ( !\u3|u4|u1|u2|u1|s~0_combout\ & ( !\v4|m[3]~12_combout\ & ( ((!\u3|u3|u2|m[1]~5_combout\ & (!\u3|u4|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)) # (\u3|u3|u2|m[1]~5_combout\ & 
-- ((!\u3|u4|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) # (\u3|u3|u2|m[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101001111000000000000000000001101000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[1]~5_combout\,
	datab => \u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	datae => \u3|u4|u1|u2|u1|ALT_INV_s~0_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u4|u1|u2|u1|co~1_combout\);

-- Location: MLABCELL_X4_Y5_N42
\u3|u3|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u3|u2|u2|m[2]~2_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u3|u3|u1|u1|u2|co~combout\) # (\u3|u2|u2|m[1]~3_combout\))) # (\v4|m[2]~10_combout\ & (!\u3|u3|u1|u1|u2|co~combout\ & 
-- \u3|u2|u2|m[1]~3_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u3|u3|u1|u1|u2|co~combout\) # (\u3|u2|u2|m[1]~3_combout\))) # (\v4|m[2]~10_combout\ & (!\u3|u3|u1|u1|u2|co~combout\ & \u3|u2|u2|m[1]~3_combout\))) # 
-- (\u3|u2|u2|m[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111101110101011111110101000000010101000100000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|u2|u2|ALT_INV_m[1]~3_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u3|u1|u1|u4|co~combout\);

-- Location: LABCELL_X7_Y6_N15
\u3|u2|u2|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[3]~12_combout\ = ( \u3|u2|u1|u4|u4|co~2_combout\ & ( !\u3|u2|u1|u1|u4|s~combout\ ) ) # ( !\u3|u2|u1|u4|u4|co~2_combout\ & ( (!\u3|u2|u1|u4|u4|co~1_combout\ & ((\u3|u1|u2|m[2]~2_combout\))) # (\u3|u2|u1|u4|u4|co~1_combout\ & 
-- (!\u3|u2|u1|u1|u4|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u1|u4|ALT_INV_s~combout\,
	datac => \u3|u1|u2|ALT_INV_m[2]~2_combout\,
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u2|u2|m[3]~12_combout\);

-- Location: MLABCELL_X4_Y5_N21
\u3|u3|u2|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[4]~3_combout\ = ( \v4|m[4]~9_combout\ & ( !\u3|u2|u2|m[3]~12_combout\ $ (((!\u3|u3|u1|u1|u4|co~combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u3|u2|u2|m[3]~12_combout\ $ 
-- ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\u3|u3|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u3|u1|u1|u4|ALT_INV_co~combout\,
	datad => \u3|u2|u2|ALT_INV_m[3]~12_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u3|u2|m[4]~3_combout\);

-- Location: LABCELL_X6_Y5_N30
\u3|u4|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u2|u3|co~combout\ = ( \u3|u3|u2|m[4]~3_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u3|u2|m[5]~2_combout\ & (((!\u3|u4|u1|u2|u1|co~0_combout\ & !\u3|u4|u1|u2|u1|co~1_combout\)) # (\v4|m[6]~7_combout\))) # (\u3|u3|u2|m[5]~2_combout\ & 
-- (!\u3|u4|u1|u2|u1|co~0_combout\ & (!\u3|u4|u1|u2|u1|co~1_combout\ & \v4|m[6]~7_combout\))) ) ) ) # ( !\u3|u3|u2|m[4]~3_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u3|u2|m[5]~2_combout\) # (\v4|m[6]~7_combout\) ) ) ) # ( \u3|u3|u2|m[4]~3_combout\ & ( 
-- !\v4|m[5]~8_combout\ & ( (!\u3|u3|u2|m[5]~2_combout\ & \v4|m[6]~7_combout\) ) ) ) # ( !\u3|u3|u2|m[4]~3_combout\ & ( !\v4|m[5]~8_combout\ & ( (!\u3|u3|u2|m[5]~2_combout\ & (((!\u3|u4|u1|u2|u1|co~0_combout\ & !\u3|u4|u1|u2|u1|co~1_combout\)) # 
-- (\v4|m[6]~7_combout\))) # (\u3|u3|u2|m[5]~2_combout\ & (!\u3|u4|u1|u2|u1|co~0_combout\ & (!\u3|u4|u1|u2|u1|co~1_combout\ & \v4|m[6]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101010000000001010101010101010111111111000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[5]~2_combout\,
	datab => \u3|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u3|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	datae => \u3|u3|u2|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u3|u4|u1|u2|u3|co~combout\);

-- Location: LABCELL_X5_Y5_N45
\u3|u3|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u1|s~combout\ = ( \u3|u2|u2|m[7]~9_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\v4|m[7]~6_combout\ & ((!\u3|u3|u1|u2|u3|co~combout\) # (\u3|u2|u2|m[6]~0_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u3|u1|u2|u3|co~combout\ & 
-- \u3|u2|u2|m[6]~0_combout\)))) ) ) # ( !\u3|u2|u2|m[7]~9_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\v4|m[7]~6_combout\ & (\u3|u3|u1|u2|u3|co~combout\ & !\u3|u2|u2|m[6]~0_combout\)) # (\v4|m[7]~6_combout\ & ((!\u3|u2|u2|m[6]~0_combout\) # 
-- (\u3|u3|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111100001100001111110000101111000000111100111100000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u3|u2|u2|ALT_INV_m[6]~0_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	combout => \u3|u3|u1|u3|u1|s~combout\);

-- Location: LABCELL_X7_Y5_N33
\u3|u4|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u2|s~0_combout\ = ( \u3|u3|u1|u4|u4|co~1_combout\ & ( !\u3|u3|u1|u3|u1|s~combout\ $ (\v4|m[9]~5_combout\) ) ) # ( !\u3|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (((!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u2|u2|m[7]~9_combout\))) # 
-- (\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u3|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011010001001011101101000110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u4|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X5_Y5_N0
\u3|u3|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u2|co~combout\ = ( \u3|u3|u1|u2|u1|co~1_combout\ & ( (\v4|m[5]~8_combout\ & !\u3|u2|u2|m[4]~1_combout\) ) ) # ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( (!\u3|u3|u1|u2|u1|co~0_combout\ & ((!\u3|u2|u2|m[4]~1_combout\) # (\v4|m[5]~8_combout\))) # 
-- (\u3|u3|u1|u2|u1|co~0_combout\ & (\v4|m[5]~8_combout\ & !\u3|u2|u2|m[4]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010110010101100101011001000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u3|u2|u2|ALT_INV_m[4]~1_combout\,
	dataf => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u3|u1|u2|u2|co~combout\);

-- Location: LABCELL_X5_Y5_N33
\u3|u3|u2|m[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[6]~1_combout\ = ( \u3|u2|u2|m[5]~4_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[6]~7_combout\ $ (\u3|u3|u1|u2|u2|co~combout\)))) # (\u3|u3|u1|u4|u4|co~2_combout\ & ((!\v4|m[6]~7_combout\ $ 
-- (\u3|u3|u1|u2|u2|co~combout\)))) ) ) # ( !\u3|u2|u2|m[5]~4_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u3|u1|u4|u4|co~1_combout\ & (!\v4|m[6]~7_combout\ $ (!\u3|u3|u1|u2|u2|co~combout\)))) # (\u3|u3|u1|u4|u4|co~2_combout\ & ((!\v4|m[6]~7_combout\ 
-- $ (!\u3|u3|u1|u2|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u3|u3|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u3|u2|u2|ALT_INV_m[5]~4_combout\,
	combout => \u3|u3|u2|m[6]~1_combout\);

-- Location: MLABCELL_X4_Y5_N39
\u3|u3|u2|m[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[7]~0_combout\ = ( \v4|m[7]~6_combout\ & ( !\u3|u2|u2|m[6]~0_combout\ $ ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\u3|u3|u1|u2|u3|co~combout\))) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u3|u2|u2|m[6]~0_combout\ $ 
-- (((!\u3|u3|u1|u2|u3|co~combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u3|u2|u2|ALT_INV_m[6]~0_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u3|u3|u2|m[7]~0_combout\);

-- Location: LABCELL_X7_Y5_N6
\u3|u4|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u2|co~1_combout\ = ( \u3|u3|u2|m[7]~0_combout\ & ( \v4|m[7]~6_combout\ & ( (!\u3|u4|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((!\u3|u4|u1|u2|u3|co~combout\ & \u3|u3|u2|m[6]~1_combout\)))) ) ) ) # ( !\u3|u3|u2|m[7]~0_combout\ & ( 
-- \v4|m[7]~6_combout\ & ( (!\u3|u4|u1|u2|u3|co~combout\ & (!\v4|m[8]~13_combout\ & (!\u3|u4|u1|u3|u2|s~0_combout\ & \u3|u3|u2|m[6]~1_combout\))) ) ) ) # ( \u3|u3|u2|m[7]~0_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\u3|u4|u1|u3|u2|s~0_combout\ & 
-- ((!\u3|u4|u1|u2|u3|co~combout\) # ((!\v4|m[8]~13_combout\) # (\u3|u3|u2|m[6]~1_combout\)))) ) ) ) # ( !\u3|u3|u2|m[7]~0_combout\ & ( !\v4|m[7]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u3|u4|u1|u3|u2|s~0_combout\ & ((!\u3|u4|u1|u2|u3|co~combout\) # 
-- (\u3|u3|u2|m[6]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000111000001111000000000000100000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u3|u4|u1|u3|u2|ALT_INV_s~0_combout\,
	datad => \u3|u3|u2|ALT_INV_m[6]~1_combout\,
	datae => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	dataf => \v4|ALT_INV_m[7]~6_combout\,
	combout => \u3|u4|u1|u3|u2|co~1_combout\);

-- Location: MLABCELL_X9_Y6_N51
\u3|u2|u2|m[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u2|m[8]~14_combout\ = (!\u3|u2|u1|u4|u4|co~2_combout\ & ((!\u3|u2|u1|u4|u4|co~1_combout\ & ((\u3|u1|u2|m[7]~8_combout\))) # (\u3|u2|u1|u4|u4|co~1_combout\ & (!\u3|u2|u1|u3|u1|s~combout\)))) # (\u3|u2|u1|u4|u4|co~2_combout\ & 
-- (((!\u3|u2|u1|u3|u1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100001110000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u2|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u3|u1|u2|ALT_INV_m[7]~8_combout\,
	combout => \u3|u2|u2|m[8]~14_combout\);

-- Location: LABCELL_X5_Y5_N42
\u3|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u1|co~combout\ = ( \u3|u2|u2|m[7]~9_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\v4|m[7]~6_combout\ & ((!\u3|u3|u1|u2|u3|co~combout\) # (\u3|u2|u2|m[6]~0_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u3|u1|u2|u3|co~combout\ & 
-- \u3|u2|u2|m[6]~0_combout\))) ) ) # ( !\u3|u2|u2|m[7]~9_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u3|u3|u1|u2|u3|co~combout\) # (\u3|u2|u2|m[6]~0_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u3|u1|u2|u3|co~combout\ & 
-- \u3|u2|u2|m[6]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000000000100011100000000011111111100011101111111110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u3|u2|u2|ALT_INV_m[6]~0_combout\,
	datad => \v4|ALT_INV_m[8]~13_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	combout => \u3|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X7_Y5_N21
\u3|u3|u2|m[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[9]~9_combout\ = ( \u3|u3|u1|u3|u1|co~combout\ & ( !\u3|u2|u2|m[8]~14_combout\ $ (((!\v4|m[9]~5_combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u3|u3|u1|u3|u1|co~combout\ & ( 
-- !\u3|u2|u2|m[8]~14_combout\ $ ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[9]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u2|ALT_INV_m[8]~14_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u3|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u3|u2|m[9]~9_combout\);

-- Location: LABCELL_X7_Y5_N45
\u3|u3|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u3|co~combout\ = ( \u3|u3|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u3|u2|u2|m[9]~8_combout\) ) ) # ( !\u3|u3|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u3|u3|u1|u3|u2|co~1_combout\ & !\u3|u2|u2|m[9]~8_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u3|u3|u1|u3|u2|co~1_combout\) # (!\u3|u2|u2|m[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101010000111101010101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u3|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \u3|u2|u2|ALT_INV_m[9]~8_combout\,
	dataf => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u3|u3|u1|u3|u3|co~combout\);

-- Location: LABCELL_X7_Y5_N18
\u3|u3|u2|m[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[11]~7_combout\ = ( \v4|m[11]~3_combout\ & ( !\u3|u2|u2|m[10]~7_combout\ $ ((((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) # (\u3|u3|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u3|u2|u2|m[10]~7_combout\ $ 
-- (((!\u3|u3|u1|u3|u3|co~combout\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u2|ALT_INV_m[10]~7_combout\,
	datad => \u3|u3|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u3|u2|m[11]~7_combout\);

-- Location: LABCELL_X10_Y6_N30
\u3|u4|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u4|co~0_combout\ = ( \u3|u3|u2|m[13]~11_combout\ & ( (\v4|m[14]~0_combout\ & (!\u3|u3|u2|m[14]~10_combout\ $ (\u1|u2|u1|u4|u4|co~0_combout\))) ) ) # ( !\u3|u3|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u3|u3|u2|m[14]~10_combout\ $ 
-- (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~0_combout\,
	datab => \u3|u3|u2|ALT_INV_m[14]~10_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u3|u3|u2|ALT_INV_m[13]~11_combout\,
	combout => \u3|u4|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X7_Y5_N54
\u3|u3|u2|m[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[10]~8_combout\ = ( \u3|u2|u2|m[9]~8_combout\ & ( \u3|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u3|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u3|u2|u2|m[9]~8_combout\ & ( 
-- \u3|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((\u3|u3|u1|u3|u2|co~1_combout\) # (\u3|u3|u1|u3|u2|co~0_combout\))) ) ) ) # ( \u3|u2|u2|m[9]~8_combout\ & ( !\u3|u3|u1|u4|u4|co~1_combout\ & ( (!\u3|u3|u1|u4|u4|co~2_combout\) # 
-- (!\v4|m[10]~4_combout\ $ (((!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u3|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\u3|u2|u2|m[9]~8_combout\ & ( !\u3|u3|u1|u4|u4|co~1_combout\ & ( (\u3|u3|u1|u4|u4|co~2_combout\ & (!\v4|m[10]~4_combout\ $ 
-- (((\u3|u3|u1|u3|u2|co~1_combout\) # (\u3|u3|u1|u3|u2|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000111111111110111100010000111100001110111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datab => \u3|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u3|u2|u2|ALT_INV_m[9]~8_combout\,
	dataf => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u3|u2|m[10]~8_combout\);

-- Location: LABCELL_X7_Y5_N30
\u3|u4|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u2|co~0_combout\ = ( \u3|u2|u2|m[7]~9_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u3|u3|u1|u3|u1|s~combout\) # ((!\u3|u3|u1|u4|u4|co~2_combout\ & !\u3|u3|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u3|u2|u2|m[7]~9_combout\ & ( 
-- (!\u3|u3|u1|u3|u1|s~combout\ & (!\v4|m[9]~5_combout\ & ((\u3|u3|u1|u4|u4|co~1_combout\) # (\u3|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000011101010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	combout => \u3|u4|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X7_Y5_N12
\u3|u4|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \v4|m[11]~3_combout\ & ( (!\u3|u3|u2|m[10]~8_combout\) # ((!\u3|u3|u2|m[9]~9_combout\) # ((!\u3|u4|u1|u3|u2|co~1_combout\ & !\u3|u4|u1|u3|u2|co~0_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( 
-- \v4|m[11]~3_combout\ & ( (!\u3|u3|u2|m[10]~8_combout\) # ((!\u3|u4|u1|u3|u2|co~1_combout\ & (!\u3|u3|u2|m[9]~9_combout\ & !\u3|u4|u1|u3|u2|co~0_combout\))) ) ) ) # ( \v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u3|u3|u2|m[10]~8_combout\ & 
-- ((!\u3|u3|u2|m[9]~9_combout\) # ((!\u3|u4|u1|u3|u2|co~1_combout\ & !\u3|u4|u1|u3|u2|co~0_combout\)))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\u3|u3|u2|m[10]~8_combout\ & (!\u3|u4|u1|u3|u2|co~1_combout\ & 
-- (!\u3|u3|u2|m[9]~9_combout\ & !\u3|u4|u1|u3|u2|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101010001010000011101010101010101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[10]~8_combout\,
	datab => \u3|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[9]~9_combout\,
	datad => \u3|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u3|u4|u1|u3|u4|co~combout\);

-- Location: MLABCELL_X9_Y6_N21
\u3|u3|u2|m[12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[12]~6_combout\ = ( \u3|u3|u1|u3|u4|co~combout\ & ( !\u3|u2|u2|m[11]~6_combout\ $ ((((!\u3|u3|u1|u4|u4|co~2_combout\ & !\u3|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[12]~2_combout\))) ) ) # ( !\u3|u3|u1|u3|u4|co~combout\ & ( 
-- !\u3|u2|u2|m[11]~6_combout\ $ (((!\v4|m[12]~2_combout\) # ((!\u3|u3|u1|u4|u4|co~2_combout\ & !\u3|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u3|u2|u2|ALT_INV_m[11]~6_combout\,
	dataf => \u3|u3|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u3|u3|u2|m[12]~6_combout\);

-- Location: LABCELL_X10_Y6_N36
\u3|u4|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u4|co~1_combout\ = ( \v4|m[13]~1_combout\ & ( \u3|u3|u2|m[12]~6_combout\ & ( (\u3|u4|u1|u4|u4|co~0_combout\ & ((!\u3|u3|u2|m[11]~7_combout\ & (!\u3|u4|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u3|u2|m[11]~7_combout\ & 
-- ((!\u3|u4|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\))))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( \u3|u3|u2|m[12]~6_combout\ & ( \u3|u4|u1|u4|u4|co~0_combout\ ) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u3|u3|u2|m[12]~6_combout\ & ( 
-- (\u3|u4|u1|u4|u4|co~0_combout\ & ((!\u3|u3|u2|m[11]~7_combout\ & (!\u3|u4|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u3|u2|m[11]~7_combout\ & ((!\u3|u4|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010000000000000000000000110011001100110011000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[11]~7_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u3|u4|u1|u3|u4|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	datae => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u3|u3|u2|ALT_INV_m[12]~6_combout\,
	combout => \u3|u4|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X7_Y5_N24
\u3|u4|u2|m[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[10]~9_combout\ = ( \v4|m[10]~4_combout\ & ( \u3|u4|u1|u3|u2|co~0_combout\ & ( !\u3|u3|u2|m[9]~9_combout\ $ (((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u3|u4|u1|u3|u2|co~0_combout\ 
-- & ( \u3|u3|u2|m[9]~9_combout\ ) ) ) # ( \v4|m[10]~4_combout\ & ( !\u3|u4|u1|u3|u2|co~0_combout\ & ( !\u3|u3|u2|m[9]~9_combout\ $ (((!\u3|u4|u1|u3|u2|co~1_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) ) ) # ( 
-- !\v4|m[10]~4_combout\ & ( !\u3|u4|u1|u3|u2|co~0_combout\ & ( !\u3|u3|u2|m[9]~9_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\u3|u4|u1|u3|u2|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111000011000111100011110000001111000011110101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[9]~9_combout\,
	datad => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u3|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u3|u4|u2|m[10]~9_combout\);

-- Location: LABCELL_X7_Y5_N42
\u3|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u3|co~combout\ = ( \u3|u4|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u3|u3|u2|m[9]~9_combout\) ) ) # ( !\u3|u4|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u3|u4|u1|u3|u2|co~1_combout\ & !\u3|u3|u2|m[9]~9_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u3|u4|u1|u3|u2|co~1_combout\) # (!\u3|u3|u2|m[9]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011010100110101001101010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u3|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[9]~9_combout\,
	dataf => \u3|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u3|u4|u1|u3|u3|co~combout\);

-- Location: LABCELL_X7_Y5_N48
\u3|u4|u2|m[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[11]~8_combout\ = ( \u3|u4|u1|u3|u3|co~combout\ & ( !\u3|u3|u2|m[10]~8_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[11]~3_combout\))) ) ) # ( !\u3|u4|u1|u3|u3|co~combout\ & ( 
-- !\u3|u3|u2|m[10]~8_combout\ $ (((!\v4|m[11]~3_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[11]~3_combout\,
	datad => \u3|u3|u2|ALT_INV_m[10]~8_combout\,
	dataf => \u3|u4|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u3|u4|u2|m[11]~8_combout\);

-- Location: LABCELL_X6_Y5_N36
\u3|u4|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u1|s~combout\ = ( \v4|m[8]~13_combout\ & ( !\u3|u3|u2|m[7]~0_combout\ $ (((!\v4|m[7]~6_combout\ & ((!\u3|u4|u1|u2|u3|co~combout\) # (\u3|u3|u2|m[6]~1_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u4|u1|u2|u3|co~combout\ & 
-- \u3|u3|u2|m[6]~1_combout\)))) ) ) # ( !\v4|m[8]~13_combout\ & ( !\u3|u3|u2|m[7]~0_combout\ $ (((!\v4|m[7]~6_combout\ & (\u3|u4|u1|u2|u3|co~combout\ & !\u3|u3|u2|m[6]~1_combout\)) # (\v4|m[7]~6_combout\ & ((!\u3|u3|u2|m[6]~1_combout\) # 
-- (\u3|u4|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111001110001100011100111000101110001100011100111000110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u3|u4|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u3|u3|u2|ALT_INV_m[6]~1_combout\,
	datad => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u4|u1|u3|u1|s~combout\);

-- Location: LABCELL_X6_Y5_N15
\u4|u1|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u2|co~0_combout\ = ( \u3|u4|u1|u4|u4|co~2_combout\ & ( (!\u3|u4|u1|u3|u1|s~combout\ & !\v4|m[9]~5_combout\) ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\ & ((\u3|u3|u2|m[7]~0_combout\))) # 
-- (\u3|u4|u1|u4|u4|co~1_combout\ & (!\u3|u4|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011100000001000001110000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u1|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X5_Y5_N30
\u3|u3|u2|m[8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[8]~14_combout\ = (!\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u4|u4|co~1_combout\ & (\u3|u2|u2|m[7]~9_combout\)) # (\u3|u3|u1|u4|u4|co~1_combout\ & ((!\u3|u3|u1|u3|u1|s~combout\))))) # (\u3|u3|u1|u4|u4|co~2_combout\ & 
-- (((!\u3|u3|u1|u3|u1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100001111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u2|u2|ALT_INV_m[7]~9_combout\,
	datad => \u3|u3|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u3|u3|u2|m[8]~14_combout\);

-- Location: LABCELL_X6_Y5_N39
\u3|u4|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u3|u1|co~combout\ = ( \v4|m[8]~13_combout\ & ( (\u3|u3|u2|m[7]~0_combout\ & ((!\v4|m[7]~6_combout\ & ((!\u3|u4|u1|u2|u3|co~combout\) # (\u3|u3|u2|m[6]~1_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u4|u1|u2|u3|co~combout\ & 
-- \u3|u3|u2|m[6]~1_combout\)))) ) ) # ( !\v4|m[8]~13_combout\ & ( ((!\v4|m[7]~6_combout\ & ((!\u3|u4|u1|u2|u3|co~combout\) # (\u3|u3|u2|m[6]~1_combout\))) # (\v4|m[7]~6_combout\ & (!\u3|u4|u1|u2|u3|co~combout\ & \u3|u3|u2|m[6]~1_combout\))) # 
-- (\u3|u3|u2|m[7]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111100011111110111100001000000011100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u3|u4|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	datad => \u3|u3|u2|ALT_INV_m[6]~1_combout\,
	dataf => \v4|ALT_INV_m[8]~13_combout\,
	combout => \u3|u4|u1|u3|u1|co~combout\);

-- Location: LABCELL_X7_Y5_N51
\u3|u4|u2|m[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[9]~6_combout\ = ( \u3|u4|u1|u3|u1|co~combout\ & ( !\u3|u3|u2|m[8]~14_combout\ $ (((!\v4|m[9]~5_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u3|u4|u1|u3|u1|co~combout\ & ( 
-- !\u3|u3|u2|m[8]~14_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[9]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[8]~14_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u3|u4|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u4|u2|m[9]~6_combout\);

-- Location: LABCELL_X6_Y5_N51
\u3|u4|u2|m[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[7]~0_combout\ = ( \u3|u4|u1|u2|u3|co~combout\ & ( !\u3|u3|u2|m[6]~1_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[7]~6_combout\))) ) ) # ( !\u3|u4|u1|u2|u3|co~combout\ & ( !\u3|u3|u2|m[6]~1_combout\ 
-- $ (((!\v4|m[7]~6_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[6]~1_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u4|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u4|u2|m[7]~0_combout\);

-- Location: LABCELL_X6_Y5_N27
\u3|u4|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u2|u2|co~combout\ = ( \v4|m[5]~8_combout\ & ( (!\u3|u3|u2|m[4]~3_combout\) # ((!\u3|u4|u1|u2|u1|co~1_combout\ & !\u3|u4|u1|u2|u1|co~0_combout\)) ) ) # ( !\v4|m[5]~8_combout\ & ( (!\u3|u4|u1|u2|u1|co~1_combout\ & (!\u3|u4|u1|u2|u1|co~0_combout\ & 
-- !\u3|u3|u2|m[4]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datab => \u3|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u3|u3|u2|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u3|u4|u1|u2|u2|co~combout\);

-- Location: LABCELL_X6_Y5_N48
\u3|u4|u2|m[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[6]~1_combout\ = ( \u3|u4|u1|u2|u2|co~combout\ & ( !\u3|u3|u2|m[5]~2_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u3|u4|u1|u2|u2|co~combout\ & ( !\u3|u3|u2|m[5]~2_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[5]~2_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u3|u4|u2|m[6]~1_combout\);

-- Location: MLABCELL_X4_Y5_N24
\u3|u4|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u3|u3|u2|m[2]~4_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u3|u4|u1|u1|u2|co~combout\) # (\u3|u3|u2|m[1]~5_combout\))) # (\v4|m[2]~10_combout\ & (\u3|u3|u2|m[1]~5_combout\ & 
-- !\u3|u4|u1|u1|u2|co~combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u3|u4|u1|u1|u2|co~combout\) # (\u3|u3|u2|m[1]~5_combout\))) # (\v4|m[2]~10_combout\ & (\u3|u3|u2|m[1]~5_combout\ & !\u3|u4|u1|u1|u2|co~combout\))) # 
-- (\u3|u3|u2|m[2]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101011101110111110101110101000101000001000100010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u3|u2|ALT_INV_m[1]~5_combout\,
	datad => \u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u4|u1|u1|u4|co~combout\);

-- Location: MLABCELL_X4_Y5_N18
\u3|u3|u2|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[3]~12_combout\ = (!\u3|u3|u1|u4|u4|co~1_combout\ & ((!\u3|u3|u1|u4|u4|co~2_combout\ & (\u3|u2|u2|m[2]~2_combout\)) # (\u3|u3|u1|u4|u4|co~2_combout\ & ((!\u3|u3|u1|u1|u4|s~combout\))))) # (\u3|u3|u1|u4|u4|co~1_combout\ & 
-- (((!\u3|u3|u1|u1|u4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100001111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u2|u2|ALT_INV_m[2]~2_combout\,
	datad => \u3|u3|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u3|u3|u2|m[3]~12_combout\);

-- Location: LABCELL_X5_Y5_N18
\u3|u4|u2|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[4]~3_combout\ = ( \u3|u4|u1|u4|u4|co~2_combout\ & ( \v4|m[4]~9_combout\ & ( !\u3|u4|u1|u1|u4|co~combout\ $ (!\u3|u3|u2|m[3]~12_combout\) ) ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( \v4|m[4]~9_combout\ & ( !\u3|u3|u2|m[3]~12_combout\ $ 
-- (((!\u3|u4|u1|u4|u4|co~1_combout\) # (!\u3|u4|u1|u1|u4|co~combout\))) ) ) ) # ( \u3|u4|u1|u4|u4|co~2_combout\ & ( !\v4|m[4]~9_combout\ & ( !\u3|u4|u1|u1|u4|co~combout\ $ (\u3|u3|u2|m[3]~12_combout\) ) ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( 
-- !\v4|m[4]~9_combout\ & ( !\u3|u3|u2|m[3]~12_combout\ $ (((!\u3|u4|u1|u4|u4|co~1_combout\) # (\u3|u4|u1|u1|u4|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011110000111100001100011110000111100011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u4|u1|u1|u4|ALT_INV_co~combout\,
	datac => \u3|u3|u2|ALT_INV_m[3]~12_combout\,
	datae => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u3|u4|u2|m[4]~3_combout\);

-- Location: LABCELL_X6_Y5_N0
\u3|u4|u2|m[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[5]~2_combout\ = ( \u3|u3|u2|m[4]~3_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\) # ((!\u3|u4|u1|u2|u1|co~0_combout\ & !\u3|u4|u1|u2|u1|co~1_combout\)))) # 
-- (\u3|u4|u1|u4|u4|co~2_combout\ & (!\u3|u4|u1|u2|u1|co~0_combout\ & (!\u3|u4|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\u3|u3|u2|m[4]~3_combout\ & ( \v4|m[5]~8_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & (\u3|u4|u1|u4|u4|co~1_combout\ & 
-- ((\u3|u4|u1|u2|u1|co~1_combout\) # (\u3|u4|u1|u2|u1|co~0_combout\)))) # (\u3|u4|u1|u4|u4|co~2_combout\ & (((\u3|u4|u1|u2|u1|co~1_combout\)) # (\u3|u4|u1|u2|u1|co~0_combout\))) ) ) ) # ( \u3|u3|u2|m[4]~3_combout\ & ( !\v4|m[5]~8_combout\ & ( 
-- (((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\u3|u4|u1|u2|u1|co~1_combout\)) # (\u3|u4|u1|u2|u1|co~0_combout\) ) ) ) # ( !\u3|u3|u2|m[4]~3_combout\ & ( !\v4|m[5]~8_combout\ & ( (!\u3|u4|u1|u2|u1|co~0_combout\ & 
-- (!\u3|u4|u1|u2|u1|co~1_combout\ & ((\u3|u4|u1|u4|u4|co~1_combout\) # (\u3|u4|u1|u4|u4|co~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000101111110011111100010101001111111110101011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u3|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u3|u3|u2|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u3|u4|u2|m[5]~2_combout\);

-- Location: MLABCELL_X4_Y5_N27
\u3|u4|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u3|u3|u2|m[2]~4_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u3|u4|u1|u1|u2|co~combout\) # (\u3|u3|u2|m[1]~5_combout\))) # (\v4|m[2]~10_combout\ & (!\u3|u4|u1|u1|u2|co~combout\ & 
-- \u3|u3|u2|m[1]~5_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u3|u3|u2|m[2]~4_combout\ $ (((!\v4|m[2]~10_combout\ & (\u3|u4|u1|u1|u2|co~combout\ & !\u3|u3|u2|m[1]~5_combout\)) # (\v4|m[2]~10_combout\ & ((!\u3|u3|u2|m[1]~5_combout\) # 
-- (\u3|u4|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110101001100101011010100101101010010101100110101001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|u3|u2|ALT_INV_m[1]~5_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u3|u4|u1|u1|u4|s~combout\);

-- Location: LABCELL_X5_Y5_N27
\u4|u1|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u2|u1|co~0_combout\ = ( \u3|u3|u2|m[2]~4_combout\ & ( !\v4|m[4]~9_combout\ & ( (!\u3|u4|u1|u1|u4|s~combout\) # ((!\u3|u4|u1|u4|u4|co~1_combout\ & !\u3|u4|u1|u4|u4|co~2_combout\)) ) ) ) # ( !\u3|u3|u2|m[2]~4_combout\ & ( !\v4|m[4]~9_combout\ & ( 
-- (!\u3|u4|u1|u1|u4|s~combout\ & ((\u3|u4|u1|u4|u4|co~2_combout\) # (\u3|u4|u1|u4|u4|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000111110101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u1|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X12_Y5_N36
\v2|m[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[3]~11_combout\ = ( \a[0]~input_o\ & ( !\a[3]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ $ (((!\a[15]~input_o\) # ((!\a[2]~input_o\ & !\a[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101101010010101010110101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v2|m[3]~11_combout\);

-- Location: LABCELL_X10_Y3_N12
\u4|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u1|u2|co~combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( (!\v2|m[3]~11_combout\) # (!\v2|m[4]~10_combout\ $ (((\u3|u4|u1|u4|u4|co~2_combout\) # (\u3|u4|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( 
-- !\v2|m[4]~10_combout\ ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[3]~11_combout\ & (!\v2|m[4]~10_combout\ $ (((\u3|u4|u1|u4|u4|co~2_combout\) # (\u3|u4|u1|u4|u4|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100000101000010101010101010101111100111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|ALT_INV_m[4]~10_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v2|ALT_INV_m[3]~11_combout\,
	datad => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u4|u1|u1|u1|u2|co~combout\);

-- Location: LABCELL_X10_Y3_N33
\u3|u4|u2|m[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[2]~4_combout\ = ( \u3|u3|u2|m[1]~5_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\) # (!\v4|m[2]~10_combout\ $ (\u3|u4|u1|u1|u2|co~combout\)))) # (\u3|u4|u1|u4|u4|co~2_combout\ & ((!\v4|m[2]~10_combout\ $ 
-- (\u3|u4|u1|u1|u2|co~combout\)))) ) ) # ( !\u3|u3|u2|m[1]~5_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & (\u3|u4|u1|u4|u4|co~1_combout\ & (!\v4|m[2]~10_combout\ $ (!\u3|u4|u1|u1|u2|co~combout\)))) # (\u3|u4|u1|u4|u4|co~2_combout\ & 
-- ((!\v4|m[2]~10_combout\ $ (!\u3|u4|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u3|u2|ALT_INV_m[1]~5_combout\,
	combout => \u3|u4|u2|m[2]~4_combout\);

-- Location: LABCELL_X10_Y3_N30
\u4|u1|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\ & ((!\u3|u3|u2|m[2]~4_combout\))) # (\u3|u4|u1|u4|u4|co~1_combout\ & (\u3|u4|u1|u1|u4|s~combout\)))) # 
-- (\u3|u4|u1|u4|u4|co~2_combout\ & (((\u3|u4|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\ & ((\u3|u3|u2|m[2]~4_combout\))) # (\u3|u4|u1|u4|u4|co~1_combout\ & 
-- (!\u3|u4|u1|u1|u4|s~combout\)))) # (\u3|u4|u1|u4|u4|co~2_combout\ & (((!\u3|u4|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100010001111000001111000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u1|u1|u2|u1|s~0_combout\);

-- Location: MLABCELL_X4_Y5_N36
\u3|u3|u2|m[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|m[0]~13_combout\ = ( \v2|m[5]~9_combout\ & ( (!\b[0]~input_o\) # ((!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)) ) ) # ( !\v2|m[5]~9_combout\ & ( (\b[0]~input_o\ & ((\u3|u3|u1|u4|u4|co~2_combout\) # 
-- (\u3|u3|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[5]~9_combout\,
	combout => \u3|u3|u2|m[0]~13_combout\);

-- Location: LABCELL_X10_Y3_N6
\u3|u4|u2|m[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[1]~5_combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~11_combout\ & ( !\u3|u3|u2|m[0]~13_combout\ $ (((!\v2|m[4]~10_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~11_combout\ & 
-- ( !\u3|u3|u2|m[0]~13_combout\ $ (((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\))) ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( !\u3|u3|u2|m[0]~13_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & 
-- !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v2|m[4]~10_combout\))) ) ) ) # ( !\b[0]~input_o\ & ( !\v4|m[1]~11_combout\ & ( \u3|u3|u2|m[0]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011100001000111101110111100010000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v2|ALT_INV_m[4]~10_combout\,
	datad => \u3|u3|u2|ALT_INV_m[0]~13_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u3|u4|u2|m[1]~5_combout\);

-- Location: LABCELL_X10_Y3_N48
\u4|u1|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u2|u1|co~1_combout\ = ( \v4|m[2]~10_combout\ & ( \u3|u4|u2|m[1]~5_combout\ & ( (!\u4|u1|u1|u2|u1|s~0_combout\ & ((!\v4|m[3]~12_combout\ & ((!\u4|u1|u1|u1|u2|co~combout\) # (\u3|u4|u2|m[2]~4_combout\))) # (\v4|m[3]~12_combout\ & 
-- (!\u4|u1|u1|u1|u2|co~combout\ & \u3|u4|u2|m[2]~4_combout\)))) ) ) ) # ( !\v4|m[2]~10_combout\ & ( \u3|u4|u2|m[1]~5_combout\ & ( (!\u4|u1|u1|u2|u1|s~0_combout\ & ((!\v4|m[3]~12_combout\) # (\u3|u4|u2|m[2]~4_combout\))) ) ) ) # ( \v4|m[2]~10_combout\ & ( 
-- !\u3|u4|u2|m[1]~5_combout\ & ( (!\v4|m[3]~12_combout\ & (\u3|u4|u2|m[2]~4_combout\ & !\u4|u1|u1|u2|u1|s~0_combout\)) ) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u3|u4|u2|m[1]~5_combout\ & ( (!\u4|u1|u1|u2|u1|s~0_combout\ & ((!\v4|m[3]~12_combout\ & 
-- ((!\u4|u1|u1|u1|u2|co~combout\) # (\u3|u4|u2|m[2]~4_combout\))) # (\v4|m[3]~12_combout\ & (!\u4|u1|u1|u1|u2|co~combout\ & \u3|u4|u2|m[2]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000000000000010100000000010101111000000001000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~12_combout\,
	datab => \u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datad => \u4|u1|u1|u2|u1|ALT_INV_s~0_combout\,
	datae => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[1]~5_combout\,
	combout => \u4|u1|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X6_Y5_N6
\u4|u1|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u2|u3|co~combout\ = ( \u4|u1|u1|u2|u1|co~0_combout\ & ( \u4|u1|u1|u2|u1|co~1_combout\ & ( (!\u3|u4|u2|m[5]~2_combout\ & (((\v4|m[5]~8_combout\ & !\u3|u4|u2|m[4]~3_combout\)) # (\v4|m[6]~7_combout\))) # (\u3|u4|u2|m[5]~2_combout\ & 
-- (\v4|m[5]~8_combout\ & (!\u3|u4|u2|m[4]~3_combout\ & \v4|m[6]~7_combout\))) ) ) ) # ( !\u4|u1|u1|u2|u1|co~0_combout\ & ( \u4|u1|u1|u2|u1|co~1_combout\ & ( (!\u3|u4|u2|m[5]~2_combout\ & (((\v4|m[5]~8_combout\ & !\u3|u4|u2|m[4]~3_combout\)) # 
-- (\v4|m[6]~7_combout\))) # (\u3|u4|u2|m[5]~2_combout\ & (\v4|m[5]~8_combout\ & (!\u3|u4|u2|m[4]~3_combout\ & \v4|m[6]~7_combout\))) ) ) ) # ( \u4|u1|u1|u2|u1|co~0_combout\ & ( !\u4|u1|u1|u2|u1|co~1_combout\ & ( (!\u3|u4|u2|m[5]~2_combout\ & 
-- (((\v4|m[5]~8_combout\ & !\u3|u4|u2|m[4]~3_combout\)) # (\v4|m[6]~7_combout\))) # (\u3|u4|u2|m[5]~2_combout\ & (\v4|m[5]~8_combout\ & (!\u3|u4|u2|m[4]~3_combout\ & \v4|m[6]~7_combout\))) ) ) ) # ( !\u4|u1|u1|u2|u1|co~0_combout\ & ( 
-- !\u4|u1|u1|u2|u1|co~1_combout\ & ( (!\u3|u4|u2|m[5]~2_combout\ & (((!\u3|u4|u2|m[4]~3_combout\) # (\v4|m[6]~7_combout\)) # (\v4|m[5]~8_combout\))) # (\u3|u4|u2|m[5]~2_combout\ & (\v4|m[6]~7_combout\ & ((!\u3|u4|u2|m[4]~3_combout\) # 
-- (\v4|m[5]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011111101010000001111010001000000111101000100000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u3|u4|u2|ALT_INV_m[4]~3_combout\,
	datac => \u3|u4|u2|ALT_INV_m[5]~2_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	datae => \u4|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u4|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u4|u1|u1|u2|u3|co~combout\);

-- Location: LABCELL_X6_Y5_N12
\u4|u1|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u2|s~0_combout\ = ( \u3|u4|u1|u4|u4|co~2_combout\ & ( !\u3|u4|u1|u3|u1|s~combout\ $ (\v4|m[9]~5_combout\) ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( !\v4|m[9]~5_combout\ $ (((!\u3|u4|u1|u4|u4|co~1_combout\ & ((!\u3|u3|u2|m[7]~0_combout\))) # 
-- (\u3|u4|u1|u4|u4|co~1_combout\ & (\u3|u4|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110111100001001011011110000110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u1|u1|u3|u2|s~0_combout\);

-- Location: MLABCELL_X9_Y5_N30
\u4|u1|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u2|co~1_combout\ = ( \v4|m[7]~6_combout\ & ( !\u4|u1|u1|u3|u2|s~0_combout\ & ( (!\v4|m[8]~13_combout\ & (((\u3|u4|u2|m[6]~1_combout\ & !\u4|u1|u1|u2|u3|co~combout\)) # (\u3|u4|u2|m[7]~0_combout\))) # (\v4|m[8]~13_combout\ & 
-- (\u3|u4|u2|m[7]~0_combout\ & (\u3|u4|u2|m[6]~1_combout\ & !\u4|u1|u1|u2|u3|co~combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u4|u1|u1|u3|u2|s~0_combout\ & ( (!\v4|m[8]~13_combout\ & (((!\u4|u1|u1|u2|u3|co~combout\) # (\u3|u4|u2|m[6]~1_combout\)) # 
-- (\u3|u4|u2|m[7]~0_combout\))) # (\v4|m[8]~13_combout\ & (\u3|u4|u2|m[7]~0_combout\ & ((!\u4|u1|u1|u2|u3|co~combout\) # (\u3|u4|u2|m[6]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100101011001010110010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	datac => \u3|u4|u2|ALT_INV_m[6]~1_combout\,
	datad => \u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u1|u1|u3|u2|ALT_INV_s~0_combout\,
	combout => \u4|u1|u1|u3|u2|co~1_combout\);

-- Location: MLABCELL_X9_Y5_N6
\u4|u1|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u4|co~combout\ = ( \u3|u4|u2|m[10]~9_combout\ & ( \v4|m[11]~3_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u4|u1|u1|u3|u2|co~0_combout\ & (!\u3|u4|u2|m[9]~6_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\))) # (\v4|m[10]~4_combout\ & 
-- ((!\u3|u4|u2|m[9]~6_combout\) # ((!\u4|u1|u1|u3|u2|co~0_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\u3|u4|u2|m[10]~9_combout\ & ( \v4|m[11]~3_combout\ ) ) # ( !\u3|u4|u2|m[10]~9_combout\ & ( !\v4|m[11]~3_combout\ & ( (!\v4|m[10]~4_combout\ & 
-- (!\u4|u1|u1|u3|u2|co~0_combout\ & (!\u3|u4|u2|m[9]~6_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\))) # (\v4|m[10]~4_combout\ & ((!\u3|u4|u2|m[9]~6_combout\) # ((!\u4|u1|u1|u3|u2|co~0_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010001010000000000000000000011111111111111111101010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~4_combout\,
	datab => \u4|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u4|u2|ALT_INV_m[9]~6_combout\,
	datad => \u4|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datae => \u3|u4|u2|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u4|u1|u1|u3|u4|co~combout\);

-- Location: LABCELL_X10_Y6_N45
\u3|u4|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u2|co~combout\ = ( \u3|u3|u2|m[12]~6_combout\ & ( (!\v4|m[13]~1_combout\) # ((!\u3|u4|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u3|u3|u2|m[11]~7_combout\))) # (\u3|u4|u1|u3|u4|co~combout\ & (!\v4|m[12]~2_combout\ & 
-- \u3|u3|u2|m[11]~7_combout\))) ) ) # ( !\u3|u3|u2|m[12]~6_combout\ & ( (!\v4|m[13]~1_combout\ & ((!\u3|u4|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u3|u3|u2|m[11]~7_combout\))) # (\u3|u4|u1|u3|u4|co~combout\ & (!\v4|m[12]~2_combout\ & 
-- \u3|u3|u2|m[11]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000100000001110000011111000111111101111100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u3|u4|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[12]~2_combout\,
	datac => \v4|ALT_INV_m[13]~1_combout\,
	datad => \u3|u3|u2|ALT_INV_m[11]~7_combout\,
	dataf => \u3|u3|u2|ALT_INV_m[12]~6_combout\,
	combout => \u3|u4|u1|u4|u2|co~combout\);

-- Location: LABCELL_X10_Y6_N21
\u3|u4|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[14]~10_combout\ = ( \u3|u4|u1|u4|u2|co~combout\ & ( !\u3|u3|u2|m[13]~11_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u3|u4|u1|u4|u2|co~combout\ & ( 
-- !\u3|u3|u2|m[13]~11_combout\ $ ((((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[13]~11_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u3|u4|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u3|u4|u2|m[14]~10_combout\);

-- Location: LABCELL_X10_Y6_N27
\u3|u4|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u1|co~combout\ = ( \u3|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\ & \u3|u3|u2|m[11]~7_combout\) ) ) # ( !\u3|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u3|u3|u2|m[11]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u3|u3|u2|ALT_INV_m[11]~7_combout\,
	dataf => \u3|u4|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u3|u4|u1|u4|u1|co~combout\);

-- Location: LABCELL_X10_Y6_N18
\u3|u4|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[13]~11_combout\ = ( \u3|u3|u2|m[12]~6_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u4|co~1_combout\) # (!\u3|u4|u1|u4|u1|co~combout\ $ (!\v4|m[13]~1_combout\)))) # (\u3|u4|u1|u4|u4|co~2_combout\ & 
-- ((!\u3|u4|u1|u4|u1|co~combout\ $ (!\v4|m[13]~1_combout\)))) ) ) # ( !\u3|u3|u2|m[12]~6_combout\ & ( (!\u3|u4|u1|u4|u4|co~2_combout\ & (\u3|u4|u1|u4|u4|co~1_combout\ & (!\u3|u4|u1|u4|u1|co~combout\ $ (\v4|m[13]~1_combout\)))) # 
-- (\u3|u4|u1|u4|u4|co~2_combout\ & ((!\u3|u4|u1|u4|u1|co~combout\ $ (\v4|m[13]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u1|u4|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u3|u3|u2|ALT_INV_m[12]~6_combout\,
	combout => \u3|u4|u2|m[13]~11_combout\);

-- Location: LABCELL_X10_Y6_N3
\u4|u1|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u4|co~0_combout\ = ( \u3|u4|u2|m[13]~11_combout\ & ( (\v4|m[14]~0_combout\ & (!\u3|u4|u2|m[14]~10_combout\ $ (\u1|u2|u1|u4|u4|co~0_combout\))) ) ) # ( !\u3|u4|u2|m[13]~11_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u3|u4|u2|m[14]~10_combout\ $ 
-- (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[14]~10_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[13]~11_combout\,
	combout => \u4|u1|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X10_Y6_N42
\u3|u4|u2|m[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[12]~7_combout\ = ( \u3|u4|u1|u4|u4|co~2_combout\ & ( !\u3|u4|u1|u3|u4|co~combout\ $ (!\v4|m[12]~2_combout\ $ (\u3|u3|u2|m[11]~7_combout\)) ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( !\u3|u3|u2|m[11]~7_combout\ $ 
-- (((!\u3|u4|u1|u4|u4|co~1_combout\) # (!\u3|u4|u1|u3|u4|co~combout\ $ (\v4|m[12]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111001000001101111100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u3|u4|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[12]~2_combout\,
	datac => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u3|u2|ALT_INV_m[11]~7_combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u4|u2|m[12]~7_combout\);

-- Location: LABCELL_X10_Y6_N6
\u4|u1|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u4|co~1_combout\ = ( \v4|m[13]~1_combout\ & ( \u3|u4|u2|m[12]~7_combout\ & ( (\u4|u1|u1|u4|u4|co~0_combout\ & ((!\u3|u4|u2|m[11]~8_combout\ & (!\u4|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u4|u2|m[11]~8_combout\ & 
-- ((!\u4|u1|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\))))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( \u3|u4|u2|m[12]~7_combout\ & ( \u4|u1|u1|u4|u4|co~0_combout\ ) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u3|u4|u2|m[12]~7_combout\ & ( 
-- (\u4|u1|u1|u4|u4|co~0_combout\ & ((!\u3|u4|u2|m[11]~8_combout\ & (!\u4|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u4|u2|m[11]~8_combout\ & ((!\u4|u1|u1|u3|u4|co~combout\) # (!\v4|m[12]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000100000000000000000000001111000011110000110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[11]~8_combout\,
	datab => \u4|u1|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u4|u1|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[12]~2_combout\,
	datae => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[12]~7_combout\,
	combout => \u4|u1|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X9_Y5_N0
\u4|u1|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u3|co~combout\ = ( \u4|u1|u1|u3|u2|co~1_combout\ & ( (!\u3|u4|u2|m[9]~6_combout\ & \v4|m[10]~4_combout\) ) ) # ( !\u4|u1|u1|u3|u2|co~1_combout\ & ( (!\u4|u1|u1|u3|u2|co~0_combout\ & ((!\u3|u4|u2|m[9]~6_combout\) # (\v4|m[10]~4_combout\))) # 
-- (\u4|u1|u1|u3|u2|co~0_combout\ & (!\u3|u4|u2|m[9]~6_combout\ & \v4|m[10]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u4|u2|ALT_INV_m[9]~6_combout\,
	datad => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u4|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	combout => \u4|u1|u1|u3|u3|co~combout\);

-- Location: LABCELL_X10_Y6_N0
\u4|u1|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u4|co~2_combout\ = ( \u3|u4|u2|m[13]~11_combout\ & ( (!\u3|u4|u2|m[14]~10_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & !\v4|m[14]~0_combout\)) # (\u3|u4|u2|m[14]~10_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # (!\v4|m[14]~0_combout\))) ) ) 
-- # ( !\u3|u4|u2|m[13]~11_combout\ & ( (\u3|u4|u2|m[14]~10_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[14]~10_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[13]~11_combout\,
	combout => \u4|u1|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X7_Y5_N0
\u4|u1|u2|m[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[11]~8_combout\ = ( \v4|m[11]~3_combout\ & ( !\u3|u4|u2|m[10]~9_combout\ $ ((((!\u4|u1|u1|u4|u4|co~1_combout\ & !\u4|u1|u1|u4|u4|co~2_combout\)) # (\u4|u1|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u3|u4|u2|m[10]~9_combout\ $ 
-- (((!\u4|u1|u1|u3|u3|co~combout\) # ((!\u4|u1|u1|u4|u4|co~1_combout\ & !\u4|u1|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011010010101100101101001100101101001010110010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[10]~9_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u4|u1|u2|m[11]~8_combout\);

-- Location: LABCELL_X10_Y6_N15
\u4|u1|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u1|co~combout\ = ( \v4|m[12]~2_combout\ & ( (\u3|u4|u2|m[11]~8_combout\ & !\u4|u1|u1|u3|u4|co~combout\) ) ) # ( !\v4|m[12]~2_combout\ & ( (!\u4|u1|u1|u3|u4|co~combout\) # (\u3|u4|u2|m[11]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[11]~8_combout\,
	datab => \u4|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u4|u1|u1|u4|u1|co~combout\);

-- Location: LABCELL_X10_Y6_N51
\u4|u1|u2|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[13]~11_combout\ = ( \u3|u4|u2|m[12]~7_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u4|u4|co~1_combout\) # (!\u4|u1|u1|u4|u1|co~combout\ $ (!\v4|m[13]~1_combout\)))) # (\u4|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u1|u1|u4|u1|co~combout\ $ (!\v4|m[13]~1_combout\)))) ) ) # ( !\u3|u4|u2|m[12]~7_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\ & (\u4|u1|u1|u4|u4|co~1_combout\ & (!\u4|u1|u1|u4|u1|co~combout\ $ (\v4|m[13]~1_combout\)))) # 
-- (\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u4|u1|co~combout\ $ (\v4|m[13]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u4|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[12]~7_combout\,
	combout => \u4|u1|u2|m[13]~11_combout\);

-- Location: LABCELL_X10_Y6_N12
\u4|u1|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u2|co~combout\ = ( \u3|u4|u2|m[12]~7_combout\ & ( (!\v4|m[13]~1_combout\) # ((!\u3|u4|u2|m[11]~8_combout\ & (!\u4|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u4|u2|m[11]~8_combout\ & ((!\u4|u1|u1|u3|u4|co~combout\) # 
-- (!\v4|m[12]~2_combout\)))) ) ) # ( !\u3|u4|u2|m[12]~7_combout\ & ( (!\v4|m[13]~1_combout\ & ((!\u3|u4|u2|m[11]~8_combout\ & (!\u4|u1|u1|u3|u4|co~combout\ & !\v4|m[12]~2_combout\)) # (\u3|u4|u2|m[11]~8_combout\ & ((!\u4|u1|u1|u3|u4|co~combout\) # 
-- (!\v4|m[12]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000000000110101000000000011111111110101001111111111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[11]~8_combout\,
	datab => \u4|u1|u1|u3|u4|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[12]~7_combout\,
	combout => \u4|u1|u1|u4|u2|co~combout\);

-- Location: LABCELL_X10_Y6_N48
\u4|u1|u2|m[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[14]~10_combout\ = ( \u4|u1|u1|u4|u2|co~combout\ & ( !\u3|u4|u2|m[13]~11_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u4|u1|u1|u4|u2|co~combout\ & ( 
-- !\u3|u4|u2|m[13]~11_combout\ $ ((((!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u2|ALT_INV_m[13]~11_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u1|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u4|u1|u2|m[14]~10_combout\);

-- Location: LABCELL_X10_Y6_N57
\u4|u2|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u4|co~0_combout\ = ( \u4|u1|u2|m[14]~10_combout\ & ( (\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u1|u2|m[13]~11_combout\ $ (\v4|m[14]~0_combout\))) ) ) # ( !\u4|u1|u2|m[14]~10_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & 
-- (!\u4|u1|u2|m[13]~11_combout\ $ (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000100100010000100010000100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u2|ALT_INV_m[13]~11_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u1|u2|ALT_INV_m[14]~10_combout\,
	combout => \u4|u2|u1|u4|u4|co~0_combout\);

-- Location: LABCELL_X6_Y5_N45
\u3|u4|u2|m[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[8]~12_combout\ = ( \u3|u3|u2|m[7]~0_combout\ & ( (!\u3|u4|u1|u3|u1|s~combout\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) ) ) # ( !\u3|u3|u2|m[7]~0_combout\ & ( (!\u3|u4|u1|u3|u1|s~combout\ & 
-- ((\u3|u4|u1|u4|u4|co~1_combout\) # (\u3|u4|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u3|u4|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u3|u3|u2|ALT_INV_m[7]~0_combout\,
	combout => \u3|u4|u2|m[8]~12_combout\);

-- Location: MLABCELL_X9_Y5_N51
\u4|u1|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u1|co~combout\ = ( \u3|u4|u2|m[6]~1_combout\ & ( (!\v4|m[8]~13_combout\ & (((!\v4|m[7]~6_combout\) # (!\u4|u1|u1|u2|u3|co~combout\)) # (\u3|u4|u2|m[7]~0_combout\))) # (\v4|m[8]~13_combout\ & (\u3|u4|u2|m[7]~0_combout\ & 
-- ((!\v4|m[7]~6_combout\) # (!\u4|u1|u1|u2|u3|co~combout\)))) ) ) # ( !\u3|u4|u2|m[6]~1_combout\ & ( (!\v4|m[8]~13_combout\ & (((!\v4|m[7]~6_combout\ & !\u4|u1|u1|u2|u3|co~combout\)) # (\u3|u4|u2|m[7]~0_combout\))) # (\v4|m[8]~13_combout\ & 
-- (\u3|u4|u2|m[7]~0_combout\ & (!\v4|m[7]~6_combout\ & !\u4|u1|u1|u2|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000100010101100100010001010111011101100101011101110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|ALT_INV_m[6]~1_combout\,
	combout => \u4|u1|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X9_Y5_N27
\u4|u1|u2|m[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[9]~1_combout\ = ( \u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[9]~5_combout\ $ (!\u3|u4|u2|m[8]~12_combout\ $ (!\u4|u1|u1|u3|u1|co~combout\)) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( !\u3|u4|u2|m[8]~12_combout\ $ 
-- (((!\u4|u1|u1|u4|u4|co~1_combout\) # (!\v4|m[9]~5_combout\ $ (!\u4|u1|u1|u3|u1|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100011110001011010001111010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u2|ALT_INV_m[8]~12_combout\,
	datad => \u4|u1|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u1|u2|m[9]~1_combout\);

-- Location: MLABCELL_X9_Y5_N48
\u4|u1|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u3|u1|s~combout\ = ( \u4|u1|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ (!\u3|u4|u2|m[7]~0_combout\ $ (((\u3|u4|u2|m[6]~1_combout\ & !\v4|m[7]~6_combout\)))) ) ) # ( !\u4|u1|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ 
-- (!\u3|u4|u2|m[7]~0_combout\ $ (((!\v4|m[7]~6_combout\) # (\u3|u4|u2|m[6]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101101001100110010110100101101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	datac => \u3|u4|u2|ALT_INV_m[6]~1_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u1|u1|u3|u1|s~combout\);

-- Location: MLABCELL_X9_Y5_N24
\u4|u2|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u2|co~0_combout\ = ( \u4|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[9]~5_combout\ & !\u4|u1|u1|u3|u1|s~combout\) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u4|u1|u1|u4|u4|co~1_combout\ & ((\u3|u4|u2|m[7]~0_combout\))) # 
-- (\u4|u1|u1|u4|u4|co~1_combout\ & (!\u4|u1|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000001000001010100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	dataf => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u2|u1|u3|u2|co~0_combout\);

-- Location: MLABCELL_X9_Y5_N12
\u4|u1|u2|m[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[10]~0_combout\ = ( \u3|u4|u2|m[9]~6_combout\ & ( \u4|u1|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((!\u4|u1|u1|u3|u2|co~0_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u3|u4|u2|m[9]~6_combout\ & ( 
-- \u4|u1|u1|u4|u4|co~1_combout\ & ( !\v4|m[10]~4_combout\ $ (((\u4|u1|u1|u3|u2|co~1_combout\) # (\u4|u1|u1|u3|u2|co~0_combout\))) ) ) ) # ( \u3|u4|u2|m[9]~6_combout\ & ( !\u4|u1|u1|u4|u4|co~1_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\) # 
-- (!\v4|m[10]~4_combout\ $ (((!\u4|u1|u1|u3|u2|co~0_combout\ & !\u4|u1|u1|u3|u2|co~1_combout\)))) ) ) ) # ( !\u3|u4|u2|m[9]~6_combout\ & ( !\u4|u1|u1|u4|u4|co~1_combout\ & ( (\u4|u1|u1|u4|u4|co~2_combout\ & (!\v4|m[10]~4_combout\ $ 
-- (((\u4|u1|u1|u3|u2|co~1_combout\) # (\u4|u1|u1|u3|u2|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000101101111101111101011000011000011110011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u4|u1|u1|u3|u2|ALT_INV_co~1_combout\,
	datae => \u3|u4|u2|ALT_INV_m[9]~6_combout\,
	dataf => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u1|u2|m[10]~0_combout\);

-- Location: MLABCELL_X9_Y5_N39
\u4|u2|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u2|s~0_combout\ = ( \u4|u1|u1|u3|u1|s~combout\ & ( !\v4|m[9]~5_combout\ $ ((((!\u3|u4|u2|m[7]~0_combout\) # (\u4|u1|u1|u4|u4|co~1_combout\)) # (\u4|u1|u1|u4|u4|co~2_combout\))) ) ) # ( !\u4|u1|u1|u3|u1|s~combout\ & ( !\v4|m[9]~5_combout\ $ 
-- (((!\u4|u1|u1|u4|u4|co~2_combout\ & (!\u4|u1|u1|u4|u4|co~1_combout\ & !\u3|u4|u2|m[7]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110000000011111111000000000001000111101110000100011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u4|u1|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u4|u2|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X6_Y5_N42
\u4|u1|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u2|u2|co~combout\ = ( \u3|u4|u2|m[4]~3_combout\ & ( (!\u4|u1|u1|u2|u1|co~1_combout\ & (\v4|m[5]~8_combout\ & !\u4|u1|u1|u2|u1|co~0_combout\)) ) ) # ( !\u3|u4|u2|m[4]~3_combout\ & ( ((!\u4|u1|u1|u2|u1|co~1_combout\ & 
-- !\u4|u1|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001111110011110000111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[5]~8_combout\,
	datad => \u4|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[4]~3_combout\,
	combout => \u4|u1|u1|u2|u2|co~combout\);

-- Location: LABCELL_X6_Y5_N18
\u4|u1|u2|m[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[6]~3_combout\ = ( \u4|u1|u1|u2|u2|co~combout\ & ( !\u3|u4|u2|m[5]~2_combout\ $ ((((!\u4|u1|u1|u4|u4|co~1_combout\ & !\u4|u1|u1|u4|u4|co~2_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u4|u1|u1|u2|u2|co~combout\ & ( !\u3|u4|u2|m[5]~2_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u4|u1|u1|u4|u4|co~1_combout\ & !\u4|u1|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u4|u2|ALT_INV_m[5]~2_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u4|u1|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u4|u1|u2|m[6]~3_combout\);

-- Location: LABCELL_X6_Y5_N21
\u4|u1|u2|m[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[7]~2_combout\ = ( \u3|u4|u2|m[6]~1_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u4|u4|co~2_combout\) # (!\u4|u1|u1|u2|u3|co~combout\ $ (\v4|m[7]~6_combout\)))) # (\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u2|u3|co~combout\ $ 
-- (\v4|m[7]~6_combout\)))) ) ) # ( !\u3|u4|u2|m[6]~1_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & (\u4|u1|u1|u4|u4|co~2_combout\ & (!\u4|u1|u1|u2|u3|co~combout\ $ (!\v4|m[7]~6_combout\)))) # (\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u2|u3|co~combout\ 
-- $ (!\v4|m[7]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[6]~1_combout\,
	combout => \u4|u1|u2|m[7]~2_combout\);

-- Location: MLABCELL_X9_Y5_N3
\u3|u4|u2|m[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[3]~13_combout\ = ( \u3|u4|u1|u4|u4|co~2_combout\ & ( !\u3|u4|u1|u1|u4|s~combout\ ) ) # ( !\u3|u4|u1|u4|u4|co~2_combout\ & ( (!\u3|u4|u1|u4|u4|co~1_combout\ & (\u3|u3|u2|m[2]~4_combout\)) # (\u3|u4|u1|u4|u4|co~1_combout\ & 
-- ((!\u3|u4|u1|u1|u4|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u3|u2|ALT_INV_m[2]~4_combout\,
	datad => \u3|u4|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u4|u2|m[3]~13_combout\);

-- Location: LABCELL_X10_Y3_N57
\u4|u1|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u1|u4|co~combout\ = ( \u3|u4|u2|m[1]~5_combout\ & ( (!\u3|u4|u2|m[2]~4_combout\ & (!\v4|m[3]~12_combout\ & ((!\u4|u1|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) # (\u3|u4|u2|m[2]~4_combout\ & ((!\u4|u1|u1|u1|u2|co~combout\) # 
-- ((!\v4|m[2]~10_combout\) # (!\v4|m[3]~12_combout\)))) ) ) # ( !\u3|u4|u2|m[1]~5_combout\ & ( (!\u3|u4|u2|m[2]~4_combout\ & (!\u4|u1|u1|u1|u2|co~combout\ & (!\v4|m[2]~10_combout\ & !\v4|m[3]~12_combout\))) # (\u3|u4|u2|m[2]~4_combout\ & 
-- ((!\v4|m[3]~12_combout\) # ((!\u4|u1|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010101000000110101010100000011111101010101001111110101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datab => \u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[1]~5_combout\,
	combout => \u4|u1|u1|u1|u4|co~combout\);

-- Location: MLABCELL_X9_Y5_N36
\u4|u1|u2|m[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[4]~5_combout\ = ( \u4|u1|u1|u1|u4|co~combout\ & ( !\u3|u4|u2|m[3]~13_combout\ $ (((!\v4|m[4]~9_combout\) # ((!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u4|u1|u1|u1|u4|co~combout\ & ( 
-- !\u3|u4|u2|m[3]~13_combout\ $ ((((!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)) # (\v4|m[4]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u2|ALT_INV_m[3]~13_combout\,
	datad => \v4|ALT_INV_m[4]~9_combout\,
	dataf => \u4|u1|u1|u1|u4|ALT_INV_co~combout\,
	combout => \u4|u1|u2|m[4]~5_combout\);

-- Location: LABCELL_X10_Y3_N54
\u4|u1|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u1|u4|s~combout\ = ( \u3|u4|u2|m[1]~5_combout\ & ( !\u3|u4|u2|m[2]~4_combout\ $ (!\v4|m[3]~12_combout\ $ (((!\u4|u1|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) ) ) # ( !\u3|u4|u2|m[1]~5_combout\ & ( !\u3|u4|u2|m[2]~4_combout\ $ 
-- (!\v4|m[3]~12_combout\ $ (((!\u4|u1|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001011010100101100101101010100101100101101010010110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datab => \u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[1]~5_combout\,
	combout => \u4|u1|u1|u1|u4|s~combout\);

-- Location: LABCELL_X10_Y3_N3
\u4|u2|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u4|u4|co~2_combout\ & (\u3|u4|u2|m[2]~4_combout\)) # (\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u1|u4|s~combout\))))) # 
-- (\u4|u1|u1|u4|u4|co~1_combout\ & (((!\u4|u1|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011110000011101001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u2|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X12_Y5_N51
\v2|m[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[2]~12_combout\ = ( \a[0]~input_o\ & ( !\a[15]~input_o\ $ (!\a[2]~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\a[2]~input_o\ $ (((!\a[1]~input_o\) # (!\a[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v2|m[2]~12_combout\);

-- Location: LABCELL_X10_Y3_N18
\u4|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u1|u2|co~combout\ = ( \u4|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[1]~11_combout\ & ( (!\v2|m[3]~11_combout\ & ((!\v2|m[2]~12_combout\) # (!\b[0]~input_o\))) # (\v2|m[3]~11_combout\ & ((\b[0]~input_o\))) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( 
-- \v4|m[1]~11_combout\ & ( (!\b[0]~input_o\ & (((!\v2|m[3]~11_combout\)))) # (\b[0]~input_o\ & ((!\v2|m[2]~12_combout\) # (!\u4|u1|u1|u4|u4|co~1_combout\ $ (\v2|m[3]~11_combout\)))) ) ) ) # ( \u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( 
-- (!\v2|m[2]~12_combout\ & (\v2|m[3]~11_combout\ & \b[0]~input_o\)) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( (!\v2|m[2]~12_combout\ & (\b[0]~input_o\ & (!\u4|u1|u1|u4|u4|co~1_combout\ $ (\v2|m[3]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000000000110011110000111011011111000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \v2|ALT_INV_m[2]~12_combout\,
	datac => \v2|ALT_INV_m[3]~11_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	datae => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u4|u2|u1|u1|u2|co~combout\);

-- Location: LABCELL_X10_Y3_N0
\u4|u2|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u4|u4|co~2_combout\ & (!\u3|u4|u2|m[2]~4_combout\)) # (\u4|u1|u1|u4|u4|co~2_combout\ & ((\u4|u1|u1|u1|u4|s~combout\))))) # 
-- (\u4|u1|u1|u4|u4|co~1_combout\ & (((\u4|u1|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u4|u4|co~2_combout\ & (\u3|u4|u2|m[2]~4_combout\)) # (\u4|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u1|u1|u1|u4|s~combout\))))) # (\u4|u1|u1|u4|u4|co~1_combout\ & (((!\u4|u1|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101000000011111110100000010000000101111111000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u1|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u2|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X10_Y3_N39
\u4|u1|u2|m[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[2]~6_combout\ = ( \u3|u4|u2|m[1]~5_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u4|u4|co~1_combout\) # (!\u4|u1|u1|u1|u2|co~combout\ $ (\v4|m[2]~10_combout\)))) # (\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u1|u2|co~combout\ $ 
-- (\v4|m[2]~10_combout\)))) ) ) # ( !\u3|u4|u2|m[1]~5_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\ & (\u4|u1|u1|u4|u4|co~1_combout\ & (!\u4|u1|u1|u1|u2|co~combout\ $ (!\v4|m[2]~10_combout\)))) # (\u4|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u1|u1|u1|u2|co~combout\ $ (!\v4|m[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u3|u4|u2|ALT_INV_m[1]~5_combout\,
	combout => \u4|u1|u2|m[2]~6_combout\);

-- Location: MLABCELL_X9_Y5_N42
\u3|u4|u2|m[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|m[0]~14_combout\ = ( \v2|m[4]~10_combout\ & ( (!\b[0]~input_o\) # ((!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)) ) ) # ( !\v2|m[4]~10_combout\ & ( (\b[0]~input_o\ & ((\u3|u4|u1|u4|u4|co~1_combout\) # 
-- (\u3|u4|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[4]~10_combout\,
	combout => \u3|u4|u2|m[0]~14_combout\);

-- Location: LABCELL_X10_Y3_N42
\u4|u1|u2|m[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[1]~7_combout\ = ( \u4|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[1]~11_combout\ & ( !\u3|u4|u2|m[0]~14_combout\ $ (((\b[0]~input_o\ & !\v2|m[3]~11_combout\))) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u3|u4|u2|m[0]~14_combout\ $ (((!\u4|u1|u1|u4|u4|co~1_combout\) # ((\b[0]~input_o\ & !\v2|m[3]~11_combout\)))) ) ) ) # ( \u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u3|u4|u2|m[0]~14_combout\ $ (((!\b[0]~input_o\) # 
-- (\v2|m[3]~11_combout\))) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u3|u4|u2|m[0]~14_combout\ $ (((!\b[0]~input_o\) # ((!\u4|u1|u1|u4|u4|co~1_combout\) # (\v2|m[3]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100101011001010110010101010101100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[0]~14_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \v2|ALT_INV_m[3]~11_combout\,
	datad => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u4|u1|u2|m[1]~7_combout\);

-- Location: LABCELL_X10_Y4_N30
\u4|u2|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u2|u1|co~1_combout\ = ( \u4|u1|u2|m[1]~7_combout\ & ( \v4|m[3]~12_combout\ & ( (!\u4|u2|u1|u2|u1|s~0_combout\ & (\u4|u1|u2|m[2]~6_combout\ & ((!\v4|m[2]~10_combout\) # (!\u4|u2|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u4|u1|u2|m[1]~7_combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\v4|m[2]~10_combout\ & (!\u4|u2|u1|u1|u2|co~combout\ & (!\u4|u2|u1|u2|u1|s~0_combout\ & \u4|u1|u2|m[2]~6_combout\))) ) ) ) # ( \u4|u1|u2|m[1]~7_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u4|u2|u1|u2|u1|s~0_combout\ & 
-- ((!\v4|m[2]~10_combout\) # ((!\u4|u2|u1|u1|u2|co~combout\) # (\u4|u1|u2|m[2]~6_combout\)))) ) ) ) # ( !\u4|u1|u2|m[1]~7_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u4|u2|u1|u2|u1|s~0_combout\ & (((!\v4|m[2]~10_combout\ & !\u4|u2|u1|u1|u2|co~combout\)) # 
-- (\u4|u1|u2|m[2]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110000111000001111000000000000100000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u2|u1|u2|u1|ALT_INV_s~0_combout\,
	datad => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	datae => \u4|u1|u2|ALT_INV_m[1]~7_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u4|u2|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X6_Y5_N54
\u4|u1|u2|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[5]~4_combout\ = ( \u4|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[5]~8_combout\ & ( !\u3|u4|u2|m[4]~3_combout\ $ (((!\u4|u1|u1|u2|u1|co~0_combout\ & !\u4|u1|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( \v4|m[5]~8_combout\ & ( 
-- !\u3|u4|u2|m[4]~3_combout\ $ (((!\u4|u1|u1|u4|u4|co~1_combout\) # ((!\u4|u1|u1|u2|u1|co~0_combout\ & !\u4|u1|u1|u2|u1|co~1_combout\)))) ) ) ) # ( \u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[5]~8_combout\ & ( !\u3|u4|u2|m[4]~3_combout\ $ 
-- (((\u4|u1|u1|u2|u1|co~1_combout\) # (\u4|u1|u1|u2|u1|co~0_combout\))) ) ) ) # ( !\u4|u1|u1|u4|u4|co~2_combout\ & ( !\v4|m[5]~8_combout\ & ( !\u3|u4|u2|m[4]~3_combout\ $ (((!\u4|u1|u1|u4|u4|co~1_combout\) # ((\u4|u1|u1|u2|u1|co~1_combout\) # 
-- (\u4|u1|u1|u2|u1|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100110011110000110011001100110110011001100011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u4|u2|ALT_INV_m[4]~3_combout\,
	datac => \u4|u1|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u4|u1|u1|u2|u1|ALT_INV_co~1_combout\,
	datae => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v4|ALT_INV_m[5]~8_combout\,
	combout => \u4|u1|u2|m[5]~4_combout\);

-- Location: MLABCELL_X9_Y5_N18
\u4|u2|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u2|u3|co~combout\ = ( \u4|u2|u1|u2|u1|co~1_combout\ & ( \u4|u1|u2|m[5]~4_combout\ & ( (!\u4|u1|u2|m[4]~5_combout\ & (\v4|m[6]~7_combout\ & \v4|m[5]~8_combout\)) ) ) ) # ( !\u4|u2|u1|u2|u1|co~1_combout\ & ( \u4|u1|u2|m[5]~4_combout\ & ( 
-- (\v4|m[6]~7_combout\ & ((!\u4|u1|u2|m[4]~5_combout\ & ((!\u4|u2|u1|u2|u1|co~0_combout\) # (\v4|m[5]~8_combout\))) # (\u4|u1|u2|m[4]~5_combout\ & (!\u4|u2|u1|u2|u1|co~0_combout\ & \v4|m[5]~8_combout\)))) ) ) ) # ( \u4|u2|u1|u2|u1|co~1_combout\ & ( 
-- !\u4|u1|u2|m[5]~4_combout\ & ( ((!\u4|u1|u2|m[4]~5_combout\ & \v4|m[5]~8_combout\)) # (\v4|m[6]~7_combout\) ) ) ) # ( !\u4|u2|u1|u2|u1|co~1_combout\ & ( !\u4|u1|u2|m[5]~4_combout\ & ( ((!\u4|u1|u2|m[4]~5_combout\ & ((!\u4|u2|u1|u2|u1|co~0_combout\) # 
-- (\v4|m[5]~8_combout\))) # (\u4|u1|u2|m[4]~5_combout\ & (!\u4|u2|u1|u2|u1|co~0_combout\ & \v4|m[5]~8_combout\))) # (\v4|m[6]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111000011111010111100001000000011100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u2|ALT_INV_m[4]~5_combout\,
	datab => \u4|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u4|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	dataf => \u4|u1|u2|ALT_INV_m[5]~4_combout\,
	combout => \u4|u2|u1|u2|u3|co~combout\);

-- Location: LABCELL_X10_Y5_N30
\u4|u2|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u2|co~1_combout\ = ( \u4|u1|u2|m[7]~2_combout\ & ( \u4|u2|u1|u2|u3|co~combout\ & ( (!\u4|u2|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # ((\u4|u1|u2|m[6]~3_combout\ & !\v4|m[7]~6_combout\)))) ) ) ) # ( !\u4|u1|u2|m[7]~2_combout\ & ( 
-- \u4|u2|u1|u2|u3|co~combout\ & ( (!\u4|u2|u1|u3|u2|s~0_combout\ & (\u4|u1|u2|m[6]~3_combout\ & (!\v4|m[8]~13_combout\ & !\v4|m[7]~6_combout\))) ) ) ) # ( \u4|u1|u2|m[7]~2_combout\ & ( !\u4|u2|u1|u2|u3|co~combout\ & ( (!\u4|u2|u1|u3|u2|s~0_combout\ & 
-- (((!\v4|m[8]~13_combout\) # (!\v4|m[7]~6_combout\)) # (\u4|u1|u2|m[6]~3_combout\))) ) ) ) # ( !\u4|u1|u2|m[7]~2_combout\ & ( !\u4|u2|u1|u2|u3|co~combout\ & ( (!\u4|u2|u1|u3|u2|s~0_combout\ & (!\v4|m[8]~13_combout\ & ((!\v4|m[7]~6_combout\) # 
-- (\u4|u1|u2|m[6]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000100000101010101010001000100000000000001010001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u3|u2|ALT_INV_s~0_combout\,
	datab => \u4|u1|u2|ALT_INV_m[6]~3_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	datae => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	dataf => \u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X10_Y5_N36
\u4|u2|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u4|co~combout\ = ( \u4|u1|u2|m[10]~0_combout\ & ( \u4|u2|u1|u3|u2|co~1_combout\ & ( (!\u4|u1|u2|m[9]~1_combout\ & (\v4|m[10]~4_combout\ & \v4|m[11]~3_combout\)) ) ) ) # ( !\u4|u1|u2|m[10]~0_combout\ & ( \u4|u2|u1|u3|u2|co~1_combout\ & ( 
-- ((!\u4|u1|u2|m[9]~1_combout\ & \v4|m[10]~4_combout\)) # (\v4|m[11]~3_combout\) ) ) ) # ( \u4|u1|u2|m[10]~0_combout\ & ( !\u4|u2|u1|u3|u2|co~1_combout\ & ( (\v4|m[11]~3_combout\ & ((!\u4|u1|u2|m[9]~1_combout\ & ((!\u4|u2|u1|u3|u2|co~0_combout\) # 
-- (\v4|m[10]~4_combout\))) # (\u4|u1|u2|m[9]~1_combout\ & (!\u4|u2|u1|u3|u2|co~0_combout\ & \v4|m[10]~4_combout\)))) ) ) ) # ( !\u4|u1|u2|m[10]~0_combout\ & ( !\u4|u2|u1|u3|u2|co~1_combout\ & ( ((!\u4|u1|u2|m[9]~1_combout\ & 
-- ((!\u4|u2|u1|u3|u2|co~0_combout\) # (\v4|m[10]~4_combout\))) # (\u4|u1|u2|m[9]~1_combout\ & (!\u4|u2|u1|u3|u2|co~0_combout\ & \v4|m[10]~4_combout\))) # (\v4|m[11]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111011111111000000001000111000001010111111110000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u2|ALT_INV_m[9]~1_combout\,
	datab => \u4|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \u4|u1|u2|ALT_INV_m[10]~0_combout\,
	dataf => \u4|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	combout => \u4|u2|u1|u3|u4|co~combout\);

-- Location: LABCELL_X10_Y6_N24
\u4|u1|u2|m[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[12]~9_combout\ = ( \u3|u4|u2|m[11]~8_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u4|u4|co~2_combout\) # (!\v4|m[12]~2_combout\ $ (\u4|u1|u1|u3|u4|co~combout\)))) # (\u4|u1|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ 
-- (((\u4|u1|u1|u3|u4|co~combout\))))) ) ) # ( !\u3|u4|u2|m[11]~8_combout\ & ( (!\u4|u1|u1|u4|u4|co~1_combout\ & (\u4|u1|u1|u4|u4|co~2_combout\ & (!\v4|m[12]~2_combout\ $ (!\u4|u1|u1|u3|u4|co~combout\)))) # (\u4|u1|u1|u4|u4|co~1_combout\ & 
-- (!\v4|m[12]~2_combout\ $ (((!\u4|u1|u1|u3|u4|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100101010000101010010101011101010110101011110101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u1|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|ALT_INV_m[11]~8_combout\,
	combout => \u4|u1|u2|m[12]~9_combout\);

-- Location: LABCELL_X12_Y5_N54
\u4|u2|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u4|co~1_combout\ = ( \u4|u1|u2|m[12]~9_combout\ & ( \v4|m[13]~1_combout\ & ( (\u4|u2|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u4|u2|u1|u3|u4|co~combout\) # (\u4|u1|u2|m[11]~8_combout\))) # (\v4|m[12]~2_combout\ & 
-- (\u4|u1|u2|m[11]~8_combout\ & !\u4|u2|u1|u3|u4|co~combout\)))) ) ) ) # ( \u4|u1|u2|m[12]~9_combout\ & ( !\v4|m[13]~1_combout\ & ( \u4|u2|u1|u4|u4|co~0_combout\ ) ) ) # ( !\u4|u1|u2|m[12]~9_combout\ & ( !\v4|m[13]~1_combout\ & ( 
-- (\u4|u2|u1|u4|u4|co~0_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u4|u2|u1|u3|u4|co~combout\) # (\u4|u1|u2|m[11]~8_combout\))) # (\v4|m[12]~2_combout\ & (\u4|u1|u2|m[11]~8_combout\ & !\u4|u2|u1|u3|u4|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000010000011110000111100000000000000000000101100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u4|u1|u2|ALT_INV_m[11]~8_combout\,
	datac => \u4|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u2|u1|u3|u4|ALT_INV_co~combout\,
	datae => \u4|u1|u2|ALT_INV_m[12]~9_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u4|u2|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X10_Y6_N54
\u4|u2|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u4|co~2_combout\ = ( \u4|u1|u2|m[14]~10_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\) # ((\u4|u1|u2|m[13]~11_combout\ & !\v4|m[14]~0_combout\)) ) ) # ( !\u4|u1|u2|m[14]~10_combout\ & ( (\u4|u1|u2|m[13]~11_combout\ & 
-- (!\u1|u2|u1|u4|u4|co~0_combout\ & !\v4|m[14]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011011100110111001101110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u2|ALT_INV_m[13]~11_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u1|u2|ALT_INV_m[14]~10_combout\,
	combout => \u4|u2|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X10_Y5_N48
\u4|u2|u2|m[10]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[10]~2_combout\ = ( \v4|m[10]~4_combout\ & ( \u4|u2|u1|u3|u2|co~0_combout\ & ( !\u4|u1|u2|m[9]~1_combout\ $ (((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u4|u2|u1|u3|u2|co~0_combout\ 
-- & ( \u4|u1|u2|m[9]~1_combout\ ) ) ) # ( \v4|m[10]~4_combout\ & ( !\u4|u2|u1|u3|u2|co~0_combout\ & ( !\u4|u1|u2|m[9]~1_combout\ $ (((!\u4|u2|u1|u3|u2|co~1_combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) ) ) # ( 
-- !\v4|m[10]~4_combout\ & ( !\u4|u2|u1|u3|u2|co~0_combout\ & ( !\u4|u1|u2|m[9]~1_combout\ $ ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\u4|u2|u1|u3|u2|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111000011000111100011110000001111000011110101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \u4|u1|u2|ALT_INV_m[9]~1_combout\,
	datad => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u4|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u2|u2|m[10]~2_combout\);

-- Location: LABCELL_X10_Y5_N54
\u4|u2|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u1|s~combout\ = ( \u4|u2|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ (!\u4|u1|u2|m[7]~2_combout\ $ (((\u4|u1|u2|m[6]~3_combout\ & !\v4|m[7]~6_combout\)))) ) ) # ( !\u4|u2|u1|u2|u3|co~combout\ & ( !\v4|m[8]~13_combout\ $ 
-- (!\u4|u1|u2|m[7]~2_combout\ $ (((!\v4|m[7]~6_combout\) # (\u4|u1|u2|m[6]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101101001101001010110100101101001010110100110100101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u4|u1|u2|ALT_INV_m[6]~3_combout\,
	datac => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u3|u1|s~combout\);

-- Location: LABCELL_X10_Y5_N9
\u4|u3|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u2|co~0_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( (!\u4|u2|u1|u3|u1|s~combout\ & !\v4|m[9]~5_combout\) ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u4|u2|u1|u4|u4|co~2_combout\ & ((\u4|u1|u2|m[7]~2_combout\))) # 
-- (\u4|u2|u1|u4|u4|co~2_combout\ & (!\u4|u2|u1|u3|u1|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000000000001011100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u3|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X10_Y5_N0
\u4|u3|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u2|s~0_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (\u4|u2|u1|u3|u1|s~combout\) ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (((!\u4|u2|u1|u4|u4|co~2_combout\ & (!\u4|u1|u2|m[7]~2_combout\)) # 
-- (\u4|u2|u1|u4|u4|co~2_combout\ & ((\u4|u2|u1|u3|u1|s~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001011001011010100101100110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	datad => \u4|u2|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u3|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X10_Y5_N12
\u4|u2|u2|m[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[7]~4_combout\ = ( \u4|u2|u1|u2|u3|co~combout\ & ( !\u4|u1|u2|m[6]~3_combout\ $ ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[7]~6_combout\))) ) ) # ( !\u4|u2|u1|u2|u3|co~combout\ & ( !\u4|u1|u2|m[6]~3_combout\ 
-- $ (((!\v4|m[7]~6_combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[6]~3_combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u2|u2|m[7]~4_combout\);

-- Location: MLABCELL_X9_Y5_N45
\u4|u2|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u2|u2|co~combout\ = ( \u4|u2|u1|u2|u1|co~0_combout\ & ( (!\u4|u1|u2|m[4]~5_combout\ & \v4|m[5]~8_combout\) ) ) # ( !\u4|u2|u1|u2|u1|co~0_combout\ & ( (!\u4|u1|u2|m[4]~5_combout\ & ((!\u4|u2|u1|u2|u1|co~1_combout\) # (\v4|m[5]~8_combout\))) # 
-- (\u4|u1|u2|m[4]~5_combout\ & (\v4|m[5]~8_combout\ & !\u4|u2|u1|u2|u1|co~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001010101011110000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u2|ALT_INV_m[4]~5_combout\,
	datac => \v4|ALT_INV_m[5]~8_combout\,
	datad => \u4|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	dataf => \u4|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	combout => \u4|u2|u1|u2|u2|co~combout\);

-- Location: LABCELL_X10_Y5_N15
\u4|u2|u2|m[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[6]~5_combout\ = ( \u4|u2|u1|u2|u2|co~combout\ & ( !\u4|u1|u2|m[5]~4_combout\ $ ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u4|u2|u1|u2|u2|co~combout\ & ( !\u4|u1|u2|m[5]~4_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u4|u2|u2|m[6]~5_combout\);

-- Location: LABCELL_X10_Y4_N39
\u4|u2|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u1|u4|co~combout\ = ( \u4|u2|u1|u1|u2|co~combout\ & ( (!\v4|m[3]~12_combout\ & (((\u4|u1|u2|m[1]~7_combout\ & !\v4|m[2]~10_combout\)) # (\u4|u1|u2|m[2]~6_combout\))) # (\v4|m[3]~12_combout\ & (\u4|u1|u2|m[1]~7_combout\ & 
-- (\u4|u1|u2|m[2]~6_combout\ & !\v4|m[2]~10_combout\))) ) ) # ( !\u4|u2|u1|u1|u2|co~combout\ & ( (!\v4|m[3]~12_combout\ & (((!\v4|m[2]~10_combout\) # (\u4|u1|u2|m[2]~6_combout\)) # (\u4|u1|u2|m[1]~7_combout\))) # (\v4|m[3]~12_combout\ & 
-- (\u4|u1|u2|m[2]~6_combout\ & ((!\v4|m[2]~10_combout\) # (\u4|u1|u2|m[1]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100101011101011110010101100101011000010100010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~12_combout\,
	datab => \u4|u1|u2|ALT_INV_m[1]~7_combout\,
	datac => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u1|u4|co~combout\);

-- Location: LABCELL_X10_Y3_N36
\u4|u1|u2|m[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[3]~13_combout\ = (!\u4|u1|u1|u4|u4|co~2_combout\ & ((!\u4|u1|u1|u4|u4|co~1_combout\ & (\u3|u4|u2|m[2]~4_combout\)) # (\u4|u1|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u1|u1|u4|s~combout\))))) # (\u4|u1|u1|u4|u4|co~2_combout\ & 
-- (((!\u4|u1|u1|u1|u4|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100001000011111110000100001111111000010000111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u3|u4|u2|ALT_INV_m[2]~4_combout\,
	datad => \u4|u1|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u4|u1|u2|m[3]~13_combout\);

-- Location: LABCELL_X10_Y4_N45
\u4|u2|u2|m[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[4]~7_combout\ = ( \v4|m[4]~9_combout\ & ( !\u4|u1|u2|m[3]~13_combout\ $ (((!\u4|u2|u1|u1|u4|co~combout\) # ((!\u4|u2|u1|u4|u4|co~2_combout\ & !\u4|u2|u1|u4|u4|co~1_combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( !\u4|u1|u2|m[3]~13_combout\ $ 
-- ((((!\u4|u2|u1|u4|u4|co~2_combout\ & !\u4|u2|u1|u4|u4|co~1_combout\)) # (\u4|u2|u1|u1|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u1|u1|u4|ALT_INV_co~combout\,
	datad => \u4|u1|u2|ALT_INV_m[3]~13_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u2|u2|m[4]~7_combout\);

-- Location: LABCELL_X10_Y4_N36
\u4|u2|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u1|u4|s~combout\ = ( \u4|u2|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ $ (!\u4|u1|u2|m[2]~6_combout\ $ (((\u4|u1|u2|m[1]~7_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u4|u2|u1|u1|u2|co~combout\ & ( !\v4|m[3]~12_combout\ $ 
-- (!\u4|u1|u2|m[2]~6_combout\ $ (((!\v4|m[2]~10_combout\) # (\u4|u1|u2|m[1]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011001011001101001100101100101100101100110100110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~12_combout\,
	datab => \u4|u1|u2|ALT_INV_m[1]~7_combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	dataf => \u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u1|u4|s~combout\);

-- Location: LABCELL_X10_Y4_N21
\u4|u3|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u1|co~0_combout\ = ( !\v4|m[4]~9_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\ & ((!\u4|u2|u1|u4|u4|co~1_combout\ & (\u4|u1|u2|m[2]~6_combout\)) # (\u4|u2|u1|u4|u4|co~1_combout\ & ((!\u4|u2|u1|u1|u4|s~combout\))))) # 
-- (\u4|u2|u1|u4|u4|co~2_combout\ & (((!\u4|u2|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100100000011111110010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	datac => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u4|u2|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u3|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X10_Y4_N42
\u4|u3|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u1|s~0_combout\ = ( \v4|m[4]~9_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\ & ((!\u4|u2|u1|u4|u4|co~1_combout\ & ((!\u4|u1|u2|m[2]~6_combout\))) # (\u4|u2|u1|u4|u4|co~1_combout\ & (\u4|u2|u1|u1|u4|s~combout\)))) # 
-- (\u4|u2|u1|u4|u4|co~2_combout\ & (((\u4|u2|u1|u1|u4|s~combout\)))) ) ) # ( !\v4|m[4]~9_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\ & ((!\u4|u2|u1|u4|u4|co~1_combout\ & ((\u4|u1|u2|m[2]~6_combout\))) # (\u4|u2|u1|u4|u4|co~1_combout\ & 
-- (!\u4|u2|u1|u1|u4|s~combout\)))) # (\u4|u2|u1|u4|u4|co~2_combout\ & (((!\u4|u2|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011111000011100001111100010001111000001111000111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u1|u1|u4|ALT_INV_s~combout\,
	datad => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	dataf => \v4|ALT_INV_m[4]~9_combout\,
	combout => \u4|u3|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X10_Y4_N24
\u4|u2|u2|m[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[2]~8_combout\ = ( \u4|u2|u1|u1|u2|co~combout\ & ( !\u4|u1|u2|m[1]~7_combout\ $ ((((!\u4|u2|u1|u4|u4|co~2_combout\ & !\u4|u2|u1|u4|u4|co~1_combout\)) # (\v4|m[2]~10_combout\))) ) ) # ( !\u4|u2|u1|u1|u2|co~combout\ & ( !\u4|u1|u2|m[1]~7_combout\ 
-- $ (((!\v4|m[2]~10_combout\) # ((!\u4|u2|u1|u4|u4|co~2_combout\ & !\u4|u2|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[2]~10_combout\,
	datad => \u4|u1|u2|ALT_INV_m[1]~7_combout\,
	dataf => \u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u2|u2|m[2]~8_combout\);

-- Location: LABCELL_X12_Y5_N48
\v2|m[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|m[1]~13_combout\ = ( \a[0]~input_o\ & ( !\a[1]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[0]~input_o\ & ( \a[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v2|m[1]~13_combout\);

-- Location: LABCELL_X10_Y4_N6
\u4|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u2|co~combout\ = ( \v2|m[1]~13_combout\ & ( \v4|m[1]~11_combout\ & ( !\v2|m[2]~12_combout\ $ (((\b[0]~input_o\ & ((\u4|u2|u1|u4|u4|co~2_combout\) # (\u4|u2|u1|u4|u4|co~1_combout\))))) ) ) ) # ( !\v2|m[1]~13_combout\ & ( \v4|m[1]~11_combout\ & 
-- ( (!\v2|m[2]~12_combout\) # (\b[0]~input_o\) ) ) ) # ( !\v2|m[1]~13_combout\ & ( !\v4|m[1]~11_combout\ & ( (\b[0]~input_o\ & (!\v2|m[2]~12_combout\ $ (((\u4|u2|u1|u4|u4|co~2_combout\) # (\u4|u2|u1|u4|u4|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010011000000000000000011111111001100111110110000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \v2|ALT_INV_m[2]~12_combout\,
	datae => \v2|ALT_INV_m[1]~13_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u4|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X10_Y3_N27
\u4|u1|u2|m[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[0]~14_combout\ = ( \v2|m[3]~11_combout\ & ( (!\b[0]~input_o\) # ((!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)) ) ) # ( !\v2|m[3]~11_combout\ & ( (\b[0]~input_o\ & ((\u4|u1|u1|u4|u4|co~1_combout\) # 
-- (\u4|u1|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[3]~11_combout\,
	combout => \u4|u1|u2|m[0]~14_combout\);

-- Location: LABCELL_X10_Y4_N0
\u4|u2|u2|m[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[1]~9_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( !\u4|u1|u2|m[0]~14_combout\ $ (((\b[0]~input_o\ & !\v2|m[2]~12_combout\))) ) ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( \v4|m[1]~11_combout\ & ( 
-- !\u4|u1|u2|m[0]~14_combout\ $ (((!\u4|u2|u1|u4|u4|co~2_combout\) # ((\b[0]~input_o\ & !\v2|m[2]~12_combout\)))) ) ) ) # ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u4|u1|u2|m[0]~14_combout\ $ (((!\b[0]~input_o\) # 
-- (\v2|m[2]~12_combout\))) ) ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[1]~11_combout\ & ( !\u4|u1|u2|m[0]~14_combout\ $ (((!\u4|u2|u1|u4|u4|co~2_combout\) # ((!\b[0]~input_o\) # (\v2|m[2]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000001111001111000000111101001011010110101100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \u4|u1|u2|ALT_INV_m[0]~14_combout\,
	datad => \v2|ALT_INV_m[2]~12_combout\,
	datae => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \v4|ALT_INV_m[1]~11_combout\,
	combout => \u4|u2|u2|m[1]~9_combout\);

-- Location: LABCELL_X10_Y4_N12
\u4|u3|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u1|co~1_combout\ = ( \u4|u2|u2|m[1]~9_combout\ & ( \v4|m[3]~12_combout\ & ( (!\u4|u3|u1|u2|u1|s~0_combout\ & (\u4|u2|u2|m[2]~8_combout\ & ((!\v4|m[2]~10_combout\) # (!\u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u4|u2|u2|m[1]~9_combout\ & ( 
-- \v4|m[3]~12_combout\ & ( (!\v4|m[2]~10_combout\ & (!\u4|u3|u1|u2|u1|s~0_combout\ & (\u4|u2|u2|m[2]~8_combout\ & !\u4|u3|u1|u1|u2|co~combout\))) ) ) ) # ( \u4|u2|u2|m[1]~9_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u4|u3|u1|u2|u1|s~0_combout\ & 
-- ((!\v4|m[2]~10_combout\) # ((!\u4|u3|u1|u1|u2|co~combout\) # (\u4|u2|u2|m[2]~8_combout\)))) ) ) ) # ( !\u4|u2|u2|m[1]~9_combout\ & ( !\v4|m[3]~12_combout\ & ( (!\u4|u3|u1|u2|u1|s~0_combout\ & (((!\v4|m[2]~10_combout\ & !\u4|u3|u1|u1|u2|co~combout\)) # 
-- (\u4|u2|u2|m[2]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000001100110011001000110000001000000000000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u4|u3|u1|u2|u1|ALT_INV_s~0_combout\,
	datac => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	datad => \u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u4|u2|u2|ALT_INV_m[1]~9_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u4|u3|u1|u2|u1|co~1_combout\);

-- Location: MLABCELL_X9_Y5_N54
\u4|u2|u2|m[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[5]~6_combout\ = ( \u4|u1|u2|m[4]~5_combout\ & ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[5]~8_combout\ $ (((!\u4|u2|u1|u2|u1|co~0_combout\ & !\u4|u2|u1|u2|u1|co~1_combout\))) ) ) ) # ( !\u4|u1|u2|m[4]~5_combout\ & ( 
-- \u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[5]~8_combout\ $ (((\u4|u2|u1|u2|u1|co~1_combout\) # (\u4|u2|u1|u2|u1|co~0_combout\))) ) ) ) # ( \u4|u1|u2|m[4]~5_combout\ & ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\) # 
-- (!\v4|m[5]~8_combout\ $ (((!\u4|u2|u1|u2|u1|co~0_combout\ & !\u4|u2|u1|u2|u1|co~1_combout\)))) ) ) ) # ( !\u4|u1|u2|m[4]~5_combout\ & ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( (\u4|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[5]~8_combout\ $ 
-- (((\u4|u2|u1|u2|u1|co~1_combout\) # (\u4|u2|u1|u2|u1|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101101111111110101011000000001111110011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u2|u1|u2|u1|ALT_INV_co~0_combout\,
	datac => \u4|u2|u1|u2|u1|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[5]~8_combout\,
	datae => \u4|u1|u2|ALT_INV_m[4]~5_combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u2|u2|m[5]~6_combout\);

-- Location: MLABCELL_X9_Y4_N0
\u4|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u3|co~combout\ = ( \v4|m[5]~8_combout\ & ( \u4|u2|u2|m[5]~6_combout\ & ( (\v4|m[6]~7_combout\ & ((!\u4|u2|u2|m[4]~7_combout\) # ((!\u4|u3|u1|u2|u1|co~0_combout\ & !\u4|u3|u1|u2|u1|co~1_combout\)))) ) ) ) # ( !\v4|m[5]~8_combout\ & ( 
-- \u4|u2|u2|m[5]~6_combout\ & ( (!\u4|u2|u2|m[4]~7_combout\ & (\v4|m[6]~7_combout\ & (!\u4|u3|u1|u2|u1|co~0_combout\ & !\u4|u3|u1|u2|u1|co~1_combout\))) ) ) ) # ( \v4|m[5]~8_combout\ & ( !\u4|u2|u2|m[5]~6_combout\ & ( (!\u4|u2|u2|m[4]~7_combout\) # 
-- (((!\u4|u3|u1|u2|u1|co~0_combout\ & !\u4|u3|u1|u2|u1|co~1_combout\)) # (\v4|m[6]~7_combout\)) ) ) ) # ( !\v4|m[5]~8_combout\ & ( !\u4|u2|u2|m[5]~6_combout\ & ( ((!\u4|u2|u2|m[4]~7_combout\ & (!\u4|u3|u1|u2|u1|co~0_combout\ & 
-- !\u4|u3|u1|u2|u1|co~1_combout\))) # (\v4|m[6]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100110011111110111011101100100000000000000011001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u2|ALT_INV_m[4]~7_combout\,
	datab => \v4|ALT_INV_m[6]~7_combout\,
	datac => \u4|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u4|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datae => \v4|ALT_INV_m[5]~8_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[5]~6_combout\,
	combout => \u4|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X10_Y5_N18
\u4|u3|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u2|co~1_combout\ = ( \v4|m[7]~6_combout\ & ( \u4|u3|u1|u2|u3|co~combout\ & ( (!\u4|u3|u1|u3|u2|s~0_combout\ & (\u4|u2|u2|m[7]~4_combout\ & !\v4|m[8]~13_combout\)) ) ) ) # ( !\v4|m[7]~6_combout\ & ( \u4|u3|u1|u2|u3|co~combout\ & ( 
-- (!\u4|u3|u1|u3|u2|s~0_combout\ & ((!\u4|u2|u2|m[7]~4_combout\ & (!\v4|m[8]~13_combout\ & \u4|u2|u2|m[6]~5_combout\)) # (\u4|u2|u2|m[7]~4_combout\ & ((!\v4|m[8]~13_combout\) # (\u4|u2|u2|m[6]~5_combout\))))) ) ) ) # ( \v4|m[7]~6_combout\ & ( 
-- !\u4|u3|u1|u2|u3|co~combout\ & ( (!\u4|u3|u1|u3|u2|s~0_combout\ & ((!\u4|u2|u2|m[7]~4_combout\ & (!\v4|m[8]~13_combout\ & \u4|u2|u2|m[6]~5_combout\)) # (\u4|u2|u2|m[7]~4_combout\ & ((!\v4|m[8]~13_combout\) # (\u4|u2|u2|m[6]~5_combout\))))) ) ) ) # ( 
-- !\v4|m[7]~6_combout\ & ( !\u4|u3|u1|u2|u3|co~combout\ & ( (!\u4|u3|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # (\u4|u2|u2|m[7]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010001000001010001000100000101000100010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u2|ALT_INV_s~0_combout\,
	datab => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u4|u2|u2|ALT_INV_m[6]~5_combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u3|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X10_Y5_N57
\u4|u2|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u1|co~combout\ = ( \u4|u2|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~13_combout\ & (((\u4|u1|u2|m[6]~3_combout\ & !\v4|m[7]~6_combout\)) # (\u4|u1|u2|m[7]~2_combout\))) # (\v4|m[8]~13_combout\ & (\u4|u1|u2|m[6]~3_combout\ & (!\v4|m[7]~6_combout\ & 
-- \u4|u1|u2|m[7]~2_combout\))) ) ) # ( !\u4|u2|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~13_combout\ & (((!\v4|m[7]~6_combout\) # (\u4|u1|u2|m[7]~2_combout\)) # (\u4|u1|u2|m[6]~3_combout\))) # (\v4|m[8]~13_combout\ & (\u4|u1|u2|m[7]~2_combout\ & 
-- ((!\v4|m[7]~6_combout\) # (\u4|u1|u2|m[6]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001011111011101000101111101100100000101110100010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~13_combout\,
	datab => \u4|u1|u2|ALT_INV_m[6]~3_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	dataf => \u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u3|u1|co~combout\);

-- Location: LABCELL_X10_Y5_N45
\u4|u1|u2|m[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u2|m[8]~12_combout\ = ( \u4|u1|u1|u4|u4|co~1_combout\ & ( !\u4|u1|u1|u3|u1|s~combout\ ) ) # ( !\u4|u1|u1|u4|u4|co~1_combout\ & ( (!\u4|u1|u1|u4|u4|co~2_combout\ & (\u3|u4|u2|m[7]~0_combout\)) # (\u4|u1|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u1|u1|u3|u1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101011111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_m[7]~0_combout\,
	datac => \u4|u1|u1|u3|u1|ALT_INV_s~combout\,
	datad => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u1|u2|m[8]~12_combout\);

-- Location: LABCELL_X10_Y5_N3
\u4|u2|u2|m[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[9]~3_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\v4|m[9]~5_combout\ $ (!\u4|u2|u1|u3|u1|co~combout\ $ (!\u4|u1|u2|m[8]~12_combout\)) ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( !\u4|u1|u2|m[8]~12_combout\ $ 
-- (((!\u4|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[9]~5_combout\ $ (!\u4|u2|u1|u3|u1|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000111011110001000011101111010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~5_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u4|u1|u2|ALT_INV_m[8]~12_combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u2|u2|m[9]~3_combout\);

-- Location: LABCELL_X10_Y5_N24
\u4|u3|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u4|co~combout\ = ( \v4|m[10]~4_combout\ & ( \u4|u2|u2|m[9]~3_combout\ & ( (!\u4|u2|u2|m[10]~2_combout\ & (((!\u4|u3|u1|u3|u2|co~0_combout\ & !\u4|u3|u1|u3|u2|co~1_combout\)) # (\v4|m[11]~3_combout\))) # (\u4|u2|u2|m[10]~2_combout\ & 
-- (!\u4|u3|u1|u3|u2|co~0_combout\ & (!\u4|u3|u1|u3|u2|co~1_combout\ & \v4|m[11]~3_combout\))) ) ) ) # ( !\v4|m[10]~4_combout\ & ( \u4|u2|u2|m[9]~3_combout\ & ( (!\u4|u2|u2|m[10]~2_combout\ & \v4|m[11]~3_combout\) ) ) ) # ( \v4|m[10]~4_combout\ & ( 
-- !\u4|u2|u2|m[9]~3_combout\ & ( (!\u4|u2|u2|m[10]~2_combout\) # (\v4|m[11]~3_combout\) ) ) ) # ( !\v4|m[10]~4_combout\ & ( !\u4|u2|u2|m[9]~3_combout\ & ( (!\u4|u2|u2|m[10]~2_combout\ & (((!\u4|u3|u1|u3|u2|co~0_combout\ & !\u4|u3|u1|u3|u2|co~1_combout\)) # 
-- (\v4|m[11]~3_combout\))) # (\u4|u2|u2|m[10]~2_combout\ & (!\u4|u3|u1|u3|u2|co~0_combout\ & (!\u4|u3|u1|u3|u2|co~1_combout\ & \v4|m[11]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011101010101010101111111100000000101010101000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u2|ALT_INV_m[10]~2_combout\,
	datab => \u4|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u4|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \v4|ALT_INV_m[10]~4_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[9]~3_combout\,
	combout => \u4|u3|u1|u3|u4|co~combout\);

-- Location: LABCELL_X10_Y5_N42
\u4|u2|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u3|u3|co~combout\ = ( \u4|u2|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u4|u1|u2|m[9]~1_combout\) ) ) # ( !\u4|u2|u1|u3|u2|co~0_combout\ & ( (!\u4|u2|u1|u3|u2|co~1_combout\ & ((!\u4|u1|u2|m[9]~1_combout\) # (\v4|m[10]~4_combout\))) # 
-- (\u4|u2|u1|u3|u2|co~1_combout\ & (\v4|m[10]~4_combout\ & !\u4|u1|u2|m[9]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001100110011110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u2|u1|u3|u2|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u4|u1|u2|ALT_INV_m[9]~1_combout\,
	dataf => \u4|u2|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u2|u1|u3|u3|co~combout\);

-- Location: LABCELL_X12_Y5_N3
\u4|u2|u2|m[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[11]~1_combout\ = ( \v4|m[11]~3_combout\ & ( !\u4|u1|u2|m[10]~0_combout\ $ ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\u4|u2|u1|u3|u3|co~combout\))) ) ) # ( !\v4|m[11]~3_combout\ & ( !\u4|u1|u2|m[10]~0_combout\ $ 
-- (((!\u4|u2|u1|u3|u3|co~combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u4|u1|u2|ALT_INV_m[10]~0_combout\,
	dataf => \v4|ALT_INV_m[11]~3_combout\,
	combout => \u4|u2|u2|m[11]~1_combout\);

-- Location: MLABCELL_X13_Y5_N18
\u4|u3|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u1|co~combout\ = ( \u4|u2|u2|m[11]~1_combout\ & ( (!\v4|m[12]~2_combout\) # (!\u4|u3|u1|u3|u4|co~combout\) ) ) # ( !\u4|u2|u2|m[11]~1_combout\ & ( (!\v4|m[12]~2_combout\ & !\u4|u3|u1|u3|u4|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u4|u3|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[11]~1_combout\,
	combout => \u4|u3|u1|u4|u1|co~combout\);

-- Location: LABCELL_X12_Y5_N6
\u4|u2|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u2|co~combout\ = ( \v4|m[13]~1_combout\ & ( (\u4|u1|u2|m[12]~9_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u4|u2|u1|u3|u4|co~combout\) # (\u4|u1|u2|m[11]~8_combout\))) # (\v4|m[12]~2_combout\ & (\u4|u1|u2|m[11]~8_combout\ & 
-- !\u4|u2|u1|u3|u4|co~combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( ((!\v4|m[12]~2_combout\ & ((!\u4|u2|u1|u3|u4|co~combout\) # (\u4|u1|u2|m[11]~8_combout\))) # (\v4|m[12]~2_combout\ & (\u4|u1|u2|m[11]~8_combout\ & !\u4|u2|u1|u3|u4|co~combout\))) # 
-- (\u4|u1|u2|m[12]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001011111111101100101111111100000000101100100000000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u4|u1|u2|ALT_INV_m[11]~8_combout\,
	datac => \u4|u2|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u4|u1|u2|ALT_INV_m[12]~9_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u4|u2|u1|u4|u2|co~combout\);

-- Location: LABCELL_X12_Y5_N12
\u4|u2|u2|m[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[14]~11_combout\ = ( \u4|u2|u1|u4|u2|co~combout\ & ( !\u4|u1|u2|m[13]~11_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u4|u2|u1|u4|u2|co~combout\ & ( 
-- !\u4|u1|u2|m[13]~11_combout\ $ ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[13]~11_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u2|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u4|u2|u2|m[14]~11_combout\);

-- Location: LABCELL_X12_Y5_N9
\u4|u2|u1|u4|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u1|co~combout\ = ( \u4|u2|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\ & \u4|u1|u2|m[11]~8_combout\) ) ) # ( !\u4|u2|u1|u3|u4|co~combout\ & ( (!\v4|m[12]~2_combout\) # (\u4|u1|u2|m[11]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u4|u1|u2|ALT_INV_m[11]~8_combout\,
	dataf => \u4|u2|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u4|u2|u1|u4|u1|co~combout\);

-- Location: LABCELL_X12_Y5_N15
\u4|u2|u2|m[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[13]~10_combout\ = ( \v4|m[13]~1_combout\ & ( !\u4|u1|u2|m[12]~9_combout\ $ (((!\u4|u2|u1|u4|u1|co~combout\) # ((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)))) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u4|u1|u2|m[12]~9_combout\ $ 
-- ((((!\u4|u2|u1|u4|u4|co~1_combout\ & !\u4|u2|u1|u4|u4|co~2_combout\)) # (\u4|u2|u1|u4|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010001111011100001000111100000111111110000000011111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u4|u1|u2|ALT_INV_m[12]~9_combout\,
	dataf => \v4|ALT_INV_m[13]~1_combout\,
	combout => \u4|u2|u2|m[13]~10_combout\);

-- Location: LABCELL_X12_Y5_N21
\u4|u3|u1|u4|u4|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u4|co~2_combout\ = ( \u4|u2|u2|m[13]~10_combout\ & ( (!\u4|u2|u2|m[14]~11_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & !\v4|m[14]~0_combout\)) # (\u4|u2|u2|m[14]~11_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # (!\v4|m[14]~0_combout\))) ) ) 
-- # ( !\u4|u2|u2|m[13]~10_combout\ & ( (\u4|u2|u2|m[14]~11_combout\ & !\u1|u2|u1|u4|u4|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u2|ALT_INV_m[14]~11_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[13]~10_combout\,
	combout => \u4|u3|u1|u4|u4|co~2_combout\);

-- Location: LABCELL_X12_Y5_N0
\u4|u2|u2|m[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[12]~0_combout\ = ( \u4|u1|u2|m[11]~8_combout\ & ( (!\u4|u2|u1|u4|u4|co~1_combout\ & ((!\u4|u2|u1|u4|u4|co~2_combout\) # (!\v4|m[12]~2_combout\ $ (\u4|u2|u1|u3|u4|co~combout\)))) # (\u4|u2|u1|u4|u4|co~1_combout\ & ((!\v4|m[12]~2_combout\ $ 
-- (\u4|u2|u1|u3|u4|co~combout\)))) ) ) # ( !\u4|u1|u2|m[11]~8_combout\ & ( (!\u4|u2|u1|u4|u4|co~1_combout\ & (\u4|u2|u1|u4|u4|co~2_combout\ & (!\v4|m[12]~2_combout\ $ (!\u4|u2|u1|u3|u4|co~combout\)))) # (\u4|u2|u1|u4|u4|co~1_combout\ & 
-- ((!\v4|m[12]~2_combout\ $ (!\u4|u2|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u4|u2|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u4|u1|u2|ALT_INV_m[11]~8_combout\,
	combout => \u4|u2|u2|m[12]~0_combout\);

-- Location: LABCELL_X12_Y5_N18
\u4|u3|u1|u4|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u4|co~0_combout\ = ( \u4|u2|u2|m[13]~10_combout\ & ( (\v4|m[14]~0_combout\ & (!\u4|u2|u2|m[14]~11_combout\ $ (\u1|u2|u1|u4|u4|co~0_combout\))) ) ) # ( !\u4|u2|u2|m[13]~10_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u4|u2|u2|m[14]~11_combout\ $ 
-- (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u2|ALT_INV_m[14]~11_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[13]~10_combout\,
	combout => \u4|u3|u1|u4|u4|co~0_combout\);

-- Location: MLABCELL_X13_Y5_N6
\u4|u3|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u4|co~1_combout\ = ( \v4|m[13]~1_combout\ & ( \u4|u2|u2|m[12]~0_combout\ & ( (\u4|u3|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u4|u2|u2|m[11]~1_combout\))) # (\u4|u3|u1|u3|u4|co~combout\ & 
-- (\u4|u2|u2|m[11]~1_combout\ & !\v4|m[12]~2_combout\)))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( \u4|u2|u2|m[12]~0_combout\ & ( \u4|u3|u1|u4|u4|co~0_combout\ ) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u4|u2|u2|m[12]~0_combout\ & ( (\u4|u3|u1|u4|u4|co~0_combout\ & 
-- ((!\u4|u3|u1|u3|u4|co~combout\ & ((!\v4|m[12]~2_combout\) # (\u4|u2|u2|m[11]~1_combout\))) # (\u4|u3|u1|u3|u4|co~combout\ & (\u4|u2|u2|m[11]~1_combout\ & !\v4|m[12]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110010000000000000000000000000111111110000000010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u4|ALT_INV_co~combout\,
	datab => \u4|u2|u2|ALT_INV_m[11]~1_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u4|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[12]~0_combout\,
	combout => \u4|u3|u1|u4|u4|co~1_combout\);

-- Location: MLABCELL_X13_Y5_N36
\u4|u4|u1|u4|u3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u3|s~0_combout\ = ( \v4|m[13]~1_combout\ & ( \u4|u3|u1|u4|u4|co~1_combout\ & ( !\u4|u3|u1|u4|u1|co~combout\ $ (!\v4|m[14]~0_combout\ $ (\u4|u2|u2|m[12]~0_combout\)) ) ) ) # ( !\v4|m[13]~1_combout\ & ( \u4|u3|u1|u4|u4|co~1_combout\ & ( 
-- !\u4|u3|u1|u4|u1|co~combout\ $ (!\v4|m[14]~0_combout\ $ (!\u4|u2|u2|m[12]~0_combout\)) ) ) ) # ( \v4|m[13]~1_combout\ & ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[14]~0_combout\ $ (!\u4|u2|u2|m[12]~0_combout\ $ (((\u4|u3|u1|u4|u1|co~combout\ & 
-- \u4|u3|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( !\v4|m[14]~0_combout\ $ (!\u4|u2|u2|m[12]~0_combout\ $ (((!\u4|u3|u1|u4|u1|co~combout\ & \u4|u3|u1|u4|u4|co~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110001101101100100110011001011001100110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u2|u2|ALT_INV_m[12]~0_combout\,
	datae => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u4|u1|u4|u3|s~0_combout\);

-- Location: MLABCELL_X13_Y5_N12
\u4|u3|u2|m[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[12]~1_combout\ = ( \u4|u2|u2|m[11]~1_combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\ & ((!\u4|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[12]~2_combout\ $ (\u4|u3|u1|u3|u4|co~combout\)))) # (\u4|u3|u1|u4|u4|co~2_combout\ & ((!\v4|m[12]~2_combout\ $ 
-- (\u4|u3|u1|u3|u4|co~combout\)))) ) ) # ( !\u4|u2|u2|m[11]~1_combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\ & (\u4|u3|u1|u4|u4|co~1_combout\ & (!\v4|m[12]~2_combout\ $ (!\u4|u3|u1|u3|u4|co~combout\)))) # (\u4|u3|u1|u4|u4|co~2_combout\ & 
-- ((!\v4|m[12]~2_combout\ $ (!\u4|u3|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110000000001110111000011111000100011111111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u4|u3|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[11]~1_combout\,
	combout => \u4|u3|u2|m[12]~1_combout\);

-- Location: LABCELL_X14_Y5_N30
\u4|u3|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u3|co~combout\ = ( \u4|u3|u1|u3|u2|co~0_combout\ & ( (\v4|m[10]~4_combout\ & !\u4|u2|u2|m[9]~3_combout\) ) ) # ( !\u4|u3|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & (!\u4|u2|u2|m[9]~3_combout\ & !\u4|u3|u1|u3|u2|co~1_combout\)) # 
-- (\v4|m[10]~4_combout\ & ((!\u4|u2|u2|m[9]~3_combout\) # (!\u4|u3|u1|u3|u2|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110000111100110011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u4|u2|u2|ALT_INV_m[9]~3_combout\,
	datad => \u4|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \u4|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u3|u1|u3|u3|co~combout\);

-- Location: MLABCELL_X13_Y5_N0
\u4|u3|u2|m[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[11]~2_combout\ = ( \u4|u3|u1|u3|u3|co~combout\ & ( !\u4|u2|u2|m[10]~2_combout\ $ ((((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[11]~3_combout\))) ) ) # ( !\u4|u3|u1|u3|u3|co~combout\ & ( 
-- !\u4|u2|u2|m[10]~2_combout\ $ (((!\v4|m[11]~3_combout\) # ((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[10]~2_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	dataf => \u4|u3|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[11]~2_combout\);

-- Location: MLABCELL_X13_Y4_N36
\u4|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u1|u2|co~combout\ = ( \v4|m[1]~11_combout\ & ( \b[0]~input_o\ & ( (!\a[0]~input_o\) # (!\v2|m[1]~13_combout\ $ (((\u4|u3|u1|u4|u4|co~1_combout\) # (\u4|u3|u1|u4|u4|co~2_combout\)))) ) ) ) # ( !\v4|m[1]~11_combout\ & ( \b[0]~input_o\ & ( 
-- (!\a[0]~input_o\ & (!\v2|m[1]~13_combout\ $ (((\u4|u3|u1|u4|u4|co~1_combout\) # (\u4|u3|u1|u4|u4|co~2_combout\))))) ) ) ) # ( \v4|m[1]~11_combout\ & ( !\b[0]~input_o\ & ( !\v2|m[1]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000010000111000000001111111110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v2|ALT_INV_m[1]~13_combout\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \v4|ALT_INV_m[1]~11_combout\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \u4|u4|u1|u1|u2|co~combout\);

-- Location: LABCELL_X10_Y4_N54
\u4|u3|u2|m[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[2]~9_combout\ = ( \v4|m[2]~10_combout\ & ( !\u4|u2|u2|m[1]~9_combout\ $ ((((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)) # (\u4|u3|u1|u1|u2|co~combout\))) ) ) # ( !\v4|m[2]~10_combout\ & ( !\u4|u2|u2|m[1]~9_combout\ $ 
-- (((!\u4|u3|u1|u1|u2|co~combout\) # ((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u2|ALT_INV_m[1]~9_combout\,
	datad => \u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[2]~10_combout\,
	combout => \u4|u3|u2|m[2]~9_combout\);

-- Location: LABCELL_X10_Y4_N51
\u4|u3|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u4|s~combout\ = ( \v4|m[3]~12_combout\ & ( !\u4|u2|u2|m[2]~8_combout\ $ (((!\v4|m[2]~10_combout\ & ((!\u4|u3|u1|u1|u2|co~combout\) # (\u4|u2|u2|m[1]~9_combout\))) # (\v4|m[2]~10_combout\ & (!\u4|u3|u1|u1|u2|co~combout\ & 
-- \u4|u2|u2|m[1]~9_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( !\u4|u2|u2|m[2]~8_combout\ $ (((!\v4|m[2]~10_combout\ & (\u4|u3|u1|u1|u2|co~combout\ & !\u4|u2|u2|m[1]~9_combout\)) # (\v4|m[2]~10_combout\ & ((!\u4|u2|u2|m[1]~9_combout\) # 
-- (\u4|u3|u1|u1|u2|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111100001100001111110000101111000000111100111100000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	datad => \u4|u2|u2|ALT_INV_m[1]~9_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u4|u3|u1|u1|u4|s~combout\);

-- Location: MLABCELL_X9_Y4_N57
\u4|u4|u1|u2|u1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u1|s~0_combout\ = ( \u4|u3|u1|u4|u4|co~2_combout\ & ( !\u4|u3|u1|u1|u4|s~combout\ $ (\v4|m[4]~9_combout\) ) ) # ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( !\v4|m[4]~9_combout\ $ (((!\u4|u3|u1|u4|u4|co~1_combout\ & ((!\u4|u2|u2|m[2]~8_combout\))) # 
-- (\u4|u3|u1|u4|u4|co~1_combout\ & (\u4|u3|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111001001001110011100100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u4|ALT_INV_s~combout\,
	datab => \v4|ALT_INV_m[4]~9_combout\,
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u4|u1|u2|u1|s~0_combout\);

-- Location: LABCELL_X10_Y4_N27
\u4|u2|u2|m[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[0]~14_combout\ = ( \v2|m[2]~12_combout\ & ( (!\b[0]~input_o\) # ((!\u4|u2|u1|u4|u4|co~2_combout\ & !\u4|u2|u1|u4|u4|co~1_combout\)) ) ) # ( !\v2|m[2]~12_combout\ & ( (\b[0]~input_o\ & ((\u4|u2|u1|u4|u4|co~1_combout\) # 
-- (\u4|u2|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[2]~12_combout\,
	combout => \u4|u2|u2|m[0]~14_combout\);

-- Location: MLABCELL_X13_Y4_N0
\u4|u3|u2|m[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[1]~10_combout\ = ( \u4|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[1]~13_combout\ & ( !\v4|m[1]~11_combout\ $ (!\u4|u2|u2|m[0]~14_combout\) ) ) ) # ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( \v2|m[1]~13_combout\ & ( !\u4|u2|u2|m[0]~14_combout\ $ 
-- (((!\u4|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[1]~11_combout\))) ) ) ) # ( \u4|u3|u1|u4|u4|co~2_combout\ & ( !\v2|m[1]~13_combout\ & ( !\b[0]~input_o\ $ (!\v4|m[1]~11_combout\ $ (\u4|u2|u2|m[0]~14_combout\)) ) ) ) # ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( 
-- !\v2|m[1]~13_combout\ & ( !\u4|u2|u2|m[0]~14_combout\ $ (((!\u4|u3|u1|u4|u4|co~1_combout\) # (!\b[0]~input_o\ $ (\v4|m[1]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001011101101010110101010010100000011111111000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v4|ALT_INV_m[1]~11_combout\,
	datad => \u4|u2|u2|ALT_INV_m[0]~14_combout\,
	datae => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \v2|ALT_INV_m[1]~13_combout\,
	combout => \u4|u3|u2|m[1]~10_combout\);

-- Location: MLABCELL_X9_Y4_N30
\u4|u4|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u1|co~1_combout\ = ( !\u4|u4|u1|u2|u1|s~0_combout\ & ( \u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & (!\v4|m[3]~12_combout\ & ((!\u4|u4|u1|u1|u2|co~combout\) # (!\v4|m[2]~10_combout\)))) # (\u4|u3|u2|m[2]~9_combout\ & 
-- ((!\u4|u4|u1|u1|u2|co~combout\) # ((!\v4|m[3]~12_combout\) # (!\v4|m[2]~10_combout\)))) ) ) ) # ( !\u4|u4|u1|u2|u1|s~0_combout\ & ( !\u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & (!\u4|u4|u1|u1|u2|co~combout\ & (!\v4|m[3]~12_combout\ & 
-- !\v4|m[2]~10_combout\))) # (\u4|u3|u2|m[2]~9_combout\ & ((!\v4|m[3]~12_combout\) # ((!\u4|u4|u1|u1|u2|co~combout\ & !\v4|m[2]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000110000000000000000000011110011101100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u4|u3|u2|ALT_INV_m[2]~9_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	datae => \u4|u4|u1|u2|u1|ALT_INV_s~0_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[1]~10_combout\,
	combout => \u4|u4|u1|u2|u1|co~1_combout\);

-- Location: MLABCELL_X9_Y4_N54
\u4|u4|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u1|co~0_combout\ = ( \u4|u3|u1|u4|u4|co~2_combout\ & ( (!\u4|u3|u1|u1|u4|s~combout\ & !\v4|m[4]~9_combout\) ) ) # ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( (!\v4|m[4]~9_combout\ & ((!\u4|u3|u1|u4|u4|co~1_combout\ & ((\u4|u2|u2|m[2]~8_combout\))) # 
-- (\u4|u3|u1|u4|u4|co~1_combout\ & (!\u4|u3|u1|u1|u4|s~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001000000011001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u4|ALT_INV_s~combout\,
	datab => \v4|ALT_INV_m[4]~9_combout\,
	datac => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	datad => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u4|u1|u2|u1|co~0_combout\);

-- Location: MLABCELL_X9_Y4_N48
\u4|u3|u2|m[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[5]~7_combout\ = ( \u4|u3|u1|u2|u1|co~0_combout\ & ( \u4|u3|u1|u4|u4|co~2_combout\ & ( !\v4|m[5]~8_combout\ $ (!\u4|u2|u2|m[4]~7_combout\) ) ) ) # ( !\u4|u3|u1|u2|u1|co~0_combout\ & ( \u4|u3|u1|u4|u4|co~2_combout\ & ( !\v4|m[5]~8_combout\ $ 
-- (!\u4|u3|u1|u2|u1|co~1_combout\ $ (!\u4|u2|u2|m[4]~7_combout\)) ) ) ) # ( \u4|u3|u1|u2|u1|co~0_combout\ & ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( !\u4|u2|u2|m[4]~7_combout\ $ (((!\v4|m[5]~8_combout\) # (!\u4|u3|u1|u4|u4|co~1_combout\))) ) ) ) # ( 
-- !\u4|u3|u1|u2|u1|co~0_combout\ & ( !\u4|u3|u1|u4|u4|co~2_combout\ & ( !\u4|u2|u2|m[4]~7_combout\ $ (((!\u4|u3|u1|u4|u4|co~1_combout\) # (!\v4|m[5]~8_combout\ $ (!\u4|u3|u1|u2|u1|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110010110000011110101101010010110100101100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u4|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[4]~7_combout\,
	datad => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datae => \u4|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u4|u3|u2|m[5]~7_combout\);

-- Location: LABCELL_X10_Y4_N48
\u4|u3|u1|u1|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u4|co~combout\ = ( \v4|m[3]~12_combout\ & ( (\u4|u2|u2|m[2]~8_combout\ & ((!\v4|m[2]~10_combout\ & ((!\u4|u3|u1|u1|u2|co~combout\) # (\u4|u2|u2|m[1]~9_combout\))) # (\v4|m[2]~10_combout\ & (!\u4|u3|u1|u1|u2|co~combout\ & 
-- \u4|u2|u2|m[1]~9_combout\)))) ) ) # ( !\v4|m[3]~12_combout\ & ( ((!\v4|m[2]~10_combout\ & ((!\u4|u3|u1|u1|u2|co~combout\) # (\u4|u2|u2|m[1]~9_combout\))) # (\v4|m[2]~10_combout\ & (!\u4|u3|u1|u1|u2|co~combout\ & \u4|u2|u2|m[1]~9_combout\))) # 
-- (\u4|u2|u2|m[2]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111111101111100011111110111100001000000011100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~10_combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	datad => \u4|u2|u2|ALT_INV_m[1]~9_combout\,
	dataf => \v4|ALT_INV_m[3]~12_combout\,
	combout => \u4|u3|u1|u1|u4|co~combout\);

-- Location: LABCELL_X10_Y4_N18
\u4|u2|u2|m[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[3]~13_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\u4|u2|u1|u1|u4|s~combout\ ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\ & (\u4|u1|u2|m[2]~6_combout\)) # (\u4|u2|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u2|u1|u1|u4|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u1|u2|ALT_INV_m[2]~6_combout\,
	datac => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u2|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u2|u2|m[3]~13_combout\);

-- Location: MLABCELL_X9_Y4_N45
\u4|u3|u2|m[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[4]~8_combout\ = ( \u4|u2|u2|m[3]~13_combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\ & ((!\u4|u3|u1|u4|u4|co~1_combout\) # (!\u4|u3|u1|u1|u4|co~combout\ $ (!\v4|m[4]~9_combout\)))) # (\u4|u3|u1|u4|u4|co~2_combout\ & ((!\u4|u3|u1|u1|u4|co~combout\ 
-- $ (!\v4|m[4]~9_combout\)))) ) ) # ( !\u4|u2|u2|m[3]~13_combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\ & (\u4|u3|u1|u4|u4|co~1_combout\ & (!\u4|u3|u1|u1|u4|co~combout\ $ (\v4|m[4]~9_combout\)))) # (\u4|u3|u1|u4|u4|co~2_combout\ & 
-- ((!\u4|u3|u1|u1|u4|co~combout\ $ (\v4|m[4]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000111011100000000011110001111111110001000111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u3|u1|u1|u4|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[4]~9_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[3]~13_combout\,
	combout => \u4|u3|u2|m[4]~8_combout\);

-- Location: MLABCELL_X9_Y4_N36
\u4|u4|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u3|co~combout\ = ( \u4|u3|u2|m[4]~8_combout\ & ( \v4|m[6]~7_combout\ & ( (!\u4|u3|u2|m[5]~7_combout\) # ((\v4|m[5]~8_combout\ & (!\u4|u4|u1|u2|u1|co~1_combout\ & !\u4|u4|u1|u2|u1|co~0_combout\))) ) ) ) # ( !\u4|u3|u2|m[4]~8_combout\ & ( 
-- \v4|m[6]~7_combout\ & ( ((!\u4|u3|u2|m[5]~7_combout\) # ((!\u4|u4|u1|u2|u1|co~1_combout\ & !\u4|u4|u1|u2|u1|co~0_combout\))) # (\v4|m[5]~8_combout\) ) ) ) # ( \u4|u3|u2|m[4]~8_combout\ & ( !\v4|m[6]~7_combout\ & ( (\v4|m[5]~8_combout\ & 
-- (!\u4|u4|u1|u2|u1|co~1_combout\ & (!\u4|u4|u1|u2|u1|co~0_combout\ & !\u4|u3|u2|m[5]~7_combout\))) ) ) ) # ( !\u4|u3|u2|m[4]~8_combout\ & ( !\v4|m[6]~7_combout\ & ( (!\u4|u3|u2|m[5]~7_combout\ & (((!\u4|u4|u1|u2|u1|co~1_combout\ & 
-- !\u4|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010100000000010000000000000011111111110101011111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u4|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u4|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[5]~7_combout\,
	datae => \u4|u3|u2|ALT_INV_m[4]~8_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u4|u4|u1|u2|u3|co~combout\);

-- Location: LABCELL_X14_Y5_N15
\u4|u3|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u1|s~combout\ = ( \u4|u2|u2|m[7]~4_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\u4|u3|u1|u2|u3|co~combout\ & ((!\v4|m[7]~6_combout\) # (\u4|u2|u2|m[6]~5_combout\))) # (\u4|u3|u1|u2|u3|co~combout\ & (!\v4|m[7]~6_combout\ & 
-- \u4|u2|u2|m[6]~5_combout\)))) ) ) # ( !\u4|u2|u2|m[7]~4_combout\ & ( !\v4|m[8]~13_combout\ $ (((!\u4|u3|u1|u2|u3|co~combout\ & (\v4|m[7]~6_combout\ & !\u4|u2|u2|m[6]~5_combout\)) # (\u4|u3|u1|u2|u3|co~combout\ & ((!\u4|u2|u2|m[6]~5_combout\) # 
-- (\v4|m[7]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111100001100001111110000101111000000111100111100000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[7]~6_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u4|u2|u2|ALT_INV_m[6]~5_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	combout => \u4|u3|u1|u3|u1|s~combout\);

-- Location: LABCELL_X14_Y5_N54
\u4|u4|u1|u3|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u2|s~0_combout\ = ( \u4|u2|u2|m[7]~4_combout\ & ( !\v4|m[9]~5_combout\ $ (((\u4|u3|u1|u3|u1|s~combout\ & ((\u4|u3|u1|u4|u4|co~2_combout\) # (\u4|u3|u1|u4|u4|co~1_combout\))))) ) ) # ( !\u4|u2|u2|m[7]~4_combout\ & ( !\v4|m[9]~5_combout\ $ 
-- ((((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)) # (\u4|u3|u1|u3|u1|s~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111111110000100001111111000010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u4|u3|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	combout => \u4|u4|u1|u3|u2|s~0_combout\);

-- Location: LABCELL_X14_Y5_N57
\u4|u3|u2|m[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[7]~5_combout\ = ( \u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u2|u2|m[6]~5_combout\ $ ((((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[7]~6_combout\))) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u2|u2|m[6]~5_combout\ 
-- $ (((!\v4|m[7]~6_combout\) # ((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001110000100011110111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[7]~6_combout\,
	datad => \u4|u2|u2|ALT_INV_m[6]~5_combout\,
	dataf => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[7]~5_combout\);

-- Location: MLABCELL_X9_Y4_N6
\u4|u3|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u2|co~combout\ = ( \u4|u2|u2|m[4]~7_combout\ & ( (\v4|m[5]~8_combout\ & (!\u4|u3|u1|u2|u1|co~1_combout\ & !\u4|u3|u1|u2|u1|co~0_combout\)) ) ) # ( !\u4|u2|u2|m[4]~7_combout\ & ( ((!\u4|u3|u1|u2|u1|co~1_combout\ & 
-- !\u4|u3|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111010101110101011101010101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u4|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u4|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[4]~7_combout\,
	combout => \u4|u3|u1|u2|u2|co~combout\);

-- Location: MLABCELL_X9_Y4_N42
\u4|u3|u2|m[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[6]~6_combout\ = ( \u4|u3|u1|u2|u2|co~combout\ & ( !\u4|u2|u2|m[5]~6_combout\ $ ((((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[6]~7_combout\))) ) ) # ( !\u4|u3|u1|u2|u2|co~combout\ & ( !\u4|u2|u2|m[5]~6_combout\ 
-- $ (((!\v4|m[6]~7_combout\) # ((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100001111000000011110111100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[5]~6_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[6]~6_combout\);

-- Location: LABCELL_X14_Y5_N0
\u4|u4|u1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u2|co~1_combout\ = ( \v4|m[7]~6_combout\ & ( \u4|u3|u2|m[6]~6_combout\ & ( (!\u4|u4|u1|u3|u2|s~0_combout\ & ((!\u4|u4|u1|u2|u3|co~combout\ & ((!\v4|m[8]~13_combout\) # (\u4|u3|u2|m[7]~5_combout\))) # (\u4|u4|u1|u2|u3|co~combout\ & 
-- (!\v4|m[8]~13_combout\ & \u4|u3|u2|m[7]~5_combout\)))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( \u4|u3|u2|m[6]~6_combout\ & ( (!\u4|u4|u1|u3|u2|s~0_combout\ & ((!\v4|m[8]~13_combout\) # (\u4|u3|u2|m[7]~5_combout\))) ) ) ) # ( \v4|m[7]~6_combout\ & ( 
-- !\u4|u3|u2|m[6]~6_combout\ & ( (!\v4|m[8]~13_combout\ & (!\u4|u4|u1|u3|u2|s~0_combout\ & \u4|u3|u2|m[7]~5_combout\)) ) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u4|u3|u2|m[6]~6_combout\ & ( (!\u4|u4|u1|u3|u2|s~0_combout\ & ((!\u4|u4|u1|u2|u3|co~combout\ & 
-- ((!\v4|m[8]~13_combout\) # (\u4|u3|u2|m[7]~5_combout\))) # (\u4|u4|u1|u2|u3|co~combout\ & (!\v4|m[8]~13_combout\ & \u4|u3|u2|m[7]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000000000001100000011000000111100001000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u4|u4|u1|u3|u2|ALT_INV_s~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[7]~5_combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[6]~6_combout\,
	combout => \u4|u4|u1|u3|u2|co~1_combout\);

-- Location: LABCELL_X14_Y5_N36
\u4|u3|u2|m[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[10]~3_combout\ = ( \u4|u3|u1|u4|u4|co~1_combout\ & ( \u4|u2|u2|m[9]~3_combout\ & ( !\v4|m[10]~4_combout\ $ (((!\u4|u3|u1|u3|u2|co~1_combout\ & !\u4|u3|u1|u3|u2|co~0_combout\))) ) ) ) # ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( 
-- \u4|u2|u2|m[9]~3_combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\) # (!\v4|m[10]~4_combout\ $ (((!\u4|u3|u1|u3|u2|co~1_combout\ & !\u4|u3|u1|u3|u2|co~0_combout\)))) ) ) ) # ( \u4|u3|u1|u4|u4|co~1_combout\ & ( !\u4|u2|u2|m[9]~3_combout\ & ( 
-- !\v4|m[10]~4_combout\ $ (((\u4|u3|u1|u3|u2|co~0_combout\) # (\u4|u3|u1|u3|u2|co~1_combout\))) ) ) ) # ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( !\u4|u2|u2|m[9]~3_combout\ & ( (\u4|u3|u1|u4|u4|co~2_combout\ & (!\v4|m[10]~4_combout\ $ 
-- (((\u4|u3|u1|u3|u2|co~0_combout\) # (\u4|u3|u1|u3|u2|co~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000011101001010000111111011110111111000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u2|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u4|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datae => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[9]~3_combout\,
	combout => \u4|u3|u2|m[10]~3_combout\);

-- Location: LABCELL_X10_Y5_N6
\u4|u2|u2|m[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u2|m[8]~12_combout\ = ( \u4|u2|u1|u4|u4|co~1_combout\ & ( !\u4|u2|u1|u3|u1|s~combout\ ) ) # ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( (!\u4|u2|u1|u4|u4|co~2_combout\ & ((\u4|u1|u2|m[7]~2_combout\))) # (\u4|u2|u1|u4|u4|co~2_combout\ & 
-- (!\u4|u2|u1|u3|u1|s~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u3|u1|ALT_INV_s~combout\,
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u1|u2|ALT_INV_m[7]~2_combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u2|u2|m[8]~12_combout\);

-- Location: LABCELL_X14_Y5_N12
\u4|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u1|co~combout\ = ( \u4|u2|u2|m[7]~4_combout\ & ( (!\v4|m[8]~13_combout\) # ((!\u4|u3|u1|u2|u3|co~combout\ & ((!\v4|m[7]~6_combout\) # (\u4|u2|u2|m[6]~5_combout\))) # (\u4|u3|u1|u2|u3|co~combout\ & (!\v4|m[7]~6_combout\ & 
-- \u4|u2|u2|m[6]~5_combout\))) ) ) # ( !\u4|u2|u2|m[7]~4_combout\ & ( (!\v4|m[8]~13_combout\ & ((!\u4|u3|u1|u2|u3|co~combout\ & ((!\v4|m[7]~6_combout\) # (\u4|u2|u2|m[6]~5_combout\))) # (\u4|u3|u1|u2|u3|co~combout\ & (!\v4|m[7]~6_combout\ & 
-- \u4|u2|u2|m[6]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000100000001110000011111000111111101111100011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[7]~6_combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u4|u2|u2|ALT_INV_m[6]~5_combout\,
	dataf => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	combout => \u4|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X14_Y5_N21
\u4|u3|u2|m[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[9]~4_combout\ = ( \u4|u3|u1|u3|u1|co~combout\ & ( !\u4|u2|u2|m[8]~12_combout\ $ (((!\v4|m[9]~5_combout\) # ((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u4|u3|u1|u3|u1|co~combout\ & ( 
-- !\u4|u2|u2|m[8]~12_combout\ $ ((((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)) # (\v4|m[9]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u2|ALT_INV_m[8]~12_combout\,
	datad => \v4|ALT_INV_m[9]~5_combout\,
	dataf => \u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[9]~4_combout\);

-- Location: LABCELL_X14_Y5_N18
\u4|u4|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u2|co~0_combout\ = ( \u4|u2|u2|m[7]~4_combout\ & ( (!\v4|m[9]~5_combout\ & ((!\u4|u3|u1|u3|u1|s~combout\) # ((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)))) ) ) # ( !\u4|u2|u2|m[7]~4_combout\ & ( (!\v4|m[9]~5_combout\ & 
-- (!\u4|u3|u1|u3|u1|s~combout\ & ((\u4|u3|u1|u4|u4|co~2_combout\) # (\u4|u3|u1|u4|u4|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000011110000100000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \v4|ALT_INV_m[9]~5_combout\,
	datad => \u4|u3|u1|u3|u1|ALT_INV_s~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	combout => \u4|u4|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X14_Y5_N6
\u4|u4|u1|u3|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u4|co~combout\ = ( \u4|u3|u2|m[9]~4_combout\ & ( \u4|u4|u1|u3|u2|co~0_combout\ & ( (!\u4|u3|u2|m[10]~3_combout\ & \v4|m[11]~3_combout\) ) ) ) # ( !\u4|u3|u2|m[9]~4_combout\ & ( \u4|u4|u1|u3|u2|co~0_combout\ & ( (!\v4|m[10]~4_combout\ & 
-- (!\u4|u3|u2|m[10]~3_combout\ & \v4|m[11]~3_combout\)) # (\v4|m[10]~4_combout\ & ((!\u4|u3|u2|m[10]~3_combout\) # (\v4|m[11]~3_combout\))) ) ) ) # ( \u4|u3|u2|m[9]~4_combout\ & ( !\u4|u4|u1|u3|u2|co~0_combout\ & ( (!\u4|u3|u2|m[10]~3_combout\ & 
-- (((!\u4|u4|u1|u3|u2|co~1_combout\ & \v4|m[10]~4_combout\)) # (\v4|m[11]~3_combout\))) # (\u4|u3|u2|m[10]~3_combout\ & (!\u4|u4|u1|u3|u2|co~1_combout\ & (\v4|m[10]~4_combout\ & \v4|m[11]~3_combout\))) ) ) ) # ( !\u4|u3|u2|m[9]~4_combout\ & ( 
-- !\u4|u4|u1|u3|u2|co~0_combout\ & ( (!\u4|u3|u2|m[10]~3_combout\ & ((!\u4|u4|u1|u3|u2|co~1_combout\) # ((\v4|m[11]~3_combout\) # (\v4|m[10]~4_combout\)))) # (\u4|u3|u2|m[10]~3_combout\ & (\v4|m[11]~3_combout\ & ((!\u4|u4|u1|u3|u2|co~1_combout\) # 
-- (\v4|m[10]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011111011001000001111001000110000111100110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u4|u3|u2|ALT_INV_m[10]~3_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \u4|u3|u2|ALT_INV_m[9]~4_combout\,
	dataf => \u4|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u4|u1|u3|u4|co~combout\);

-- Location: MLABCELL_X13_Y5_N42
\u4|u4|u1|u4|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u3|co~1_combout\ = ( \u4|u3|u2|m[11]~2_combout\ & ( \u4|u4|u1|u3|u4|co~combout\ & ( (!\u4|u4|u1|u4|u3|s~0_combout\ & ((!\v4|m[13]~1_combout\ & ((!\v4|m[12]~2_combout\) # (\u4|u3|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & 
-- (!\v4|m[12]~2_combout\ & \u4|u3|u2|m[12]~1_combout\)))) ) ) ) # ( !\u4|u3|u2|m[11]~2_combout\ & ( \u4|u4|u1|u3|u4|co~combout\ & ( (!\u4|u4|u1|u4|u3|s~0_combout\ & (!\v4|m[13]~1_combout\ & \u4|u3|u2|m[12]~1_combout\)) ) ) ) # ( \u4|u3|u2|m[11]~2_combout\ & 
-- ( !\u4|u4|u1|u3|u4|co~combout\ & ( (!\u4|u4|u1|u4|u3|s~0_combout\ & ((!\v4|m[13]~1_combout\) # (\u4|u3|u2|m[12]~1_combout\))) ) ) ) # ( !\u4|u3|u2|m[11]~2_combout\ & ( !\u4|u4|u1|u3|u4|co~combout\ & ( (!\u4|u4|u1|u4|u3|s~0_combout\ & 
-- ((!\v4|m[13]~1_combout\ & ((!\v4|m[12]~2_combout\) # (\u4|u3|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & (!\v4|m[12]~2_combout\ & \u4|u3|u2|m[12]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010101000100010001010101000000000100010001000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_s~0_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \v4|ALT_INV_m[12]~2_combout\,
	datad => \u4|u3|u2|ALT_INV_m[12]~1_combout\,
	datae => \u4|u3|u2|ALT_INV_m[11]~2_combout\,
	dataf => \u4|u4|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u4|u4|u1|u4|u3|co~1_combout\);

-- Location: MLABCELL_X13_Y5_N54
\u4|u4|u1|u4|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u3|co~0_combout\ = ( \v4|m[13]~1_combout\ & ( \u4|u3|u1|u4|u4|co~1_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u4|u3|u1|u4|u1|co~combout\ $ (!\u4|u2|u2|m[12]~0_combout\))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( \u4|u3|u1|u4|u4|co~1_combout\ & ( 
-- (!\v4|m[14]~0_combout\ & (!\u4|u3|u1|u4|u1|co~combout\ $ (\u4|u2|u2|m[12]~0_combout\))) ) ) ) # ( \v4|m[13]~1_combout\ & ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u4|u2|u2|m[12]~0_combout\ $ (((!\u4|u3|u1|u4|u1|co~combout\) # 
-- (!\u4|u3|u1|u4|u4|co~2_combout\))))) ) ) ) # ( !\v4|m[13]~1_combout\ & ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( (!\v4|m[14]~0_combout\ & (!\u4|u2|u2|m[12]~0_combout\ $ (((!\u4|u3|u1|u4|u4|co~2_combout\) # (\u4|u3|u1|u4|u1|co~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011000100000001001100100010001000010001000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u1|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u2|u2|ALT_INV_m[12]~0_combout\,
	datae => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u4|u1|u4|u3|co~0_combout\);

-- Location: MLABCELL_X13_Y5_N33
\u4|u3|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u2|co~combout\ = ( \u4|u2|u2|m[12]~0_combout\ & ( (!\v4|m[13]~1_combout\) # ((!\v4|m[12]~2_combout\ & ((!\u4|u3|u1|u3|u4|co~combout\) # (\u4|u2|u2|m[11]~1_combout\))) # (\v4|m[12]~2_combout\ & (\u4|u2|u2|m[11]~1_combout\ & 
-- !\u4|u3|u1|u3|u4|co~combout\))) ) ) # ( !\u4|u2|u2|m[12]~0_combout\ & ( (!\v4|m[13]~1_combout\ & ((!\v4|m[12]~2_combout\ & ((!\u4|u3|u1|u3|u4|co~combout\) # (\u4|u2|u2|m[11]~1_combout\))) # (\v4|m[12]~2_combout\ & (\u4|u2|u2|m[11]~1_combout\ & 
-- !\u4|u3|u1|u3|u4|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000001000100011000000100011101111110011101110111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[11]~1_combout\,
	datad => \u4|u3|u1|u3|u4|ALT_INV_co~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[12]~0_combout\,
	combout => \u4|u3|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X13_Y5_N15
\u4|u3|u2|m[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[14]~0_combout\ = ( \u4|u3|u1|u4|u2|co~combout\ & ( !\u4|u2|u2|m[13]~10_combout\ $ (((!\v4|m[14]~0_combout\) # ((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u4|u3|u1|u4|u2|co~combout\ & ( 
-- !\u4|u2|u2|m[13]~10_combout\ $ ((((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[14]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[13]~10_combout\,
	datad => \v4|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u3|u1|u4|u2|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[14]~0_combout\);

-- Location: LABCELL_X14_Y4_N30
\u4|u4|u2|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[0]~0_combout\ = ( \u1|u2|u1|u4|u4|co~0_combout\ & ( \a[0]~input_o\ & ( (!\b[0]~input_o\) # ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( 
-- \a[0]~input_o\ & ( (!\b[0]~input_o\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u3|u2|m[14]~0_combout\))) ) ) ) # ( \u1|u2|u1|u4|u4|co~0_combout\ & ( !\a[0]~input_o\ & ( (\b[0]~input_o\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( !\u1|u2|u1|u4|u4|co~0_combout\ & ( !\a[0]~input_o\ & ( (\b[0]~input_o\ & (((\u4|u3|u2|m[14]~0_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000000000000011111111000111100001111111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u4|u4|u2|m[0]~0_combout\);

-- Location: MLABCELL_X13_Y4_N45
\u4|u3|u2|m[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[0]~11_combout\ = ( \v2|m[1]~13_combout\ & ( (!\b[0]~input_o\) # ((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) ) ) # ( !\v2|m[1]~13_combout\ & ( (\b[0]~input_o\ & ((\u4|u3|u1|u4|u4|co~1_combout\) # 
-- (\u4|u3|u1|u4|u4|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	dataf => \v2|ALT_INV_m[1]~13_combout\,
	combout => \u4|u3|u2|m[0]~11_combout\);

-- Location: MLABCELL_X13_Y4_N18
\u4|u4|u1|u1|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u1|u2|s~combout\ = ( \v4|m[1]~11_combout\ & ( \b[0]~input_o\ & ( !\v2|m[1]~13_combout\ $ (!\a[0]~input_o\ $ (((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\v4|m[1]~11_combout\ & ( \b[0]~input_o\ & ( 
-- !\v2|m[1]~13_combout\ $ (!\a[0]~input_o\ $ (((\u4|u3|u1|u4|u4|co~1_combout\) # (\u4|u3|u1|u4|u4|co~2_combout\)))) ) ) ) # ( \v4|m[1]~11_combout\ & ( !\b[0]~input_o\ & ( \v2|m[1]~13_combout\ ) ) ) # ( !\v4|m[1]~11_combout\ & ( !\b[0]~input_o\ & ( 
-- !\v2|m[1]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111101111000100001111000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v2|ALT_INV_m[1]~13_combout\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \v4|ALT_INV_m[1]~11_combout\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \u4|u4|u1|u1|u2|s~combout\);

-- Location: MLABCELL_X13_Y4_N57
\u4|u4|u2|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[1]~1_combout\ = ( \u4|u3|u2|m[0]~11_combout\ & ( \u4|u4|u1|u1|u2|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & \u1|u2|u1|u4|u4|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[0]~11_combout\ & ( !\u4|u4|u1|u1|u2|s~combout\ ) ) # ( !\u4|u3|u2|m[0]~11_combout\ & ( 
-- !\u4|u4|u1|u1|u2|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101111111111111111100000000000000001000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[0]~11_combout\,
	dataf => \u4|u4|u1|u1|u2|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[1]~1_combout\);

-- Location: MLABCELL_X13_Y4_N42
\v8|m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[1]~0_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[1]~1_combout\ $ (!\u4|u4|u2|m[0]~0_combout\) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	datac => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[1]~0_combout\);

-- Location: LABCELL_X12_Y5_N27
\u4|u4|u1|u1|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u1|u3|s~combout\ = ( \u4|u4|u1|u1|u2|co~combout\ & ( !\u4|u3|u2|m[1]~10_combout\ $ (!\v4|m[2]~10_combout\) ) ) # ( !\u4|u4|u1|u1|u2|co~combout\ & ( !\u4|u3|u2|m[1]~10_combout\ $ (\v4|m[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[1]~10_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	dataf => \u4|u4|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u4|u1|u1|u3|s~combout\);

-- Location: MLABCELL_X13_Y4_N33
\u4|u4|u2|m[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[2]~2_combout\ = ( \u4|u3|u2|m[1]~10_combout\ & ( \u4|u4|u1|u1|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & \u1|u2|u1|u4|u4|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[1]~10_combout\ & ( !\u4|u4|u1|u1|u3|s~combout\ ) ) # ( !\u4|u3|u2|m[1]~10_combout\ & ( 
-- !\u4|u4|u1|u1|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101111111111111111100000000000000001000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[1]~10_combout\,
	dataf => \u4|u4|u1|u1|u3|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[2]~2_combout\);

-- Location: LABCELL_X12_Y4_N27
\v8|m[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[2]~1_combout\ = ( \u4|u4|u2|m[0]~0_combout\ & ( !\a[15]~input_o\ $ (!\u4|u4|u2|m[2]~2_combout\) ) ) # ( !\u4|u4|u2|m[0]~0_combout\ & ( !\u4|u4|u2|m[2]~2_combout\ $ (((!\a[15]~input_o\) # (!\u4|u4|u2|m[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datac => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	datad => \u4|u4|u2|ALT_INV_m[2]~2_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	combout => \v8|m[2]~1_combout\);

-- Location: LABCELL_X12_Y5_N24
\u4|u4|u1|u1|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u1|u4|s~combout\ = ( \u4|u4|u1|u1|u2|co~combout\ & ( !\u4|u3|u2|m[2]~9_combout\ $ (!\v4|m[3]~12_combout\ $ (((\u4|u3|u2|m[1]~10_combout\ & !\v4|m[2]~10_combout\)))) ) ) # ( !\u4|u4|u1|u1|u2|co~combout\ & ( !\u4|u3|u2|m[2]~9_combout\ $ 
-- (!\v4|m[3]~12_combout\ $ (((!\v4|m[2]~10_combout\) # (\u4|u3|u2|m[1]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110101001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[1]~10_combout\,
	datab => \v4|ALT_INV_m[2]~10_combout\,
	datac => \u4|u3|u2|ALT_INV_m[2]~9_combout\,
	datad => \v4|ALT_INV_m[3]~12_combout\,
	dataf => \u4|u4|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u4|u1|u1|u4|s~combout\);

-- Location: MLABCELL_X13_Y4_N30
\u4|u4|u2|m[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[3]~3_combout\ = ( \u4|u3|u2|m[2]~9_combout\ & ( \u4|u4|u1|u1|u4|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (\u1|u2|u1|u4|u4|co~0_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[2]~9_combout\ & ( !\u4|u4|u1|u1|u4|s~combout\ ) ) # ( !\u4|u3|u2|m[2]~9_combout\ & ( 
-- !\u4|u4|u1|u1|u4|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111110101111111111111111100000000000000001000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[2]~9_combout\,
	dataf => \u4|u4|u1|u1|u4|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[3]~3_combout\);

-- Location: MLABCELL_X13_Y4_N6
\v8|m[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[3]~2_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[3]~3_combout\ $ (((!\u4|u4|u2|m[2]~2_combout\ & (!\u4|u4|u2|m[0]~0_combout\ & !\u4|u4|u2|m[1]~1_combout\)))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[3]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101101100110011000110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[2]~2_combout\,
	datab => \u4|u4|u2|ALT_INV_m[3]~3_combout\,
	datac => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	datad => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[3]~2_combout\);

-- Location: MLABCELL_X9_Y4_N12
\u4|u4|u1|u2|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u1|s~combout\ = ( \u4|u4|u1|u2|u1|s~0_combout\ & ( \u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & (((\u4|u4|u1|u1|u2|co~combout\ & \v4|m[2]~10_combout\)) # (\v4|m[3]~12_combout\))) # (\u4|u3|u2|m[2]~9_combout\ & 
-- (\u4|u4|u1|u1|u2|co~combout\ & (\v4|m[3]~12_combout\ & \v4|m[2]~10_combout\))) ) ) ) # ( !\u4|u4|u1|u2|u1|s~0_combout\ & ( \u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & (!\v4|m[3]~12_combout\ & ((!\u4|u4|u1|u1|u2|co~combout\) # 
-- (!\v4|m[2]~10_combout\)))) # (\u4|u3|u2|m[2]~9_combout\ & ((!\u4|u4|u1|u1|u2|co~combout\) # ((!\v4|m[3]~12_combout\) # (!\v4|m[2]~10_combout\)))) ) ) ) # ( \u4|u4|u1|u2|u1|s~0_combout\ & ( !\u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & 
-- (((\v4|m[2]~10_combout\) # (\v4|m[3]~12_combout\)) # (\u4|u4|u1|u1|u2|co~combout\))) # (\u4|u3|u2|m[2]~9_combout\ & (\v4|m[3]~12_combout\ & ((\v4|m[2]~10_combout\) # (\u4|u4|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u4|u4|u1|u2|u1|s~0_combout\ & ( 
-- !\u4|u3|u2|m[1]~10_combout\ & ( (!\u4|u3|u2|m[2]~9_combout\ & (!\u4|u4|u1|u1|u2|co~combout\ & (!\v4|m[3]~12_combout\ & !\v4|m[2]~10_combout\))) # (\u4|u3|u2|m[2]~9_combout\ & ((!\v4|m[3]~12_combout\) # ((!\u4|u4|u1|u1|u2|co~combout\ & 
-- !\v4|m[2]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000110000010011011100111111110011101100100000110001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u4|u3|u2|ALT_INV_m[2]~9_combout\,
	datac => \v4|ALT_INV_m[3]~12_combout\,
	datad => \v4|ALT_INV_m[2]~10_combout\,
	datae => \u4|u4|u1|u2|u1|ALT_INV_s~0_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[1]~10_combout\,
	combout => \u4|u4|u1|u2|u1|s~combout\);

-- Location: LABCELL_X10_Y4_N57
\u4|u3|u2|m[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[3]~12_combout\ = ( \u4|u2|u2|m[2]~8_combout\ & ( (!\u4|u3|u1|u1|u4|s~combout\) # ((!\u4|u3|u1|u4|u4|co~1_combout\ & !\u4|u3|u1|u4|u4|co~2_combout\)) ) ) # ( !\u4|u2|u2|m[2]~8_combout\ & ( (!\u4|u3|u1|u1|u4|s~combout\ & 
-- ((\u4|u3|u1|u4|u4|co~2_combout\) # (\u4|u3|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u4|u3|u1|u1|u4|ALT_INV_s~combout\,
	dataf => \u4|u2|u2|ALT_INV_m[2]~8_combout\,
	combout => \u4|u3|u2|m[3]~12_combout\);

-- Location: LABCELL_X14_Y4_N36
\u4|u4|u2|m[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[4]~4_combout\ = ( \u4|u3|u2|m[3]~12_combout\ & ( \u4|u3|u2|m[14]~0_combout\ & ( (!\u4|u4|u1|u2|u1|s~combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & (\u1|u2|u1|u4|u4|co~0_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) ) ) ) # ( 
-- !\u4|u3|u2|m[3]~12_combout\ & ( \u4|u3|u2|m[14]~0_combout\ & ( (!\u4|u4|u1|u2|u1|s~combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) ) ) # ( \u4|u3|u2|m[3]~12_combout\ & ( 
-- !\u4|u3|u2|m[14]~0_combout\ & ( (!\u4|u4|u1|u2|u1|s~combout\) # (((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\)) ) ) ) # ( !\u4|u3|u2|m[3]~12_combout\ & ( !\u4|u3|u2|m[14]~0_combout\ & ( 
-- (!\u4|u4|u1|u2|u1|s~combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000111011111100111111000100110011001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datab => \u4|u4|u1|u2|u1|ALT_INV_s~combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[3]~12_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	combout => \u4|u4|u2|m[4]~4_combout\);

-- Location: MLABCELL_X13_Y4_N12
\v8|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[4]~3_combout\ = ( \u4|u4|u2|m[4]~4_combout\ & ( \a[15]~input_o\ & ( (!\u4|u4|u2|m[0]~0_combout\ & (!\u4|u4|u2|m[3]~3_combout\ & (!\u4|u4|u2|m[2]~2_combout\ & !\u4|u4|u2|m[1]~1_combout\))) ) ) ) # ( !\u4|u4|u2|m[4]~4_combout\ & ( \a[15]~input_o\ & ( 
-- (((\u4|u4|u2|m[1]~1_combout\) # (\u4|u4|u2|m[2]~2_combout\)) # (\u4|u4|u2|m[3]~3_combout\)) # (\u4|u4|u2|m[0]~0_combout\) ) ) ) # ( \u4|u4|u2|m[4]~4_combout\ & ( !\a[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	datab => \u4|u4|u2|ALT_INV_m[3]~3_combout\,
	datac => \u4|u4|u2|ALT_INV_m[2]~2_combout\,
	datad => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	datae => \u4|u4|u2|ALT_INV_m[4]~4_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[4]~3_combout\);

-- Location: MLABCELL_X13_Y4_N9
\v7|u1|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|u1|u4|co~0_combout\ = ( !\u4|u4|u2|m[0]~0_combout\ & ( (!\u4|u4|u2|m[2]~2_combout\ & (!\u4|u4|u2|m[3]~3_combout\ & !\u4|u4|u2|m[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[2]~2_combout\,
	datab => \u4|u4|u2|ALT_INV_m[3]~3_combout\,
	datac => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	combout => \v7|u1|u4|co~0_combout\);

-- Location: MLABCELL_X9_Y4_N9
\u4|u4|u1|u2|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u2|s~combout\ = ( \u4|u4|u1|u2|u1|co~1_combout\ & ( !\v4|m[5]~8_combout\ $ (\u4|u3|u2|m[4]~8_combout\) ) ) # ( !\u4|u4|u1|u2|u1|co~1_combout\ & ( !\v4|m[5]~8_combout\ $ (!\u4|u3|u2|m[4]~8_combout\ $ (\u4|u4|u1|u2|u1|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datac => \u4|u3|u2|ALT_INV_m[4]~8_combout\,
	datad => \u4|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u4|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u4|u4|u1|u2|u2|s~combout\);

-- Location: MLABCELL_X9_Y4_N21
\u4|u4|u2|m[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[5]~5_combout\ = ( \u4|u3|u2|m[4]~8_combout\ & ( \u4|u4|u1|u2|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u3|u2|m[14]~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( \u4|u3|u2|m[4]~8_combout\ & ( !\u4|u4|u1|u2|u2|s~combout\ ) ) # ( !\u4|u3|u2|m[4]~8_combout\ & ( 
-- !\u4|u4|u1|u2|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u3|u2|m[14]~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111111111111111111100000000000000001000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[4]~8_combout\,
	dataf => \u4|u4|u1|u2|u2|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[5]~5_combout\);

-- Location: LABCELL_X12_Y4_N24
\v8|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[5]~4_combout\ = ( \u4|u4|u2|m[5]~5_combout\ & ( (!\a[15]~input_o\) # ((\v7|u1|u4|co~0_combout\ & !\u4|u4|u2|m[4]~4_combout\)) ) ) # ( !\u4|u4|u2|m[5]~5_combout\ & ( (\a[15]~input_o\ & ((!\v7|u1|u4|co~0_combout\) # (\u4|u4|u2|m[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010110101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datac => \v7|u1|u4|ALT_INV_co~0_combout\,
	datad => \u4|u4|u2|ALT_INV_m[4]~4_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[5]~5_combout\,
	combout => \v8|m[5]~4_combout\);

-- Location: MLABCELL_X13_Y4_N48
\v7|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|u2|u2|co~0_combout\ = ( !\u4|u4|u2|m[4]~4_combout\ & ( !\u4|u4|u2|m[0]~0_combout\ & ( (!\u4|u4|u2|m[2]~2_combout\ & (!\u4|u4|u2|m[3]~3_combout\ & (!\u4|u4|u2|m[5]~5_combout\ & !\u4|u4|u2|m[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[2]~2_combout\,
	datab => \u4|u4|u2|ALT_INV_m[3]~3_combout\,
	datac => \u4|u4|u2|ALT_INV_m[5]~5_combout\,
	datad => \u4|u4|u2|ALT_INV_m[1]~1_combout\,
	datae => \u4|u4|u2|ALT_INV_m[4]~4_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[0]~0_combout\,
	combout => \v7|u2|u2|co~0_combout\);

-- Location: MLABCELL_X9_Y4_N24
\u4|u4|u1|u2|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u3|s~combout\ = ( \u4|u3|u2|m[4]~8_combout\ & ( \v4|m[6]~7_combout\ & ( !\u4|u3|u2|m[5]~7_combout\ $ (((!\v4|m[5]~8_combout\) # ((\u4|u4|u1|u2|u1|co~0_combout\) # (\u4|u4|u1|u2|u1|co~1_combout\)))) ) ) ) # ( !\u4|u3|u2|m[4]~8_combout\ & ( 
-- \v4|m[6]~7_combout\ & ( !\u4|u3|u2|m[5]~7_combout\ $ (((!\v4|m[5]~8_combout\ & ((\u4|u4|u1|u2|u1|co~0_combout\) # (\u4|u4|u1|u2|u1|co~1_combout\))))) ) ) ) # ( \u4|u3|u2|m[4]~8_combout\ & ( !\v4|m[6]~7_combout\ & ( !\u4|u3|u2|m[5]~7_combout\ $ 
-- (((\v4|m[5]~8_combout\ & (!\u4|u4|u1|u2|u1|co~1_combout\ & !\u4|u4|u1|u2|u1|co~0_combout\)))) ) ) ) # ( !\u4|u3|u2|m[4]~8_combout\ & ( !\v4|m[6]~7_combout\ & ( !\u4|u3|u2|m[5]~7_combout\ $ ((((!\u4|u4|u1|u2|u1|co~1_combout\ & 
-- !\u4|u4|u1|u2|u1|co~0_combout\)) # (\v4|m[5]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101011010101101111110100000011010101001010100100000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~8_combout\,
	datab => \u4|u4|u1|u2|u1|ALT_INV_co~1_combout\,
	datac => \u4|u4|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[5]~7_combout\,
	datae => \u4|u3|u2|ALT_INV_m[4]~8_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u4|u4|u1|u2|u3|s~combout\);

-- Location: MLABCELL_X9_Y4_N18
\u4|u4|u2|m[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[6]~6_combout\ = ( \u4|u3|u2|m[5]~7_combout\ & ( \u4|u4|u1|u2|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & \u1|u2|u1|u4|u4|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[5]~7_combout\ & ( !\u4|u4|u1|u2|u3|s~combout\ ) ) # ( !\u4|u3|u2|m[5]~7_combout\ & ( 
-- !\u4|u4|u1|u2|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~1_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111111111111111111100000000000000001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[5]~7_combout\,
	dataf => \u4|u4|u1|u2|u3|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[6]~6_combout\);

-- Location: LABCELL_X16_Y4_N3
\v8|m[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[6]~5_combout\ = ( \a[15]~input_o\ & ( !\v7|u2|u2|co~0_combout\ $ (\u4|u4|u2|m[6]~6_combout\) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[6]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v7|u2|u2|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[6]~5_combout\);

-- Location: MLABCELL_X13_Y4_N27
\u4|u4|u1|u2|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u2|u4|s~combout\ = ( \u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u2|u3|co~combout\ $ (!\v4|m[7]~6_combout\) ) ) # ( !\u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u2|u3|co~combout\ $ (\v4|m[7]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u1|u2|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[6]~6_combout\,
	combout => \u4|u4|u1|u2|u4|s~combout\);

-- Location: MLABCELL_X13_Y4_N54
\u4|u4|u2|m[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[7]~7_combout\ = ( \u4|u3|u2|m[6]~6_combout\ & ( \u4|u4|u1|u2|u4|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (\u1|u2|u1|u4|u4|co~0_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u2|u4|s~combout\ ) ) # ( !\u4|u3|u2|m[6]~6_combout\ & ( 
-- !\u4|u4|u1|u2|u4|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111110101111111111111111100000000000000001000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[6]~6_combout\,
	dataf => \u4|u4|u1|u2|u4|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[7]~7_combout\);

-- Location: LABCELL_X16_Y4_N36
\v8|m[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[7]~6_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[7]~7_combout\ $ (((\v7|u2|u2|co~0_combout\ & !\u4|u4|u2|m[6]~6_combout\))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[7]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110100101111100001010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v7|u2|u2|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|ALT_INV_m[7]~7_combout\,
	datad => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[7]~6_combout\);

-- Location: MLABCELL_X13_Y4_N24
\u4|u4|u1|u3|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u1|s~combout\ = ( \u4|u3|u2|m[6]~6_combout\ & ( !\v4|m[8]~13_combout\ $ (!\u4|u3|u2|m[7]~5_combout\ $ (((!\v4|m[7]~6_combout\) # (!\u4|u4|u1|u2|u3|co~combout\)))) ) ) # ( !\u4|u3|u2|m[6]~6_combout\ & ( !\v4|m[8]~13_combout\ $ 
-- (!\u4|u3|u2|m[7]~5_combout\ $ (((!\v4|m[7]~6_combout\ & !\u4|u4|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011101111000100001110111100011100001000111101110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~6_combout\,
	datab => \u4|u4|u1|u2|u3|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[8]~13_combout\,
	datad => \u4|u3|u2|ALT_INV_m[7]~5_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[6]~6_combout\,
	combout => \u4|u4|u1|u3|u1|s~combout\);

-- Location: LABCELL_X16_Y4_N45
\u4|u4|u2|m[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[8]~8_combout\ = ( \u4|u3|u2|m[7]~5_combout\ & ( \u4|u4|u1|u3|u1|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u3|u2|m[14]~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( \u4|u3|u2|m[7]~5_combout\ & ( !\u4|u4|u1|u3|u1|s~combout\ ) ) # ( !\u4|u3|u2|m[7]~5_combout\ & ( 
-- !\u4|u4|u1|u3|u1|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u3|u2|m[14]~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011011111111111111111111100000000000000001011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[7]~5_combout\,
	dataf => \u4|u4|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[8]~8_combout\);

-- Location: LABCELL_X16_Y4_N18
\v8|m[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[8]~7_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[8]~8_combout\ $ (((!\u4|u4|u2|m[7]~7_combout\ & (\v7|u2|u2|co~0_combout\ & !\u4|u4|u2|m[6]~6_combout\)))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[8]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000110110011001100011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[7]~7_combout\,
	datab => \u4|u4|u2|ALT_INV_m[8]~8_combout\,
	datac => \v7|u2|u2|ALT_INV_co~0_combout\,
	datad => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[8]~7_combout\);

-- Location: LABCELL_X16_Y4_N0
\u4|u3|u2|m[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[8]~13_combout\ = ( \u4|u3|u1|u3|u1|s~combout\ & ( (!\u4|u3|u1|u4|u4|co~2_combout\ & (\u4|u2|u2|m[7]~4_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) ) ) # ( !\u4|u3|u1|u3|u1|s~combout\ & ( ((\u4|u3|u1|u4|u4|co~1_combout\) # 
-- (\u4|u2|u2|m[7]~4_combout\)) # (\u4|u3|u1|u4|u4|co~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datac => \u4|u2|u2|ALT_INV_m[7]~4_combout\,
	datad => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u4|u3|u1|u3|u1|ALT_INV_s~combout\,
	combout => \u4|u3|u2|m[8]~13_combout\);

-- Location: LABCELL_X14_Y5_N42
\u4|u4|u1|u3|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u2|s~combout\ = ( \v4|m[7]~6_combout\ & ( \u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u3|u2|s~0_combout\ $ (((!\u4|u4|u1|u2|u3|co~combout\ & (\v4|m[8]~13_combout\ & !\u4|u3|u2|m[7]~5_combout\)) # (\u4|u4|u1|u2|u3|co~combout\ & 
-- ((!\u4|u3|u2|m[7]~5_combout\) # (\v4|m[8]~13_combout\))))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( \u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u3|u2|s~0_combout\ $ (((\v4|m[8]~13_combout\ & !\u4|u3|u2|m[7]~5_combout\))) ) ) ) # ( \v4|m[7]~6_combout\ & ( 
-- !\u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u3|u2|s~0_combout\ $ (((!\u4|u3|u2|m[7]~5_combout\) # (\v4|m[8]~13_combout\))) ) ) ) # ( !\v4|m[7]~6_combout\ & ( !\u4|u3|u2|m[6]~6_combout\ & ( !\u4|u4|u1|u3|u2|s~0_combout\ $ (((!\u4|u4|u1|u2|u3|co~combout\ & 
-- (\v4|m[8]~13_combout\ & !\u4|u3|u2|m[7]~5_combout\)) # (\u4|u4|u1|u2|u3|co~combout\ & ((!\u4|u3|u2|m[7]~5_combout\) # (\v4|m[8]~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011111100001000011111100001111000011111100001000011111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u2|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[8]~13_combout\,
	datac => \u4|u4|u1|u3|u2|ALT_INV_s~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[7]~5_combout\,
	datae => \v4|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[6]~6_combout\,
	combout => \u4|u4|u1|u3|u2|s~combout\);

-- Location: LABCELL_X16_Y4_N42
\u4|u4|u2|m[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[9]~9_combout\ = ( \u4|u3|u2|m[8]~13_combout\ & ( \u4|u4|u1|u3|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u3|u2|m[14]~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( \u4|u3|u2|m[8]~13_combout\ & ( !\u4|u4|u1|u3|u2|s~combout\ ) ) # ( !\u4|u3|u2|m[8]~13_combout\ & ( 
-- !\u4|u4|u1|u3|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u3|u2|m[14]~0_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111001111111111111111111100000000000000001011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datac => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datae => \u4|u3|u2|ALT_INV_m[8]~13_combout\,
	dataf => \u4|u4|u1|u3|u2|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[9]~9_combout\);

-- Location: LABCELL_X16_Y4_N24
\v8|m[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[9]~8_combout\ = ( \u4|u4|u2|m[6]~6_combout\ & ( \a[15]~input_o\ & ( !\u4|u4|u2|m[9]~9_combout\ ) ) ) # ( !\u4|u4|u2|m[6]~6_combout\ & ( \a[15]~input_o\ & ( !\u4|u4|u2|m[9]~9_combout\ $ (((\v7|u2|u2|co~0_combout\ & (!\u4|u4|u2|m[7]~7_combout\ & 
-- !\u4|u4|u2|m[8]~8_combout\)))) ) ) ) # ( \u4|u4|u2|m[6]~6_combout\ & ( !\a[15]~input_o\ & ( \u4|u4|u2|m[9]~9_combout\ ) ) ) # ( !\u4|u4|u2|m[6]~6_combout\ & ( !\a[15]~input_o\ & ( \u4|u4|u2|m[9]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110011100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v7|u2|u2|ALT_INV_co~0_combout\,
	datab => \u4|u4|u2|ALT_INV_m[9]~9_combout\,
	datac => \u4|u4|u2|ALT_INV_m[7]~7_combout\,
	datad => \u4|u4|u2|ALT_INV_m[8]~8_combout\,
	datae => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[9]~8_combout\);

-- Location: LABCELL_X14_Y5_N33
\u4|u4|u1|u3|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u3|s~combout\ = ( \u4|u4|u1|u3|u2|co~0_combout\ & ( !\u4|u3|u2|m[9]~4_combout\ $ (\v4|m[10]~4_combout\) ) ) # ( !\u4|u4|u1|u3|u2|co~0_combout\ & ( !\u4|u3|u2|m[9]~4_combout\ $ (!\v4|m[10]~4_combout\ $ (\u4|u4|u1|u3|u2|co~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u2|ALT_INV_m[9]~4_combout\,
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datad => \u4|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \u4|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u4|u1|u3|u3|s~combout\);

-- Location: LABCELL_X14_Y5_N51
\u4|u4|u2|m[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[10]~10_combout\ = ( \u4|u3|u2|m[9]~4_combout\ & ( \u4|u4|u1|u3|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) # 
-- (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & \u1|u2|u1|u4|u4|co~0_combout\))) ) ) ) # ( \u4|u3|u2|m[9]~4_combout\ & ( !\u4|u4|u1|u3|u3|s~combout\ ) ) # ( !\u4|u3|u2|m[9]~4_combout\ & ( 
-- !\u4|u4|u1|u3|u3|s~combout\ & ( (!\u4|u3|u2|m[14]~0_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) # (\u4|u3|u2|m[14]~0_combout\ & (((!\u1|u2|u1|u4|u4|co~0_combout\) # 
-- (\u4|u4|u1|u4|u3|co~1_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000111111111111111111100000000000000001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datad => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[9]~4_combout\,
	dataf => \u4|u4|u1|u3|u3|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[10]~10_combout\);

-- Location: LABCELL_X16_Y4_N21
\v7|u3|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|u3|u1|co~0_combout\ = ( \v7|u2|u2|co~0_combout\ & ( (!\u4|u4|u2|m[7]~7_combout\ & (!\u4|u4|u2|m[8]~8_combout\ & !\u4|u4|u2|m[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[7]~7_combout\,
	datab => \u4|u4|u2|ALT_INV_m[8]~8_combout\,
	datac => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \v7|u2|u2|ALT_INV_co~0_combout\,
	combout => \v7|u3|u1|co~0_combout\);

-- Location: LABCELL_X16_Y4_N39
\v8|m[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[10]~9_combout\ = ( \u4|u4|u2|m[9]~9_combout\ & ( !\a[15]~input_o\ $ (!\u4|u4|u2|m[10]~10_combout\) ) ) # ( !\u4|u4|u2|m[9]~9_combout\ & ( !\u4|u4|u2|m[10]~10_combout\ $ (((!\a[15]~input_o\) # (\v7|u3|u1|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[15]~input_o\,
	datac => \u4|u4|u2|ALT_INV_m[10]~10_combout\,
	datad => \v7|u3|u1|ALT_INV_co~0_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[9]~9_combout\,
	combout => \v8|m[10]~9_combout\);

-- Location: LABCELL_X16_Y4_N30
\v7|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|u3|u3|co~0_combout\ = ( !\u4|u4|u2|m[6]~6_combout\ & ( !\u4|u4|u2|m[9]~9_combout\ & ( (\v7|u2|u2|co~0_combout\ & (!\u4|u4|u2|m[8]~8_combout\ & (!\u4|u4|u2|m[7]~7_combout\ & !\u4|u4|u2|m[10]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v7|u2|u2|ALT_INV_co~0_combout\,
	datab => \u4|u4|u2|ALT_INV_m[8]~8_combout\,
	datac => \u4|u4|u2|ALT_INV_m[7]~7_combout\,
	datad => \u4|u4|u2|ALT_INV_m[10]~10_combout\,
	datae => \u4|u4|u2|ALT_INV_m[6]~6_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[9]~9_combout\,
	combout => \v7|u3|u3|co~0_combout\);

-- Location: LABCELL_X14_Y5_N24
\u4|u4|u1|u3|u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u3|u4|s~combout\ = ( \u4|u3|u2|m[9]~4_combout\ & ( \u4|u4|u1|u3|u2|co~0_combout\ & ( !\u4|u3|u2|m[10]~3_combout\ $ (\v4|m[11]~3_combout\) ) ) ) # ( !\u4|u3|u2|m[9]~4_combout\ & ( \u4|u4|u1|u3|u2|co~0_combout\ & ( !\v4|m[10]~4_combout\ $ 
-- (!\u4|u3|u2|m[10]~3_combout\ $ (!\v4|m[11]~3_combout\)) ) ) ) # ( \u4|u3|u2|m[9]~4_combout\ & ( !\u4|u4|u1|u3|u2|co~0_combout\ & ( !\u4|u3|u2|m[10]~3_combout\ $ (!\v4|m[11]~3_combout\ $ (((!\v4|m[10]~4_combout\) # (\u4|u4|u1|u3|u2|co~1_combout\)))) ) ) ) 
-- # ( !\u4|u3|u2|m[9]~4_combout\ & ( !\u4|u4|u1|u3|u2|co~0_combout\ & ( !\u4|u3|u2|m[10]~3_combout\ $ (!\v4|m[11]~3_combout\ $ (((\u4|u4|u1|u3|u2|co~1_combout\ & !\v4|m[10]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100110100100010110111000011001111001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u3|u2|ALT_INV_co~1_combout\,
	datab => \v4|ALT_INV_m[10]~4_combout\,
	datac => \u4|u3|u2|ALT_INV_m[10]~3_combout\,
	datad => \v4|ALT_INV_m[11]~3_combout\,
	datae => \u4|u3|u2|ALT_INV_m[9]~4_combout\,
	dataf => \u4|u4|u1|u3|u2|ALT_INV_co~0_combout\,
	combout => \u4|u4|u1|u3|u4|s~combout\);

-- Location: LABCELL_X14_Y5_N48
\u4|u4|u2|m[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[11]~11_combout\ = ( \u4|u3|u2|m[10]~3_combout\ & ( \u4|u4|u1|u3|u4|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u3|u2|m[14]~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( \u4|u3|u2|m[10]~3_combout\ & ( !\u4|u4|u1|u3|u4|s~combout\ ) ) # ( !\u4|u3|u2|m[10]~3_combout\ & ( 
-- !\u4|u4|u1|u3|u4|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u3|u2|m[14]~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)) # (\u4|u4|u1|u4|u3|co~0_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~1_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111111111111111111100000000000000001000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[10]~3_combout\,
	dataf => \u4|u4|u1|u3|u4|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[11]~11_combout\);

-- Location: LABCELL_X16_Y4_N6
\v8|m[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[11]~10_combout\ = ( \a[15]~input_o\ & ( !\v7|u3|u3|co~0_combout\ $ (\u4|u4|u2|m[11]~11_combout\) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[11]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v7|u3|u3|ALT_INV_co~0_combout\,
	datad => \u4|u4|u2|ALT_INV_m[11]~11_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[11]~10_combout\);

-- Location: MLABCELL_X13_Y5_N51
\u4|u4|u1|u4|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u1|s~combout\ = ( \v4|m[12]~2_combout\ & ( !\u4|u4|u1|u3|u4|co~combout\ $ (!\u4|u3|u2|m[11]~2_combout\) ) ) # ( !\v4|m[12]~2_combout\ & ( !\u4|u4|u1|u3|u4|co~combout\ $ (\u4|u3|u2|m[11]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u1|u3|u4|ALT_INV_co~combout\,
	datad => \u4|u3|u2|ALT_INV_m[11]~2_combout\,
	dataf => \v4|ALT_INV_m[12]~2_combout\,
	combout => \u4|u4|u1|u4|u1|s~combout\);

-- Location: MLABCELL_X13_Y5_N24
\u4|u4|u2|m[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[12]~12_combout\ = ( \u4|u3|u2|m[11]~2_combout\ & ( \u4|u4|u1|u4|u1|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u3|u2|m[14]~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) ) # ( \u4|u3|u2|m[11]~2_combout\ & ( !\u4|u4|u1|u4|u1|s~combout\ ) ) # ( !\u4|u3|u2|m[11]~2_combout\ & ( 
-- !\u4|u4|u1|u4|u1|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u3|u2|m[14]~0_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010111111111111111111111100000000000000001101010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[11]~2_combout\,
	dataf => \u4|u4|u1|u4|u1|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[12]~12_combout\);

-- Location: LABCELL_X16_Y4_N15
\v8|m[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[12]~11_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[12]~12_combout\ $ (((\v7|u3|u3|co~0_combout\ & !\u4|u4|u2|m[11]~11_combout\))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[12]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[12]~12_combout\,
	datab => \v7|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|ALT_INV_m[11]~11_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[12]~11_combout\);

-- Location: MLABCELL_X13_Y5_N48
\u4|u4|u1|u4|u2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u2|s~combout\ = ( \u4|u3|u2|m[12]~1_combout\ & ( !\v4|m[13]~1_combout\ $ (((!\v4|m[12]~2_combout\ & ((!\u4|u4|u1|u3|u4|co~combout\) # (\u4|u3|u2|m[11]~2_combout\))) # (\v4|m[12]~2_combout\ & (!\u4|u4|u1|u3|u4|co~combout\ & 
-- \u4|u3|u2|m[11]~2_combout\)))) ) ) # ( !\u4|u3|u2|m[12]~1_combout\ & ( !\v4|m[13]~1_combout\ $ (((!\v4|m[12]~2_combout\ & (\u4|u4|u1|u3|u4|co~combout\ & !\u4|u3|u2|m[11]~2_combout\)) # (\v4|m[12]~2_combout\ & ((!\u4|u3|u2|m[11]~2_combout\) # 
-- (\u4|u4|u1|u3|u4|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111001110001100011100111000101110001100011100111000110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \u4|u4|u1|u3|u4|ALT_INV_co~combout\,
	datac => \u4|u3|u2|ALT_INV_m[11]~2_combout\,
	datad => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[12]~1_combout\,
	combout => \u4|u4|u1|u4|u2|s~combout\);

-- Location: MLABCELL_X13_Y5_N27
\u4|u4|u2|m[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[13]~13_combout\ = ( \u4|u3|u2|m[12]~1_combout\ & ( \u4|u4|u1|u4|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u3|u2|m[14]~0_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) ) # ( \u4|u3|u2|m[12]~1_combout\ & ( !\u4|u4|u1|u4|u2|s~combout\ ) ) # ( !\u4|u3|u2|m[12]~1_combout\ & ( 
-- !\u4|u4|u1|u4|u2|s~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u3|u2|m[14]~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\ & (\u4|u3|u2|m[14]~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110101111111111111111111100000000000000001101010001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datae => \u4|u3|u2|ALT_INV_m[12]~1_combout\,
	dataf => \u4|u4|u1|u4|u2|ALT_INV_s~combout\,
	combout => \u4|u4|u2|m[13]~13_combout\);

-- Location: LABCELL_X16_Y4_N12
\v8|m[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[13]~12_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[13]~13_combout\ $ (((!\u4|u4|u2|m[12]~12_combout\ & (\v7|u3|u3|co~0_combout\ & !\u4|u4|u2|m[11]~11_combout\)))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[13]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111010010111100001101001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[12]~12_combout\,
	datab => \v7|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|ALT_INV_m[13]~13_combout\,
	datad => \u4|u4|u2|ALT_INV_m[11]~11_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[13]~12_combout\);

-- Location: MLABCELL_X13_Y5_N30
\u4|u4|u1|u4|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u2|co~combout\ = ( \u4|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[13]~1_combout\ & (((!\v4|m[12]~2_combout\ & \u4|u3|u2|m[11]~2_combout\)) # (\u4|u3|u2|m[12]~1_combout\))) # (\v4|m[13]~1_combout\ & (!\v4|m[12]~2_combout\ & 
-- (\u4|u3|u2|m[11]~2_combout\ & \u4|u3|u2|m[12]~1_combout\))) ) ) # ( !\u4|u4|u1|u3|u4|co~combout\ & ( (!\v4|m[13]~1_combout\ & ((!\v4|m[12]~2_combout\) # ((\u4|u3|u2|m[12]~1_combout\) # (\u4|u3|u2|m[11]~2_combout\)))) # (\v4|m[13]~1_combout\ & 
-- (\u4|u3|u2|m[12]~1_combout\ & ((!\v4|m[12]~2_combout\) # (\u4|u3|u2|m[11]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011101111100011001110111100001000110011100000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[12]~2_combout\,
	datab => \v4|ALT_INV_m[13]~1_combout\,
	datac => \u4|u3|u2|ALT_INV_m[11]~2_combout\,
	datad => \u4|u3|u2|ALT_INV_m[12]~1_combout\,
	dataf => \u4|u4|u1|u3|u4|ALT_INV_co~combout\,
	combout => \u4|u4|u1|u4|u2|co~combout\);

-- Location: MLABCELL_X13_Y5_N3
\u4|u3|u2|m[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u2|m[13]~14_combout\ = ( \u4|u3|u1|u4|u1|co~combout\ & ( !\u4|u2|u2|m[12]~0_combout\ $ (((!\v4|m[13]~1_combout\) # ((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)))) ) ) # ( !\u4|u3|u1|u4|u1|co~combout\ & ( 
-- !\u4|u2|u2|m[12]~0_combout\ $ ((((!\u4|u3|u1|u4|u4|co~2_combout\ & !\u4|u3|u1|u4|u4|co~1_combout\)) # (\v4|m[13]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000001111011110000000111100001111011110000000111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u4|u2|u2|ALT_INV_m[12]~0_combout\,
	datad => \v4|ALT_INV_m[13]~1_combout\,
	dataf => \u4|u3|u1|u4|u1|ALT_INV_co~combout\,
	combout => \u4|u3|u2|m[13]~14_combout\);

-- Location: MLABCELL_X13_Y5_N21
\u4|u4|u2|m[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[14]~14_combout\ = ( \u4|u3|u2|m[14]~0_combout\ & ( (!\u4|u3|u2|m[13]~14_combout\ & (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\v4|m[14]~0_combout\ $ (\u4|u4|u1|u4|u2|co~combout\)))) # (\u4|u3|u2|m[13]~14_combout\ & ((!\v4|m[14]~0_combout\ $ 
-- (!\u4|u4|u1|u4|u2|co~combout\)))) ) ) # ( !\u4|u3|u2|m[14]~0_combout\ & ( (\u4|u3|u2|m[13]~14_combout\ & ((!\v4|m[14]~0_combout\ $ (!\u4|u4|u1|u4|u2|co~combout\)) # (\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111101000000000111110110000010001111001000001000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \v4|ALT_INV_m[14]~0_combout\,
	datac => \u4|u4|u1|u4|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u2|ALT_INV_m[13]~14_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	combout => \u4|u4|u2|m[14]~14_combout\);

-- Location: LABCELL_X16_Y4_N48
\v8|m[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[14]~13_combout\ = ( \u4|u4|u2|m[11]~11_combout\ & ( \u4|u4|u2|m[14]~14_combout\ & ( !\a[15]~input_o\ ) ) ) # ( !\u4|u4|u2|m[11]~11_combout\ & ( \u4|u4|u2|m[14]~14_combout\ & ( (!\a[15]~input_o\) # ((!\u4|u4|u2|m[12]~12_combout\ & 
-- (\v7|u3|u3|co~0_combout\ & !\u4|u4|u2|m[13]~13_combout\))) ) ) ) # ( \u4|u4|u2|m[11]~11_combout\ & ( !\u4|u4|u2|m[14]~14_combout\ & ( \a[15]~input_o\ ) ) ) # ( !\u4|u4|u2|m[11]~11_combout\ & ( !\u4|u4|u2|m[14]~14_combout\ & ( (\a[15]~input_o\ & 
-- (((!\v7|u3|u3|co~0_combout\) # (\u4|u4|u2|m[13]~13_combout\)) # (\u4|u4|u2|m[12]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001111111111111111001000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[12]~12_combout\,
	datab => \v7|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|ALT_INV_m[13]~13_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	datae => \u4|u4|u2|ALT_INV_m[11]~11_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[14]~14_combout\,
	combout => \v8|m[14]~13_combout\);

-- Location: LABCELL_X16_Y4_N9
\u4|u4|u2|m[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|m[15]~15_combout\ = ( \u4|u4|u1|u4|u3|co~0_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & \u4|u3|u2|m[14]~0_combout\) ) ) # ( !\u4|u4|u1|u4|u3|co~0_combout\ & ( (\u4|u3|u2|m[14]~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ $ 
-- (!\u1|u2|u1|u4|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	dataf => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	combout => \u4|u4|u2|m[15]~15_combout\);

-- Location: LABCELL_X16_Y4_N57
\v7|u4|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|u4|u2|co~0_combout\ = ( !\u4|u4|u2|m[12]~12_combout\ & ( (!\u4|u4|u2|m[13]~13_combout\ & (\v7|u3|u3|co~0_combout\ & !\u4|u4|u2|m[11]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_m[13]~13_combout\,
	datac => \v7|u3|u3|ALT_INV_co~0_combout\,
	datad => \u4|u4|u2|ALT_INV_m[11]~11_combout\,
	dataf => \u4|u4|u2|ALT_INV_m[12]~12_combout\,
	combout => \v7|u4|u2|co~0_combout\);

-- Location: LABCELL_X16_Y4_N54
\v8|m[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v8|m[15]~14_combout\ = ( \a[15]~input_o\ & ( !\u4|u4|u2|m[15]~15_combout\ $ (((!\u4|u4|u2|m[14]~14_combout\ & \v7|u4|u2|co~0_combout\))) ) ) # ( !\a[15]~input_o\ & ( \u4|u4|u2|m[15]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u2|ALT_INV_m[15]~15_combout\,
	datac => \u4|u4|u2|ALT_INV_m[14]~14_combout\,
	datad => \v7|u4|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v8|m[15]~14_combout\);

-- Location: LABCELL_X14_Y4_N42
\u4|u4|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u4|u4|co~combout\ = ( \u4|u3|u2|m[14]~0_combout\ & ( ((!\u1|u2|u1|u4|u4|co~0_combout\) # (\u4|u4|u1|u4|u3|co~0_combout\)) # (\u4|u4|u1|u4|u3|co~1_combout\) ) ) # ( !\u4|u3|u2|m[14]~0_combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & 
-- ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	dataf => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	combout => \u4|u4|u1|u4|u4|co~combout\);

-- Location: LABCELL_X12_Y4_N15
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = !\a[15]~input_o\ $ (!\b[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X14_Y4_N45
\u4|u3|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u4|u4|co~combout\ = ( !\u4|u3|u1|u4|u4|co~1_combout\ & ( !\u4|u3|u1|u4|u4|co~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u4|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u3|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N48
\v6|m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[1]~0_combout\ = ( \u4|u3|u1|u4|u4|co~combout\ & ( \u4|u3|u2|m[14]~0_combout\ & ( (\comb~0_combout\ & ((!\u1|u2|u1|u4|u4|co~0_combout\) # ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( !\u4|u3|u1|u4|u4|co~combout\ & ( 
-- \u4|u3|u2|m[14]~0_combout\ & ( (!\comb~0_combout\) # ((\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\))) ) ) ) # ( \u4|u3|u1|u4|u4|co~combout\ & ( !\u4|u3|u2|m[14]~0_combout\ & ( 
-- (!\u1|u2|u1|u4|u4|co~0_combout\ & (\comb~0_combout\ & ((\u4|u4|u1|u4|u3|co~0_combout\) # (\u4|u4|u1|u4|u3|co~1_combout\)))) ) ) ) # ( !\u4|u3|u1|u4|u4|co~combout\ & ( !\u4|u3|u2|m[14]~0_combout\ & ( ((!\comb~0_combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ 
-- & !\u4|u4|u1|u4|u3|co~0_combout\))) # (\u1|u2|u1|u4|u4|co~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101000000100010001011011100110011000010001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datad => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datae => \u4|u3|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	combout => \v6|m[1]~0_combout\);

-- Location: LABCELL_X12_Y3_N0
\u4|u2|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|u1|u4|u4|co~combout\ = ( !\u4|u2|u1|u4|u4|co~1_combout\ & ( !\u4|u2|u1|u4|u4|co~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u2|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N27
\v6|m[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[2]~1_combout\ = ( \u4|u4|u1|u4|u4|co~combout\ & ( !\u4|u2|u1|u4|u4|co~combout\ $ (\comb~0_combout\) ) ) # ( !\u4|u4|u1|u4|u4|co~combout\ & ( !\u4|u2|u1|u4|u4|co~combout\ $ (((\comb~0_combout\ & !\u4|u3|u1|u4|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101010011010100110101001101010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|u1|u4|u4|ALT_INV_co~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \u4|u3|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u4|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[2]~1_combout\);

-- Location: LABCELL_X14_Y4_N0
\v5|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u3|co~0_combout\ = ( \u4|u3|u1|u4|u4|co~combout\ & ( \u4|u2|u1|u4|u4|co~combout\ & ( (!\u1|u2|u1|u4|u4|co~0_combout\ & (!\u4|u4|u1|u4|u3|co~1_combout\ & (!\u4|u4|u1|u4|u3|co~0_combout\ & !\u4|u3|u2|m[14]~0_combout\))) # 
-- (\u1|u2|u1|u4|u4|co~0_combout\ & ((!\u4|u3|u2|m[14]~0_combout\) # ((!\u4|u4|u1|u4|u3|co~1_combout\ & !\u4|u4|u1|u4|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u4|u3|ALT_INV_co~1_combout\,
	datab => \u4|u4|u1|u4|u3|ALT_INV_co~0_combout\,
	datac => \u1|u2|u1|u4|u4|ALT_INV_co~0_combout\,
	datad => \u4|u3|u2|ALT_INV_m[14]~0_combout\,
	datae => \u4|u3|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u4|u2|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v5|u1|u3|co~0_combout\);

-- Location: LABCELL_X10_Y3_N24
\u4|u1|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|u1|u4|u4|co~combout\ = (!\u4|u1|u1|u4|u4|co~2_combout\ & !\u4|u1|u1|u4|u4|co~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datab => \u4|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u4|u1|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N24
\v6|m[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[3]~2_combout\ = ( \u4|u1|u1|u4|u4|co~combout\ & ( (\comb~0_combout\ & !\v5|u1|u3|co~0_combout\) ) ) # ( !\u4|u1|u1|u4|u4|co~combout\ & ( (!\comb~0_combout\) # (\v5|u1|u3|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datad => \v5|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[3]~2_combout\);

-- Location: LABCELL_X6_Y5_N24
\u3|u4|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u4|u4|co~combout\ = (!\u3|u4|u1|u4|u4|co~2_combout\ & !\u3|u4|u1|u4|u4|co~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u3|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u4|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N6
\v6|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[4]~3_combout\ = ( \u3|u4|u1|u4|u4|co~combout\ & ( (\comb~0_combout\ & ((!\v5|u1|u3|co~0_combout\) # (!\u4|u1|u1|u4|u4|co~combout\))) ) ) # ( !\u3|u4|u1|u4|u4|co~combout\ & ( (!\comb~0_combout\) # ((\v5|u1|u3|co~0_combout\ & 
-- \u4|u1|u1|u4|u4|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111100110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \v5|u1|u3|ALT_INV_co~0_combout\,
	datad => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[4]~3_combout\);

-- Location: MLABCELL_X4_Y5_N30
\u3|u3|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u4|u4|co~combout\ = (!\u3|u3|u1|u4|u4|co~1_combout\ & !\u3|u3|u1|u4|u4|co~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u3|u3|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N12
\v6|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[5]~4_combout\ = ( \comb~0_combout\ & ( !\u3|u3|u1|u4|u4|co~combout\ $ (((!\u4|u1|u1|u4|u4|co~combout\) # ((!\u3|u4|u1|u4|u4|co~combout\) # (!\v5|u1|u3|co~0_combout\)))) ) ) # ( !\comb~0_combout\ & ( !\u3|u3|u1|u4|u4|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~combout\,
	datac => \u3|u4|u1|u4|u4|ALT_INV_co~combout\,
	datad => \v5|u1|u3|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v6|m[5]~4_combout\);

-- Location: LABCELL_X7_Y7_N15
\u3|u2|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|u1|u4|u4|co~combout\ = ( !\u3|u2|u1|u4|u4|co~1_combout\ & ( !\u3|u2|u1|u4|u4|co~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u2|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N18
\v6|m[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[6]~5_combout\ = ( \u3|u3|u1|u4|u4|co~combout\ & ( \u3|u4|u1|u4|u4|co~combout\ & ( !\u3|u2|u1|u4|u4|co~combout\ $ (((\comb~0_combout\ & ((!\u4|u1|u1|u4|u4|co~combout\) # (!\v5|u1|u3|co~0_combout\))))) ) ) ) # ( !\u3|u3|u1|u4|u4|co~combout\ & ( 
-- \u3|u4|u1|u4|u4|co~combout\ & ( !\u3|u2|u1|u4|u4|co~combout\ $ (\comb~0_combout\) ) ) ) # ( \u3|u3|u1|u4|u4|co~combout\ & ( !\u3|u4|u1|u4|u4|co~combout\ & ( !\u3|u2|u1|u4|u4|co~combout\ $ (\comb~0_combout\) ) ) ) # ( !\u3|u3|u1|u4|u4|co~combout\ & ( 
-- !\u3|u4|u1|u4|u4|co~combout\ & ( !\u3|u2|u1|u4|u4|co~combout\ $ (\comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100001100111100110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~combout\,
	datac => \v5|u1|u3|ALT_INV_co~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \u3|u3|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[6]~5_combout\);

-- Location: LABCELL_X7_Y7_N45
\u3|u1|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|u1|u4|u4|co~combout\ = ( !\u3|u1|u1|u4|u4|co~1_combout\ & ( !\u3|u1|u1|u4|u4|co~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	dataf => \u3|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u3|u1|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N15
\v5|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u2|u2|co~0_combout\ = ( \u3|u4|u1|u4|u4|co~combout\ & ( (\u4|u1|u1|u4|u4|co~combout\ & (\u3|u3|u1|u4|u4|co~combout\ & \v5|u1|u3|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u4|u4|ALT_INV_co~combout\,
	datad => \v5|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v5|u2|u2|co~0_combout\);

-- Location: LABCELL_X14_Y4_N9
\v6|m[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[7]~6_combout\ = ( \v5|u2|u2|co~0_combout\ & ( !\u3|u1|u1|u4|u4|co~combout\ $ (((\comb~0_combout\ & !\u3|u2|u1|u4|u4|co~combout\))) ) ) # ( !\v5|u2|u2|co~0_combout\ & ( !\comb~0_combout\ $ (\u3|u1|u1|u4|u4|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \u3|u2|u1|u4|u4|ALT_INV_co~combout\,
	datad => \u3|u1|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \v5|u2|u2|ALT_INV_co~0_combout\,
	combout => \v6|m[7]~6_combout\);

-- Location: LABCELL_X7_Y7_N36
\u2|u4|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u4|u4|co~combout\ = (!\u2|u4|u1|u4|u4|co~1_combout\ & !\u2|u4|u1|u4|u4|co~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u4|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u4|u1|u4|u4|co~combout\);

-- Location: LABCELL_X14_Y4_N54
\v5|u2|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u2|u4|co~0_combout\ = ( \u4|u1|u1|u4|u4|co~combout\ & ( \u3|u4|u1|u4|u4|co~combout\ & ( (\u3|u1|u1|u4|u4|co~combout\ & (\u3|u2|u1|u4|u4|co~combout\ & (\v5|u1|u3|co~0_combout\ & \u3|u3|u1|u4|u4|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|u1|u4|u4|ALT_INV_co~combout\,
	datab => \u3|u2|u1|u4|u4|ALT_INV_co~combout\,
	datac => \v5|u1|u3|ALT_INV_co~0_combout\,
	datad => \u3|u3|u1|u4|u4|ALT_INV_co~combout\,
	datae => \u4|u1|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u3|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v5|u2|u4|co~0_combout\);

-- Location: LABCELL_X12_Y7_N54
\v6|m[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[8]~7_combout\ = !\u2|u4|u1|u4|u4|co~combout\ $ (((\comb~0_combout\ & !\v5|u2|u4|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111110000110000111111000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~combout\,
	datad => \v5|u2|u4|ALT_INV_co~0_combout\,
	combout => \v6|m[8]~7_combout\);

-- Location: LABCELL_X2_Y7_N12
\u2|u3|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u4|u4|co~combout\ = ( !\u2|u3|u1|u4|u4|co~2_combout\ & ( !\u2|u3|u1|u4|u4|co~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u3|u1|u4|u4|co~combout\);

-- Location: LABCELL_X12_Y7_N33
\v6|m[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[9]~8_combout\ = ( \u2|u3|u1|u4|u4|co~combout\ & ( (\comb~0_combout\ & ((!\u2|u4|u1|u4|u4|co~combout\) # (!\v5|u2|u4|co~0_combout\))) ) ) # ( !\u2|u3|u1|u4|u4|co~combout\ & ( (!\comb~0_combout\) # ((\u2|u4|u1|u4|u4|co~combout\ & 
-- \v5|u2|u4|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110100110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \v5|u2|u4|ALT_INV_co~0_combout\,
	dataf => \u2|u3|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[9]~8_combout\);

-- Location: LABCELL_X6_Y7_N42
\u2|u2|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|u4|u4|co~combout\ = (!\u2|u2|u1|u4|u4|co~2_combout\ & !\u2|u2|u1|u4|u4|co~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \u2|u2|u1|u4|u4|co~combout\);

-- Location: LABCELL_X12_Y7_N30
\v6|m[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[10]~9_combout\ = ( \u2|u3|u1|u4|u4|co~combout\ & ( !\u2|u2|u1|u4|u4|co~combout\ $ (((\comb~0_combout\ & ((!\u2|u4|u1|u4|u4|co~combout\) # (!\v5|u2|u4|co~0_combout\))))) ) ) # ( !\u2|u3|u1|u4|u4|co~combout\ & ( !\comb~0_combout\ $ 
-- (\u2|u2|u1|u4|u4|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001101001100101100110100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u4|u4|ALT_INV_co~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \v5|u2|u4|ALT_INV_co~0_combout\,
	datad => \u2|u2|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u2|u3|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[10]~9_combout\);

-- Location: MLABCELL_X9_Y7_N30
\u2|u1|u1|u4|u4|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|u1|u4|u4|co~combout\ = (!\u2|u1|u1|u4|u4|co~1_combout\ & !\u2|u1|u1|u4|u4|co~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u2|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	combout => \u2|u1|u1|u4|u4|co~combout\);

-- Location: LABCELL_X12_Y7_N6
\v6|m[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[11]~10_combout\ = ( \comb~0_combout\ & ( \u2|u3|u1|u4|u4|co~combout\ & ( !\u2|u1|u1|u4|u4|co~combout\ $ (((!\v5|u2|u4|co~0_combout\) # ((!\u2|u2|u1|u4|u4|co~combout\) # (!\u2|u4|u1|u4|u4|co~combout\)))) ) ) ) # ( !\comb~0_combout\ & ( 
-- \u2|u3|u1|u4|u4|co~combout\ & ( !\u2|u1|u1|u4|u4|co~combout\ ) ) ) # ( \comb~0_combout\ & ( !\u2|u3|u1|u4|u4|co~combout\ & ( \u2|u1|u1|u4|u4|co~combout\ ) ) ) # ( !\comb~0_combout\ & ( !\u2|u3|u1|u4|u4|co~combout\ & ( !\u2|u1|u1|u4|u4|co~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111111111111000000000000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u2|u4|ALT_INV_co~0_combout\,
	datab => \u2|u2|u1|u4|u4|ALT_INV_co~combout\,
	datac => \u2|u4|u1|u4|u4|ALT_INV_co~combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \u2|u3|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v6|m[11]~10_combout\);

-- Location: LABCELL_X12_Y7_N45
\v5|u3|u4|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u3|u4|co~0_combout\ = ( \u2|u4|u1|u4|u4|co~combout\ & ( (\v5|u2|u4|co~0_combout\ & (\u2|u3|u1|u4|u4|co~combout\ & (\u2|u2|u1|u4|u4|co~combout\ & \u2|u1|u1|u4|u4|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u2|u4|ALT_INV_co~0_combout\,
	datab => \u2|u3|u1|u4|u4|ALT_INV_co~combout\,
	datac => \u2|u2|u1|u4|u4|ALT_INV_co~combout\,
	datad => \u2|u1|u1|u4|u4|ALT_INV_co~combout\,
	dataf => \u2|u4|u1|u4|u4|ALT_INV_co~combout\,
	combout => \v5|u3|u4|co~0_combout\);

-- Location: LABCELL_X12_Y7_N42
\v6|m[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[12]~11_combout\ = ( \v5|u3|u4|co~0_combout\ & ( \u1|u4|u1|u4|u4|co~1_combout\ ) ) # ( !\v5|u3|u4|co~0_combout\ & ( !\u1|u4|u1|u4|u4|co~1_combout\ $ (!\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \v5|u3|u4|ALT_INV_co~0_combout\,
	combout => \v6|m[12]~11_combout\);

-- Location: LABCELL_X12_Y7_N57
\u1|u3|u1|u4|u4|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u4|u4|co~1_combout\ = (!\u1|u3|u1|u4|u1|co~combout\ & \u1|u3|u1|u4|u4|co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u4|u1|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u4|u4|ALT_INV_co~0_combout\,
	combout => \u1|u3|u1|u4|u4|co~1_combout\);

-- Location: LABCELL_X12_Y7_N21
\v6|m[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[13]~12_combout\ = ( \u1|u4|u1|u4|u4|co~1_combout\ & ( !\u1|u3|u1|u4|u4|co~1_combout\ $ (!\comb~0_combout\) ) ) # ( !\u1|u4|u1|u4|u4|co~1_combout\ & ( !\u1|u3|u1|u4|u4|co~1_combout\ $ (((!\comb~0_combout\) # (\v5|u3|u4|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \v5|u3|u4|ALT_INV_co~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	combout => \v6|m[13]~12_combout\);

-- Location: LABCELL_X12_Y7_N18
\v6|m[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[14]~13_combout\ = ( \u1|u2|u1|u4|u4|co~3_combout\ & ( (!\comb~0_combout\) # ((!\u1|u4|u1|u4|u4|co~1_combout\ & (!\u1|u3|u1|u4|u4|co~1_combout\ & \v5|u3|u4|co~0_combout\))) ) ) # ( !\u1|u2|u1|u4|u4|co~3_combout\ & ( (\comb~0_combout\ & 
-- (((!\v5|u3|u4|co~0_combout\) # (\u1|u3|u1|u4|u4|co~1_combout\)) # (\u1|u4|u1|u4|u4|co~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011111110000111110001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \v5|u3|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	combout => \v6|m[14]~13_combout\);

-- Location: LABCELL_X12_Y7_N24
\v6|m[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[15]~14_combout\ = ( \v5|u3|u4|co~0_combout\ & ( \u1|u2|u1|u4|u4|co~3_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ $ (!\comb~0_combout\) ) ) ) # ( !\v5|u3|u4|co~0_combout\ & ( \u1|u2|u1|u4|u4|co~3_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ $ 
-- (!\comb~0_combout\) ) ) ) # ( \v5|u3|u4|co~0_combout\ & ( !\u1|u2|u1|u4|u4|co~3_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ $ (((!\comb~0_combout\) # ((!\u1|u4|u1|u4|u4|co~1_combout\ & !\u1|u3|u1|u4|u4|co~1_combout\)))) ) ) ) # ( !\v5|u3|u4|co~0_combout\ 
-- & ( !\u1|u2|u1|u4|u4|co~3_combout\ & ( !\u1|u1|u1|u4|u4|co~2_combout\ $ (!\comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011110111100000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u4|u4|ALT_INV_co~1_combout\,
	datab => \u1|u3|u1|u4|u4|ALT_INV_co~1_combout\,
	datac => \u1|u1|u1|u4|u4|ALT_INV_co~2_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \v5|u3|u4|ALT_INV_co~0_combout\,
	dataf => \u1|u2|u1|u4|u4|ALT_INV_co~3_combout\,
	combout => \v6|m[15]~14_combout\);

-- Location: LABCELL_X10_Y9_N39
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\b[15]~input_o\ & (\Equal0~4_combout\ & !\b[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_b[14]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X7_Y8_N24
\o~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~6_combout\ = ( \b[6]~input_o\ & ( (\b[8]~input_o\ & (\b[9]~input_o\ & \b[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[8]~input_o\,
	datac => \ALT_INV_b[9]~input_o\,
	datad => \ALT_INV_b[7]~input_o\,
	dataf => \ALT_INV_b[6]~input_o\,
	combout => \o~6_combout\);

-- Location: LABCELL_X12_Y6_N12
\o~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~7_combout\ = ( \b[3]~input_o\ & ( (\b[0]~input_o\ & (\b[1]~input_o\ & \b[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[2]~input_o\,
	dataf => \ALT_INV_b[3]~input_o\,
	combout => \o~7_combout\);

-- Location: LABCELL_X12_Y6_N3
\o~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~8_combout\ = ( \b[12]~input_o\ & ( (\b[15]~input_o\ & (\b[14]~input_o\ & \b[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_b[14]~input_o\,
	datad => \ALT_INV_b[13]~input_o\,
	dataf => \ALT_INV_b[12]~input_o\,
	combout => \o~8_combout\);

-- Location: LABCELL_X12_Y6_N24
\o~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~9_combout\ = ( \b[4]~input_o\ & ( (\o~7_combout\ & (\o~8_combout\ & \b[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_o~7_combout\,
	datac => \ALT_INV_o~8_combout\,
	datad => \ALT_INV_b[5]~input_o\,
	dataf => \ALT_INV_b[4]~input_o\,
	combout => \o~9_combout\);

-- Location: LABCELL_X7_Y8_N54
\o~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \o~10_combout\ = ( \b[11]~input_o\ & ( \o~9_combout\ & ( (\b[10]~input_o\ & (\o~6_combout\ & \o~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[10]~input_o\,
	datac => \ALT_INV_o~6_combout\,
	datad => \ALT_INV_o~3_combout\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_o~9_combout\,
	combout => \o~10_combout\);

-- Location: LABCELL_X41_Y24_N0
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


