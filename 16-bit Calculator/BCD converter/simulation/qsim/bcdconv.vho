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

-- DATE "06/21/2026 19:06:27"

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

ENTITY 	bcdconv IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b0 : OUT std_logic_vector(3 DOWNTO 0);
	b1 : OUT std_logic_vector(3 DOWNTO 0);
	b2 : OUT std_logic_vector(3 DOWNTO 0);
	b3 : OUT std_logic_vector(3 DOWNTO 0);
	b4 : OUT std_logic_vector(3 DOWNTO 0);
	sign : OUT std_logic
	);
END bcdconv;

-- Design Ports Information
-- b0[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[1]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[3]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[0]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[1]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[1]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcdconv IS
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
SIGNAL ww_b0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sign : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \amag[15]~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \v1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \v1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \amag[15]~1_combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|co~1_combout\ : std_logic;
SIGNAL \v1|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u1|am[10]~1_combout\ : std_logic;
SIGNAL \u1|v1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \amag[12]~3_combout\ : std_logic;
SIGNAL \u1|v1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \amag[11]~4_combout\ : std_logic;
SIGNAL \amag[13]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|u1|u1|u1|s~combout\ : std_logic;
SIGNAL \u1|am[11]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|r[1]~3_combout\ : std_logic;
SIGNAL \u1|am[9]~3_combout\ : std_logic;
SIGNAL \u1|u2|u2|r[2]~0_combout\ : std_logic;
SIGNAL \u1|u2|u2|r[4]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|r[3]~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u1|u2|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u2|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u1|u2|u4|r[3]~1_combout\ : std_logic;
SIGNAL \amag[8]~5_combout\ : std_logic;
SIGNAL \u1|am[8]~4_combout\ : std_logic;
SIGNAL \u1|u2|u4|r[1]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[5]~1_combout\ : std_logic;
SIGNAL \u1|u2|u4|r[2]~2_combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u3|u1|r[6]~2_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[7]~3_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[8]~4_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[6]~2_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[7]~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[4]~6_combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u1|u3|u2|r[5]~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[3]~5_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[4]~0_combout\ : std_logic;
SIGNAL \amag[7]~6_combout\ : std_logic;
SIGNAL \u1|am[7]~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|r[1]~4_combout\ : std_logic;
SIGNAL \u1|u3|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u1|u3|u3|r[9]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[7]~5_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[3]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \amag[6]~7_combout\ : std_logic;
SIGNAL \u1|am[6]~6_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[1]~5_combout\ : std_logic;
SIGNAL \u1|u3|u2|r[2]~6_combout\ : std_logic;
SIGNAL \u1|u3|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u3|u3|r[6]~4_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[8]~6_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[8]~2_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[9]~3_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[10]~4_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[7]~1_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[5]~8_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[6]~0_combout\ : std_logic;
SIGNAL \u1|u3|u4|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \amag[5]~8_combout\ : std_logic;
SIGNAL \u1|am[5]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[1]~1_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[4]~3_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u1|u3|u3|r[3]~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u4|u1|r[11]~7_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[4]~8_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[2]~6_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[3]~7_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|co~2_combout\ : std_logic;
SIGNAL \u1|am[4]~8_combout\ : std_logic;
SIGNAL \u1|u3|u4|r[1]~5_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u4|u1|r[5]~9_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[9]~5_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[8]~4_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[10]~6_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[6]~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[7]~3_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|r[6]~1_combout\ : std_logic;
SIGNAL \u1|u4|u2|r[5]~8_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|r[9]~4_combout\ : std_logic;
SIGNAL \u1|u4|u2|r[7]~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u1|am[3]~9_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[1]~8_combout\ : std_logic;
SIGNAL \u1|u4|u1|r[3]~1_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|r[8]~3_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u1|u4|u2|r[11]~6_combout\ : std_logic;
SIGNAL \u1|u4|u2|r[10]~5_combout\ : std_logic;
SIGNAL \u1|u4|u2|r[12]~7_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u1|u4|u3|r[8]~2_combout\ : std_logic;
SIGNAL \u1|am[2]~10_combout\ : std_logic;
SIGNAL \u1|u4|u3|r[2]~5_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u0|u3|s~combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|co~2_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u4|u3|r[6]~0_combout\ : std_logic;
SIGNAL \u1|u4|u3|r[7]~1_combout\ : std_logic;
SIGNAL \u1|u4|u3|r[9]~3_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|co~3_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u4|u2|r[4]~0_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|co~1_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|co~4_combout\ : std_logic;
SIGNAL \u1|am[1]~0_combout\ : std_logic;
SIGNAL \u1|r[1]~0_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u1|u4|u3|r[1]~4_combout\ : std_logic;
SIGNAL \u1|r[2]~1_combout\ : std_logic;
SIGNAL \u1|r[3]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|r[4]~4_combout\ : std_logic;
SIGNAL \u1|v1|u3|u2|co~1_combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u1|u0|s~0_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u1|v3|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u1|v3|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u1|v3|u2|u3|co~0_combout\ : std_logic;
SIGNAL \u2|am[1]~0_combout\ : std_logic;
SIGNAL \u1|v3|u1|u2|co~0_combout\ : std_logic;
SIGNAL \u1|q[9]~0_combout\ : std_logic;
SIGNAL \u1|q[10]~1_combout\ : std_logic;
SIGNAL \u1|q[12]~3_combout\ : std_logic;
SIGNAL \u1|q[11]~2_combout\ : std_logic;
SIGNAL \u1|v3|u0|u1|co~0_combout\ : std_logic;
SIGNAL \u2|v1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u1|v3|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u2|v1|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u2|am[7]~4_combout\ : std_logic;
SIGNAL \u2|v1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u2|am[8]~3_combout\ : std_logic;
SIGNAL \u2|u3|u1|r[1]~4_combout\ : std_logic;
SIGNAL \u2|u2|u4|r[2]~1_combout\ : std_logic;
SIGNAL \u2|am[9]~2_combout\ : std_logic;
SIGNAL \u2|u2|u4|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|r[3]~1_combout\ : std_logic;
SIGNAL \u2|u2|u4|r[4]~2_combout\ : std_logic;
SIGNAL \u2|u3|u1|r[5]~3_combout\ : std_logic;
SIGNAL \u2|u3|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u2|u2|u4|r[3]~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|r[4]~2_combout\ : std_logic;
SIGNAL \u2|u3|u3|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u2|r[2]~1_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[4]~1_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[5]~2_combout\ : std_logic;
SIGNAL \u2|am[6]~1_combout\ : std_logic;
SIGNAL \u2|u3|u2|r[1]~0_combout\ : std_logic;
SIGNAL \u2|u3|u4|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u3|r[6]~3_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[3]~6_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[7]~4_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[4]~0_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[8]~4_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[5]~1_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[6]~2_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[7]~3_combout\ : std_logic;
SIGNAL \u2|v1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u2|am[5]~5_combout\ : std_logic;
SIGNAL \u2|u3|u3|r[1]~5_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u2|u4|u1|r[6]~3_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[9]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[8]~5_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[7]~4_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u4|r[2]~6_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[3]~7_combout\ : std_logic;
SIGNAL \u2|u3|u4|r[1]~5_combout\ : std_logic;
SIGNAL \u2|u4|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u4|u1|r[3]~1_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[4]~2_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[1]~7_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u4|u2|r[7]~1_combout\ : std_logic;
SIGNAL \u2|u4|u2|r[10]~4_combout\ : std_logic;
SIGNAL \u2|u4|u2|r[9]~3_combout\ : std_logic;
SIGNAL \u2|u4|u2|r[8]~2_combout\ : std_logic;
SIGNAL \u2|u4|u1|r[5]~8_combout\ : std_logic;
SIGNAL \u2|u4|u2|r[6]~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u4|u3|r[6]~0_combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|r[4]~2_combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|co~1_combout\ : std_logic;
SIGNAL \u2|u4|u3|r[5]~1_combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|r[1]~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|r[1]~3_combout\ : std_logic;
SIGNAL \u2|r[2]~1_combout\ : std_logic;
SIGNAL \u2|u4|u3|r[2]~4_combout\ : std_logic;
SIGNAL \u2|r[3]~2_combout\ : std_logic;
SIGNAL \u2|v1|u2|u3|co~0_combout\ : std_logic;
SIGNAL \u2|u2|u3|u1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u4|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u2|v3|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u2|q[15]~0_combout\ : std_logic;
SIGNAL \u3|v1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u2|v3|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u3|am[5]~2_combout\ : std_logic;
SIGNAL \u3|am[6]~1_combout\ : std_logic;
SIGNAL \u2|q[7]~3_combout\ : std_logic;
SIGNAL \u2|q[8]~1_combout\ : std_logic;
SIGNAL \u2|q[9]~2_combout\ : std_logic;
SIGNAL \u2|u2|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u3|v1|u1|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|r[1]~1_combout\ : std_logic;
SIGNAL \u3|v1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|r[4]~2_combout\ : std_logic;
SIGNAL \u3|u3|u2|r[4]~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u3|u3|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u3|r[1]~2_combout\ : std_logic;
SIGNAL \u3|am[7]~0_combout\ : std_logic;
SIGNAL \u3|u3|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u3|u3|u3|r[3]~1_combout\ : std_logic;
SIGNAL \u3|u3|u4|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u2|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u3|u3|u4|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u4|r[5]~5_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u4|r[6]~1_combout\ : std_logic;
SIGNAL \u3|u3|u4|r[2]~0_combout\ : std_logic;
SIGNAL \u2|v3|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u3|v1|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u3|am[4]~3_combout\ : std_logic;
SIGNAL \u3|u3|u4|r[1]~2_combout\ : std_logic;
SIGNAL \u3|u4|u2|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u3|u4|u1|r[6]~2_combout\ : std_logic;
SIGNAL \u3|u3|u4|r[3]~3_combout\ : std_logic;
SIGNAL \u3|u4|u1|r[4]~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|r[7]~3_combout\ : std_logic;
SIGNAL \u3|u3|u4|r[4]~4_combout\ : std_logic;
SIGNAL \u3|u4|u1|r[5]~1_combout\ : std_logic;
SIGNAL \u3|u4|u2|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u3|u4|u1|r[3]~4_combout\ : std_logic;
SIGNAL \u3|u4|u2|r[4]~2_combout\ : std_logic;
SIGNAL \u3|am[2]~5_combout\ : std_logic;
SIGNAL \u3|am[3]~4_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u0|u2|s~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|r[1]~6_combout\ : std_logic;
SIGNAL \u3|u4|u2|r[2]~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|r[2]~5_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|co~1_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|co~1_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|co~2_combout\ : std_logic;
SIGNAL \u3|u4|u2|r[3]~1_combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|r[1]~0_combout\ : std_logic;
SIGNAL \u3|u4|u3|r[1]~1_combout\ : std_logic;
SIGNAL \u3|r[2]~1_combout\ : std_logic;
SIGNAL \u3|r[3]~2_combout\ : std_logic;
SIGNAL \u3|v3|u0|u1|co~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u4|v1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u3|v3|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u3|q[15]~0_combout\ : std_logic;
SIGNAL \u4|am[4]~0_combout\ : std_logic;
SIGNAL \u3|q[5]~1_combout\ : std_logic;
SIGNAL \u3|q[7]~3_combout\ : std_logic;
SIGNAL \u4|v1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u3|q[8]~4_combout\ : std_logic;
SIGNAL \u3|q[6]~2_combout\ : std_logic;
SIGNAL \u4|u3|u4|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u4|r[1]~2_combout\ : std_logic;
SIGNAL \u4|u3|u4|r[2]~0_combout\ : std_logic;
SIGNAL \u4|u3|u3|r[4]~1_combout\ : std_logic;
SIGNAL \u4|u3|u4|r[4]~1_combout\ : std_logic;
SIGNAL \u4|u3|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u4|u3|u4|u1|u0|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[5]~6_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u4|r[3]~3_combout\ : std_logic;
SIGNAL \u4|u4|u2|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u4|u1|r[6]~2_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[7]~1_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[6]~0_combout\ : std_logic;
SIGNAL \u4|am[3]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|r[2]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|r[1]~3_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[3]~4_combout\ : std_logic;
SIGNAL \u4|u4|u1|r[3]~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[4]~5_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|u4|u4|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u4|u2|r[2]~3_combout\ : std_logic;
SIGNAL \u4|am[2]~2_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u0|u2|s~0_combout\ : std_logic;
SIGNAL \u4|u4|u3|r[3]~1_combout\ : std_logic;
SIGNAL \u4|u4|u2|r[1]~2_combout\ : std_logic;
SIGNAL \u4|u4|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u4|r[1]~0_combout\ : std_logic;
SIGNAL \u4|u4|u3|r[1]~2_combout\ : std_logic;
SIGNAL \u4|u4|u4|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u4|r[2]~1_combout\ : std_logic;
SIGNAL \u4|r[3]~2_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u4|u3|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|u4|u2|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u4|v3|u0|u2|co~0_combout\ : std_logic;
SIGNAL \u4|am[9]~3_combout\ : std_logic;
SIGNAL \u4|q[15]~0_combout\ : std_logic;
SIGNAL \u5|am[2]~2_combout\ : std_logic;
SIGNAL \u4|q[5]~2_combout\ : std_logic;
SIGNAL \u4|q[4]~1_combout\ : std_logic;
SIGNAL \u5|v1|u0|u2|co~0_combout\ : std_logic;
SIGNAL \u5|v1|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u4|q[6]~3_combout\ : std_logic;
SIGNAL \u5|u4|u1|r[2]~0_combout\ : std_logic;
SIGNAL \u5|u4|u2|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u5|u4|u1|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|q[3]~4_combout\ : std_logic;
SIGNAL \u5|am[3]~0_combout\ : std_logic;
SIGNAL \u5|u4|u2|r[4]~0_combout\ : std_logic;
SIGNAL \u5|am[4]~1_combout\ : std_logic;
SIGNAL \u5|u4|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u5|u4|u3|r[2]~0_combout\ : std_logic;
SIGNAL \u5|u4|u2|r[2]~1_combout\ : std_logic;
SIGNAL \u5|u4|u2|r[3]~2_combout\ : std_logic;
SIGNAL \u5|u4|u4|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u5|r[1]~0_combout\ : std_logic;
SIGNAL \u5|u4|u3|r[1]~1_combout\ : std_logic;
SIGNAL \u5|r[2]~1_combout\ : std_logic;
SIGNAL \u5|r[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[5]~8_combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[5]~5_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u5|u4|u3|ALT_INV_r[1]~1_combout\ : std_logic;
SIGNAL \u5|u4|u2|ALT_INV_r[3]~2_combout\ : std_logic;
SIGNAL \u5|u4|u2|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \u5|u4|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u5|ALT_INV_am[2]~2_combout\ : std_logic;
SIGNAL \u5|u4|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u4|u2|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u5|u4|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u5|u4|u1|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|ALT_INV_am[4]~1_combout\ : std_logic;
SIGNAL \u5|ALT_INV_am[3]~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_q[3]~4_combout\ : std_logic;
SIGNAL \u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|ALT_INV_q[6]~3_combout\ : std_logic;
SIGNAL \u4|ALT_INV_q[5]~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_q[4]~1_combout\ : std_logic;
SIGNAL \u5|v1|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|v1|u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|ALT_INV_q[15]~0_combout\ : std_logic;
SIGNAL \u4|v3|u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|ALT_INV_am[9]~3_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u3|ALT_INV_r[1]~2_combout\ : std_logic;
SIGNAL \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[4]~5_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[3]~4_combout\ : std_logic;
SIGNAL \u4|u4|u3|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[2]~3_combout\ : std_logic;
SIGNAL \u4|u4|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[1]~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_am[2]~2_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[7]~1_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[6]~0_combout\ : std_logic;
SIGNAL \u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u4|u1|ALT_INV_r[1]~3_combout\ : std_logic;
SIGNAL \u4|ALT_INV_am[3]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u4|ALT_INV_r[3]~3_combout\ : std_logic;
SIGNAL \u4|u4|u1|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \u4|u4|u1|ALT_INV_r[3]~0_combout\ : std_logic;
SIGNAL \u4|u3|u4|ALT_INV_r[1]~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_am[4]~0_combout\ : std_logic;
SIGNAL \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u4|ALT_INV_r[4]~1_combout\ : std_logic;
SIGNAL \u4|u3|u4|u1|u0|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u3|ALT_INV_r[4]~1_combout\ : std_logic;
SIGNAL \u4|u3|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u4|v1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u3|u4|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q[8]~4_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q[7]~3_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q[6]~2_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q[5]~1_combout\ : std_logic;
SIGNAL \u4|v1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|v3|u0|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_q[15]~0_combout\ : std_logic;
SIGNAL \u3|v3|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u3|ALT_INV_r[1]~1_combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u3|u4|u2|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u3|u4|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[2]~5_combout\ : std_logic;
SIGNAL \u3|u4|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[1]~6_combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[2]~5_combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[3]~4_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[3]~4_combout\ : std_logic;
SIGNAL \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[7]~3_combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[5]~1_combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[4]~4_combout\ : std_logic;
SIGNAL \u3|u4|u1|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[3]~3_combout\ : std_logic;
SIGNAL \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[1]~2_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[4]~3_combout\ : std_logic;
SIGNAL \u2|v3|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|v1|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[6]~1_combout\ : std_logic;
SIGNAL \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u3|ALT_INV_r[1]~2_combout\ : std_logic;
SIGNAL \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u3|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u3|u3|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u3|u3|u4|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[5]~2_combout\ : std_logic;
SIGNAL \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[6]~1_combout\ : std_logic;
SIGNAL \u3|u3|u2|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|ALT_INV_r[1]~1_combout\ : std_logic;
SIGNAL \u3|ALT_INV_am[7]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_q[7]~3_combout\ : std_logic;
SIGNAL \u3|v1|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_q[9]~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_q[8]~1_combout\ : std_logic;
SIGNAL \u3|v1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|v3|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|v1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u2|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_q[15]~0_combout\ : std_logic;
SIGNAL \u2|v3|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u2|u3|u1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|v1|u2|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|ALT_INV_r[2]~4_combout\ : std_logic;
SIGNAL \u2|u4|u3|ALT_INV_r[1]~3_combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u2|u4|u3|ALT_INV_r[5]~1_combout\ : std_logic;
SIGNAL \u2|u4|u3|ALT_INV_r[6]~0_combout\ : std_logic;
SIGNAL \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_r[10]~4_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_r[9]~3_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_r[8]~2_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_r[7]~1_combout\ : std_logic;
SIGNAL \u2|u4|u2|ALT_INV_r[6]~0_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[5]~8_combout\ : std_logic;
SIGNAL \u2|u4|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[1]~7_combout\ : std_logic;
SIGNAL \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[9]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[8]~5_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[7]~4_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[6]~3_combout\ : std_logic;
SIGNAL \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[3]~7_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[2]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[1]~5_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[8]~4_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[7]~3_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[5]~1_combout\ : std_logic;
SIGNAL \u2|u3|u4|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[3]~6_combout\ : std_logic;
SIGNAL \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[1]~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[5]~5_combout\ : std_logic;
SIGNAL \u2|v1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[7]~4_combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[6]~3_combout\ : std_logic;
SIGNAL \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[5]~2_combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[4]~1_combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \u2|u3|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|ALT_INV_r[1]~4_combout\ : std_logic;
SIGNAL \u2|u3|u1|ALT_INV_r[5]~3_combout\ : std_logic;
SIGNAL \u2|u3|u1|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u2|u3|u1|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u2|ALT_INV_r[1]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[7]~4_combout\ : std_logic;
SIGNAL \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[8]~3_combout\ : std_logic;
SIGNAL \u2|v1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u2|u4|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u2|u2|u4|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \u2|u2|u4|ALT_INV_r[3]~0_combout\ : std_logic;
SIGNAL \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|ALT_INV_q[12]~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_q[11]~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_q[10]~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[9]~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_q[9]~0_combout\ : std_logic;
SIGNAL \u1|v3|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|v1|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[6]~1_combout\ : std_logic;
SIGNAL \u2|v1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|v3|u0|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|v3|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_am[1]~0_combout\ : std_logic;
SIGNAL \u1|v3|u2|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|v3|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|v3|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u2|u1|u1|u1|u0|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \u1|v1|u3|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_r[4]~4_combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[1]~4_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|ALT_INV_co~3_combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u0|u3|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[2]~10_combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[9]~3_combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[8]~2_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[7]~1_combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[6]~0_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[12]~7_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[11]~6_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[10]~5_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[9]~4_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[8]~3_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[7]~2_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[6]~1_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[5]~9_combout\ : std_logic;
SIGNAL \u1|u4|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[1]~8_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[3]~9_combout\ : std_logic;
SIGNAL \u1|u4|u2|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[11]~7_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[10]~6_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[9]~5_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[8]~4_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[7]~3_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[4]~8_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[3]~7_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[2]~6_combout\ : std_logic;
SIGNAL \u1|u4|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[1]~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[4]~8_combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|ALT_INV_co~2_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[10]~4_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[9]~3_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[8]~2_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[7]~1_combout\ : std_logic;
SIGNAL \u1|u3|u4|ALT_INV_r[6]~0_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[5]~8_combout\ : std_logic;
SIGNAL \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[9]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[8]~6_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[7]~5_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[6]~4_combout\ : std_logic;
SIGNAL \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[4]~3_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[3]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[3]~2_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[2]~6_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[1]~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[5]~7_combout\ : std_logic;
SIGNAL \ALT_INV_amag[5]~8_combout\ : std_logic;
SIGNAL \u1|u3|u3|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[1]~5_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_amag[6]~7_combout\ : std_logic;
SIGNAL \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[8]~4_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[7]~3_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[5]~1_combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[4]~6_combout\ : std_logic;
SIGNAL \u1|u3|u2|ALT_INV_r[4]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[3]~5_combout\ : std_logic;
SIGNAL \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[1]~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[7]~5_combout\ : std_logic;
SIGNAL \ALT_INV_amag[7]~6_combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[7]~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[6]~2_combout\ : std_logic;
SIGNAL \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[5]~1_combout\ : std_logic;
SIGNAL \u1|u2|u4|ALT_INV_r[2]~2_combout\ : std_logic;
SIGNAL \u1|u2|u4|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u1|u2|u4|ALT_INV_r[1]~0_combout\ : std_logic;
SIGNAL \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[8]~4_combout\ : std_logic;
SIGNAL \ALT_INV_amag[8]~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[9]~3_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_r[1]~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[11]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[10]~1_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_r[4]~2_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_r[3]~1_combout\ : std_logic;
SIGNAL \u1|u2|u2|ALT_INV_r[2]~0_combout\ : std_logic;
SIGNAL \u1|v1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \ALT_INV_amag[11]~4_combout\ : std_logic;
SIGNAL \ALT_INV_amag[12]~3_combout\ : std_logic;
SIGNAL \u1|v1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|v1|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v1|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \ALT_INV_amag[13]~2_combout\ : std_logic;
SIGNAL \ALT_INV_amag[15]~1_combout\ : std_logic;
SIGNAL \ALT_INV_amag[15]~0_combout\ : std_logic;
SIGNAL \v1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_am[1]~0_combout\ : std_logic;
SIGNAL \u1|u4|u3|ALT_INV_r[2]~5_combout\ : std_logic;
SIGNAL \u4|u4|u2|ALT_INV_r[5]~6_combout\ : std_logic;
SIGNAL \u5|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;

BEGIN

ww_a <= a;
b0 <= ww_b0;
b1 <= ww_b1;
b2 <= ww_b2;
b3 <= ww_b3;
b4 <= ww_b4;
sign <= ww_sign;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
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
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\u1|u4|u2|ALT_INV_r[5]~8_combout\ <= NOT \u1|u4|u2|r[5]~8_combout\;
\u2|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ <= NOT \u2|u4|u4|u1|u3|u3|co~1_combout\;
\u3|u3|u4|ALT_INV_r[5]~5_combout\ <= NOT \u3|u3|u4|r[5]~5_combout\;
\u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\ <= NOT \u3|u4|u3|u1|u2|u2|co~2_combout\;
\u3|u4|u3|u1|u2|u2|ALT_INV_co~1_combout\ <= NOT \u3|u4|u3|u1|u2|u2|co~1_combout\;
\u3|u4|u3|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u3|u4|u3|u1|u2|u2|co~0_combout\;
\u3|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ <= NOT \u3|u4|u4|u1|u3|u3|co~1_combout\;
\u5|u4|u3|ALT_INV_r[1]~1_combout\ <= NOT \u5|u4|u3|r[1]~1_combout\;
\u5|u4|u2|ALT_INV_r[3]~2_combout\ <= NOT \u5|u4|u2|r[3]~2_combout\;
\u5|u4|u2|ALT_INV_r[2]~1_combout\ <= NOT \u5|u4|u2|r[2]~1_combout\;
\u5|u4|u3|ALT_INV_r[2]~0_combout\ <= NOT \u5|u4|u3|r[2]~0_combout\;
\u5|ALT_INV_am[2]~2_combout\ <= NOT \u5|am[2]~2_combout\;
\u5|u4|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u5|u4|u3|u1|u1|u1|co~combout\;
\u5|u4|u2|ALT_INV_r[4]~0_combout\ <= NOT \u5|u4|u2|r[4]~0_combout\;
\u5|u4|u1|ALT_INV_r[2]~0_combout\ <= NOT \u5|u4|u1|r[2]~0_combout\;
\u5|u4|u1|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u5|u4|u1|u1|u1|u0|co~combout\;
\u5|ALT_INV_am[4]~1_combout\ <= NOT \u5|am[4]~1_combout\;
\u5|ALT_INV_am[3]~0_combout\ <= NOT \u5|am[3]~0_combout\;
\u4|ALT_INV_q[3]~4_combout\ <= NOT \u4|q[3]~4_combout\;
\u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u5|u4|u2|u1|u1|u1|co~combout\;
\u4|ALT_INV_q[6]~3_combout\ <= NOT \u4|q[6]~3_combout\;
\u4|ALT_INV_q[5]~2_combout\ <= NOT \u4|q[5]~2_combout\;
\u4|ALT_INV_q[4]~1_combout\ <= NOT \u4|q[4]~1_combout\;
\u5|v1|u0|u3|ALT_INV_co~0_combout\ <= NOT \u5|v1|u0|u3|co~0_combout\;
\u5|v1|u0|u2|ALT_INV_co~0_combout\ <= NOT \u5|v1|u0|u2|co~0_combout\;
\u4|ALT_INV_q[15]~0_combout\ <= NOT \u4|q[15]~0_combout\;
\u4|v3|u0|u2|ALT_INV_co~0_combout\ <= NOT \u4|v3|u0|u2|co~0_combout\;
\u4|u4|u2|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u4|u4|u2|u1|u1|u3|co~combout\;
\u4|u3|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u4|u3|u3|u1|u1|u0|co~combout\;
\u4|ALT_INV_am[9]~3_combout\ <= NOT \u4|am[9]~3_combout\;
\u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u4|u4|u3|u1|u2|u0|co~combout\;
\u4|u4|u3|ALT_INV_r[1]~2_combout\ <= NOT \u4|u4|u3|r[1]~2_combout\;
\u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u4|u4|u4|u1|u3|u3|co~combout\;
\u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u4|u4|u4|u1|u3|u3|co~0_combout\;
\u4|u4|u2|ALT_INV_r[4]~5_combout\ <= NOT \u4|u4|u2|r[4]~5_combout\;
\u4|u4|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u4|u4|u3|u1|u1|u0|co~combout\;
\u4|u4|u2|ALT_INV_r[3]~4_combout\ <= NOT \u4|u4|u2|r[3]~4_combout\;
\u4|u4|u3|ALT_INV_r[3]~1_combout\ <= NOT \u4|u4|u3|r[3]~1_combout\;
\u4|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\ <= NOT \u4|u4|u3|u1|u0|u2|s~0_combout\;
\u4|u4|u2|ALT_INV_r[2]~3_combout\ <= NOT \u4|u4|u2|r[2]~3_combout\;
\u4|u4|u3|ALT_INV_r[2]~0_combout\ <= NOT \u4|u4|u3|r[2]~0_combout\;
\u4|u4|u2|ALT_INV_r[1]~2_combout\ <= NOT \u4|u4|u2|r[1]~2_combout\;
\u4|ALT_INV_am[2]~2_combout\ <= NOT \u4|am[2]~2_combout\;
\u4|u4|u2|ALT_INV_r[7]~1_combout\ <= NOT \u4|u4|u2|r[7]~1_combout\;
\u4|u4|u2|ALT_INV_r[6]~0_combout\ <= NOT \u4|u4|u2|r[6]~0_combout\;
\u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u4|u4|u3|u1|u1|u1|co~combout\;
\u4|u4|u1|ALT_INV_r[1]~3_combout\ <= NOT \u4|u4|u1|r[1]~3_combout\;
\u4|ALT_INV_am[3]~1_combout\ <= NOT \u4|am[3]~1_combout\;
\u4|u4|u1|ALT_INV_r[6]~2_combout\ <= NOT \u4|u4|u1|r[6]~2_combout\;
\u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u4|u2|u1|u1|u2|co~combout\;
\u4|u3|u4|ALT_INV_r[3]~3_combout\ <= NOT \u4|u3|u4|r[3]~3_combout\;
\u4|u4|u1|ALT_INV_r[2]~1_combout\ <= NOT \u4|u4|u1|r[2]~1_combout\;
\u4|u4|u1|ALT_INV_r[3]~0_combout\ <= NOT \u4|u4|u1|r[3]~0_combout\;
\u4|u3|u4|ALT_INV_r[1]~2_combout\ <= NOT \u4|u3|u4|r[1]~2_combout\;
\u4|ALT_INV_am[4]~0_combout\ <= NOT \u4|am[4]~0_combout\;
\u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u4|u1|u1|u1|u2|co~combout\;
\u4|u3|u4|ALT_INV_r[4]~1_combout\ <= NOT \u4|u3|u4|r[4]~1_combout\;
\u4|u3|u4|u1|u0|u2|ALT_INV_s~0_combout\ <= NOT \u4|u3|u4|u1|u0|u2|s~0_combout\;
\u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u4|u1|u1|u1|co~combout\;
\u4|u3|u3|ALT_INV_r[4]~1_combout\ <= NOT \u4|u3|u3|r[4]~1_combout\;
\u4|u3|u3|ALT_INV_r[2]~0_combout\ <= NOT \u4|u3|u3|r[2]~0_combout\;
\u4|v1|u1|u1|ALT_INV_co~0_combout\ <= NOT \u4|v1|u1|u1|co~0_combout\;
\u4|u3|u4|ALT_INV_r[2]~0_combout\ <= NOT \u4|u3|u4|r[2]~0_combout\;
\u3|ALT_INV_q[8]~4_combout\ <= NOT \u3|q[8]~4_combout\;
\u3|ALT_INV_q[7]~3_combout\ <= NOT \u3|q[7]~3_combout\;
\u3|ALT_INV_q[6]~2_combout\ <= NOT \u3|q[6]~2_combout\;
\u3|ALT_INV_q[5]~1_combout\ <= NOT \u3|q[5]~1_combout\;
\u4|v1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u4|v1|u1|u0|co~0_combout\;
\u3|v3|u0|u1|ALT_INV_co~0_combout\ <= NOT \u3|v3|u0|u1|co~0_combout\;
\u3|ALT_INV_q[15]~0_combout\ <= NOT \u3|q[15]~0_combout\;
\u3|v3|u1|u0|ALT_INV_co~0_combout\ <= NOT \u3|v3|u1|u0|co~0_combout\;
\u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u1|u2|u0|co~combout\;
\u3|u3|u1|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u1|u1|u0|co~combout\;
\u3|u4|u3|ALT_INV_r[1]~1_combout\ <= NOT \u3|u4|u3|r[1]~1_combout\;
\u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u4|u4|u1|u3|u3|co~combout\;
\u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u3|u4|u4|u1|u3|u3|co~0_combout\;
\u3|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\ <= NOT \u3|u4|u3|u1|u0|u2|s~0_combout\;
\u3|u4|u2|ALT_INV_r[4]~2_combout\ <= NOT \u3|u4|u2|r[4]~2_combout\;
\u3|u4|u2|ALT_INV_r[3]~1_combout\ <= NOT \u3|u4|u2|r[3]~1_combout\;
\u3|u4|u2|ALT_INV_r[2]~0_combout\ <= NOT \u3|u4|u2|r[2]~0_combout\;
\u3|u4|u3|ALT_INV_r[2]~0_combout\ <= NOT \u3|u4|u3|r[2]~0_combout\;
\u3|ALT_INV_am[2]~5_combout\ <= NOT \u3|am[2]~5_combout\;
\u3|u4|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u4|u3|u1|u1|u2|co~combout\;
\u3|u4|u1|ALT_INV_r[1]~6_combout\ <= NOT \u3|u4|u1|r[1]~6_combout\;
\u3|u4|u1|ALT_INV_r[2]~5_combout\ <= NOT \u3|u4|u1|r[2]~5_combout\;
\u3|u4|u1|ALT_INV_r[3]~4_combout\ <= NOT \u3|u4|u1|r[3]~4_combout\;
\u3|ALT_INV_am[3]~4_combout\ <= NOT \u3|am[3]~4_combout\;
\u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u3|u4|u2|u1|u2|u1|co~combout\;
\u3|u4|u1|ALT_INV_r[7]~3_combout\ <= NOT \u3|u4|u1|r[7]~3_combout\;
\u3|u4|u1|ALT_INV_r[6]~2_combout\ <= NOT \u3|u4|u1|r[6]~2_combout\;
\u3|u4|u1|ALT_INV_r[5]~1_combout\ <= NOT \u3|u4|u1|r[5]~1_combout\;
\u3|u3|u4|ALT_INV_r[4]~4_combout\ <= NOT \u3|u3|u4|r[4]~4_combout\;
\u3|u4|u1|ALT_INV_r[4]~0_combout\ <= NOT \u3|u4|u1|r[4]~0_combout\;
\u3|u3|u4|ALT_INV_r[3]~3_combout\ <= NOT \u3|u3|u4|r[3]~3_combout\;
\u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u3|u4|u2|u1|u1|u0|co~combout\;
\u3|u3|u4|ALT_INV_r[1]~2_combout\ <= NOT \u3|u3|u4|r[1]~2_combout\;
\u3|ALT_INV_am[4]~3_combout\ <= NOT \u3|am[4]~3_combout\;
\u2|v3|u0|u3|ALT_INV_co~0_combout\ <= NOT \u2|v3|u0|u3|co~0_combout\;
\u3|v1|u0|u3|ALT_INV_co~0_combout\ <= NOT \u3|v1|u0|u3|co~0_combout\;
\u3|u3|u4|ALT_INV_r[6]~1_combout\ <= NOT \u3|u3|u4|r[6]~1_combout\;
\u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u4|u1|u1|u1|u2|co~combout\;
\u3|u3|u3|ALT_INV_r[1]~2_combout\ <= NOT \u3|u3|u3|r[1]~2_combout\;
\u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u3|u1|u1|u2|co~combout\;
\u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u3|u3|u4|u1|u1|u3|co~combout\;
\u3|u3|u3|ALT_INV_r[3]~1_combout\ <= NOT \u3|u3|u3|r[3]~1_combout\;
\u3|u3|u3|ALT_INV_r[2]~0_combout\ <= NOT \u3|u3|u3|r[2]~0_combout\;
\u3|u3|u4|ALT_INV_r[2]~0_combout\ <= NOT \u3|u3|u4|r[2]~0_combout\;
\u3|ALT_INV_am[5]~2_combout\ <= NOT \u3|am[5]~2_combout\;
\u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u3|u3|u4|u1|u1|u1|co~combout\;
\u3|u3|u1|ALT_INV_r[4]~2_combout\ <= NOT \u3|u3|u1|r[4]~2_combout\;
\u3|ALT_INV_am[6]~1_combout\ <= NOT \u3|am[6]~1_combout\;
\u3|u3|u2|ALT_INV_r[4]~0_combout\ <= NOT \u3|u3|u2|r[4]~0_combout\;
\u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u3|u3|u3|u1|u1|u0|co~combout\;
\u3|u3|u1|ALT_INV_r[1]~1_combout\ <= NOT \u3|u3|u1|r[1]~1_combout\;
\u3|ALT_INV_am[7]~0_combout\ <= NOT \u3|am[7]~0_combout\;
\u2|ALT_INV_q[7]~3_combout\ <= NOT \u2|q[7]~3_combout\;
\u3|v1|u1|u2|ALT_INV_co~0_combout\ <= NOT \u3|v1|u1|u2|co~0_combout\;
\u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u3|u3|u2|u1|u1|u1|co~combout\;
\u3|u3|u1|ALT_INV_r[2]~0_combout\ <= NOT \u3|u3|u1|r[2]~0_combout\;
\u2|ALT_INV_q[9]~2_combout\ <= NOT \u2|q[9]~2_combout\;
\u2|ALT_INV_q[8]~1_combout\ <= NOT \u2|q[8]~1_combout\;
\u3|v1|u1|u3|ALT_INV_co~0_combout\ <= NOT \u3|v1|u1|u3|co~0_combout\;
\u2|v3|u1|u0|ALT_INV_co~0_combout\ <= NOT \u2|v3|u1|u0|co~0_combout\;
\u3|v1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u3|v1|u1|u0|co~0_combout\;
\u2|u2|u1|ALT_INV_r[2]~0_combout\ <= NOT \u2|u2|u1|r[2]~0_combout\;
\u2|ALT_INV_q[15]~0_combout\ <= NOT \u2|q[15]~0_combout\;
\u2|v3|u1|u1|ALT_INV_co~0_combout\ <= NOT \u2|v3|u1|u1|co~0_combout\;
\u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u2|u3|u4|u1|u2|u0|co~combout\;
\u2|u2|u3|u1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u2|u2|u3|u1|u1|u0|co~0_combout\;
\u2|v1|u2|u3|ALT_INV_co~0_combout\ <= NOT \u2|v1|u2|u3|co~0_combout\;
\u2|u4|u3|ALT_INV_r[2]~4_combout\ <= NOT \u2|u4|u3|r[2]~4_combout\;
\u2|u4|u3|ALT_INV_r[1]~3_combout\ <= NOT \u2|u4|u3|r[1]~3_combout\;
\u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u2|u4|u4|u1|u3|u3|co~combout\;
\u2|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u2|u4|u4|u1|u3|u3|co~0_combout\;
\u2|u4|u3|ALT_INV_r[4]~2_combout\ <= NOT \u2|u4|u3|r[4]~2_combout\;
\u2|u4|u3|ALT_INV_r[5]~1_combout\ <= NOT \u2|u4|u3|r[5]~1_combout\;
\u2|u4|u3|ALT_INV_r[6]~0_combout\ <= NOT \u2|u4|u3|r[6]~0_combout\;
\u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u4|u3|u1|u2|u3|co~combout\;
\u2|u4|u2|ALT_INV_r[10]~4_combout\ <= NOT \u2|u4|u2|r[10]~4_combout\;
\u2|u4|u2|ALT_INV_r[9]~3_combout\ <= NOT \u2|u4|u2|r[9]~3_combout\;
\u2|u4|u2|ALT_INV_r[8]~2_combout\ <= NOT \u2|u4|u2|r[8]~2_combout\;
\u2|u4|u2|ALT_INV_r[7]~1_combout\ <= NOT \u2|u4|u2|r[7]~1_combout\;
\u2|u4|u2|ALT_INV_r[6]~0_combout\ <= NOT \u2|u4|u2|r[6]~0_combout\;
\u2|u4|u1|ALT_INV_r[5]~8_combout\ <= NOT \u2|u4|u1|r[5]~8_combout\;
\u2|u4|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u3|u1|u1|u2|co~combout\;
\u2|u4|u1|ALT_INV_r[1]~7_combout\ <= NOT \u2|u4|u1|r[1]~7_combout\;
\u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u2|u1|u2|u2|co~combout\;
\u2|u4|u1|ALT_INV_r[9]~6_combout\ <= NOT \u2|u4|u1|r[9]~6_combout\;
\u2|u4|u1|ALT_INV_r[8]~5_combout\ <= NOT \u2|u4|u1|r[8]~5_combout\;
\u2|u4|u1|ALT_INV_r[7]~4_combout\ <= NOT \u2|u4|u1|r[7]~4_combout\;
\u2|u4|u1|ALT_INV_r[6]~3_combout\ <= NOT \u2|u4|u1|r[6]~3_combout\;
\u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u4|u2|u1|u1|u2|co~combout\;
\u2|u4|u1|ALT_INV_r[4]~2_combout\ <= NOT \u2|u4|u1|r[4]~2_combout\;
\u2|u3|u4|ALT_INV_r[3]~7_combout\ <= NOT \u2|u3|u4|r[3]~7_combout\;
\u2|u4|u1|ALT_INV_r[3]~1_combout\ <= NOT \u2|u4|u1|r[3]~1_combout\;
\u2|u3|u4|ALT_INV_r[2]~6_combout\ <= NOT \u2|u3|u4|r[2]~6_combout\;
\u2|u4|u1|ALT_INV_r[2]~0_combout\ <= NOT \u2|u4|u1|r[2]~0_combout\;
\u2|u3|u4|ALT_INV_r[1]~5_combout\ <= NOT \u2|u3|u4|r[1]~5_combout\;
\u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u1|u2|u1|co~combout\;
\u2|u3|u4|ALT_INV_r[8]~4_combout\ <= NOT \u2|u3|u4|r[8]~4_combout\;
\u2|u3|u4|ALT_INV_r[7]~3_combout\ <= NOT \u2|u3|u4|r[7]~3_combout\;
\u2|u3|u4|ALT_INV_r[6]~2_combout\ <= NOT \u2|u3|u4|r[6]~2_combout\;
\u2|u3|u4|ALT_INV_r[5]~1_combout\ <= NOT \u2|u3|u4|r[5]~1_combout\;
\u2|u3|u4|ALT_INV_r[4]~0_combout\ <= NOT \u2|u3|u4|r[4]~0_combout\;
\u2|u3|u3|ALT_INV_r[3]~6_combout\ <= NOT \u2|u3|u3|r[3]~6_combout\;
\u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u2|u4|u1|u1|u1|u0|co~combout\;
\u2|u3|u3|ALT_INV_r[1]~5_combout\ <= NOT \u2|u3|u3|r[1]~5_combout\;
\u2|ALT_INV_am[5]~5_combout\ <= NOT \u2|am[5]~5_combout\;
\u2|v1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u2|v1|u1|u0|co~0_combout\;
\u2|u3|u3|ALT_INV_r[7]~4_combout\ <= NOT \u2|u3|u3|r[7]~4_combout\;
\u2|u3|u3|ALT_INV_r[6]~3_combout\ <= NOT \u2|u3|u3|r[6]~3_combout\;
\u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u3|u4|u1|u1|u2|co~combout\;
\u2|u3|u3|ALT_INV_r[5]~2_combout\ <= NOT \u2|u3|u3|r[5]~2_combout\;
\u2|u3|u3|ALT_INV_r[4]~1_combout\ <= NOT \u2|u3|u3|r[4]~1_combout\;
\u2|u3|u2|ALT_INV_r[2]~1_combout\ <= NOT \u2|u3|u2|r[2]~1_combout\;
\u2|u3|u3|ALT_INV_r[2]~0_combout\ <= NOT \u2|u3|u3|r[2]~0_combout\;
\u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u2|u3|u3|u1|u1|u3|co~combout\;
\u2|u3|u1|ALT_INV_r[1]~4_combout\ <= NOT \u2|u3|u1|r[1]~4_combout\;
\u2|u3|u1|ALT_INV_r[5]~3_combout\ <= NOT \u2|u3|u1|r[5]~3_combout\;
\u2|u3|u1|ALT_INV_r[4]~2_combout\ <= NOT \u2|u3|u1|r[4]~2_combout\;
\u2|u3|u1|ALT_INV_r[3]~1_combout\ <= NOT \u2|u3|u1|r[3]~1_combout\;
\u2|u3|u1|ALT_INV_r[2]~0_combout\ <= NOT \u2|u3|u1|r[2]~0_combout\;
\u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u1|u1|u1|co~combout\;
\u2|u3|u2|ALT_INV_r[1]~0_combout\ <= NOT \u2|u3|u2|r[1]~0_combout\;
\u2|ALT_INV_am[7]~4_combout\ <= NOT \u2|am[7]~4_combout\;
\u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u3|u2|u1|u1|u2|co~combout\;
\u2|ALT_INV_am[8]~3_combout\ <= NOT \u2|am[8]~3_combout\;
\u2|v1|u1|u3|ALT_INV_co~0_combout\ <= NOT \u2|v1|u1|u3|co~0_combout\;
\u2|u2|u4|ALT_INV_r[4]~2_combout\ <= NOT \u2|u2|u4|r[4]~2_combout\;
\u2|u2|u4|ALT_INV_r[2]~1_combout\ <= NOT \u2|u2|u4|r[2]~1_combout\;
\u2|u2|u4|ALT_INV_r[3]~0_combout\ <= NOT \u2|u2|u4|r[3]~0_combout\;
\u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u2|u2|u4|u1|u1|u1|co~combout\;
\u1|ALT_INV_q[12]~3_combout\ <= NOT \u1|q[12]~3_combout\;
\u1|ALT_INV_q[11]~2_combout\ <= NOT \u1|q[11]~2_combout\;
\u1|ALT_INV_q[10]~1_combout\ <= NOT \u1|q[10]~1_combout\;
\u2|ALT_INV_am[9]~2_combout\ <= NOT \u2|am[9]~2_combout\;
\u1|ALT_INV_q[9]~0_combout\ <= NOT \u1|q[9]~0_combout\;
\u1|v3|u1|u2|ALT_INV_co~0_combout\ <= NOT \u1|v3|u1|u2|co~0_combout\;
\u2|v1|u2|u0|ALT_INV_co~0_combout\ <= NOT \u2|v1|u2|u0|co~0_combout\;
\u2|ALT_INV_am[6]~1_combout\ <= NOT \u2|am[6]~1_combout\;
\u2|v1|u1|u1|ALT_INV_co~0_combout\ <= NOT \u2|v1|u1|u1|co~0_combout\;
\u1|v3|u0|u1|ALT_INV_co~0_combout\ <= NOT \u1|v3|u0|u1|co~0_combout\;
\u1|v3|u1|u1|ALT_INV_co~0_combout\ <= NOT \u1|v3|u1|u1|co~0_combout\;
\u2|ALT_INV_am[1]~0_combout\ <= NOT \u2|am[1]~0_combout\;
\u1|v3|u2|u3|ALT_INV_co~0_combout\ <= NOT \u1|v3|u2|u3|co~0_combout\;
\u1|v3|u2|u1|ALT_INV_co~0_combout\ <= NOT \u1|v3|u2|u1|co~0_combout\;
\u1|v3|u1|u0|ALT_INV_co~0_combout\ <= NOT \u1|v3|u1|u0|co~0_combout\;
\u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u1|u4|u2|u1|u3|u0|co~combout\;
\u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u1|u3|u2|u1|u2|u0|co~combout\;
\u1|u2|u1|u1|u1|u0|ALT_INV_s~0_combout\ <= NOT \u1|u2|u1|u1|u1|u0|s~0_combout\;
\u1|v1|u3|u2|ALT_INV_co~1_combout\ <= NOT \u1|v1|u3|u2|co~1_combout\;
\u1|u2|u2|ALT_INV_r[4]~4_combout\ <= NOT \u1|u2|u2|r[4]~4_combout\;
\u1|u4|u3|ALT_INV_r[1]~4_combout\ <= NOT \u1|u4|u3|r[1]~4_combout\;
\u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u1|u4|u3|u1|u3|u1|co~combout\;
\u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\ <= NOT \u1|u4|u4|u1|u3|u3|co~4_combout\;
\u1|u4|u4|u1|u3|u3|ALT_INV_co~3_combout\ <= NOT \u1|u4|u4|u1|u3|u3|co~3_combout\;
\u1|u4|u4|u1|u3|u3|ALT_INV_co~2_combout\ <= NOT \u1|u4|u4|u1|u3|u3|co~2_combout\;
\u1|u4|u3|u1|u0|u3|ALT_INV_s~combout\ <= NOT \u1|u4|u3|u1|u0|u3|s~combout\;
\u1|ALT_INV_am[2]~10_combout\ <= NOT \u1|am[2]~10_combout\;
\u1|u4|u3|ALT_INV_r[9]~3_combout\ <= NOT \u1|u4|u3|r[9]~3_combout\;
\u1|u4|u3|ALT_INV_r[8]~2_combout\ <= NOT \u1|u4|u3|r[8]~2_combout\;
\u1|u4|u3|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u1|u4|u3|u1|u2|u0|co~combout\;
\u1|u4|u3|ALT_INV_r[7]~1_combout\ <= NOT \u1|u4|u3|r[7]~1_combout\;
\u1|u4|u3|ALT_INV_r[6]~0_combout\ <= NOT \u1|u4|u3|r[6]~0_combout\;
\u1|u4|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u3|u1|u1|u2|co~combout\;
\u1|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\ <= NOT \u1|u4|u4|u1|u3|u3|co~1_combout\;
\u1|u4|u2|ALT_INV_r[12]~7_combout\ <= NOT \u1|u4|u2|r[12]~7_combout\;
\u1|u4|u2|ALT_INV_r[11]~6_combout\ <= NOT \u1|u4|u2|r[11]~6_combout\;
\u1|u4|u2|ALT_INV_r[10]~5_combout\ <= NOT \u1|u4|u2|r[10]~5_combout\;
\u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u3|u1|u2|u2|co~combout\;
\u1|u4|u2|ALT_INV_r[9]~4_combout\ <= NOT \u1|u4|u2|r[9]~4_combout\;
\u1|u4|u2|ALT_INV_r[8]~3_combout\ <= NOT \u1|u4|u2|r[8]~3_combout\;
\u1|u4|u2|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u1|u4|u2|u1|u2|u0|co~combout\;
\u1|u4|u2|ALT_INV_r[7]~2_combout\ <= NOT \u1|u4|u2|r[7]~2_combout\;
\u1|u4|u2|ALT_INV_r[6]~1_combout\ <= NOT \u1|u4|u2|r[6]~1_combout\;
\u1|u4|u1|ALT_INV_r[5]~9_combout\ <= NOT \u1|u4|u1|r[5]~9_combout\;
\u1|u4|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u1|u4|u3|u1|u1|u1|co~combout\;
\u1|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u1|u4|u4|u1|u3|u3|co~0_combout\;
\u1|u4|u1|ALT_INV_r[1]~8_combout\ <= NOT \u1|u4|u1|r[1]~8_combout\;
\u1|ALT_INV_am[3]~9_combout\ <= NOT \u1|am[3]~9_combout\;
\u1|u4|u2|ALT_INV_r[4]~0_combout\ <= NOT \u1|u4|u2|r[4]~0_combout\;
\u1|u4|u1|ALT_INV_r[11]~7_combout\ <= NOT \u1|u4|u1|r[11]~7_combout\;
\u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u1|u4|u2|u1|u2|u3|co~combout\;
\u1|u4|u1|ALT_INV_r[10]~6_combout\ <= NOT \u1|u4|u1|r[10]~6_combout\;
\u1|u4|u1|ALT_INV_r[9]~5_combout\ <= NOT \u1|u4|u1|r[9]~5_combout\;
\u1|u4|u1|ALT_INV_r[8]~4_combout\ <= NOT \u1|u4|u1|r[8]~4_combout\;
\u1|u4|u1|ALT_INV_r[7]~3_combout\ <= NOT \u1|u4|u1|r[7]~3_combout\;
\u1|u4|u1|ALT_INV_r[6]~2_combout\ <= NOT \u1|u4|u1|r[6]~2_combout\;
\u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u2|u1|u1|u2|co~combout\;
\u1|u3|u4|ALT_INV_r[4]~8_combout\ <= NOT \u1|u3|u4|r[4]~8_combout\;
\u1|u3|u4|ALT_INV_r[3]~7_combout\ <= NOT \u1|u3|u4|r[3]~7_combout\;
\u1|u4|u1|ALT_INV_r[3]~1_combout\ <= NOT \u1|u4|u1|r[3]~1_combout\;
\u1|u3|u4|ALT_INV_r[2]~6_combout\ <= NOT \u1|u3|u4|r[2]~6_combout\;
\u1|u4|u1|ALT_INV_r[2]~0_combout\ <= NOT \u1|u4|u1|r[2]~0_combout\;
\u1|u3|u4|ALT_INV_r[1]~5_combout\ <= NOT \u1|u3|u4|r[1]~5_combout\;
\u1|ALT_INV_am[4]~8_combout\ <= NOT \u1|am[4]~8_combout\;
\u1|v1|u2|u0|ALT_INV_co~2_combout\ <= NOT \u1|v1|u2|u0|co~2_combout\;
\u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u1|u2|u3|co~combout\;
\u1|u3|u4|ALT_INV_r[10]~4_combout\ <= NOT \u1|u3|u4|r[10]~4_combout\;
\u1|u3|u4|ALT_INV_r[9]~3_combout\ <= NOT \u1|u3|u4|r[9]~3_combout\;
\u1|u3|u4|ALT_INV_r[8]~2_combout\ <= NOT \u1|u3|u4|r[8]~2_combout\;
\u1|u3|u4|ALT_INV_r[7]~1_combout\ <= NOT \u1|u3|u4|r[7]~1_combout\;
\u1|u3|u4|ALT_INV_r[6]~0_combout\ <= NOT \u1|u3|u4|r[6]~0_combout\;
\u1|u3|u3|ALT_INV_r[5]~8_combout\ <= NOT \u1|u3|u3|r[5]~8_combout\;
\u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u4|u1|u1|u1|u2|co~combout\;
\u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u4|u1|u2|u2|co~combout\;
\u1|u3|u3|ALT_INV_r[9]~7_combout\ <= NOT \u1|u3|u3|r[9]~7_combout\;
\u1|u3|u3|ALT_INV_r[8]~6_combout\ <= NOT \u1|u3|u3|r[8]~6_combout\;
\u1|u3|u3|ALT_INV_r[7]~5_combout\ <= NOT \u1|u3|u3|r[7]~5_combout\;
\u1|u3|u3|ALT_INV_r[6]~4_combout\ <= NOT \u1|u3|u3|r[6]~4_combout\;
\u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u4|u1|u1|u2|co~combout\;
\u1|u3|u3|ALT_INV_r[4]~3_combout\ <= NOT \u1|u3|u3|r[4]~3_combout\;
\u1|u3|u2|ALT_INV_r[3]~7_combout\ <= NOT \u1|u3|u2|r[3]~7_combout\;
\u1|u3|u3|ALT_INV_r[3]~2_combout\ <= NOT \u1|u3|u3|r[3]~2_combout\;
\u1|u3|u2|ALT_INV_r[2]~6_combout\ <= NOT \u1|u3|u2|r[2]~6_combout\;
\u1|u3|u3|ALT_INV_r[1]~1_combout\ <= NOT \u1|u3|u3|r[1]~1_combout\;
\u1|ALT_INV_am[5]~7_combout\ <= NOT \u1|am[5]~7_combout\;
\ALT_INV_amag[5]~8_combout\ <= NOT \amag[5]~8_combout\;
\u1|u3|u3|ALT_INV_r[2]~0_combout\ <= NOT \u1|u3|u3|r[2]~0_combout\;
\u1|u3|u2|ALT_INV_r[1]~5_combout\ <= NOT \u1|u3|u2|r[1]~5_combout\;
\u1|ALT_INV_am[6]~6_combout\ <= NOT \u1|am[6]~6_combout\;
\ALT_INV_amag[6]~7_combout\ <= NOT \amag[6]~7_combout\;
\u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u3|u1|u2|u1|co~combout\;
\u1|u3|u2|ALT_INV_r[8]~4_combout\ <= NOT \u1|u3|u2|r[8]~4_combout\;
\u1|u3|u2|ALT_INV_r[7]~3_combout\ <= NOT \u1|u3|u2|r[7]~3_combout\;
\u1|u3|u2|ALT_INV_r[6]~2_combout\ <= NOT \u1|u3|u2|r[6]~2_combout\;
\u1|u3|u2|ALT_INV_r[5]~1_combout\ <= NOT \u1|u3|u2|r[5]~1_combout\;
\u1|u3|u2|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u2|u1|u1|u1|co~combout\;
\u1|u3|u1|ALT_INV_r[4]~6_combout\ <= NOT \u1|u3|u1|r[4]~6_combout\;
\u1|u3|u2|ALT_INV_r[4]~0_combout\ <= NOT \u1|u3|u2|r[4]~0_combout\;
\u1|u3|u1|ALT_INV_r[3]~5_combout\ <= NOT \u1|u3|u1|r[3]~5_combout\;
\u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u1|u3|u3|u1|u1|u0|co~combout\;
\u1|u3|u1|ALT_INV_r[1]~4_combout\ <= NOT \u1|u3|u1|r[1]~4_combout\;
\u1|ALT_INV_am[7]~5_combout\ <= NOT \u1|am[7]~5_combout\;
\ALT_INV_amag[7]~6_combout\ <= NOT \amag[7]~6_combout\;
\u1|u3|u1|ALT_INV_r[7]~3_combout\ <= NOT \u1|u3|u1|r[7]~3_combout\;
\u1|u3|u1|ALT_INV_r[6]~2_combout\ <= NOT \u1|u3|u1|r[6]~2_combout\;
\u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u2|u1|u1|u2|co~combout\;
\u1|u3|u1|ALT_INV_r[5]~1_combout\ <= NOT \u1|u3|u1|r[5]~1_combout\;
\u1|u2|u4|ALT_INV_r[2]~2_combout\ <= NOT \u1|u2|u4|r[2]~2_combout\;
\u1|u2|u4|ALT_INV_r[3]~1_combout\ <= NOT \u1|u2|u4|r[3]~1_combout\;
\u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u1|u2|u3|u1|u1|u1|co~combout\;
\u1|u3|u1|ALT_INV_r[2]~0_combout\ <= NOT \u1|u3|u1|r[2]~0_combout\;
\u1|u2|u4|ALT_INV_r[1]~0_combout\ <= NOT \u1|u2|u4|r[1]~0_combout\;
\u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u2|u4|u1|u1|u2|co~combout\;
\u1|ALT_INV_am[8]~4_combout\ <= NOT \u1|am[8]~4_combout\;
\ALT_INV_amag[8]~5_combout\ <= NOT \amag[8]~5_combout\;
\u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u1|u1|u3|co~combout\;
\u1|ALT_INV_am[9]~3_combout\ <= NOT \u1|am[9]~3_combout\;
\u1|u2|u2|ALT_INV_r[1]~3_combout\ <= NOT \u1|u2|u2|r[1]~3_combout\;
\u1|ALT_INV_am[11]~2_combout\ <= NOT \u1|am[11]~2_combout\;
\u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\ <= NOT \u1|u2|u2|u1|u1|u1|s~combout\;
\u1|ALT_INV_am[10]~1_combout\ <= NOT \u1|am[10]~1_combout\;
\u1|u2|u2|ALT_INV_r[4]~2_combout\ <= NOT \u1|u2|u2|r[4]~2_combout\;
\u1|u2|u2|ALT_INV_r[3]~1_combout\ <= NOT \u1|u2|u2|r[3]~1_combout\;
\u1|u2|u2|ALT_INV_r[2]~0_combout\ <= NOT \u1|u2|u2|r[2]~0_combout\;
\u1|v1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u1|v1|u3|u2|co~0_combout\;
\ALT_INV_amag[11]~4_combout\ <= NOT \amag[11]~4_combout\;
\ALT_INV_amag[12]~3_combout\ <= NOT \amag[12]~3_combout\;
\u1|v1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u1|v1|u2|u2|co~0_combout\;
\u1|v1|u2|u0|ALT_INV_co~1_combout\ <= NOT \u1|v1|u2|u0|co~1_combout\;
\u1|v1|u2|u0|ALT_INV_co~0_combout\ <= NOT \u1|v1|u2|u0|co~0_combout\;
\v1|u2|u0|ALT_INV_co~0_combout\ <= NOT \v1|u2|u0|co~0_combout\;
\ALT_INV_amag[13]~2_combout\ <= NOT \amag[13]~2_combout\;
\ALT_INV_amag[15]~1_combout\ <= NOT \amag[15]~1_combout\;
\ALT_INV_amag[15]~0_combout\ <= NOT \amag[15]~0_combout\;
\v1|u2|u2|ALT_INV_co~0_combout\ <= NOT \v1|u2|u2|co~0_combout\;
\v1|u1|u1|ALT_INV_co~0_combout\ <= NOT \v1|u1|u1|co~0_combout\;
\u1|ALT_INV_am[1]~0_combout\ <= NOT \u1|am[1]~0_combout\;
\u1|u4|u3|ALT_INV_r[2]~5_combout\ <= NOT \u1|u4|u3|r[2]~5_combout\;
\u4|u4|u2|ALT_INV_r[5]~6_combout\ <= NOT \u4|u4|u2|r[5]~6_combout\;
\u5|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u5|u4|u4|u1|u3|u3|co~0_combout\;

-- Location: IOOBUF_X82_Y0_N59
\b0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0]~input_o\,
	devoe => ww_devoe,
	o => ww_b0(0));

-- Location: IOOBUF_X80_Y0_N36
\b0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|r[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_b0(1));

-- Location: IOOBUF_X78_Y0_N36
\b0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|r[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_b0(2));

-- Location: IOOBUF_X72_Y0_N2
\b0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|r[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_b0(3));

-- Location: IOOBUF_X80_Y0_N2
\b1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u4|u4|u1|u3|u3|co~4_combout\,
	devoe => ww_devoe,
	o => ww_b1(0));

-- Location: IOOBUF_X80_Y0_N53
\b1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|r[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_b1(1));

-- Location: IOOBUF_X74_Y0_N59
\b1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|r[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_b1(2));

-- Location: IOOBUF_X74_Y0_N42
\b1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|r[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_b1(3));

-- Location: IOOBUF_X78_Y0_N19
\b2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u4|u4|u1|u3|u3|co~combout\,
	devoe => ww_devoe,
	o => ww_b2(0));

-- Location: IOOBUF_X78_Y0_N53
\b2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|r[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_b2(1));

-- Location: IOOBUF_X60_Y0_N2
\b2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|r[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_b2(2));

-- Location: IOOBUF_X62_Y0_N19
\b2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|r[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_b2(3));

-- Location: IOOBUF_X84_Y0_N19
\b3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	devoe => ww_devoe,
	o => ww_b3(0));

-- Location: IOOBUF_X70_Y0_N19
\b3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|r[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_b3(1));

-- Location: IOOBUF_X66_Y0_N76
\b3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|r[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_b3(2));

-- Location: IOOBUF_X66_Y0_N42
\b3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|r[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_b3(3));

-- Location: IOOBUF_X70_Y0_N36
\b4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	devoe => ww_devoe,
	o => ww_b4(0));

-- Location: IOOBUF_X76_Y0_N2
\b4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|r[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_b4(1));

-- Location: IOOBUF_X64_Y0_N53
\b4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|r[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_b4(2));

-- Location: IOOBUF_X64_Y0_N19
\b4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|r[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_b4(3));

-- Location: IOOBUF_X76_Y0_N36
\sign~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a[15]~input_o\,
	devoe => ww_devoe,
	o => ww_sign);

-- Location: IOIBUF_X76_Y0_N18
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LABCELL_X71_Y2_N0
\amag[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[15]~0_combout\ = ( \a[15]~input_o\ & ( !\a[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[14]~input_o\,
	datae => \ALT_INV_a[15]~input_o\,
	combout => \amag[15]~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X70_Y2_N6
\v1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u1|u1|co~0_combout\ = ( !\a[5]~input_o\ & ( !\a[2]~input_o\ & ( (!\a[4]~input_o\ & (!\a[1]~input_o\ & (!\a[3]~input_o\ & !\a[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \ALT_INV_a[5]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \v1|u1|u1|co~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LABCELL_X70_Y2_N42
\v1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u2|u2|co~0_combout\ = ( !\a[6]~input_o\ & ( !\a[10]~input_o\ & ( (!\a[9]~input_o\ & (!\a[7]~input_o\ & (!\a[8]~input_o\ & \v1|u1|u1|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[9]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[8]~input_o\,
	datad => \v1|u1|u1|ALT_INV_co~0_combout\,
	datae => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[10]~input_o\,
	combout => \v1|u2|u2|co~0_combout\);

-- Location: IOIBUF_X76_Y0_N52
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LABCELL_X71_Y2_N36
\amag[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[15]~1_combout\ = ( !\a[11]~input_o\ & ( (!\a[13]~input_o\ & (!\a[12]~input_o\ & (\amag[15]~0_combout\ & \v1|u2|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \ALT_INV_amag[15]~0_combout\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \amag[15]~1_combout\);

-- Location: LABCELL_X70_Y2_N24
\u1|v1|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u2|u0|co~0_combout\ = ( !\a[2]~input_o\ & ( (!\a[4]~input_o\ & (!\a[1]~input_o\ & (!\a[3]~input_o\ & !\a[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \u1|v1|u2|u0|co~0_combout\);

-- Location: LABCELL_X70_Y2_N18
\u1|v1|u2|u0|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u2|u0|co~1_combout\ = ( \u1|v1|u2|u0|co~0_combout\ & ( (!\a[8]~input_o\ & (!\a[7]~input_o\ & (!\a[5]~input_o\ & !\a[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \u1|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u1|v1|u2|u0|co~1_combout\);

-- Location: LABCELL_X70_Y2_N21
\v1|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u2|u0|co~0_combout\ = ( \v1|u1|u1|co~0_combout\ & ( (!\a[8]~input_o\ & (!\a[7]~input_o\ & !\a[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	dataf => \v1|u1|u1|ALT_INV_co~0_combout\,
	combout => \v1|u2|u0|co~0_combout\);

-- Location: LABCELL_X70_Y2_N36
\u1|am[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[10]~1_combout\ = ( \a[15]~input_o\ & ( \a[10]~input_o\ & ( (!\a[9]~input_o\ & ((!\v1|u2|u0|co~0_combout\ & ((\amag[15]~1_combout\))) # (\v1|u2|u0|co~0_combout\ & ((!\amag[15]~1_combout\) # (\u1|v1|u2|u0|co~1_combout\))))) # (\a[9]~input_o\ & 
-- (\amag[15]~1_combout\ & ((!\u1|v1|u2|u0|co~1_combout\) # (\v1|u2|u0|co~0_combout\)))) ) ) ) # ( !\a[15]~input_o\ & ( \a[10]~input_o\ & ( (!\amag[15]~1_combout\) # ((\u1|v1|u2|u0|co~1_combout\ & !\a[9]~input_o\)) ) ) ) # ( \a[15]~input_o\ & ( 
-- !\a[10]~input_o\ & ( (!\a[9]~input_o\ & ((!\v1|u2|u0|co~0_combout\ & ((!\amag[15]~1_combout\))) # (\v1|u2|u0|co~0_combout\ & (!\u1|v1|u2|u0|co~1_combout\ & \amag[15]~1_combout\)))) # (\a[9]~input_o\ & ((!\amag[15]~1_combout\) # 
-- ((\u1|v1|u2|u0|co~1_combout\ & !\v1|u2|u0|co~0_combout\)))) ) ) ) # ( !\a[15]~input_o\ & ( !\a[10]~input_o\ & ( (\amag[15]~1_combout\ & ((!\u1|v1|u2|u0|co~1_combout\) # (\a[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011111100110001100011111111010001000000110011100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u2|u0|ALT_INV_co~1_combout\,
	datab => \ALT_INV_a[9]~input_o\,
	datac => \v1|u2|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[15]~1_combout\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[10]~input_o\,
	combout => \u1|am[10]~1_combout\);

-- Location: LABCELL_X71_Y2_N18
\u1|v1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u3|u2|co~0_combout\ = ( \a[12]~input_o\ & ( \a[11]~input_o\ & ( !\a[14]~input_o\ $ (\a[15]~input_o\) ) ) ) # ( !\a[12]~input_o\ & ( \a[11]~input_o\ & ( !\a[14]~input_o\ $ (\a[15]~input_o\) ) ) ) # ( \a[12]~input_o\ & ( !\a[11]~input_o\ & ( 
-- !\a[14]~input_o\ $ (\a[15]~input_o\) ) ) ) # ( !\a[12]~input_o\ & ( !\a[11]~input_o\ & ( !\a[14]~input_o\ $ (((\a[15]~input_o\ & ((!\v1|u2|u2|co~0_combout\) # (\a[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111001001110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	datae => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \u1|v1|u3|u2|co~0_combout\);

-- Location: LABCELL_X71_Y2_N12
\amag[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[12]~3_combout\ = ( \a[11]~input_o\ & ( !\a[15]~input_o\ $ (!\a[12]~input_o\) ) ) # ( !\a[11]~input_o\ & ( !\a[12]~input_o\ $ (((!\a[15]~input_o\) # (\v1|u2|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010111011010001001011101101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[12]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \amag[12]~3_combout\);

-- Location: LABCELL_X70_Y2_N33
\u1|v1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u2|u2|co~0_combout\ = ( \v1|u2|u0|co~0_combout\ & ( (!\a[10]~input_o\ & (\u1|v1|u2|u0|co~1_combout\ & !\a[9]~input_o\)) ) ) # ( !\v1|u2|u0|co~0_combout\ & ( (\u1|v1|u2|u0|co~1_combout\ & ((!\a[15]~input_o\ & (!\a[10]~input_o\ & !\a[9]~input_o\)) # 
-- (\a[15]~input_o\ & (\a[10]~input_o\ & \a[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001000010000000000100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_a[10]~input_o\,
	datac => \u1|v1|u2|u0|ALT_INV_co~1_combout\,
	datad => \ALT_INV_a[9]~input_o\,
	dataf => \v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u1|v1|u2|u2|co~0_combout\);

-- Location: LABCELL_X71_Y2_N15
\amag[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[11]~4_combout\ = ( \a[11]~input_o\ & ( (!\a[15]~input_o\) # (\v1|u2|u2|co~0_combout\) ) ) # ( !\a[11]~input_o\ & ( (\a[15]~input_o\ & !\v1|u2|u2|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \v1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \amag[11]~4_combout\);

-- Location: LABCELL_X71_Y2_N39
\amag[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[13]~2_combout\ = ( \a[11]~input_o\ & ( !\a[13]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[11]~input_o\ & ( !\a[13]~input_o\ $ (((!\a[15]~input_o\) # ((!\a[12]~input_o\ & \v1|u2|u2|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100110010101011010011001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[11]~input_o\,
	combout => \amag[13]~2_combout\);

-- Location: LABCELL_X73_Y2_N42
\u1|u2|u2|u1|u1|u1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|u1|u1|u1|s~combout\ = ( !\amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( \u1|v1|u3|u2|co~0_combout\ ) ) ) # ( \amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( (!\amag[12]~3_combout\ & (\u1|v1|u2|u2|co~0_combout\ & !\amag[11]~4_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_amag[12]~3_combout\,
	datac => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[11]~4_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \ALT_INV_amag[13]~2_combout\,
	combout => \u1|u2|u2|u1|u1|u1|s~combout\);

-- Location: LABCELL_X73_Y2_N21
\u1|am[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[11]~2_combout\ = ( \amag[11]~4_combout\ & ( (!\amag[15]~1_combout\) # (\u1|v1|u2|u2|co~0_combout\) ) ) # ( !\amag[11]~4_combout\ & ( (!\u1|v1|u2|u2|co~0_combout\ & \amag[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[15]~1_combout\,
	dataf => \ALT_INV_amag[11]~4_combout\,
	combout => \u1|am[11]~2_combout\);

-- Location: MLABCELL_X72_Y2_N3
\u1|u2|u2|r[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|r[1]~3_combout\ = !\u1|am[11]~2_combout\ $ (((!\u1|u2|u2|u1|u1|u1|s~combout\) # (\u1|am[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001100001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_am[10]~1_combout\,
	datac => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	datad => \u1|ALT_INV_am[11]~2_combout\,
	combout => \u1|u2|u2|r[1]~3_combout\);

-- Location: LABCELL_X71_Y2_N33
\u1|am[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[9]~3_combout\ = ( \v1|u2|u0|co~0_combout\ & ( !\a[9]~input_o\ $ (((!\amag[15]~1_combout\) # (\u1|v1|u2|u0|co~1_combout\))) ) ) # ( !\v1|u2|u0|co~0_combout\ & ( !\a[15]~input_o\ $ (!\a[9]~input_o\ $ (((\amag[15]~1_combout\ & 
-- !\u1|v1|u2|u0|co~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110011010011001011001101000110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|v1|u2|u0|ALT_INV_co~1_combout\,
	datad => \ALT_INV_a[9]~input_o\,
	dataf => \v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u1|am[9]~3_combout\);

-- Location: LABCELL_X71_Y2_N54
\u1|u2|u2|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|r[2]~0_combout\ = ( !\u1|v1|u2|u2|co~0_combout\ & ( \amag[15]~1_combout\ & ( \amag[11]~4_combout\ ) ) ) # ( \u1|v1|u2|u2|co~0_combout\ & ( !\amag[15]~1_combout\ & ( !\amag[12]~3_combout\ $ (((!\amag[11]~4_combout\ & 
-- ((!\u1|v1|u3|u2|co~0_combout\) # (\amag[13]~2_combout\))))) ) ) ) # ( !\u1|v1|u2|u2|co~0_combout\ & ( !\amag[15]~1_combout\ & ( !\amag[12]~3_combout\ $ (((!\amag[11]~4_combout\ & ((!\u1|v1|u3|u2|co~0_combout\) # (\amag[13]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101111000100001110111100010000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[13]~2_combout\,
	datab => \ALT_INV_amag[11]~4_combout\,
	datac => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[12]~3_combout\,
	datae => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_amag[15]~1_combout\,
	combout => \u1|u2|u2|r[2]~0_combout\);

-- Location: LABCELL_X73_Y2_N6
\u1|u2|u2|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|r[4]~2_combout\ = ( \amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( (!\u1|v1|u2|u2|co~0_combout\) # (!\amag[11]~4_combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( (!\u1|v1|u3|u2|co~0_combout\ & \amag[12]~3_combout\) ) ) ) 
-- # ( \amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( (!\u1|v1|u2|u2|co~0_combout\) # (!\amag[11]~4_combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( (!\u1|v1|u3|u2|co~0_combout\ & !\amag[12]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111111111111000000100010001000101111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_amag[12]~3_combout\,
	datac => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[11]~4_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \ALT_INV_amag[13]~2_combout\,
	combout => \u1|u2|u2|r[4]~2_combout\);

-- Location: LABCELL_X73_Y2_N30
\u1|u2|u2|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|r[3]~1_combout\ = ( \amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( (\u1|v1|u2|u2|co~0_combout\ & \amag[11]~4_combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( !\amag[12]~3_combout\ $ (((\u1|v1|u3|u2|co~0_combout\ & 
-- !\amag[11]~4_combout\))) ) ) ) # ( \amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( (\u1|v1|u2|u2|co~0_combout\ & (((!\u1|v1|u3|u2|co~0_combout\ & !\amag[12]~3_combout\)) # (\amag[11]~4_combout\))) ) ) ) # ( !\amag[15]~1_combout\ & ( 
-- !\amag[13]~2_combout\ & ( (\amag[12]~3_combout\) # (\u1|v1|u3|u2|co~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111000010000000111110011001110011000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_amag[12]~3_combout\,
	datac => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[11]~4_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \ALT_INV_amag[13]~2_combout\,
	combout => \u1|u2|u2|r[3]~1_combout\);

-- Location: MLABCELL_X72_Y2_N36
\u1|u3|u1|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u1|u3|co~combout\ = ( \u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[2]~0_combout\ $ (!\u1|u2|u2|r[4]~2_combout\)) # (\u1|am[9]~3_combout\))) # (\u1|u2|u2|r[1]~3_combout\ & 
-- (\u1|am[9]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ $ (\u1|u2|u2|r[4]~2_combout\)))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (!\u1|am[9]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ $ (\u1|u2|u2|r[4]~2_combout\))) ) ) ) # ( 
-- \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[4]~2_combout\) # (\u1|u2|u2|r[2]~0_combout\))) # (\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[2]~0_combout\) # (\u1|u2|u2|r[4]~2_combout\))) ) ) ) # ( 
-- !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( !\u1|u2|u2|r[1]~3_combout\ $ (((!\u1|u2|u2|r[4]~2_combout\) # (\u1|u2|u2|r[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101111110100101111111000000000011000011101010100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	datad => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	datae => \u1|ALT_INV_am[10]~1_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	combout => \u1|u3|u1|u1|u1|u3|co~combout\);

-- Location: MLABCELL_X72_Y2_N12
\u1|u2|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u4|u1|u1|u2|co~combout\ = ( \u1|am[10]~1_combout\ & ( \u1|u2|u2|r[2]~0_combout\ & ( (!\u1|am[11]~2_combout\ & (!\u1|u2|u2|r[3]~1_combout\ & !\u1|u2|u2|r[4]~2_combout\)) # (\u1|am[11]~2_combout\ & ((!\u1|u2|u2|r[3]~1_combout\) # 
-- (!\u1|u2|u2|r[4]~2_combout\))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( \u1|u2|u2|r[2]~0_combout\ & ( (!\u1|u2|u2|r[3]~1_combout\ & ((!\u1|u2|u2|r[4]~2_combout\) # (!\u1|am[11]~2_combout\ $ (!\u1|u2|u2|u1|u1|u1|s~combout\)))) # (\u1|u2|u2|r[3]~1_combout\ & 
-- (!\u1|u2|u2|r[4]~2_combout\ & (!\u1|am[11]~2_combout\ $ (!\u1|u2|u2|u1|u1|u1|s~combout\)))) ) ) ) # ( \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[2]~0_combout\ & ( (!\u1|am[11]~2_combout\ & (!\u1|u2|u2|r[3]~1_combout\ & \u1|u2|u2|r[4]~2_combout\)) # 
-- (\u1|am[11]~2_combout\ & ((!\u1|u2|u2|r[3]~1_combout\) # (\u1|u2|u2|r[4]~2_combout\))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[2]~0_combout\ & ( (!\u1|u2|u2|r[3]~1_combout\ & ((!\u1|am[11]~2_combout\ $ (!\u1|u2|u2|u1|u1|u1|s~combout\)) # 
-- (\u1|u2|u2|r[4]~2_combout\))) # (\u1|u2|u2|r[3]~1_combout\ & (\u1|u2|u2|r[4]~2_combout\ & (!\u1|am[11]~2_combout\ $ (!\u1|u2|u2|u1|u1|u1|s~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000011110110010100001111010111110110011000001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[11]~2_combout\,
	datab => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	datac => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	datad => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	datae => \u1|ALT_INV_am[10]~1_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	combout => \u1|u2|u4|u1|u1|u2|co~combout\);

-- Location: LABCELL_X73_Y2_N54
\u1|u2|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u3|u1|u1|u1|co~combout\ = ( \amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( (!\u1|v1|u2|u2|co~0_combout\ & \amag[11]~4_combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( \amag[13]~2_combout\ & ( (!\amag[12]~3_combout\ $ (!\amag[11]~4_combout\)) # 
-- (\u1|v1|u3|u2|co~0_combout\) ) ) ) # ( \amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( (!\u1|v1|u2|u2|co~0_combout\ & (((\amag[11]~4_combout\)))) # (\u1|v1|u2|u2|co~0_combout\ & (!\u1|v1|u3|u2|co~0_combout\ & (!\amag[12]~3_combout\ & 
-- !\amag[11]~4_combout\))) ) ) ) # ( !\amag[15]~1_combout\ & ( !\amag[13]~2_combout\ & ( !\amag[12]~3_combout\ $ (((!\u1|v1|u3|u2|co~0_combout\ & !\amag[11]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100000010001111000001110111110111010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_amag[12]~3_combout\,
	datac => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[11]~4_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \ALT_INV_amag[13]~2_combout\,
	combout => \u1|u2|u3|u1|u1|u1|co~combout\);

-- Location: MLABCELL_X72_Y2_N30
\u1|u2|u4|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u4|r[3]~1_combout\ = ( \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[1]~3_combout\ $ (((!\u1|u2|u4|u1|u1|u2|co~combout\) # ((!\u1|u2|u3|u1|u1|u1|co~combout\) # (\u1|am[9]~3_combout\)))) ) ) # ( !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[1]~3_combout\ $ 
-- (((!\u1|u2|u4|u1|u1|u2|co~combout\ & ((\u1|u2|u3|u1|u1|u1|co~combout\))) # (\u1|u2|u4|u1|u1|u2|co~combout\ & ((!\u1|am[9]~3_combout\) # (!\u1|u2|u3|u1|u1|u1|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100011110101001010001111000001111010010110000111101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	datad => \u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u1|ALT_INV_am[10]~1_combout\,
	combout => \u1|u2|u4|r[3]~1_combout\);

-- Location: LABCELL_X70_Y2_N12
\amag[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[8]~5_combout\ = ( \a[7]~input_o\ & ( !\a[15]~input_o\ $ (!\a[8]~input_o\) ) ) # ( !\a[7]~input_o\ & ( !\a[8]~input_o\ $ (((!\a[15]~input_o\) # ((\v1|u1|u1|co~0_combout\ & !\a[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101011010010010110101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \v1|u1|u1|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[8]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[7]~input_o\,
	combout => \amag[8]~5_combout\);

-- Location: LABCELL_X71_Y2_N6
\u1|am[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[8]~4_combout\ = ( \amag[15]~0_combout\ & ( \amag[8]~5_combout\ & ( (((!\v1|u2|u2|co~0_combout\) # (\a[11]~input_o\)) # (\a[12]~input_o\)) # (\a[13]~input_o\) ) ) ) # ( !\amag[15]~0_combout\ & ( \amag[8]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	datae => \ALT_INV_amag[15]~0_combout\,
	dataf => \ALT_INV_amag[8]~5_combout\,
	combout => \u1|am[8]~4_combout\);

-- Location: MLABCELL_X72_Y2_N21
\u1|u2|u4|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u4|r[1]~0_combout\ = ( \u1|am[8]~4_combout\ & ( \u1|am[9]~3_combout\ ) ) # ( !\u1|am[8]~4_combout\ & ( !\u1|am[9]~3_combout\ $ (!\u1|u2|u4|u1|u1|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_am[9]~3_combout\,
	datad => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|ALT_INV_am[8]~4_combout\,
	combout => \u1|u2|u4|r[1]~0_combout\);

-- Location: MLABCELL_X72_Y2_N6
\u1|u3|u1|r[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[5]~1_combout\ = ( \u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & (((\u1|u2|u2|r[4]~2_combout\)))) # (\u1|u2|u2|r[1]~3_combout\ & ((!\u1|am[9]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\)) # 
-- (\u1|am[9]~3_combout\ & ((\u1|u2|u2|r[4]~2_combout\))))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & ((!\u1|am[9]~3_combout\ & ((\u1|u2|u2|r[4]~2_combout\))) # (\u1|am[9]~3_combout\ & 
-- (!\u1|u2|u2|r[2]~0_combout\)))) # (\u1|u2|u2|r[1]~3_combout\ & (((\u1|u2|u2|r[4]~2_combout\)))) ) ) ) # ( \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\)) # (\u1|u2|u2|r[1]~3_combout\ & 
-- (\u1|u2|u2|r[2]~0_combout\ & \u1|u2|u2|r[4]~2_combout\)) ) ) ) # ( !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ & !\u1|u2|u2|r[4]~2_combout\)) # (\u1|u2|u2|r[1]~3_combout\ & 
-- ((\u1|u2|u2|r[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010101101000001010010100100000111111010100000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	datad => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	datae => \u1|ALT_INV_am[10]~1_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	combout => \u1|u3|u1|r[5]~1_combout\);

-- Location: MLABCELL_X72_Y2_N33
\u1|u2|u4|r[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u4|r[2]~2_combout\ = !\u1|am[10]~1_combout\ $ (((!\u1|u2|u4|u1|u1|u2|co~combout\ $ (!\u1|u2|u3|u1|u1|u1|co~combout\)) # (\u1|am[9]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001111011100001000111101110000100011110111000010001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u1|ALT_INV_am[10]~1_combout\,
	combout => \u1|u2|u4|r[2]~2_combout\);

-- Location: MLABCELL_X72_Y2_N45
\u1|u3|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|u1|u1|u2|co~combout\ = ( \u1|u2|u4|r[2]~2_combout\ & ( !\u1|u2|u4|r[3]~1_combout\ $ (!\u1|u3|u1|r[5]~1_combout\ $ (((!\u1|u3|u1|u1|u1|u3|co~combout\ & !\u1|u2|u4|r[1]~0_combout\)))) ) ) # ( !\u1|u2|u4|r[2]~2_combout\ & ( 
-- !\u1|u2|u4|r[3]~1_combout\ $ (!\u1|u3|u1|r[5]~1_combout\ $ (((!\u1|u3|u1|u1|u1|u3|co~combout\ & \u1|u2|u4|r[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110001110011100011010010011011011001001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u1|u2|u4|ALT_INV_r[3]~1_combout\,
	datac => \u1|u2|u4|ALT_INV_r[1]~0_combout\,
	datad => \u1|u3|u1|ALT_INV_r[5]~1_combout\,
	dataf => \u1|u2|u4|ALT_INV_r[2]~2_combout\,
	combout => \u1|u3|u2|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X72_Y2_N48
\u1|u3|u1|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[6]~2_combout\ = ( \u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (\u1|u2|u2|r[4]~2_combout\ & ((!\u1|am[9]~3_combout\) # (!\u1|u2|u2|r[2]~0_combout\))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( 
-- (\u1|u2|u2|r[4]~2_combout\ & ((!\u1|u2|u2|r[2]~0_combout\ & (\u1|u2|u2|r[1]~3_combout\)) # (\u1|u2|u2|r[2]~0_combout\ & ((\u1|am[9]~3_combout\))))) ) ) ) # ( \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & 
-- (\u1|u2|u2|r[2]~0_combout\ & \u1|u2|u2|r[4]~2_combout\)) ) ) ) # ( !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ $ (\u1|u2|u2|r[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010000000000000101000000000010100110000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	datad => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	datae => \u1|ALT_INV_am[10]~1_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	combout => \u1|u3|u1|r[6]~2_combout\);

-- Location: MLABCELL_X72_Y2_N18
\u1|u3|u1|r[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[7]~3_combout\ = ( \u1|u2|u2|r[4]~2_combout\ & ( (!\u1|am[10]~1_combout\ & (!\u1|u2|u2|r[1]~3_combout\ & (!\u1|u2|u2|r[3]~1_combout\ $ (!\u1|u2|u2|r[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	datab => \u1|ALT_INV_am[10]~1_combout\,
	datac => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	datad => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	combout => \u1|u3|u1|r[7]~3_combout\);

-- Location: LABCELL_X73_Y2_N51
\u1|u3|u2|r[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[8]~4_combout\ = ( \u1|u3|u1|r[7]~3_combout\ & ( !\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[6]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	combout => \u1|u3|u2|r[8]~4_combout\);

-- Location: LABCELL_X73_Y2_N15
\u1|u3|u2|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[6]~2_combout\ = ( \u1|u3|u1|r[7]~3_combout\ & ( (!\u1|u3|u2|u1|u1|u2|co~combout\ & ((!\u1|u3|u1|r[6]~2_combout\) # (\u1|u3|u1|r[5]~1_combout\))) # (\u1|u3|u2|u1|u1|u2|co~combout\ & (!\u1|u3|u1|r[6]~2_combout\ & \u1|u3|u1|r[5]~1_combout\)) ) ) 
-- # ( !\u1|u3|u1|r[7]~3_combout\ & ( (!\u1|u3|u2|u1|u1|u2|co~combout\ & ((\u1|u3|u1|r[5]~1_combout\) # (\u1|u3|u1|r[6]~2_combout\))) # (\u1|u3|u2|u1|u1|u2|co~combout\ & (\u1|u3|u1|r[6]~2_combout\ & \u1|u3|u1|r[5]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111110100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	datad => \u1|u3|u1|ALT_INV_r[5]~1_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	combout => \u1|u3|u2|r[6]~2_combout\);

-- Location: LABCELL_X73_Y2_N48
\u1|u3|u2|r[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[7]~3_combout\ = ( \u1|u3|u1|r[7]~3_combout\ & ( (!\u1|u3|u2|u1|u1|u2|co~combout\) # (\u1|u3|u1|r[6]~2_combout\) ) ) # ( !\u1|u3|u1|r[7]~3_combout\ & ( (\u1|u3|u2|u1|u1|u2|co~combout\ & \u1|u3|u1|r[6]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	combout => \u1|u3|u2|r[7]~3_combout\);

-- Location: MLABCELL_X72_Y2_N24
\u1|u3|u1|r[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[4]~6_combout\ = ( \u1|am[10]~1_combout\ & ( \u1|u2|u2|r[3]~1_combout\ & ( (\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[2]~0_combout\ $ (\u1|u2|u2|r[4]~2_combout\)) # (\u1|am[9]~3_combout\))) ) ) ) # ( !\u1|am[10]~1_combout\ & ( 
-- \u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[2]~0_combout\ $ (\u1|u2|u2|r[4]~2_combout\)))) # (\u1|u2|u2|r[1]~3_combout\ & (!\u1|am[9]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ $ (!\u1|u2|u2|r[4]~2_combout\)))) ) ) ) # ( 
-- \u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( \u1|u2|u2|r[1]~3_combout\ ) ) ) # ( !\u1|am[10]~1_combout\ & ( !\u1|u2|u2|r[3]~1_combout\ & ( (!\u1|u2|u2|r[1]~3_combout\ & (!\u1|u2|u2|r[2]~0_combout\ & \u1|u2|u2|r[4]~2_combout\)) # 
-- (\u1|u2|u2|r[1]~3_combout\ & ((!\u1|u2|u2|r[2]~0_combout\) # (\u1|u2|u2|r[4]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010101010101010110100100010010100101000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u2|ALT_INV_r[1]~3_combout\,
	datab => \u1|ALT_INV_am[9]~3_combout\,
	datac => \u1|u2|u2|ALT_INV_r[2]~0_combout\,
	datad => \u1|u2|u2|ALT_INV_r[4]~2_combout\,
	datae => \u1|ALT_INV_am[10]~1_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[3]~1_combout\,
	combout => \u1|u3|u1|r[4]~6_combout\);

-- Location: MLABCELL_X72_Y2_N42
\u1|u3|u2|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|u1|u1|u1|co~combout\ = ( \u1|u2|u4|r[2]~2_combout\ & ( !\u1|u2|u4|r[3]~1_combout\ $ (((\u1|u2|u4|r[1]~0_combout\) # (\u1|u3|u1|u1|u1|u3|co~combout\))) ) ) # ( !\u1|u2|u4|r[2]~2_combout\ & ( !\u1|u2|u4|r[3]~1_combout\ $ 
-- (((!\u1|u2|u4|r[1]~0_combout\) # (\u1|u3|u1|u1|u1|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100111001001110010011100110010011100100111001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u1|u2|u4|ALT_INV_r[3]~1_combout\,
	datac => \u1|u2|u4|ALT_INV_r[1]~0_combout\,
	dataf => \u1|u2|u4|ALT_INV_r[2]~2_combout\,
	combout => \u1|u3|u2|u1|u1|u1|co~combout\);

-- Location: LABCELL_X73_Y2_N18
\u1|u3|u2|r[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[5]~1_combout\ = ( \u1|u3|u1|r[7]~3_combout\ & ( (!\u1|u3|u1|r[4]~6_combout\ & (!\u1|u3|u2|u1|u1|u1|co~combout\ & (!\u1|u3|u1|r[5]~1_combout\ $ (\u1|u3|u1|r[6]~2_combout\)))) # (\u1|u3|u1|r[4]~6_combout\ & ((!\u1|u3|u2|u1|u1|u1|co~combout\) # 
-- (!\u1|u3|u1|r[5]~1_combout\ $ (\u1|u3|u1|r[6]~2_combout\)))) ) ) # ( !\u1|u3|u1|r[7]~3_combout\ & ( (!\u1|u3|u1|r[4]~6_combout\ & (!\u1|u3|u2|u1|u1|u1|co~combout\ & (!\u1|u3|u1|r[5]~1_combout\ $ (!\u1|u3|u1|r[6]~2_combout\)))) # (\u1|u3|u1|r[4]~6_combout\ 
-- & ((!\u1|u3|u2|u1|u1|u1|co~combout\) # (!\u1|u3|u1|r[5]~1_combout\ $ (!\u1|u3|u1|r[6]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111100000110011011110000011010011111000010011001111100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|ALT_INV_r[5]~1_combout\,
	datab => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u1|ALT_INV_r[4]~6_combout\,
	datad => \u1|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	combout => \u1|u3|u2|r[5]~1_combout\);

-- Location: MLABCELL_X72_Y2_N57
\u1|u3|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[2]~0_combout\ = !\u1|u2|u4|r[1]~0_combout\ $ (((!\u1|u3|u1|u1|u1|u3|co~combout\) # (\u1|am[8]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100100110011100110010011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[8]~4_combout\,
	datab => \u1|u2|u4|ALT_INV_r[1]~0_combout\,
	datad => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u1|u3|u1|r[2]~0_combout\);

-- Location: MLABCELL_X72_Y2_N54
\u1|u3|u1|r[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[3]~5_combout\ = ( \u1|u2|u4|r[2]~2_combout\ & ( (!\u1|u3|u1|u1|u1|u3|co~combout\) # (!\u1|am[8]~4_combout\ $ (\u1|u2|u4|r[1]~0_combout\)) ) ) # ( !\u1|u2|u4|r[2]~2_combout\ & ( (\u1|u3|u1|u1|u1|u3|co~combout\ & (!\u1|am[8]~4_combout\ $ 
-- (!\u1|u2|u4|r[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011011111111100110011111111110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[8]~4_combout\,
	datab => \u1|u2|u4|ALT_INV_r[1]~0_combout\,
	datad => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u1|u2|u4|ALT_INV_r[2]~2_combout\,
	combout => \u1|u3|u1|r[3]~5_combout\);

-- Location: LABCELL_X73_Y2_N39
\u1|u3|u2|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[4]~0_combout\ = ( \u1|u3|u1|r[3]~5_combout\ & ( (!\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|u3|u1|r[6]~2_combout\))) # (\u1|u3|u1|r[2]~0_combout\) ) ) # ( !\u1|u3|u1|r[3]~5_combout\ & ( (!\u1|u3|u1|r[2]~0_combout\ & 
-- (!\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (\u1|u3|u1|r[6]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010000011000001001000010011111011011111001111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datac => \u1|u3|u1|ALT_INV_r[2]~0_combout\,
	datad => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[3]~5_combout\,
	combout => \u1|u3|u2|r[4]~0_combout\);

-- Location: LABCELL_X70_Y2_N15
\amag[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[7]~6_combout\ = ( \a[7]~input_o\ & ( (!\a[15]~input_o\) # ((\v1|u1|u1|co~0_combout\ & !\a[6]~input_o\)) ) ) # ( !\a[7]~input_o\ & ( (\a[15]~input_o\ & ((!\v1|u1|u1|co~0_combout\) # (\a[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010110101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datac => \v1|u1|u1|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[7]~input_o\,
	combout => \amag[7]~6_combout\);

-- Location: LABCELL_X71_Y2_N9
\u1|am[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[7]~5_combout\ = ( \amag[15]~0_combout\ & ( \amag[7]~6_combout\ & ( (((!\v1|u2|u2|co~0_combout\) # (\a[11]~input_o\)) # (\a[12]~input_o\)) # (\a[13]~input_o\) ) ) ) # ( !\amag[15]~0_combout\ & ( \amag[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[11]~input_o\,
	datae => \ALT_INV_amag[15]~0_combout\,
	dataf => \ALT_INV_amag[7]~6_combout\,
	combout => \u1|am[7]~5_combout\);

-- Location: MLABCELL_X72_Y2_N0
\u1|u3|u1|r[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|r[1]~4_combout\ = ( \u1|am[7]~5_combout\ & ( \u1|am[8]~4_combout\ ) ) # ( !\u1|am[7]~5_combout\ & ( !\u1|u3|u1|u1|u1|u3|co~combout\ $ (!\u1|am[8]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	datac => \u1|ALT_INV_am[8]~4_combout\,
	dataf => \u1|ALT_INV_am[7]~5_combout\,
	combout => \u1|u3|u1|r[1]~4_combout\);

-- Location: LABCELL_X73_Y2_N3
\u1|u3|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|u1|u1|u0|co~combout\ = ( \u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u1|r[2]~0_combout\ ) ) # ( !\u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|u3|u1|r[2]~0_combout\ $ (!\u1|u3|u1|r[6]~2_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datac => \u1|u3|u1|ALT_INV_r[2]~0_combout\,
	datad => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[1]~4_combout\,
	combout => \u1|u3|u3|u1|u1|u0|co~combout\);

-- Location: LABCELL_X74_Y5_N54
\u1|u3|u3|r[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[9]~7_combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( (\u1|u3|u2|r[8]~4_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (\u1|u3|u2|r[5]~1_combout\)))) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( 
-- \u1|u3|u3|u1|u1|u0|co~combout\ & ( (\u1|u3|u2|r[8]~4_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)))) ) ) ) # ( \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( 
-- (\u1|u3|u2|r[8]~4_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)))) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( (\u1|u3|u2|r[8]~4_combout\ & (!\u1|u3|u2|r[6]~2_combout\ 
-- $ (!\u1|u3|u2|r[7]~3_combout\ $ (\u1|u3|u2|r[5]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000001010000010001010001000001000101000001010001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[9]~7_combout\);

-- Location: LABCELL_X74_Y5_N42
\u1|u3|u3|r[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[7]~5_combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[5]~1_combout\ & (!\u1|u3|u2|r[8]~4_combout\ $ (((!\u1|u3|u2|r[7]~3_combout\))))) # (\u1|u3|u2|r[5]~1_combout\ & (((\u1|u3|u2|r[6]~2_combout\)))) ) 
-- ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[5]~1_combout\ & (((\u1|u3|u2|r[6]~2_combout\)))) # (\u1|u3|u2|r[5]~1_combout\ & (!\u1|u3|u2|r[8]~4_combout\ $ (((!\u1|u3|u2|r[7]~3_combout\))))) ) ) ) # ( 
-- \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[5]~1_combout\ & (((\u1|u3|u2|r[6]~2_combout\)))) # (\u1|u3|u2|r[5]~1_combout\ & (!\u1|u3|u2|r[8]~4_combout\ $ (((!\u1|u3|u2|r[7]~3_combout\))))) ) ) ) # ( 
-- !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[5]~1_combout\ & (!\u1|u3|u2|r[8]~4_combout\ $ (((!\u1|u3|u2|r[7]~3_combout\))))) # (\u1|u3|u2|r[5]~1_combout\ & (((\u1|u3|u2|r[6]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000110011001100110101101000110011010110100101101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[7]~5_combout\);

-- Location: LABCELL_X73_Y2_N24
\u1|u3|u2|r[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[3]~7_combout\ = ( \u1|u3|u1|r[6]~2_combout\ & ( \u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u1|r[2]~0_combout\ $ (((!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|u3|u2|u1|u1|u2|co~combout\)) # (\u1|am[7]~5_combout\))) ) ) ) # ( !\u1|u3|u1|r[6]~2_combout\ & ( 
-- \u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u1|r[2]~0_combout\ $ (((!\u1|u3|u1|r[7]~3_combout\ $ (\u1|u3|u2|u1|u1|u2|co~combout\)) # (\u1|am[7]~5_combout\))) ) ) ) # ( \u1|u3|u1|r[6]~2_combout\ & ( !\u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u1|r[2]~0_combout\ $ 
-- (((!\u1|am[7]~5_combout\) # (!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|u3|u2|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u1|u3|u1|r[6]~2_combout\ & ( !\u1|u3|u1|r[1]~4_combout\ & ( !\u1|u3|u1|r[2]~0_combout\ $ (((!\u1|am[7]~5_combout\) # (!\u1|u3|u1|r[7]~3_combout\ $ 
-- (\u1|u3|u2|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010011101011010000011011111000101000110101111000001001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[7]~5_combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datac => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u1|ALT_INV_r[2]~0_combout\,
	datae => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[1]~4_combout\,
	combout => \u1|u3|u2|r[3]~7_combout\);

-- Location: LABCELL_X74_Y5_N0
\u1|u3|u3|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|u1|u2|u1|co~combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (!\u1|u3|u2|r[5]~1_combout\))) ) ) ) # ( 
-- !\u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (\u1|u3|u2|r[5]~1_combout\))) ) ) ) # ( \u1|u3|u2|r[4]~0_combout\ & ( 
-- !\u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (\u1|u3|u2|r[5]~1_combout\))) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( 
-- !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (!\u1|u3|u2|r[5]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|u1|u2|u1|co~combout\);

-- Location: LABCELL_X70_Y2_N30
\amag[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[6]~7_combout\ = ( \v1|u1|u1|co~0_combout\ & ( \a[6]~input_o\ ) ) # ( !\v1|u1|u1|co~0_combout\ & ( !\a[15]~input_o\ $ (!\a[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \v1|u1|u1|ALT_INV_co~0_combout\,
	combout => \amag[6]~7_combout\);

-- Location: LABCELL_X71_Y2_N42
\u1|am[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[6]~6_combout\ = ( \amag[15]~0_combout\ & ( \amag[6]~7_combout\ & ( (((!\v1|u2|u2|co~0_combout\) # (\a[11]~input_o\)) # (\a[12]~input_o\)) # (\a[13]~input_o\) ) ) ) # ( !\amag[15]~0_combout\ & ( \amag[6]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	datae => \ALT_INV_amag[15]~0_combout\,
	dataf => \ALT_INV_amag[6]~7_combout\,
	combout => \u1|am[6]~6_combout\);

-- Location: LABCELL_X73_Y2_N12
\u1|u3|u2|r[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[1]~5_combout\ = ( \u1|am[6]~6_combout\ & ( \u1|am[7]~5_combout\ ) ) # ( !\u1|am[6]~6_combout\ & ( !\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|am[7]~5_combout\ $ (!\u1|u3|u1|r[6]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datac => \u1|ALT_INV_am[7]~5_combout\,
	datad => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|ALT_INV_am[6]~6_combout\,
	combout => \u1|u3|u2|r[1]~5_combout\);

-- Location: LABCELL_X73_Y2_N36
\u1|u3|u2|r[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|r[2]~6_combout\ = ( \u1|u3|u1|r[1]~4_combout\ & ( (!\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (!\u1|u3|u1|r[6]~2_combout\))) # (\u1|am[7]~5_combout\) ) ) # ( !\u1|u3|u1|r[1]~4_combout\ & ( (!\u1|am[7]~5_combout\ & 
-- (!\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (\u1|u3|u1|r[6]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010000011000001001000010011111011011111001111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datac => \u1|ALT_INV_am[7]~5_combout\,
	datad => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u1|u3|u1|ALT_INV_r[1]~4_combout\,
	combout => \u1|u3|u2|r[2]~6_combout\);

-- Location: MLABCELL_X78_Y5_N48
\u1|u3|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|u1|u1|u2|co~combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u2|r[2]~6_combout\ $ (((!\u1|u3|u2|r[3]~7_combout\ $ (!\u1|u3|u2|r[1]~5_combout\)) # (\u1|u3|u3|u1|u2|u1|co~combout\))) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( 
-- !\u1|u3|u2|r[2]~6_combout\ $ (((!\u1|u3|u3|u1|u2|u1|co~combout\ & (!\u1|u3|u2|r[3]~7_combout\ $ (\u1|u3|u2|r[1]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101110000100011110111000010010000100011110111000010001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[3]~7_combout\,
	datab => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u1|u3|u2|ALT_INV_r[1]~5_combout\,
	datad => \u1|u3|u2|ALT_INV_r[2]~6_combout\,
	dataf => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	combout => \u1|u3|u4|u1|u1|u2|co~combout\);

-- Location: LABCELL_X74_Y5_N36
\u1|u3|u3|r[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[6]~4_combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (\u1|u3|u2|r[7]~3_combout\)) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ 
-- & ( \u1|u3|u2|r[5]~1_combout\ ) ) ) # ( \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( \u1|u3|u2|r[5]~1_combout\ ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ 
-- (!\u1|u3|u2|r[6]~2_combout\ $ (\u1|u3|u2|r[7]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001000000001111111100000000111111110110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[6]~4_combout\);

-- Location: LABCELL_X74_Y5_N18
\u1|u3|u3|r[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[8]~6_combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[8]~4_combout\ & (\u1|u3|u2|r[7]~3_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)))) # (\u1|u3|u2|r[8]~4_combout\ & 
-- ((!\u1|u3|u2|r[6]~2_combout\ $ (\u1|u3|u2|r[5]~1_combout\)) # (\u1|u3|u2|r[7]~3_combout\))) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[8]~4_combout\ & (\u1|u3|u2|r[7]~3_combout\ & (!\u1|u3|u2|r[6]~2_combout\ 
-- $ (\u1|u3|u2|r[5]~1_combout\)))) # (\u1|u3|u2|r[8]~4_combout\ & ((!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)) # (\u1|u3|u2|r[7]~3_combout\))) ) ) ) # ( \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( 
-- (!\u1|u3|u2|r[8]~4_combout\ & (\u1|u3|u2|r[7]~3_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (\u1|u3|u2|r[5]~1_combout\)))) # (\u1|u3|u2|r[8]~4_combout\ & ((!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)) # (\u1|u3|u2|r[7]~3_combout\))) ) ) ) # ( 
-- !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( (!\u1|u3|u2|r[8]~4_combout\ & (\u1|u3|u2|r[7]~3_combout\ & (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[5]~1_combout\)))) # (\u1|u3|u2|r[8]~4_combout\ & ((!\u1|u3|u2|r[6]~2_combout\ $ 
-- (\u1|u3|u2|r[5]~1_combout\)) # (\u1|u3|u2|r[7]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100011101000111010100011100011101010001110100011100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[8]~6_combout\);

-- Location: LABCELL_X74_Y5_N51
\u1|u3|u4|r[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[8]~2_combout\ = ( \u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u3|r[9]~7_combout\ & ((!\u1|u3|u4|u1|u1|u2|co~combout\ $ (\u1|u3|u3|r[6]~4_combout\)) # (\u1|u3|u3|r[7]~5_combout\))) # (\u1|u3|u3|r[9]~7_combout\ & (\u1|u3|u3|r[7]~5_combout\ & 
-- (!\u1|u3|u4|u1|u1|u2|co~combout\ $ (!\u1|u3|u3|r[6]~4_combout\)))) ) ) # ( !\u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u3|r[9]~7_combout\ & (\u1|u3|u3|r[7]~5_combout\ & (!\u1|u3|u4|u1|u1|u2|co~combout\ $ (!\u1|u3|u3|r[6]~4_combout\)))) # 
-- (\u1|u3|u3|r[9]~7_combout\ & ((!\u1|u3|u4|u1|u1|u2|co~combout\ $ (\u1|u3|u3|r[6]~4_combout\)) # (\u1|u3|u3|r[7]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110101010100110011010110100011001110101010001100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	dataf => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	combout => \u1|u3|u4|r[8]~2_combout\);

-- Location: LABCELL_X74_Y5_N24
\u1|u3|u4|r[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[9]~3_combout\ = ( \u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[6]~4_combout\ $ (\u1|u3|u4|u1|u1|u2|co~combout\))) # (\u1|u3|u3|r[9]~7_combout\) ) ) # ( !\u1|u3|u3|r[8]~6_combout\ & ( (\u1|u3|u3|r[9]~7_combout\ & 
-- (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[6]~4_combout\ $ (!\u1|u3|u4|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100010100010000010001010001111101110101110111110111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	datad => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	combout => \u1|u3|u4|r[9]~3_combout\);

-- Location: LABCELL_X74_Y5_N27
\u1|u3|u4|r[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[10]~4_combout\ = ( \u1|u3|u3|r[8]~6_combout\ & ( (\u1|u3|u3|r[9]~7_combout\ & (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u4|u1|u1|u2|co~combout\ $ (!\u1|u3|u3|r[6]~4_combout\)))) ) ) # ( !\u1|u3|u3|r[8]~6_combout\ & ( (\u1|u3|u3|r[9]~7_combout\ & 
-- (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u4|u1|u1|u2|co~combout\ $ (\u1|u3|u3|r[6]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000001000101000100000101000001000101000100000100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	dataf => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	combout => \u1|u3|u4|r[10]~4_combout\);

-- Location: LABCELL_X74_Y5_N48
\u1|u3|u4|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[7]~1_combout\ = ( \u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u4|u1|u1|u2|co~combout\ & (!\u1|u3|u3|r[9]~7_combout\ $ ((\u1|u3|u3|r[7]~5_combout\)))) # (\u1|u3|u4|u1|u1|u2|co~combout\ & (((\u1|u3|u3|r[6]~4_combout\)))) ) ) # ( 
-- !\u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u4|u1|u1|u2|co~combout\ & (!\u1|u3|u3|r[9]~7_combout\ $ ((!\u1|u3|u3|r[7]~5_combout\)))) # (\u1|u3|u4|u1|u1|u2|co~combout\ & (((\u1|u3|u3|r[6]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000001111011001100000111110011001000011111001100100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	datad => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	combout => \u1|u3|u4|r[7]~1_combout\);

-- Location: LABCELL_X74_Y5_N6
\u1|u3|u3|r[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[5]~8_combout\ = ( \u1|u3|u2|r[4]~0_combout\ & ( \u1|u3|u3|u1|u1|u0|co~combout\ ) ) # ( \u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ 
-- (!\u1|u3|u2|r[5]~1_combout\))) ) ) ) # ( !\u1|u3|u2|r[4]~0_combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ & ( !\u1|u3|u2|r[8]~4_combout\ $ (!\u1|u3|u2|r[6]~2_combout\ $ (!\u1|u3|u2|r[7]~3_combout\ $ (!\u1|u3|u2|r[5]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[8]~4_combout\,
	datab => \u1|u3|u2|ALT_INV_r[6]~2_combout\,
	datac => \u1|u3|u2|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u2|ALT_INV_r[5]~1_combout\,
	datae => \u1|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[5]~8_combout\);

-- Location: LABCELL_X74_Y5_N12
\u1|u3|u4|r[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[6]~0_combout\ = ( \u1|u3|u4|u1|u1|u2|co~combout\ & ( \u1|u3|u3|r[8]~6_combout\ & ( (\u1|u3|u3|r[5]~8_combout\ & (!\u1|u3|u3|r[6]~4_combout\ $ (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[9]~7_combout\)))) ) ) ) # ( 
-- !\u1|u3|u4|u1|u1|u2|co~combout\ & ( \u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u3|r[6]~4_combout\ $ (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[9]~7_combout\))) # (\u1|u3|u3|r[5]~8_combout\) ) ) ) # ( \u1|u3|u4|u1|u1|u2|co~combout\ & ( 
-- !\u1|u3|u3|r[8]~6_combout\ & ( (\u1|u3|u3|r[5]~8_combout\ & (!\u1|u3|u3|r[6]~4_combout\ $ (!\u1|u3|u3|r[7]~5_combout\ $ (\u1|u3|u3|r[9]~7_combout\)))) ) ) ) # ( !\u1|u3|u4|u1|u1|u2|co~combout\ & ( !\u1|u3|u3|r[8]~6_combout\ & ( (!\u1|u3|u3|r[6]~4_combout\ 
-- $ (!\u1|u3|u3|r[7]~5_combout\ $ (\u1|u3|u3|r[9]~7_combout\))) # (\u1|u3|u3|r[5]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111111111000000000110100110010110111111110000000010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	datad => \u1|u3|u3|ALT_INV_r[5]~8_combout\,
	datae => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	combout => \u1|u3|u4|r[6]~0_combout\);

-- Location: LABCELL_X74_Y5_N30
\u1|u3|u4|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|u1|u2|u2|co~combout\ = ( \u1|u3|u3|r[9]~7_combout\ & ( !\u1|u3|u3|r[6]~4_combout\ $ (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[8]~6_combout\ $ (\u1|u3|u4|u1|u1|u2|co~combout\))) ) ) # ( !\u1|u3|u3|r[9]~7_combout\ & ( !\u1|u3|u3|r[6]~4_combout\ 
-- $ (!\u1|u3|u3|r[7]~5_combout\ $ (!\u1|u3|u3|r[8]~6_combout\ $ (!\u1|u3|u4|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100101101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[6]~4_combout\,
	datab => \u1|u3|u3|ALT_INV_r[7]~5_combout\,
	datac => \u1|u3|u3|ALT_INV_r[8]~6_combout\,
	datad => \u1|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u1|u3|u3|ALT_INV_r[9]~7_combout\,
	combout => \u1|u3|u4|u1|u2|u2|co~combout\);

-- Location: LABCELL_X70_Y2_N27
\amag[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \amag[5]~8_combout\ = ( \u1|v1|u2|u0|co~0_combout\ & ( \a[5]~input_o\ ) ) # ( !\u1|v1|u2|u0|co~0_combout\ & ( !\a[15]~input_o\ $ (!\a[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[5]~input_o\,
	dataf => \u1|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \amag[5]~8_combout\);

-- Location: LABCELL_X71_Y2_N45
\u1|am[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[5]~7_combout\ = ( \amag[15]~0_combout\ & ( \amag[5]~8_combout\ & ( (((!\v1|u2|u2|co~0_combout\) # (\a[11]~input_o\)) # (\a[12]~input_o\)) # (\a[13]~input_o\) ) ) ) # ( !\amag[15]~0_combout\ & ( \amag[5]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[13]~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[11]~input_o\,
	datae => \ALT_INV_amag[15]~0_combout\,
	dataf => \ALT_INV_amag[5]~8_combout\,
	combout => \u1|am[5]~7_combout\);

-- Location: MLABCELL_X78_Y5_N6
\u1|u3|u3|r[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[1]~1_combout\ = ( \u1|u3|u3|u1|u2|u1|co~combout\ & ( !\u1|am[5]~7_combout\ $ (\u1|am[6]~6_combout\) ) ) # ( !\u1|u3|u3|u1|u2|u1|co~combout\ & ( \u1|am[6]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_am[5]~7_combout\,
	datac => \u1|ALT_INV_am[6]~6_combout\,
	dataf => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[1]~1_combout\);

-- Location: MLABCELL_X78_Y5_N51
\u1|u3|u3|r[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[4]~3_combout\ = ( \u1|u3|u3|u1|u2|u1|co~combout\ & ( !\u1|u3|u3|u1|u1|u0|co~combout\ ) ) # ( !\u1|u3|u3|u1|u2|u1|co~combout\ & ( \u1|u3|u2|r[3]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[3]~7_combout\,
	datac => \u1|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	dataf => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[4]~3_combout\);

-- Location: MLABCELL_X78_Y5_N3
\u1|u3|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[2]~0_combout\ = ( \u1|u3|u3|u1|u2|u1|co~combout\ & ( !\u1|u3|u2|r[1]~5_combout\ $ (\u1|am[6]~6_combout\) ) ) # ( !\u1|u3|u3|u1|u2|u1|co~combout\ & ( \u1|u3|u2|r[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|ALT_INV_r[1]~5_combout\,
	datad => \u1|ALT_INV_am[6]~6_combout\,
	dataf => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u3|r[2]~0_combout\);

-- Location: MLABCELL_X78_Y5_N42
\u1|u3|u3|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u3|r[3]~2_combout\ = ( \u1|am[6]~6_combout\ & ( !\u1|u3|u2|r[2]~6_combout\ $ (((!\u1|u3|u3|u1|u2|u1|co~combout\) # (\u1|u3|u2|r[1]~5_combout\))) ) ) # ( !\u1|am[6]~6_combout\ & ( !\u1|u3|u2|r[2]~6_combout\ $ (((!\u1|u3|u3|u1|u2|u1|co~combout\) # 
-- (!\u1|u3|u2|r[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u1|u3|u2|ALT_INV_r[1]~5_combout\,
	datad => \u1|u3|u2|ALT_INV_r[2]~6_combout\,
	dataf => \u1|ALT_INV_am[6]~6_combout\,
	combout => \u1|u3|u3|r[3]~2_combout\);

-- Location: MLABCELL_X78_Y5_N24
\u1|u4|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u1|u1|u2|co~combout\ = ( \u1|u3|u3|r[3]~2_combout\ & ( !\u1|u3|u3|r[4]~3_combout\ $ (!\u1|u3|u3|r[2]~0_combout\ $ (((!\u1|u3|u3|r[1]~1_combout\) # (\u1|u3|u4|u1|u2|u2|co~combout\)))) ) ) # ( !\u1|u3|u3|r[3]~2_combout\ & ( 
-- !\u1|u3|u3|r[4]~3_combout\ $ (!\u1|u3|u3|r[2]~0_combout\ $ (((\u1|u3|u3|r[1]~1_combout\) # (\u1|u3|u4|u1|u2|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011111010010001011011101001000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u3|ALT_INV_r[1]~1_combout\,
	datac => \u1|u3|u3|ALT_INV_r[4]~3_combout\,
	datad => \u1|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u1|u3|u3|ALT_INV_r[3]~2_combout\,
	combout => \u1|u4|u1|u1|u1|u2|co~combout\);

-- Location: LABCELL_X75_Y5_N6
\u1|u4|u1|r[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[11]~7_combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (\u1|u3|u4|r[10]~4_combout\ & (!\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (\u1|u3|u4|r[7]~1_combout\)))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & 
-- ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (\u1|u3|u4|r[10]~4_combout\ & (!\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[7]~1_combout\)))) ) ) ) # ( \u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( 
-- (\u1|u3|u4|r[10]~4_combout\ & (!\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[7]~1_combout\)))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (\u1|u3|u4|r[10]~4_combout\ & 
-- (!\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (\u1|u3|u4|r[7]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000010010000011000001001000001100000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[11]~7_combout\);

-- Location: MLABCELL_X78_Y5_N36
\u1|u3|u4|r[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[4]~8_combout\ = ( \u1|u3|u3|r[2]~0_combout\ & ( \u1|u3|u3|r[3]~2_combout\ ) ) # ( !\u1|u3|u3|r[2]~0_combout\ & ( !\u1|u3|u3|r[3]~2_combout\ $ (!\u1|u3|u4|u1|u2|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001100110011001100111100001111000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u3|ALT_INV_r[3]~2_combout\,
	datac => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	datae => \u1|u3|u3|ALT_INV_r[2]~0_combout\,
	combout => \u1|u3|u4|r[4]~8_combout\);

-- Location: MLABCELL_X78_Y5_N30
\u1|u3|u4|r[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[2]~6_combout\ = ( \u1|u3|u3|r[1]~1_combout\ & ( (!\u1|u3|u4|u1|u2|u2|co~combout\) # (\u1|am[5]~7_combout\) ) ) # ( !\u1|u3|u3|r[1]~1_combout\ & ( (!\u1|am[5]~7_combout\ & \u1|u3|u4|u1|u2|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_am[5]~7_combout\,
	datac => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u3|ALT_INV_r[1]~1_combout\,
	combout => \u1|u3|u4|r[2]~6_combout\);

-- Location: MLABCELL_X78_Y5_N27
\u1|u3|u4|r[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[3]~7_combout\ = ( \u1|am[5]~7_combout\ & ( !\u1|u3|u3|r[2]~0_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # (\u1|u3|u3|r[1]~1_combout\))) ) ) # ( !\u1|am[5]~7_combout\ & ( !\u1|u3|u3|r[2]~0_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # 
-- (!\u1|u3|u3|r[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111001000100101110110100010010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u3|ALT_INV_r[1]~1_combout\,
	datad => \u1|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u1|ALT_INV_am[5]~7_combout\,
	combout => \u1|u3|u4|r[3]~7_combout\);

-- Location: LABCELL_X75_Y5_N0
\u1|u4|u1|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|u1|u2|u3|co~combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ (!\u1|u3|u4|r[7]~1_combout\))) ) ) ) # ( 
-- !\u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ (\u1|u3|u4|r[7]~1_combout\))) ) ) ) # ( \u1|u3|u4|r[6]~0_combout\ & ( 
-- !\u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ (\u1|u3|u4|r[7]~1_combout\))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( 
-- !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ (!\u1|u3|u4|r[7]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|u1|u2|u3|co~combout\);

-- Location: LABCELL_X70_Y2_N51
\u1|v1|u2|u0|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u2|u0|co~2_combout\ = ( !\a[2]~input_o\ & ( (!\a[3]~input_o\ & (!\a[1]~input_o\ & !\a[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \u1|v1|u2|u0|co~2_combout\);

-- Location: LABCELL_X70_Y2_N48
\u1|am[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[4]~8_combout\ = ( \a[4]~input_o\ & ( (!\amag[15]~1_combout\ & ((!\a[15]~input_o\) # (\u1|v1|u2|u0|co~2_combout\))) ) ) # ( !\a[4]~input_o\ & ( (!\amag[15]~1_combout\ & (!\u1|v1|u2|u0|co~2_combout\ & \a[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|v1|u2|u0|ALT_INV_co~2_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \u1|am[4]~8_combout\);

-- Location: MLABCELL_X78_Y5_N33
\u1|u3|u4|r[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u4|r[1]~5_combout\ = ( \u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u1|am[4]~8_combout\ $ (\u1|am[5]~7_combout\) ) ) # ( !\u1|u3|u4|u1|u2|u2|co~combout\ & ( \u1|am[5]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[4]~8_combout\,
	datab => \u1|ALT_INV_am[5]~7_combout\,
	dataf => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u1|u3|u4|r[1]~5_combout\);

-- Location: MLABCELL_X78_Y5_N12
\u1|u4|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|u1|u1|u2|co~combout\ = ( \u1|u3|u4|r[1]~5_combout\ & ( !\u1|u3|u4|r[4]~8_combout\ $ (!\u1|u3|u4|r[2]~6_combout\ $ (((!\u1|u3|u4|r[3]~7_combout\) # (\u1|u4|u1|u1|u2|u3|co~combout\)))) ) ) # ( !\u1|u3|u4|r[1]~5_combout\ & ( 
-- !\u1|u3|u4|r[4]~8_combout\ $ (!\u1|u3|u4|r[2]~6_combout\ $ (((\u1|u4|u1|u1|u2|u3|co~combout\) # (\u1|u3|u4|r[3]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100110010110100110011001011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[4]~8_combout\,
	datab => \u1|u3|u4|ALT_INV_r[2]~6_combout\,
	datac => \u1|u3|u4|ALT_INV_r[3]~7_combout\,
	datad => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u4|ALT_INV_r[1]~5_combout\,
	combout => \u1|u4|u2|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X78_Y5_N15
\u1|u4|u1|r[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[5]~9_combout\ = ( \u1|u3|u4|r[2]~6_combout\ & ( !\u1|u3|u4|r[4]~8_combout\ $ (((!\u1|u4|u1|u1|u2|u3|co~combout\) # (!\u1|u3|u4|r[3]~7_combout\))) ) ) # ( !\u1|u3|u4|r[2]~6_combout\ & ( !\u1|u3|u4|r[4]~8_combout\ $ 
-- (((!\u1|u4|u1|u1|u2|u3|co~combout\) # (\u1|u3|u4|r[3]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[4]~8_combout\,
	datac => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u3|u4|ALT_INV_r[3]~7_combout\,
	dataf => \u1|u3|u4|ALT_INV_r[2]~6_combout\,
	combout => \u1|u4|u1|r[5]~9_combout\);

-- Location: LABCELL_X75_Y5_N48
\u1|u4|u1|r[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[9]~5_combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[7]~1_combout\ & ((!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\)))) # (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[8]~2_combout\)) ) ) ) 
-- # ( !\u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[8]~2_combout\)) # (\u1|u3|u4|r[7]~1_combout\ & ((!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\)))) ) ) ) # ( 
-- \u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[8]~2_combout\)) # (\u1|u3|u4|r[7]~1_combout\ & ((!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\)))) ) ) ) # ( 
-- !\u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[7]~1_combout\ & ((!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\)))) # (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[8]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001010101010101010011110001010101001111000011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[9]~5_combout\);

-- Location: LABCELL_X75_Y5_N12
\u1|u4|u1|r[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[8]~4_combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (\u1|u3|u4|r[10]~4_combout\)) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ 
-- & ( \u1|u3|u4|r[7]~1_combout\ ) ) ) # ( \u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( \u1|u3|u4|r[7]~1_combout\ ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ 
-- (!\u1|u3|u4|r[9]~3_combout\ $ (\u1|u3|u4|r[10]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001000000001111111100000000111111110110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[8]~4_combout\);

-- Location: LABCELL_X75_Y5_N24
\u1|u4|u1|r[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[10]~6_combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))) # (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)))) # 
-- (\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)) # (\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( 
-- (!\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)) # (\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))))) # (\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))) # 
-- (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)))) ) ) ) # ( \u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)) # (\u1|u3|u4|r[7]~1_combout\ 
-- & ((\u1|u3|u4|r[10]~4_combout\))))) # (\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))) # (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( 
-- !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))) # (\u1|u3|u4|r[7]~1_combout\ & (\u1|u3|u4|r[9]~3_combout\)))) # (\u1|u3|u4|r[8]~2_combout\ & ((!\u1|u3|u4|r[7]~1_combout\ & 
-- (\u1|u3|u4|r[9]~3_combout\)) # (\u1|u3|u4|r[7]~1_combout\ & ((\u1|u3|u4|r[10]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100100111001001110001101100100111000110110001101100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[10]~6_combout\);

-- Location: MLABCELL_X78_Y5_N18
\u1|u4|u1|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[6]~2_combout\ = ( \u1|u3|u3|r[2]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u4|u1|u1|u2|u3|co~combout\ & (!\u1|u3|u3|r[4]~3_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # (!\u1|u3|u3|r[3]~2_combout\))))) ) ) ) # ( 
-- !\u1|u3|u3|r[2]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u4|u1|u1|u2|u3|co~combout\ & (!\u1|u3|u3|r[4]~3_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # (\u1|u3|u3|r[3]~2_combout\))))) ) ) ) # ( \u1|u3|u3|r[2]~0_combout\ & ( 
-- !\u1|u4|u1|u1|u1|u2|co~combout\ & ( (!\u1|u3|u3|r[4]~3_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # (!\u1|u3|u3|r[3]~2_combout\)))) # (\u1|u4|u1|u1|u2|u3|co~combout\) ) ) ) # ( !\u1|u3|u3|r[2]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( 
-- (!\u1|u3|u3|r[4]~3_combout\ $ (((!\u1|u3|u4|u1|u2|u2|co~combout\) # (\u1|u3|u3|r[3]~2_combout\)))) # (\u1|u4|u1|u1|u2|u3|co~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101110111011101110111101101001000010001000100010001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u3|ALT_INV_r[4]~3_combout\,
	datab => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u3|ALT_INV_r[3]~2_combout\,
	datae => \u1|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[6]~2_combout\);

-- Location: LABCELL_X75_Y5_N36
\u1|u4|u1|r[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[7]~3_combout\ = ( \u1|u3|u4|r[6]~0_combout\ & ( \u1|u4|u1|u1|u1|u2|co~combout\ ) ) # ( \u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ 
-- (!\u1|u3|u4|r[7]~1_combout\))) ) ) ) # ( !\u1|u3|u4|r[6]~0_combout\ & ( !\u1|u4|u1|u1|u1|u2|co~combout\ & ( !\u1|u3|u4|r[8]~2_combout\ $ (!\u1|u3|u4|r[9]~3_combout\ $ (!\u1|u3|u4|r[10]~4_combout\ $ (!\u1|u3|u4|r[7]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[8]~2_combout\,
	datab => \u1|u3|u4|ALT_INV_r[9]~3_combout\,
	datac => \u1|u3|u4|ALT_INV_r[10]~4_combout\,
	datad => \u1|u3|u4|ALT_INV_r[7]~1_combout\,
	datae => \u1|u3|u4|ALT_INV_r[6]~0_combout\,
	dataf => \u1|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[7]~3_combout\);

-- Location: LABCELL_X75_Y5_N30
\u1|u4|u2|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|u1|u2|u3|co~combout\ = ( \u1|u4|u1|r[7]~3_combout\ & ( \u1|u4|u2|u1|u1|u2|co~combout\ & ( !\u1|u4|u1|r[9]~5_combout\ $ (!\u1|u4|u1|r[8]~4_combout\ $ (!\u1|u4|u1|r[10]~6_combout\ $ (!\u1|u4|u1|r[6]~2_combout\))) ) ) ) # ( 
-- !\u1|u4|u1|r[7]~3_combout\ & ( \u1|u4|u2|u1|u1|u2|co~combout\ & ( !\u1|u4|u1|r[9]~5_combout\ $ (!\u1|u4|u1|r[8]~4_combout\ $ (!\u1|u4|u1|r[10]~6_combout\ $ (\u1|u4|u1|r[6]~2_combout\))) ) ) ) # ( \u1|u4|u1|r[7]~3_combout\ & ( 
-- !\u1|u4|u2|u1|u1|u2|co~combout\ & ( !\u1|u4|u1|r[9]~5_combout\ $ (!\u1|u4|u1|r[8]~4_combout\ $ (!\u1|u4|u1|r[10]~6_combout\ $ (\u1|u4|u1|r[6]~2_combout\))) ) ) ) # ( !\u1|u4|u1|r[7]~3_combout\ & ( !\u1|u4|u2|u1|u1|u2|co~combout\ & ( 
-- !\u1|u4|u1|r[9]~5_combout\ $ (!\u1|u4|u1|r[8]~4_combout\ $ (!\u1|u4|u1|r[10]~6_combout\ $ (!\u1|u4|u1|r[6]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[9]~5_combout\,
	datab => \u1|u4|u1|ALT_INV_r[8]~4_combout\,
	datac => \u1|u4|u1|ALT_INV_r[10]~6_combout\,
	datad => \u1|u4|u1|ALT_INV_r[6]~2_combout\,
	datae => \u1|u4|u1|ALT_INV_r[7]~3_combout\,
	dataf => \u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u2|u1|u2|u3|co~combout\);

-- Location: LABCELL_X77_Y5_N0
\u1|u4|u2|r[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[6]~1_combout\ = ( \u1|u4|u2|u1|u2|u3|co~combout\ & ( (!\u1|u4|u1|r[11]~7_combout\ & (!\u1|u4|u2|u1|u1|u2|co~combout\)) # (\u1|u4|u1|r[11]~7_combout\ & ((\u1|u4|u1|r[5]~9_combout\))) ) ) # ( !\u1|u4|u2|u1|u2|u3|co~combout\ & ( 
-- (!\u1|u4|u1|r[11]~7_combout\ & ((\u1|u4|u1|r[5]~9_combout\))) # (\u1|u4|u1|r[11]~7_combout\ & (!\u1|u4|u2|u1|u1|u2|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101010100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u1|ALT_INV_r[5]~9_combout\,
	dataf => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[6]~1_combout\);

-- Location: MLABCELL_X78_Y5_N54
\u1|u4|u2|r[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[5]~8_combout\ = ( \u1|u3|u4|r[3]~7_combout\ & ( \u1|u3|u4|r[2]~6_combout\ & ( (!\u1|u3|u4|r[1]~5_combout\ & ((!\u1|u4|u1|u1|u2|u3|co~combout\) # (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\)))) # (\u1|u3|u4|r[1]~5_combout\ & 
-- ((!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\)))) ) ) ) # ( !\u1|u3|u4|r[3]~7_combout\ & ( \u1|u3|u4|r[2]~6_combout\ & ( (!\u1|u3|u4|r[1]~5_combout\ & (\u1|u4|u1|u1|u2|u3|co~combout\ & (!\u1|u4|u1|r[11]~7_combout\ $ 
-- (!\u1|u4|u2|u1|u2|u3|co~combout\)))) # (\u1|u3|u4|r[1]~5_combout\ & ((!\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\)))) ) ) ) # ( \u1|u3|u4|r[3]~7_combout\ & ( !\u1|u3|u4|r[2]~6_combout\ & ( (!\u1|u4|u1|u1|u2|u3|co~combout\ & 
-- ((!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\)) # (\u1|u3|u4|r[1]~5_combout\))) ) ) ) # ( !\u1|u3|u4|r[3]~7_combout\ & ( !\u1|u3|u4|r[2]~6_combout\ & ( ((!\u1|u3|u4|r[1]~5_combout\ & (!\u1|u4|u1|r[11]~7_combout\ $ 
-- (!\u1|u4|u2|u1|u2|u3|co~combout\)))) # (\u1|u4|u1|u1|u2|u3|co~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101110110011110001000100110000000111011100001111100010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u4|ALT_INV_r[1]~5_combout\,
	datab => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datad => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datae => \u1|u3|u4|ALT_INV_r[3]~7_combout\,
	dataf => \u1|u3|u4|ALT_INV_r[2]~6_combout\,
	combout => \u1|u4|u2|r[5]~8_combout\);

-- Location: LABCELL_X77_Y5_N15
\u1|u4|u2|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|u1|u2|u0|co~combout\ = !\u1|u4|u1|r[6]~2_combout\ $ (!\u1|u4|u1|r[7]~3_combout\ $ (\u1|u4|u2|u1|u1|u2|co~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[6]~2_combout\,
	datac => \u1|u4|u1|ALT_INV_r[7]~3_combout\,
	datad => \u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u2|u1|u2|u0|co~combout\);

-- Location: LABCELL_X77_Y5_N51
\u1|u4|u2|r[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[9]~4_combout\ = ( \u1|u4|u2|u1|u2|u0|co~combout\ & ( \u1|u4|u1|r[8]~4_combout\ ) ) # ( !\u1|u4|u2|u1|u2|u0|co~combout\ & ( !\u1|u4|u2|u1|u2|u3|co~combout\ $ (!\u1|u4|u1|r[8]~4_combout\ $ (\u1|u4|u1|r[11]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u1|u4|u1|ALT_INV_r[8]~4_combout\,
	datad => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	dataf => \u1|u4|u2|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[9]~4_combout\);

-- Location: LABCELL_X77_Y5_N9
\u1|u4|u2|r[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[7]~2_combout\ = ( \u1|u4|u2|u1|u2|u3|co~combout\ & ( !\u1|u4|u1|r[6]~2_combout\ $ (((\u1|u4|u2|u1|u1|u2|co~combout\) # (\u1|u4|u1|r[11]~7_combout\))) ) ) # ( !\u1|u4|u2|u1|u2|u3|co~combout\ & ( !\u1|u4|u1|r[6]~2_combout\ $ 
-- (((!\u1|u4|u1|r[11]~7_combout\) # (\u1|u4|u2|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|u4|u1|ALT_INV_r[6]~2_combout\,
	datad => \u1|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[7]~2_combout\);

-- Location: MLABCELL_X78_Y2_N6
\u1|u4|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[2]~0_combout\ = ( \u1|u3|u4|r[1]~5_combout\ & ( \u1|am[4]~8_combout\ ) ) # ( \u1|u3|u4|r[1]~5_combout\ & ( !\u1|am[4]~8_combout\ & ( !\u1|u4|u1|u1|u2|u3|co~combout\ ) ) ) # ( !\u1|u3|u4|r[1]~5_combout\ & ( !\u1|am[4]~8_combout\ & ( 
-- \u1|u4|u1|u1|u2|u3|co~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datae => \u1|u3|u4|ALT_INV_r[1]~5_combout\,
	dataf => \u1|ALT_INV_am[4]~8_combout\,
	combout => \u1|u4|u1|r[2]~0_combout\);

-- Location: LABCELL_X70_Y2_N54
\u1|am[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[3]~9_combout\ = ( \a[15]~input_o\ & ( \a[0]~input_o\ & ( (!\a[3]~input_o\ & !\amag[15]~1_combout\) ) ) ) # ( !\a[15]~input_o\ & ( \a[0]~input_o\ & ( (\a[3]~input_o\ & !\amag[15]~1_combout\) ) ) ) # ( \a[15]~input_o\ & ( !\a[0]~input_o\ & ( 
-- (!\amag[15]~1_combout\ & (!\a[3]~input_o\ $ (((!\a[1]~input_o\ & !\a[2]~input_o\))))) ) ) ) # ( !\a[15]~input_o\ & ( !\a[0]~input_o\ & ( (\a[3]~input_o\ & !\amag[15]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000011010100000000001010101000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_amag[15]~1_combout\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u1|am[3]~9_combout\);

-- Location: MLABCELL_X78_Y2_N21
\u1|u4|u1|r[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[1]~8_combout\ = ( \u1|u4|u1|u1|u2|u3|co~combout\ & ( !\u1|am[4]~8_combout\ $ (\u1|am[3]~9_combout\) ) ) # ( !\u1|u4|u1|u1|u2|u3|co~combout\ & ( \u1|am[4]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[4]~8_combout\,
	datad => \u1|ALT_INV_am[3]~9_combout\,
	dataf => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u1|u4|u1|r[1]~8_combout\);

-- Location: MLABCELL_X78_Y5_N45
\u1|u4|u1|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u1|r[3]~1_combout\ = ( \u1|u3|u4|r[1]~5_combout\ & ( !\u1|u3|u4|r[2]~6_combout\ $ (((!\u1|u4|u1|u1|u2|u3|co~combout\) # (\u1|am[4]~8_combout\))) ) ) # ( !\u1|u3|u4|r[1]~5_combout\ & ( !\u1|u3|u4|r[2]~6_combout\ $ (((!\u1|am[4]~8_combout\) # 
-- (!\u1|u4|u1|u1|u2|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101000001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_am[4]~8_combout\,
	datac => \u1|u3|u4|ALT_INV_r[2]~6_combout\,
	datad => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u4|ALT_INV_r[1]~5_combout\,
	combout => \u1|u4|u1|r[3]~1_combout\);

-- Location: MLABCELL_X78_Y2_N57
\u1|u4|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u1|u1|co~combout\ = ( \u1|u4|u1|r[1]~8_combout\ & ( \u1|u4|u1|r[3]~1_combout\ & ( (!\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\)) # (\u1|u4|u1|r[2]~0_combout\) ) ) ) # ( !\u1|u4|u1|r[1]~8_combout\ & ( 
-- \u1|u4|u1|r[3]~1_combout\ & ( (!\u1|u4|u1|r[2]~0_combout\) # (!\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\)) ) ) ) # ( \u1|u4|u1|r[1]~8_combout\ & ( !\u1|u4|u1|r[3]~1_combout\ & ( (!\u1|u4|u1|r[2]~0_combout\ & 
-- (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\))) ) ) ) # ( !\u1|u4|u1|r[1]~8_combout\ & ( !\u1|u4|u1|r[3]~1_combout\ & ( (\u1|u4|u1|r[2]~0_combout\ & (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001100001001000010011011110110111100111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datab => \u1|u4|u1|ALT_INV_r[2]~0_combout\,
	datac => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datae => \u1|u4|u1|ALT_INV_r[1]~8_combout\,
	dataf => \u1|u4|u1|ALT_INV_r[3]~1_combout\,
	combout => \u1|u4|u3|u1|u1|u1|co~combout\);

-- Location: LABCELL_X77_Y5_N6
\u1|u4|u2|r[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[8]~3_combout\ = ( \u1|u4|u2|u1|u2|u0|co~combout\ & ( (\u1|u4|u1|r[7]~3_combout\ & (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\))) ) ) # ( !\u1|u4|u2|u1|u2|u0|co~combout\ & ( (!\u1|u4|u1|r[11]~7_combout\ $ 
-- (!\u1|u4|u2|u1|u2|u3|co~combout\)) # (\u1|u4|u1|r[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111111010110101111111100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u4|u1|ALT_INV_r[7]~3_combout\,
	dataf => \u1|u4|u2|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[8]~3_combout\);

-- Location: LABCELL_X77_Y5_N54
\u1|u4|u3|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u2|u2|co~combout\ = ( \u1|u4|u3|u1|u1|u1|co~combout\ & ( \u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ (!\u1|u4|u2|r[5]~8_combout\ $ (!\u1|u4|u2|r[9]~4_combout\ $ (!\u1|u4|u2|r[7]~2_combout\))) ) ) ) # ( 
-- !\u1|u4|u3|u1|u1|u1|co~combout\ & ( \u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ (!\u1|u4|u2|r[5]~8_combout\ $ (!\u1|u4|u2|r[9]~4_combout\ $ (\u1|u4|u2|r[7]~2_combout\))) ) ) ) # ( \u1|u4|u3|u1|u1|u1|co~combout\ & ( 
-- !\u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ (!\u1|u4|u2|r[5]~8_combout\ $ (!\u1|u4|u2|r[9]~4_combout\ $ (\u1|u4|u2|r[7]~2_combout\))) ) ) ) # ( !\u1|u4|u3|u1|u1|u1|co~combout\ & ( !\u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ 
-- (!\u1|u4|u2|r[5]~8_combout\ $ (!\u1|u4|u2|r[9]~4_combout\ $ (!\u1|u4|u2|r[7]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_r[6]~1_combout\,
	datab => \u1|u4|u2|ALT_INV_r[5]~8_combout\,
	datac => \u1|u4|u2|ALT_INV_r[9]~4_combout\,
	datad => \u1|u4|u2|ALT_INV_r[7]~2_combout\,
	datae => \u1|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|ALT_INV_r[8]~3_combout\,
	combout => \u1|u4|u3|u1|u2|u2|co~combout\);

-- Location: MLABCELL_X78_Y2_N3
\u1|u4|u2|r[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[11]~6_combout\ = (!\u1|u4|u1|r[11]~7_combout\ & (!\u1|u4|u2|u1|u2|u3|co~combout\ & \u1|u4|u1|r[10]~6_combout\)) # (\u1|u4|u1|r[11]~7_combout\ & ((!\u1|u4|u2|u1|u2|u3|co~combout\) # (\u1|u4|u1|r[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u4|u1|ALT_INV_r[10]~6_combout\,
	combout => \u1|u4|u2|r[11]~6_combout\);

-- Location: LABCELL_X77_Y5_N48
\u1|u4|u2|r[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[10]~5_combout\ = ( \u1|u4|u2|u1|u2|u0|co~combout\ & ( !\u1|u4|u1|r[9]~5_combout\ $ (((!\u1|u4|u1|r[8]~4_combout\) # (!\u1|u4|u2|u1|u2|u3|co~combout\ $ (\u1|u4|u1|r[11]~7_combout\)))) ) ) # ( !\u1|u4|u2|u1|u2|u0|co~combout\ & ( 
-- !\u1|u4|u1|r[9]~5_combout\ $ (((!\u1|u4|u2|u1|u2|u3|co~combout\ $ (\u1|u4|u1|r[11]~7_combout\)) # (\u1|u4|u1|r[8]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110000111010010111000011100011110001011010001111000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u1|u4|u1|ALT_INV_r[8]~4_combout\,
	datac => \u1|u4|u1|ALT_INV_r[9]~5_combout\,
	datad => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	dataf => \u1|u4|u2|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[10]~5_combout\);

-- Location: LABCELL_X77_Y5_N3
\u1|u4|u2|r[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[12]~7_combout\ = ( \u1|u4|u2|u1|u2|u3|co~combout\ & ( \u1|u4|u1|r[11]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	dataf => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u1|u4|u2|r[12]~7_combout\);

-- Location: LABCELL_X77_Y5_N45
\u1|u4|u3|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u2|u0|co~combout\ = ( \u1|u4|u2|r[7]~2_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ (!\u1|u4|u2|r[5]~8_combout\ $ (!\u1|u4|u3|u1|u1|u1|co~combout\)) ) ) # ( !\u1|u4|u2|r[7]~2_combout\ & ( !\u1|u4|u2|r[6]~1_combout\ $ (!\u1|u4|u2|r[5]~8_combout\ 
-- $ (\u1|u4|u3|u1|u1|u1|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_r[6]~1_combout\,
	datac => \u1|u4|u2|ALT_INV_r[5]~8_combout\,
	datad => \u1|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|ALT_INV_r[7]~2_combout\,
	combout => \u1|u4|u3|u1|u2|u0|co~combout\);

-- Location: LABCELL_X77_Y5_N33
\u1|u4|u3|r[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[8]~2_combout\ = ( \u1|u4|u2|r[7]~2_combout\ & ( \u1|u4|u3|u1|u2|u0|co~combout\ & ( !\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ (\u1|u4|u2|r[12]~7_combout\))) ) ) ) # ( 
-- \u1|u4|u2|r[7]~2_combout\ & ( !\u1|u4|u3|u1|u2|u0|co~combout\ ) ) # ( !\u1|u4|u2|r[7]~2_combout\ & ( !\u1|u4|u3|u1|u2|u0|co~combout\ & ( !\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ 
-- (!\u1|u4|u2|r[12]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110111111111111111100000000000000001001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	datac => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datad => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datae => \u1|u4|u2|ALT_INV_r[7]~2_combout\,
	dataf => \u1|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u4|u3|r[8]~2_combout\);

-- Location: LABCELL_X70_Y2_N3
\u1|am[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[2]~10_combout\ = ( \a[2]~input_o\ & ( (!\amag[15]~1_combout\ & ((!\a[15]~input_o\) # ((!\a[0]~input_o\ & !\a[1]~input_o\)))) ) ) # ( !\a[2]~input_o\ & ( (\a[15]~input_o\ & (!\amag[15]~1_combout\ & ((\a[1]~input_o\) # (\a[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000000100000101000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[15]~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \u1|am[2]~10_combout\);

-- Location: MLABCELL_X78_Y2_N30
\u1|u4|u3|r[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[2]~5_combout\ = ( !\u1|u4|u1|r[10]~6_combout\ & ( !\u1|am[3]~9_combout\ $ (((!\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\ $ (!\u1|u4|u2|r[10]~5_combout\))) # (\u1|am[2]~10_combout\))) ) ) # ( \u1|u4|u1|r[10]~6_combout\ & 
-- ( !\u1|am[3]~9_combout\ $ (((!\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|r[10]~5_combout\))) # (\u1|am[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100100010110111100001000111101110000100011110110100100010110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|ALT_INV_am[2]~10_combout\,
	datac => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datad => \u1|ALT_INV_am[3]~9_combout\,
	datae => \u1|u4|u1|ALT_INV_r[10]~6_combout\,
	dataf => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datag => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u1|u4|u3|r[2]~5_combout\);

-- Location: MLABCELL_X78_Y2_N0
\u1|u4|u3|u1|u0|u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u0|u3|s~combout\ = ( \u1|am[2]~10_combout\ & ( !\u1|u4|u1|r[1]~8_combout\ $ (((!\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\)) # (\u1|am[3]~9_combout\))) ) ) # ( !\u1|am[2]~10_combout\ & ( !\u1|u4|u1|r[1]~8_combout\ $ 
-- (((!\u1|am[3]~9_combout\) # (!\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u2|u1|u2|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101010110010110010101011010010101011001011001010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[1]~8_combout\,
	datab => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|ALT_INV_am[3]~9_combout\,
	datad => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|ALT_INV_am[2]~10_combout\,
	combout => \u1|u4|u3|u1|u0|u3|s~combout\);

-- Location: LABCELL_X77_Y5_N18
\u1|u4|u4|u1|u3|u3|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u4|u1|u3|u3|co~2_combout\ = ( \u1|u4|u2|r[11]~6_combout\ & ( \u1|u4|u2|r[9]~4_combout\ & ( (!\u1|u4|u3|u1|u0|u3|s~combout\ & (!\u1|u4|u3|u1|u2|u2|co~combout\)) # (\u1|u4|u3|u1|u0|u3|s~combout\ & ((!\u1|u4|u2|r[10]~5_combout\ $ 
-- (!\u1|u4|u2|r[12]~7_combout\)))) ) ) ) # ( !\u1|u4|u2|r[11]~6_combout\ & ( \u1|u4|u2|r[9]~4_combout\ & ( (!\u1|u4|u3|u1|u0|u3|s~combout\ & ((!\u1|u4|u2|r[10]~5_combout\ $ (\u1|u4|u2|r[12]~7_combout\)))) # (\u1|u4|u3|u1|u0|u3|s~combout\ & 
-- (!\u1|u4|u3|u1|u2|u2|co~combout\)) ) ) ) # ( \u1|u4|u2|r[11]~6_combout\ & ( !\u1|u4|u2|r[9]~4_combout\ & ( (!\u1|u4|u3|u1|u0|u3|s~combout\ & ((!\u1|u4|u2|r[10]~5_combout\ $ (\u1|u4|u2|r[12]~7_combout\)))) # (\u1|u4|u3|u1|u0|u3|s~combout\ & 
-- (\u1|u4|u3|u1|u2|u2|co~combout\)) ) ) ) # ( !\u1|u4|u2|r[11]~6_combout\ & ( !\u1|u4|u2|r[9]~4_combout\ & ( (!\u1|u4|u3|u1|u0|u3|s~combout\ & (\u1|u4|u3|u1|u2|u2|co~combout\)) # (\u1|u4|u3|u1|u0|u3|s~combout\ & ((!\u1|u4|u2|r[10]~5_combout\ $ 
-- (!\u1|u4|u2|r[12]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100111100110000110101010111000011101010101010101000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datac => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datad => \u1|u4|u3|u1|u0|u3|ALT_INV_s~combout\,
	datae => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	dataf => \u1|u4|u2|ALT_INV_r[9]~4_combout\,
	combout => \u1|u4|u4|u1|u3|u3|co~2_combout\);

-- Location: LABCELL_X77_Y5_N12
\u1|u4|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u1|u2|co~combout\ = !\u1|u4|u3|u1|u1|u1|co~combout\ $ (!\u1|u4|u2|r[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u1|u4|u2|ALT_INV_r[5]~8_combout\,
	combout => \u1|u4|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X77_Y5_N30
\u1|u4|u3|r[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[6]~0_combout\ = ( \u1|u4|u2|r[5]~8_combout\ & ( \u1|u4|u3|u1|u1|u2|co~combout\ & ( !\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (\u1|u4|u2|r[10]~5_combout\))) ) ) ) # ( 
-- \u1|u4|u2|r[5]~8_combout\ & ( !\u1|u4|u3|u1|u1|u2|co~combout\ ) ) # ( !\u1|u4|u2|r[5]~8_combout\ & ( !\u1|u4|u3|u1|u1|u2|co~combout\ & ( !\u1|u4|u3|u1|u2|u2|co~combout\ $ (!\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ 
-- (!\u1|u4|u2|r[10]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110111111111111111100000000000000001001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	datac => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datad => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datae => \u1|u4|u2|ALT_INV_r[5]~8_combout\,
	dataf => \u1|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u3|r[6]~0_combout\);

-- Location: LABCELL_X77_Y5_N36
\u1|u4|u3|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[7]~1_combout\ = ( \u1|u4|u2|r[6]~1_combout\ & ( \u1|u4|u3|u1|u1|u2|co~combout\ ) ) # ( \u1|u4|u2|r[6]~1_combout\ & ( !\u1|u4|u3|u1|u1|u2|co~combout\ & ( !\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ 
-- (!\u1|u4|u3|u1|u2|u2|co~combout\ $ (\u1|u4|u2|r[11]~6_combout\))) ) ) ) # ( !\u1|u4|u2|r[6]~1_combout\ & ( !\u1|u4|u3|u1|u1|u2|co~combout\ & ( !\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u3|u1|u2|u2|co~combout\ $ 
-- (!\u1|u4|u2|r[11]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datab => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datac => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	datae => \u1|u4|u2|ALT_INV_r[6]~1_combout\,
	dataf => \u1|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u1|u4|u3|r[7]~1_combout\);

-- Location: LABCELL_X77_Y5_N39
\u1|u4|u3|r[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[9]~3_combout\ = ( \u1|u4|u2|r[8]~3_combout\ & ( \u1|u4|u3|u1|u2|u0|co~combout\ ) ) # ( \u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u3|u1|u2|u0|co~combout\ & ( !\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[11]~6_combout\ 
-- $ (\u1|u4|u3|u1|u2|u2|co~combout\))) ) ) ) # ( !\u1|u4|u2|r[8]~3_combout\ & ( !\u1|u4|u3|u1|u2|u0|co~combout\ & ( !\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u3|u1|u2|u2|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datab => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datac => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	datad => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datae => \u1|u4|u2|ALT_INV_r[8]~3_combout\,
	dataf => \u1|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u4|u3|r[9]~3_combout\);

-- Location: LABCELL_X77_Y5_N24
\u1|u4|u4|u1|u3|u3|co~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u4|u1|u3|u3|co~3_combout\ = ( \u1|u4|u3|r[7]~1_combout\ & ( \u1|u4|u3|r[9]~3_combout\ & ( !\u1|u4|u3|r[8]~2_combout\ $ (!\u1|u4|u3|r[2]~5_combout\ $ (!\u1|u4|u4|u1|u3|u3|co~2_combout\ $ (!\u1|u4|u3|r[6]~0_combout\))) ) ) ) # ( 
-- !\u1|u4|u3|r[7]~1_combout\ & ( \u1|u4|u3|r[9]~3_combout\ & ( !\u1|u4|u3|r[8]~2_combout\ $ (!\u1|u4|u3|r[2]~5_combout\ $ (!\u1|u4|u4|u1|u3|u3|co~2_combout\ $ (\u1|u4|u3|r[6]~0_combout\))) ) ) ) # ( \u1|u4|u3|r[7]~1_combout\ & ( !\u1|u4|u3|r[9]~3_combout\ & 
-- ( !\u1|u4|u3|r[8]~2_combout\ $ (!\u1|u4|u3|r[2]~5_combout\ $ (!\u1|u4|u4|u1|u3|u3|co~2_combout\ $ (\u1|u4|u3|r[6]~0_combout\))) ) ) ) # ( !\u1|u4|u3|r[7]~1_combout\ & ( !\u1|u4|u3|r[9]~3_combout\ & ( !\u1|u4|u3|r[8]~2_combout\ $ 
-- (!\u1|u4|u3|r[2]~5_combout\ $ (!\u1|u4|u4|u1|u3|u3|co~2_combout\ $ (!\u1|u4|u3|r[6]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|ALT_INV_r[8]~2_combout\,
	datab => \u1|u4|u3|ALT_INV_r[2]~5_combout\,
	datac => \u1|u4|u4|u1|u3|u3|ALT_INV_co~2_combout\,
	datad => \u1|u4|u3|ALT_INV_r[6]~0_combout\,
	datae => \u1|u4|u3|ALT_INV_r[7]~1_combout\,
	dataf => \u1|u4|u3|ALT_INV_r[9]~3_combout\,
	combout => \u1|u4|u4|u1|u3|u3|co~3_combout\);

-- Location: MLABCELL_X78_Y2_N15
\u1|u4|u4|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u4|u1|u3|u3|co~0_combout\ = ( \u1|u4|u1|r[1]~8_combout\ & ( !\u1|u4|u1|r[2]~0_combout\ ) ) # ( !\u1|u4|u1|r[1]~8_combout\ & ( !\u1|u4|u1|r[11]~7_combout\ $ (!\u1|u4|u1|r[2]~0_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datac => \u1|u4|u1|ALT_INV_r[2]~0_combout\,
	datad => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u1|ALT_INV_r[1]~8_combout\,
	combout => \u1|u4|u4|u1|u3|u3|co~0_combout\);

-- Location: MLABCELL_X78_Y2_N12
\u1|u4|u2|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|r[4]~0_combout\ = ( \u1|u4|u1|r[3]~1_combout\ & ( (!\u1|u4|u1|r[11]~7_combout\ $ (\u1|u4|u2|u1|u2|u3|co~combout\)) # (\u1|u4|u1|r[2]~0_combout\) ) ) # ( !\u1|u4|u1|r[3]~1_combout\ & ( (!\u1|u4|u1|r[2]~0_combout\ & (!\u1|u4|u1|r[11]~7_combout\ $ 
-- (!\u1|u4|u2|u1|u2|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100010111011011101111011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	datab => \u1|u4|u1|ALT_INV_r[2]~0_combout\,
	datad => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u1|ALT_INV_r[3]~1_combout\,
	combout => \u1|u4|u2|r[4]~0_combout\);

-- Location: MLABCELL_X78_Y2_N36
\u1|u4|u4|u1|u3|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u4|u1|u3|u3|co~1_combout\ = ( \u1|u4|u2|r[11]~6_combout\ & ( \u1|u4|u2|r[4]~0_combout\ & ( (!\u1|u4|u4|u1|u3|u3|co~0_combout\ & (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (\u1|u4|u3|u1|u2|u2|co~combout\)))) ) ) ) # ( 
-- !\u1|u4|u2|r[11]~6_combout\ & ( \u1|u4|u2|r[4]~0_combout\ & ( (!\u1|u4|u4|u1|u3|u3|co~0_combout\ & (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u3|u1|u2|u2|co~combout\)))) ) ) ) # ( \u1|u4|u2|r[11]~6_combout\ & ( 
-- !\u1|u4|u2|r[4]~0_combout\ & ( (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u3|u1|u2|u2|co~combout\))) # (\u1|u4|u4|u1|u3|u3|co~0_combout\) ) ) ) # ( !\u1|u4|u2|r[11]~6_combout\ & ( !\u1|u4|u2|r[4]~0_combout\ & ( 
-- (!\u1|u4|u2|r[10]~5_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (\u1|u4|u3|u1|u2|u2|co~combout\))) # (\u1|u4|u4|u1|u3|u3|co~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100111111111100101101111111110010110000000000110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	datab => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datac => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datae => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	dataf => \u1|u4|u2|ALT_INV_r[4]~0_combout\,
	combout => \u1|u4|u4|u1|u3|u3|co~1_combout\);

-- Location: LABCELL_X75_Y2_N3
\u1|u4|u4|u1|u3|u3|co~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u4|u1|u3|u3|co~4_combout\ = ( \u1|u4|u4|u1|u3|u3|co~1_combout\ & ( !\u1|u4|u4|u1|u3|u3|co~3_combout\ ) ) # ( !\u1|u4|u4|u1|u3|u3|co~1_combout\ & ( \u1|u4|u4|u1|u3|u3|co~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u4|u4|u1|u3|u3|ALT_INV_co~3_combout\,
	dataf => \u1|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\,
	combout => \u1|u4|u4|u1|u3|u3|co~4_combout\);

-- Location: LABCELL_X70_Y2_N0
\u1|am[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|am[1]~0_combout\ = ( \a[0]~input_o\ & ( !\a[15]~input_o\ $ (!\a[1]~input_o\) ) ) # ( !\a[0]~input_o\ & ( \a[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u1|am[1]~0_combout\);

-- Location: MLABCELL_X78_Y2_N45
\u1|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r[1]~0_combout\ = ( \u1|am[1]~0_combout\ & ( (!\a[0]~input_o\ & ((!\u1|u4|u4|u1|u3|u3|co~4_combout\))) # (\a[0]~input_o\ & (!\amag[15]~1_combout\)) ) ) # ( !\u1|am[1]~0_combout\ & ( (!\a[0]~input_o\ & ((\u1|u4|u4|u1|u3|u3|co~4_combout\))) # 
-- (\a[0]~input_o\ & (\amag[15]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010111111010000010101111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	dataf => \u1|ALT_INV_am[1]~0_combout\,
	combout => \u1|r[1]~0_combout\);

-- Location: LABCELL_X77_Y5_N42
\u1|u4|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|u1|u3|u1|co~combout\ = ( \u1|u4|u2|r[10]~5_combout\ & ( !\u1|u4|u2|r[11]~6_combout\ $ (!\u1|u4|u2|r[12]~7_combout\ $ (!\u1|u4|u3|u1|u2|u2|co~combout\)) ) ) # ( !\u1|u4|u2|r[10]~5_combout\ & ( !\u1|u4|u2|r[11]~6_combout\ $ 
-- (!\u1|u4|u2|r[12]~7_combout\ $ (\u1|u4|u3|u1|u2|u2|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u2|ALT_INV_r[11]~6_combout\,
	datac => \u1|u4|u2|ALT_INV_r[12]~7_combout\,
	datad => \u1|u4|u3|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|ALT_INV_r[10]~5_combout\,
	combout => \u1|u4|u3|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X78_Y2_N48
\u1|u4|u3|r[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u3|r[1]~4_combout\ = ( \u1|am[2]~10_combout\ & ( (!\u1|u4|u3|u1|u3|u1|co~combout\) # (\u1|am[1]~0_combout\) ) ) # ( !\u1|am[2]~10_combout\ & ( (!\u1|am[1]~0_combout\ & \u1|u4|u3|u1|u3|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_am[1]~0_combout\,
	datad => \u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \u1|ALT_INV_am[2]~10_combout\,
	combout => \u1|u4|u3|r[1]~4_combout\);

-- Location: MLABCELL_X78_Y2_N51
\u1|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r[2]~1_combout\ = ( \u1|u4|u3|r[1]~4_combout\ & ( (!\u1|u4|u4|u1|u3|u3|co~4_combout\ & ((!\amag[15]~1_combout\) # ((!\u1|am[1]~0_combout\ & !\a[0]~input_o\)))) # (\u1|u4|u4|u1|u3|u3|co~4_combout\ & ((!\u1|am[1]~0_combout\ & ((\amag[15]~1_combout\))) # 
-- (\u1|am[1]~0_combout\ & ((!\a[0]~input_o\) # (!\amag[15]~1_combout\))))) ) ) # ( !\u1|u4|u3|r[1]~4_combout\ & ( (!\u1|u4|u4|u1|u3|u3|co~4_combout\ & (\amag[15]~1_combout\ & ((\a[0]~input_o\) # (\u1|am[1]~0_combout\)))) # (\u1|u4|u4|u1|u3|u3|co~4_combout\ 
-- & ((!\u1|am[1]~0_combout\ & ((!\amag[15]~1_combout\))) # (\u1|am[1]~0_combout\ & (\a[0]~input_o\ & \amag[15]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000101011010001000010101110111011110101001011101111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	datab => \u1|ALT_INV_am[1]~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_amag[15]~1_combout\,
	dataf => \u1|u4|u3|ALT_INV_r[1]~4_combout\,
	combout => \u1|r[2]~1_combout\);

-- Location: LABCELL_X71_Y2_N48
\u1|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|r[3]~2_combout\ = ( \u1|am[1]~0_combout\ & ( \u1|u4|u3|r[1]~4_combout\ & ( !\u1|u4|u3|r[2]~5_combout\ $ (!\amag[15]~1_combout\) ) ) ) # ( !\u1|am[1]~0_combout\ & ( \u1|u4|u3|r[1]~4_combout\ & ( !\u1|u4|u3|r[2]~5_combout\ $ (!\amag[15]~1_combout\ $ 
-- (\u1|u4|u4|u1|u3|u3|co~4_combout\)) ) ) ) # ( \u1|am[1]~0_combout\ & ( !\u1|u4|u3|r[1]~4_combout\ & ( !\u1|u4|u3|r[2]~5_combout\ $ (((!\amag[15]~1_combout\ & (!\u1|u4|u4|u1|u3|u3|co~4_combout\)) # (\amag[15]~1_combout\ & (\u1|u4|u4|u1|u3|u3|co~4_combout\ 
-- & \a[0]~input_o\)))) ) ) ) # ( !\u1|am[1]~0_combout\ & ( !\u1|u4|u3|r[1]~4_combout\ & ( !\u1|u4|u3|r[2]~5_combout\ $ (((!\amag[15]~1_combout\) # ((!\u1|u4|u4|u1|u3|u3|co~4_combout\ & !\a[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100110011010100110100101101001011010010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|ALT_INV_r[2]~5_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	datad => \ALT_INV_a[0]~input_o\,
	datae => \u1|ALT_INV_am[1]~0_combout\,
	dataf => \u1|u4|u3|ALT_INV_r[1]~4_combout\,
	combout => \u1|r[3]~2_combout\);

-- Location: LABCELL_X71_Y2_N24
\u1|u2|u2|r[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u2|r[4]~4_combout\ = ( !\amag[11]~4_combout\ & ( (!\amag[12]~3_combout\ & \u1|v1|u2|u2|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_amag[12]~3_combout\,
	datad => \u1|v1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_amag[11]~4_combout\,
	combout => \u1|u2|u2|r[4]~4_combout\);

-- Location: LABCELL_X71_Y2_N30
\u1|v1|u3|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v1|u3|u2|co~1_combout\ = ( \u1|u2|u2|r[4]~4_combout\ & ( (\u1|v1|u3|u2|co~0_combout\ & !\amag[13]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_amag[13]~2_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[4]~4_combout\,
	combout => \u1|v1|u3|u2|co~1_combout\);

-- Location: LABCELL_X71_Y2_N27
\u1|u2|u1|u1|u1|u0|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|u1|u1|u1|u0|s~0_combout\ = ( \u1|u2|u2|r[4]~4_combout\ & ( (!\amag[15]~1_combout\ & (\u1|v1|u3|u2|co~0_combout\)) # (\amag[15]~1_combout\ & ((!\amag[13]~2_combout\))) ) ) # ( !\u1|u2|u2|r[4]~4_combout\ & ( (\u1|v1|u3|u2|co~0_combout\ & 
-- !\amag[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010100000101111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~0_combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \ALT_INV_amag[13]~2_combout\,
	dataf => \u1|u2|u2|ALT_INV_r[4]~4_combout\,
	combout => \u1|u2|u1|u1|u1|u0|s~0_combout\);

-- Location: MLABCELL_X78_Y2_N24
\u1|u4|u2|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|u2|u1|u3|u0|co~combout\ = ( \u1|u4|u1|r[11]~7_combout\ & ( !\u1|u4|u2|u1|u2|u3|co~combout\ ) ) # ( !\u1|u4|u1|r[11]~7_combout\ & ( \u1|u4|u2|u1|u2|u3|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|u2|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u1|ALT_INV_r[11]~7_combout\,
	combout => \u1|u4|u2|u1|u3|u0|co~combout\);

-- Location: LABCELL_X75_Y2_N6
\u1|v3|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u1|u0|co~0_combout\ = ( !\u1|u3|u4|u1|u2|u2|co~combout\ & ( \u1|u4|u4|u1|u3|u3|co~1_combout\ & ( (!\u1|u4|u3|u1|u3|u1|co~combout\ & (!\u1|u4|u1|u1|u2|u3|co~combout\ & (\u1|u4|u4|u1|u3|u3|co~3_combout\ & !\u1|u4|u2|u1|u3|u0|co~combout\))) ) ) ) # ( 
-- !\u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u1|u4|u4|u1|u3|u3|co~1_combout\ & ( (!\u1|u4|u3|u1|u3|u1|co~combout\ & (!\u1|u4|u1|u1|u2|u3|co~combout\ & (!\u1|u4|u4|u1|u3|u3|co~3_combout\ & !\u1|u4|u2|u1|u3|u0|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u1|u4|u4|u1|u3|u3|ALT_INV_co~3_combout\,
	datad => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	datae => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\,
	combout => \u1|v3|u1|u0|co~0_combout\);

-- Location: LABCELL_X73_Y2_N0
\u1|u3|u2|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u2|u1|u2|u0|co~combout\ = !\u1|u3|u2|u1|u1|u2|co~combout\ $ (!\u1|u3|u1|r[7]~3_combout\ $ (\u1|u3|u1|r[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u1|ALT_INV_r[7]~3_combout\,
	datad => \u1|u3|u1|ALT_INV_r[6]~2_combout\,
	combout => \u1|u3|u2|u1|u2|u0|co~combout\);

-- Location: LABCELL_X74_Y2_N30
\u1|v3|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u2|u1|co~0_combout\ = ( !\u1|u3|u3|u1|u2|u1|co~combout\ & ( !\u1|u3|u1|u1|u1|u3|co~combout\ & ( (\u1|v3|u1|u0|co~0_combout\ & (!\u1|u2|u4|u1|u1|u2|co~combout\ & (\u1|u2|u3|u1|u1|u1|co~combout\ & !\u1|u3|u2|u1|u2|u0|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v3|u1|u0|ALT_INV_co~0_combout\,
	datab => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	datae => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u1|v3|u2|u1|co~0_combout\);

-- Location: LABCELL_X74_Y2_N9
\u1|v3|u2|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u2|u3|co~0_combout\ = ( \u1|v3|u2|u1|co~0_combout\ & ( (\u1|u2|u1|u1|u1|u0|s~0_combout\ & !\u1|u2|u2|u1|u1|u1|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u1|u1|u0|ALT_INV_s~0_combout\,
	datab => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	dataf => \u1|v3|u2|u1|ALT_INV_co~0_combout\,
	combout => \u1|v3|u2|u3|co~0_combout\);

-- Location: LABCELL_X75_Y2_N42
\u2|am[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[1]~0_combout\ = ( \amag[15]~1_combout\ & ( !\u1|u4|u3|u1|u3|u1|co~combout\ $ ((((!\u1|v3|u2|u3|co~0_combout\) # (!\u1|u4|u4|u1|u3|u3|co~4_combout\)) # (\u1|v1|u3|u2|co~1_combout\))) ) ) # ( !\amag[15]~1_combout\ & ( \u1|u4|u3|u1|u3|u1|co~combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001011010000111100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v1|u3|u2|ALT_INV_co~1_combout\,
	datab => \u1|v3|u2|u3|ALT_INV_co~0_combout\,
	datac => \u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	dataf => \ALT_INV_amag[15]~1_combout\,
	combout => \u2|am[1]~0_combout\);

-- Location: LABCELL_X74_Y2_N0
\u1|v3|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u1|u2|co~0_combout\ = ( !\u1|u3|u2|u1|u2|u0|co~combout\ & ( (\u1|v3|u1|u0|co~0_combout\ & !\u1|u3|u3|u1|u2|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|v3|u1|u0|ALT_INV_co~0_combout\,
	datad => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|v3|u1|u2|co~0_combout\);

-- Location: LABCELL_X74_Y2_N3
\u1|q[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|q[9]~0_combout\ = ( \u1|u2|u3|u1|u1|u1|co~combout\ & ( (\amag[15]~1_combout\ & (((!\u1|v3|u1|u2|co~0_combout\) # (\u1|u3|u1|u1|u1|u3|co~combout\)) # (\u1|u2|u4|u1|u1|u2|co~combout\))) ) ) # ( !\u1|u2|u3|u1|u1|u1|co~combout\ & ( (!\amag[15]~1_combout\) 
-- # ((!\u1|u2|u4|u1|u1|u2|co~combout\ & (!\u1|u3|u1|u1|u1|u3|co~combout\ & \u1|v3|u1|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101010101010101110101001010101000101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u1|v3|u1|u2|ALT_INV_co~0_combout\,
	dataf => \u1|u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	combout => \u1|q[9]~0_combout\);

-- Location: LABCELL_X74_Y2_N36
\u1|q[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|q[10]~1_combout\ = ( \u1|v3|u2|u1|co~0_combout\ & ( \u1|u2|u2|u1|u1|u1|s~combout\ ) ) # ( !\u1|v3|u2|u1|co~0_combout\ & ( !\amag[15]~1_combout\ $ (!\u1|u2|u2|u1|u1|u1|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	dataf => \u1|v3|u2|u1|ALT_INV_co~0_combout\,
	combout => \u1|q[10]~1_combout\);

-- Location: LABCELL_X74_Y2_N6
\u1|q[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|q[12]~3_combout\ = ( \u1|v3|u2|u1|co~0_combout\ & ( (\amag[15]~1_combout\ & (!\u1|v1|u3|u2|co~1_combout\ $ (((\u1|u2|u1|u1|u1|u0|s~0_combout\ & !\u1|u2|u2|u1|u1|u1|s~combout\))))) ) ) # ( !\u1|v3|u2|u1|co~0_combout\ & ( (\amag[15]~1_combout\ & 
-- !\u1|v1|u3|u2|co~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001011000001000000101100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u1|u1|u1|u0|ALT_INV_s~0_combout\,
	datab => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \u1|v1|u3|u2|ALT_INV_co~1_combout\,
	dataf => \u1|v3|u2|u1|ALT_INV_co~0_combout\,
	combout => \u1|q[12]~3_combout\);

-- Location: LABCELL_X74_Y2_N39
\u1|q[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|q[11]~2_combout\ = ( \u1|v3|u2|u1|co~0_combout\ & ( !\u1|u2|u1|u1|u1|u0|s~0_combout\ $ (((\amag[15]~1_combout\ & \u1|u2|u2|u1|u1|u1|s~combout\))) ) ) # ( !\u1|v3|u2|u1|co~0_combout\ & ( !\amag[15]~1_combout\ $ (\u1|u2|u1|u1|u1|u0|s~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u1|u2|u2|u1|u1|u1|ALT_INV_s~combout\,
	datac => \u1|u2|u1|u1|u1|u0|ALT_INV_s~0_combout\,
	dataf => \u1|v3|u2|u1|ALT_INV_co~0_combout\,
	combout => \u1|q[11]~2_combout\);

-- Location: LABCELL_X75_Y2_N48
\u1|v3|u0|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u0|u1|co~0_combout\ = ( \u1|u4|u4|u1|u3|u3|co~1_combout\ & ( (!\u1|u4|u3|u1|u3|u1|co~combout\ & \u1|u4|u4|u1|u3|u3|co~3_combout\) ) ) # ( !\u1|u4|u4|u1|u3|u3|co~1_combout\ & ( (!\u1|u4|u3|u1|u3|u1|co~combout\ & !\u1|u4|u4|u1|u3|u3|co~3_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u1|u4|u4|u1|u3|u3|ALT_INV_co~3_combout\,
	dataf => \u1|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\,
	combout => \u1|v3|u0|u1|co~0_combout\);

-- Location: LABCELL_X75_Y2_N0
\u2|v1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v1|u1|u1|co~0_combout\ = ( !\u1|u4|u2|u1|u3|u0|co~combout\ & ( (\u1|v3|u0|u1|co~0_combout\ & (!\u1|u3|u3|u1|u2|u1|co~combout\ & (!\u1|u3|u4|u1|u2|u2|co~combout\ & !\u1|u4|u1|u1|u2|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v3|u0|u1|ALT_INV_co~0_combout\,
	datab => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|v1|u1|u1|co~0_combout\);

-- Location: LABCELL_X74_Y2_N12
\u1|v3|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|v3|u1|u1|co~0_combout\ = (\u1|v3|u1|u0|co~0_combout\ & !\u1|u3|u3|u1|u2|u1|co~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v3|u1|u0|ALT_INV_co~0_combout\,
	datab => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|v3|u1|u1|co~0_combout\);

-- Location: LABCELL_X74_Y2_N24
\u2|v1|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v1|u2|u0|co~0_combout\ = ( \amag[15]~1_combout\ & ( \u1|v3|u1|u1|co~0_combout\ & ( (!\u1|u2|u4|u1|u1|u2|co~combout\ & (!\u1|u3|u2|u1|u2|u0|co~combout\ & (\u2|v1|u1|u1|co~0_combout\ & !\u1|u3|u1|u1|u1|u3|co~combout\))) ) ) ) # ( !\amag[15]~1_combout\ & 
-- ( \u1|v3|u1|u1|co~0_combout\ & ( (!\u1|u2|u4|u1|u1|u2|co~combout\ & (!\u1|u3|u2|u1|u2|u0|co~combout\ & (\u2|v1|u1|u1|co~0_combout\ & !\u1|u3|u1|u1|u1|u3|co~combout\))) ) ) ) # ( \amag[15]~1_combout\ & ( !\u1|v3|u1|u1|co~0_combout\ & ( 
-- (\u1|u2|u4|u1|u1|u2|co~combout\ & (\u1|u3|u2|u1|u2|u0|co~combout\ & (\u2|v1|u1|u1|co~0_combout\ & \u1|u3|u1|u1|u1|u3|co~combout\))) ) ) ) # ( !\amag[15]~1_combout\ & ( !\u1|v3|u1|u1|co~0_combout\ & ( (!\u1|u2|u4|u1|u1|u2|co~combout\ & 
-- (!\u1|u3|u2|u1|u2|u0|co~combout\ & (\u2|v1|u1|u1|co~0_combout\ & !\u1|u3|u1|u1|u1|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000100001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u2|v1|u1|u1|ALT_INV_co~0_combout\,
	datad => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u1|v3|u1|u1|ALT_INV_co~0_combout\,
	combout => \u2|v1|u2|u0|co~0_combout\);

-- Location: LABCELL_X73_Y3_N24
\u2|u3|u1|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u1|u1|co~combout\ = ( \u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & (((\amag[15]~1_combout\ & !\u1|q[10]~1_combout\)))) # (\u1|q[12]~3_combout\ & (!\u1|q[9]~0_combout\ $ (!\amag[15]~1_combout\ $ 
-- (!\u1|q[10]~1_combout\)))) ) ) ) # ( !\u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\amag[15]~1_combout\ & (!\u1|q[10]~1_combout\ $ (((!\u1|q[12]~3_combout\) # (\u1|q[9]~0_combout\))))) # (\amag[15]~1_combout\ & (!\u1|q[10]~1_combout\ & 
-- ((!\u1|q[9]~0_combout\) # (!\u1|q[12]~3_combout\)))) ) ) ) # ( \u1|q[11]~2_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (!\amag[15]~1_combout\ & (\u1|q[12]~3_combout\ & (!\u1|q[9]~0_combout\ $ (\u1|q[10]~1_combout\)))) # (\amag[15]~1_combout\ & 
-- (!\u1|q[10]~1_combout\ $ (((\u1|q[9]~0_combout\ & !\u1|q[12]~3_combout\))))) ) ) ) # ( !\u1|q[11]~2_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (!\amag[15]~1_combout\ & (!\u1|q[10]~1_combout\ $ (((!\u1|q[12]~3_combout\) # (\u1|q[9]~0_combout\))))) # 
-- (\amag[15]~1_combout\ & (!\u1|q[12]~3_combout\ & (!\u1|q[9]~0_combout\ $ (\u1|q[10]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110000100001000011011010000111100101001000011000010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|ALT_INV_q[10]~1_combout\,
	datad => \u1|ALT_INV_q[12]~3_combout\,
	datae => \u1|ALT_INV_q[11]~2_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u1|u1|u1|co~combout\);

-- Location: LABCELL_X74_Y2_N57
\u2|am[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[7]~4_combout\ = ( \amag[15]~1_combout\ & ( !\u1|u3|u1|u1|u1|u3|co~combout\ $ (((!\u2|v1|u1|u1|co~0_combout\ & ((!\u1|v3|u1|u1|co~0_combout\) # (\u1|u3|u2|u1|u2|u0|co~combout\))) # (\u2|v1|u1|u1|co~0_combout\ & ((!\u1|u3|u2|u1|u2|u0|co~combout\) # 
-- (\u1|v3|u1|u1|co~0_combout\))))) ) ) # ( !\amag[15]~1_combout\ & ( \u1|u3|u1|u1|u1|u3|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011000111001110001100011100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v1|u1|u1|ALT_INV_co~0_combout\,
	datab => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u1|v3|u1|u1|ALT_INV_co~0_combout\,
	datad => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \ALT_INV_amag[15]~1_combout\,
	combout => \u2|am[7]~4_combout\);

-- Location: LABCELL_X74_Y2_N54
\u2|v1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v1|u1|u3|co~0_combout\ = ( \u1|v3|u1|u1|co~0_combout\ & ( (\u2|v1|u1|u1|co~0_combout\ & (!\u1|u3|u2|u1|u2|u0|co~combout\ & !\u1|u3|u1|u1|u1|u3|co~combout\)) ) ) # ( !\u1|v3|u1|u1|co~0_combout\ & ( (\u2|v1|u1|u1|co~0_combout\ & 
-- ((!\u1|u3|u2|u1|u2|u0|co~combout\ & (!\amag[15]~1_combout\ & !\u1|u3|u1|u1|u1|u3|co~combout\)) # (\u1|u3|u2|u1|u2|u0|co~combout\ & (\amag[15]~1_combout\ & \u1|u3|u1|u1|u1|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000001010000000000000101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v1|u1|u1|ALT_INV_co~0_combout\,
	datab => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u1|v3|u1|u1|ALT_INV_co~0_combout\,
	combout => \u2|v1|u1|u3|co~0_combout\);

-- Location: LABCELL_X74_Y2_N48
\u2|am[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[8]~3_combout\ = ( \u1|u3|u1|u1|u1|u3|co~combout\ & ( !\u1|u2|u4|u1|u1|u2|co~combout\ $ (((!\amag[15]~1_combout\) # (!\u2|v1|u1|u3|co~0_combout\))) ) ) # ( !\u1|u3|u1|u1|u1|u3|co~combout\ & ( !\u1|u2|u4|u1|u1|u2|co~combout\ $ 
-- (((!\amag[15]~1_combout\) # (!\u1|v3|u1|u2|co~0_combout\ $ (\u2|v1|u1|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100011001101100110001100110011011001100011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u1|u2|u4|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u1|v3|u1|u2|ALT_INV_co~0_combout\,
	datad => \u2|v1|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u2|am[8]~3_combout\);

-- Location: LABCELL_X73_Y3_N0
\u2|u3|u1|r[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|r[1]~4_combout\ = ( \u2|am[8]~3_combout\ & ( (!\u2|u3|u1|u1|u1|u1|co~combout\) # (\u2|am[7]~4_combout\) ) ) # ( !\u2|am[8]~3_combout\ & ( (\u2|u3|u1|u1|u1|u1|co~combout\ & !\u2|am[7]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u2|ALT_INV_am[7]~4_combout\,
	dataf => \u2|ALT_INV_am[8]~3_combout\,
	combout => \u2|u3|u1|r[1]~4_combout\);

-- Location: LABCELL_X73_Y3_N6
\u2|u2|u4|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u4|r[2]~1_combout\ = ( \u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[9]~0_combout\ & (\u1|q[10]~1_combout\ & ((!\amag[15]~1_combout\) # (!\u1|q[12]~3_combout\)))) # (\u1|q[9]~0_combout\ & (!\amag[15]~1_combout\ $ 
-- ((\u1|q[10]~1_combout\)))) ) ) ) # ( !\u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( !\u1|q[10]~1_combout\ $ ((((!\u1|q[9]~0_combout\ & \u1|q[12]~3_combout\)) # (\amag[15]~1_combout\))) ) ) ) # ( \u1|q[11]~2_combout\ & ( 
-- !\u2|v1|u2|u0|co~0_combout\ & ( !\u1|q[10]~1_combout\ $ (((!\u1|q[9]~0_combout\) # ((\amag[15]~1_combout\ & \u1|q[12]~3_combout\)))) ) ) ) # ( !\u1|q[11]~2_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( !\u1|q[10]~1_combout\ $ (((!\u1|q[9]~0_combout\ & 
-- ((\u1|q[12]~3_combout\) # (\amag[15]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001001011010010110100100101111000011010010110100101101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|ALT_INV_q[10]~1_combout\,
	datad => \u1|ALT_INV_q[12]~3_combout\,
	datae => \u1|ALT_INV_q[11]~2_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|u2|u4|r[2]~1_combout\);

-- Location: LABCELL_X73_Y3_N3
\u2|am[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[9]~2_combout\ = ( \u2|v1|u2|u0|co~0_combout\ & ( \u1|q[9]~0_combout\ ) ) # ( !\u2|v1|u2|u0|co~0_combout\ & ( !\u1|q[9]~0_combout\ $ (!\amag[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|am[9]~2_combout\);

-- Location: LABCELL_X74_Y2_N42
\u2|u2|u4|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u4|u1|u1|u1|co~combout\ = ( \amag[15]~1_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & (!\u1|q[9]~0_combout\ & (!\u1|q[10]~1_combout\ & !\u1|q[11]~2_combout\))) # (\u1|q[12]~3_combout\ & (!\u1|q[11]~2_combout\ $ 
-- (((!\u1|q[9]~0_combout\ & !\u1|q[10]~1_combout\))))) ) ) ) # ( !\amag[15]~1_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & \u1|q[11]~2_combout\) ) ) ) # ( \amag[15]~1_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (\u1|q[12]~3_combout\ 
-- & !\u1|q[11]~2_combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & \u1|q[11]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100110000000000000000110011001001001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datab => \u1|ALT_INV_q[12]~3_combout\,
	datac => \u1|ALT_INV_q[10]~1_combout\,
	datad => \u1|ALT_INV_q[11]~2_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|u2|u4|u1|u1|u1|co~combout\);

-- Location: LABCELL_X73_Y3_N30
\u2|u3|u1|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|r[3]~1_combout\ = ( \u2|am[8]~3_combout\ & ( !\u2|u2|u4|r[2]~1_combout\ $ (((\u2|u3|u1|u1|u1|u1|co~combout\ & !\u2|am[9]~2_combout\))) ) ) # ( !\u2|am[8]~3_combout\ & ( !\u2|u2|u4|r[2]~1_combout\ $ (((\u2|u3|u1|u1|u1|u1|co~combout\ & 
-- (!\u2|am[9]~2_combout\ $ (!\u2|u2|u4|u1|u1|u1|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100110011100110010011001110010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u2|u2|u4|ALT_INV_r[2]~1_combout\,
	datac => \u2|ALT_INV_am[9]~2_combout\,
	datad => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u2|ALT_INV_am[8]~3_combout\,
	combout => \u2|u3|u1|r[3]~1_combout\);

-- Location: LABCELL_X73_Y3_N42
\u2|u2|u4|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u4|r[4]~2_combout\ = ( \u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (\u1|q[10]~1_combout\ & ((!\amag[15]~1_combout\ & ((\u1|q[12]~3_combout\))) # (\amag[15]~1_combout\ & (\u1|q[9]~0_combout\ & !\u1|q[12]~3_combout\)))) ) ) ) # ( 
-- !\u1|q[11]~2_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[9]~0_combout\ & ((!\u1|q[12]~3_combout\ & (\amag[15]~1_combout\)) # (\u1|q[12]~3_combout\ & ((!\u1|q[10]~1_combout\))))) # (\u1|q[9]~0_combout\ & (!\u1|q[10]~1_combout\ & 
-- (!\amag[15]~1_combout\ $ (!\u1|q[12]~3_combout\)))) ) ) ) # ( \u1|q[11]~2_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (\u1|q[10]~1_combout\ & (!\amag[15]~1_combout\ $ (!\u1|q[12]~3_combout\))) ) ) ) # ( !\u1|q[11]~2_combout\ & ( 
-- !\u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[10]~1_combout\ & (!\amag[15]~1_combout\ $ (!\u1|q[12]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000000000110000110000110010111000000000000100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|ALT_INV_q[10]~1_combout\,
	datad => \u1|ALT_INV_q[12]~3_combout\,
	datae => \u1|ALT_INV_q[11]~2_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|u2|u4|r[4]~2_combout\);

-- Location: LABCELL_X73_Y3_N33
\u2|u3|u1|r[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|r[5]~3_combout\ = (!\u2|u3|u1|u1|u1|u1|co~combout\ & \u2|u2|u4|r[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u2|u2|u4|ALT_INV_r[4]~2_combout\,
	combout => \u2|u3|u1|r[5]~3_combout\);

-- Location: LABCELL_X73_Y4_N3
\u2|u3|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|r[2]~0_combout\ = ( \u2|u3|u1|u1|u1|u1|co~combout\ & ( !\u2|am[9]~2_combout\ $ (((\u2|am[8]~3_combout\) # (\u2|u2|u4|u1|u1|u1|co~combout\))) ) ) # ( !\u2|u3|u1|u1|u1|u1|co~combout\ & ( !\u2|am[9]~2_combout\ $ (((!\u2|u2|u4|u1|u1|u1|co~combout\) 
-- # (\u2|am[8]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_am[9]~2_combout\,
	datac => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u2|ALT_INV_am[8]~3_combout\,
	dataf => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	combout => \u2|u3|u1|r[2]~0_combout\);

-- Location: LABCELL_X74_Y2_N18
\u2|u2|u4|r[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u4|r[3]~0_combout\ = ( \amag[15]~1_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & (!\u1|q[11]~2_combout\ $ (((\u1|q[9]~0_combout\ & \u1|q[10]~1_combout\))))) # (\u1|q[12]~3_combout\ & (!\u1|q[10]~1_combout\ & 
-- ((!\u1|q[9]~0_combout\) # (!\u1|q[11]~2_combout\)))) ) ) ) # ( !\amag[15]~1_combout\ & ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & (\u1|q[11]~2_combout\ & (!\u1|q[9]~0_combout\ $ (\u1|q[10]~1_combout\)))) # (\u1|q[12]~3_combout\ & 
-- ((!\u1|q[10]~1_combout\ $ (\u1|q[11]~2_combout\)))) ) ) ) # ( \amag[15]~1_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & ((!\u1|q[10]~1_combout\ $ (\u1|q[11]~2_combout\)))) # (\u1|q[12]~3_combout\ & (!\u1|q[11]~2_combout\ & 
-- (!\u1|q[9]~0_combout\ $ (\u1|q[10]~1_combout\)))) ) ) ) # ( !\amag[15]~1_combout\ & ( !\u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[12]~3_combout\ & (\u1|q[11]~2_combout\ & (!\u1|q[9]~0_combout\ $ (\u1|q[10]~1_combout\)))) # (\u1|q[12]~3_combout\ & 
-- ((!\u1|q[10]~1_combout\ $ (\u1|q[11]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010000111111000010000110000110000100001111111100000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_q[9]~0_combout\,
	datab => \u1|ALT_INV_q[12]~3_combout\,
	datac => \u1|ALT_INV_q[10]~1_combout\,
	datad => \u1|ALT_INV_q[11]~2_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|u2|u4|r[3]~0_combout\);

-- Location: LABCELL_X73_Y3_N39
\u2|u3|u1|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|r[4]~2_combout\ = ( \u2|u2|u4|r[3]~0_combout\ & ( (!\u2|u2|u4|r[2]~1_combout\) # (!\u2|u3|u1|u1|u1|u1|co~combout\) ) ) # ( !\u2|u2|u4|r[3]~0_combout\ & ( (\u2|u2|u4|r[2]~1_combout\ & \u2|u3|u1|u1|u1|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u2|u4|ALT_INV_r[2]~1_combout\,
	datad => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u2|u2|u4|ALT_INV_r[3]~0_combout\,
	combout => \u2|u3|u1|r[4]~2_combout\);

-- Location: LABCELL_X73_Y3_N12
\u2|u3|u3|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|u1|u1|u3|co~combout\ = ( \u2|u3|u1|r[4]~2_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[2]~0_combout\ & (!\u2|u3|u1|r[3]~1_combout\ $ (!\u2|u3|u1|r[5]~3_combout\)))) # (\u2|u3|u1|r[1]~4_combout\ & ((!\u2|u3|u1|r[3]~1_combout\ $ 
-- (!\u2|u3|u1|r[5]~3_combout\)) # (\u2|u3|u1|r[2]~0_combout\))) ) ) # ( !\u2|u3|u1|r[4]~2_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & (!\u2|u3|u1|r[2]~0_combout\ & (!\u2|u3|u1|r[3]~1_combout\ $ (!\u2|u3|u1|r[5]~3_combout\)))) # (\u2|u3|u1|r[1]~4_combout\ & 
-- ((!\u2|u3|u1|r[2]~0_combout\) # (!\u2|u3|u1|r[3]~1_combout\ $ (!\u2|u3|u1|r[5]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110100010100011111010001010000010100011111010001010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datab => \u2|u3|u1|ALT_INV_r[3]~1_combout\,
	datac => \u2|u3|u1|ALT_INV_r[5]~3_combout\,
	datad => \u2|u3|u1|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u1|ALT_INV_r[4]~2_combout\,
	combout => \u2|u3|u3|u1|u1|u3|co~combout\);

-- Location: LABCELL_X73_Y3_N18
\u2|u3|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|u1|u1|u2|co~combout\ = ( \u2|am[9]~2_combout\ & ( \u2|am[8]~3_combout\ & ( (!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\)) # (\u2|u2|u4|r[3]~0_combout\) ) ) ) # ( !\u2|am[9]~2_combout\ & ( \u2|am[8]~3_combout\ & ( 
-- (\u2|u2|u4|r[3]~0_combout\ & (!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\))) ) ) ) # ( \u2|am[9]~2_combout\ & ( !\u2|am[8]~3_combout\ & ( (!\u2|u2|u4|u1|u1|u1|co~combout\ & ((!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\)) # 
-- (\u2|u2|u4|r[3]~0_combout\))) # (\u2|u2|u4|u1|u1|u1|co~combout\ & (\u2|u2|u4|r[3]~0_combout\ & (!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\)))) ) ) ) # ( !\u2|am[9]~2_combout\ & ( !\u2|am[8]~3_combout\ & ( (!\u2|u2|u4|u1|u1|u1|co~combout\ & 
-- (\u2|u2|u4|r[3]~0_combout\ & (!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\)))) # (\u2|u2|u4|u1|u1|u1|co~combout\ & ((!\u2|u2|u4|r[4]~2_combout\ $ (!\u2|u2|u4|r[2]~1_combout\)) # (\u2|u2|u4|r[3]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101001010111000111000000011000011000011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u2|u2|u4|ALT_INV_r[4]~2_combout\,
	datac => \u2|u2|u4|ALT_INV_r[3]~0_combout\,
	datad => \u2|u2|u4|ALT_INV_r[2]~1_combout\,
	datae => \u2|ALT_INV_am[9]~2_combout\,
	dataf => \u2|ALT_INV_am[8]~3_combout\,
	combout => \u2|u3|u2|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X72_Y3_N36
\u2|u3|u2|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|r[2]~1_combout\ = !\u2|u3|u1|r[1]~4_combout\ $ (((!\u2|u3|u2|u1|u1|u2|co~combout\) # (\u2|am[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datac => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|ALT_INV_am[7]~4_combout\,
	combout => \u2|u3|u2|r[2]~1_combout\);

-- Location: MLABCELL_X72_Y3_N12
\u2|u3|u3|r[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[4]~1_combout\ = ( \u2|am[7]~4_combout\ & ( \u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[3]~1_combout\ & (((\u2|u3|u1|r[2]~0_combout\)))) # (\u2|u3|u1|r[3]~1_combout\ & ((!\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[4]~2_combout\)) # 
-- (\u2|u3|u1|r[1]~4_combout\ & ((\u2|u3|u1|r[2]~0_combout\))))) ) ) ) # ( !\u2|am[7]~4_combout\ & ( \u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[3]~1_combout\ & (((\u2|u3|u1|r[2]~0_combout\)))) # (\u2|u3|u1|r[3]~1_combout\ & ((!\u2|u3|u1|r[1]~4_combout\ & 
-- ((\u2|u3|u1|r[2]~0_combout\))) # (\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[4]~2_combout\)))) ) ) ) # ( \u2|am[7]~4_combout\ & ( !\u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[3]~1_combout\ & ((!\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[4]~2_combout\)) # 
-- (\u2|u3|u1|r[1]~4_combout\ & ((\u2|u3|u1|r[2]~0_combout\))))) # (\u2|u3|u1|r[3]~1_combout\ & (((\u2|u3|u1|r[2]~0_combout\)))) ) ) ) # ( !\u2|am[7]~4_combout\ & ( !\u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[3]~1_combout\ & ((!\u2|u3|u1|r[1]~4_combout\ & 
-- ((\u2|u3|u1|r[2]~0_combout\))) # (\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[4]~2_combout\)))) # (\u2|u3|u1|r[3]~1_combout\ & (((\u2|u3|u1|r[2]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111001000000111111100000001111110110001000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[3]~1_combout\,
	datab => \u2|u3|u1|ALT_INV_r[4]~2_combout\,
	datac => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datad => \u2|u3|u1|ALT_INV_r[2]~0_combout\,
	datae => \u2|ALT_INV_am[7]~4_combout\,
	dataf => \u2|u3|u1|ALT_INV_r[5]~3_combout\,
	combout => \u2|u3|u3|r[4]~1_combout\);

-- Location: MLABCELL_X72_Y3_N39
\u2|u3|u3|r[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[5]~2_combout\ = ( \u2|u3|u1|r[3]~1_combout\ & ( (!\u2|u3|u1|r[5]~3_combout\ & ((!\u2|u3|u1|r[2]~0_combout\ & ((\u2|u3|u1|r[4]~2_combout\))) # (\u2|u3|u1|r[2]~0_combout\ & (!\u2|u3|u1|r[1]~4_combout\ & !\u2|u3|u1|r[4]~2_combout\)))) # 
-- (\u2|u3|u1|r[5]~3_combout\ & ((!\u2|u3|u1|r[4]~2_combout\) # ((!\u2|u3|u1|r[1]~4_combout\ & \u2|u3|u1|r[2]~0_combout\)))) ) ) # ( !\u2|u3|u1|r[3]~1_combout\ & ( (!\u2|u3|u1|r[5]~3_combout\ & (\u2|u3|u1|r[4]~2_combout\ & ((!\u2|u3|u1|r[2]~0_combout\) # 
-- (\u2|u3|u1|r[1]~4_combout\)))) # (\u2|u3|u1|r[5]~3_combout\ & ((!\u2|u3|u1|r[2]~0_combout\ & ((!\u2|u3|u1|r[4]~2_combout\))) # (\u2|u3|u1|r[2]~0_combout\ & ((\u2|u3|u1|r[4]~2_combout\) # (\u2|u3|u1|r[1]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111000111001100011100011100111011110000100011101111000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datab => \u2|u3|u1|ALT_INV_r[5]~3_combout\,
	datac => \u2|u3|u1|ALT_INV_r[2]~0_combout\,
	datad => \u2|u3|u1|ALT_INV_r[4]~2_combout\,
	dataf => \u2|u3|u1|ALT_INV_r[3]~1_combout\,
	combout => \u2|u3|u3|r[5]~2_combout\);

-- Location: LABCELL_X74_Y2_N51
\u2|am[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[6]~1_combout\ = ( \u1|v3|u1|u1|co~0_combout\ & ( !\u1|u3|u2|u1|u2|u0|co~combout\ $ (((!\amag[15]~1_combout\) # (\u2|v1|u1|u1|co~0_combout\))) ) ) # ( !\u1|v3|u1|u1|co~0_combout\ & ( !\u1|u3|u2|u1|u2|u0|co~combout\ $ (((!\amag[15]~1_combout\) # 
-- (!\u2|v1|u1|u1|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datac => \u1|u3|u2|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u2|v1|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u1|v3|u1|u1|ALT_INV_co~0_combout\,
	combout => \u2|am[6]~1_combout\);

-- Location: MLABCELL_X72_Y3_N33
\u2|u3|u2|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u2|r[1]~0_combout\ = !\u2|am[7]~4_combout\ $ (((!\u2|u3|u2|u1|u1|u2|co~combout\) # (\u2|am[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111101010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|ALT_INV_am[6]~1_combout\,
	datad => \u2|ALT_INV_am[7]~4_combout\,
	combout => \u2|u3|u2|r[1]~0_combout\);

-- Location: LABCELL_X74_Y3_N36
\u2|u3|u4|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|u1|u1|u2|co~combout\ = ( \u2|u3|u2|r[1]~0_combout\ & ( !\u2|u3|u2|r[2]~1_combout\ $ (!\u2|u3|u3|r[4]~1_combout\ $ (!\u2|u3|u3|r[5]~2_combout\)) ) ) # ( !\u2|u3|u2|r[1]~0_combout\ & ( !\u2|u3|u3|u1|u1|u3|co~combout\ $ (!\u2|u3|u2|r[2]~1_combout\ 
-- $ (!\u2|u3|u3|r[4]~1_combout\ $ (!\u2|u3|u3|r[5]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011011000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u2|u3|u2|ALT_INV_r[2]~1_combout\,
	datac => \u2|u3|u3|ALT_INV_r[4]~1_combout\,
	datad => \u2|u3|u3|ALT_INV_r[5]~2_combout\,
	dataf => \u2|u3|u2|ALT_INV_r[1]~0_combout\,
	combout => \u2|u3|u4|u1|u1|u2|co~combout\);

-- Location: LABCELL_X73_Y3_N15
\u2|u3|u3|r[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[6]~3_combout\ = ( \u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & ((!\u2|u3|u1|r[2]~0_combout\ & ((\u2|u3|u1|r[4]~2_combout\))) # (\u2|u3|u1|r[2]~0_combout\ & (\u2|u3|u1|r[3]~1_combout\)))) # (\u2|u3|u1|r[1]~4_combout\ & 
-- ((!\u2|u3|u1|r[4]~2_combout\ $ (!\u2|u3|u1|r[2]~0_combout\)) # (\u2|u3|u1|r[3]~1_combout\))) ) ) # ( !\u2|u3|u1|r[5]~3_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[4]~2_combout\ & (!\u2|u3|u1|r[3]~1_combout\ $ (!\u2|u3|u1|r[2]~0_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000011111011100110001111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datab => \u2|u3|u1|ALT_INV_r[3]~1_combout\,
	datac => \u2|u3|u1|ALT_INV_r[4]~2_combout\,
	datad => \u2|u3|u1|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u1|ALT_INV_r[5]~3_combout\,
	combout => \u2|u3|u3|r[6]~3_combout\);

-- Location: LABCELL_X74_Y3_N39
\u2|u3|u3|r[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[3]~6_combout\ = ( \u2|u3|u2|r[1]~0_combout\ & ( !\u2|u3|u2|r[2]~1_combout\ $ (((!\u2|u3|u3|u1|u1|u3|co~combout\) # (\u2|am[6]~1_combout\))) ) ) # ( !\u2|u3|u2|r[1]~0_combout\ & ( !\u2|u3|u2|r[2]~1_combout\ $ (((!\u2|u3|u3|u1|u1|u3|co~combout\) 
-- # (!\u2|am[6]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011001100011011000110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u2|u3|u2|ALT_INV_r[2]~1_combout\,
	datac => \u2|ALT_INV_am[6]~1_combout\,
	dataf => \u2|u3|u2|ALT_INV_r[1]~0_combout\,
	combout => \u2|u3|u3|r[3]~6_combout\);

-- Location: LABCELL_X74_Y3_N0
\u2|u3|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[2]~0_combout\ = !\u2|u3|u2|r[1]~0_combout\ $ (((!\u2|u3|u3|u1|u1|u3|co~combout\) # (\u2|am[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011010010110100101101001011010010110100101101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u2|ALT_INV_am[6]~1_combout\,
	datac => \u2|u3|u2|ALT_INV_r[1]~0_combout\,
	combout => \u2|u3|u3|r[2]~0_combout\);

-- Location: LABCELL_X73_Y3_N36
\u2|u3|u3|r[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[7]~4_combout\ = ( \u2|u3|u1|r[3]~1_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & (\u2|u3|u1|r[5]~3_combout\ & (!\u2|u3|u1|r[4]~2_combout\ $ (\u2|u3|u1|r[2]~0_combout\)))) ) ) # ( !\u2|u3|u1|r[3]~1_combout\ & ( (!\u2|u3|u1|r[1]~4_combout\ & 
-- (\u2|u3|u1|r[5]~3_combout\ & (!\u2|u3|u1|r[4]~2_combout\ $ (!\u2|u3|u1|r[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|ALT_INV_r[1]~4_combout\,
	datab => \u2|u3|u1|ALT_INV_r[4]~2_combout\,
	datac => \u2|u3|u1|ALT_INV_r[5]~3_combout\,
	datad => \u2|u3|u1|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u1|ALT_INV_r[3]~1_combout\,
	combout => \u2|u3|u3|r[7]~4_combout\);

-- Location: LABCELL_X74_Y3_N51
\u2|u3|u4|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[4]~0_combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[3]~6_combout\ $ (((!\u2|u3|u4|u1|u1|u2|co~combout\ $ (!\u2|u3|u3|r[6]~3_combout\)) # (\u2|u3|u3|r[2]~0_combout\))) ) ) # ( !\u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[3]~6_combout\ $ 
-- (((!\u2|u3|u4|u1|u1|u2|co~combout\ $ (\u2|u3|u3|r[6]~3_combout\)) # (\u2|u3|u3|r[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100001111011010010000111110010110000011111001011000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u3|ALT_INV_r[3]~6_combout\,
	datad => \u2|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[4]~0_combout\);

-- Location: LABCELL_X74_Y3_N6
\u2|u3|u4|r[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[8]~4_combout\ = (\u2|u3|u3|r[7]~4_combout\ & (!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u3|u4|r[8]~4_combout\);

-- Location: LABCELL_X74_Y3_N24
\u2|u3|u4|r[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[5]~1_combout\ = ( \u2|u3|u4|u1|u1|u2|co~combout\ & ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[4]~1_combout\ $ (((!\u2|u3|u3|r[6]~3_combout\) # (!\u2|u3|u3|r[2]~0_combout\ $ (!\u2|u3|u3|r[3]~6_combout\)))) ) ) ) # ( 
-- !\u2|u3|u4|u1|u1|u2|co~combout\ & ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[4]~1_combout\ $ (((!\u2|u3|u3|r[2]~0_combout\ $ (!\u2|u3|u3|r[3]~6_combout\)) # (\u2|u3|u3|r[6]~3_combout\))) ) ) ) # ( \u2|u3|u4|u1|u1|u2|co~combout\ & ( 
-- !\u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[4]~1_combout\ $ (((!\u2|u3|u3|r[2]~0_combout\ $ (!\u2|u3|u3|r[3]~6_combout\)) # (\u2|u3|u3|r[6]~3_combout\))) ) ) ) # ( !\u2|u3|u4|u1|u1|u2|co~combout\ & ( !\u2|u3|u3|r[7]~4_combout\ & ( 
-- !\u2|u3|u3|r[4]~1_combout\ $ (((!\u2|u3|u3|r[6]~3_combout\) # (!\u2|u3|u3|r[2]~0_combout\ $ (!\u2|u3|u3|r[3]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100011110100001110100101110000111010010110010110100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|ALT_INV_r[2]~0_combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u3|ALT_INV_r[4]~1_combout\,
	datad => \u2|u3|u3|ALT_INV_r[3]~6_combout\,
	datae => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[5]~1_combout\);

-- Location: LABCELL_X74_Y3_N30
\u2|u3|u4|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[6]~2_combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u4|u1|u1|u2|co~combout\ & ((!\u2|u3|u3|r[6]~3_combout\) # (\u2|u3|u3|r[5]~2_combout\))) # (\u2|u3|u4|u1|u1|u2|co~combout\ & (!\u2|u3|u3|r[6]~3_combout\ & \u2|u3|u3|r[5]~2_combout\)) ) ) 
-- # ( !\u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u4|u1|u1|u2|co~combout\ & ((\u2|u3|u3|r[5]~2_combout\) # (\u2|u3|u3|r[6]~3_combout\))) # (\u2|u3|u4|u1|u1|u2|co~combout\ & (\u2|u3|u3|r[6]~3_combout\ & \u2|u3|u3|r[5]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101110001000111011101000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datad => \u2|u3|u3|ALT_INV_r[5]~2_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[6]~2_combout\);

-- Location: LABCELL_X74_Y3_N33
\u2|u3|u4|r[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[7]~3_combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u4|u1|u1|u2|co~combout\) # (\u2|u3|u3|r[6]~3_combout\) ) ) # ( !\u2|u3|u3|r[7]~4_combout\ & ( (\u2|u3|u4|u1|u1|u2|co~combout\ & \u2|u3|u3|r[6]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[7]~3_combout\);

-- Location: LABCELL_X75_Y2_N51
\u2|v1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v1|u1|u0|co~0_combout\ = ( !\u1|u4|u2|u1|u3|u0|co~combout\ & ( (\u1|v3|u0|u1|co~0_combout\ & (!\u1|u4|u1|u1|u2|u3|co~combout\ & !\u1|u3|u4|u1|u2|u2|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v3|u0|u1|ALT_INV_co~0_combout\,
	datac => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|v1|u1|u0|co~0_combout\);

-- Location: LABCELL_X74_Y2_N15
\u2|am[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|am[5]~5_combout\ = ( \u2|v1|u1|u0|co~0_combout\ & ( !\u1|u3|u3|u1|u2|u1|co~combout\ $ (((!\amag[15]~1_combout\) # (\u1|v3|u1|u0|co~0_combout\))) ) ) # ( !\u2|v1|u1|u0|co~0_combout\ & ( !\u1|u3|u3|u1|u2|u1|co~combout\ $ (((!\u1|v3|u1|u0|co~0_combout\) 
-- # (!\amag[15]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011000111001001110010011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|v3|u1|u0|ALT_INV_co~0_combout\,
	datab => \u1|u3|u3|u1|u2|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|v1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u2|am[5]~5_combout\);

-- Location: LABCELL_X74_Y3_N3
\u2|u3|u3|r[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u3|r[1]~5_combout\ = !\u2|am[6]~1_combout\ $ (((!\u2|u3|u3|u1|u1|u3|co~combout\) # (\u2|am[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011011000110110001101100011011000110110001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datab => \u2|ALT_INV_am[6]~1_combout\,
	datac => \u2|ALT_INV_am[5]~5_combout\,
	combout => \u2|u3|u3|r[1]~5_combout\);

-- Location: LABCELL_X74_Y3_N45
\u2|u4|u1|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u1|u1|u0|co~combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[2]~0_combout\ $ (((!\u2|u3|u3|r[1]~5_combout\ & (!\u2|u3|u4|u1|u1|u2|co~combout\ $ (!\u2|u3|u3|r[6]~3_combout\))))) ) ) # ( !\u2|u3|u3|r[7]~4_combout\ & ( 
-- !\u2|u3|u3|r[2]~0_combout\ $ (((!\u2|u3|u3|r[1]~5_combout\ & (!\u2|u3|u4|u1|u1|u2|co~combout\ $ (\u2|u3|u3|r[6]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111110010000011011111001000010011111011000001001111101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u3|ALT_INV_r[1]~5_combout\,
	datad => \u2|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u4|u1|u1|u1|u0|co~combout\);

-- Location: LABCELL_X77_Y3_N48
\u2|u4|u1|r[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[6]~3_combout\ = ( \u2|u3|u4|r[7]~3_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[4]~0_combout\ & (((\u2|u3|u4|r[5]~1_combout\)))) # (\u2|u3|u4|r[4]~0_combout\ & (!\u2|u3|u4|r[8]~4_combout\ $ (((\u2|u3|u4|r[6]~2_combout\))))) ) 
-- ) ) # ( !\u2|u3|u4|r[7]~3_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[4]~0_combout\ & (((\u2|u3|u4|r[5]~1_combout\)))) # (\u2|u3|u4|r[4]~0_combout\ & (!\u2|u3|u4|r[8]~4_combout\ $ (((!\u2|u3|u4|r[6]~2_combout\))))) ) ) ) # ( 
-- \u2|u3|u4|r[7]~3_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[4]~0_combout\ & (!\u2|u3|u4|r[8]~4_combout\ $ (((\u2|u3|u4|r[6]~2_combout\))))) # (\u2|u3|u4|r[4]~0_combout\ & (((\u2|u3|u4|r[5]~1_combout\)))) ) ) ) # ( 
-- !\u2|u3|u4|r[7]~3_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[4]~0_combout\ & (!\u2|u3|u4|r[8]~4_combout\ $ (((!\u2|u3|u4|r[6]~2_combout\))))) # (\u2|u3|u4|r[4]~0_combout\ & (((\u2|u3|u4|r[5]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101100011010010011100011011010011100100111000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	datab => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	datac => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datad => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datae => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	dataf => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[6]~3_combout\);

-- Location: LABCELL_X74_Y3_N18
\u2|u4|u1|r[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[9]~6_combout\ = ( \u2|u3|u4|r[4]~0_combout\ & ( \u2|u3|u4|r[7]~3_combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u4|u1|u1|u1|u0|co~combout\)))) ) ) ) # ( !\u2|u3|u4|r[4]~0_combout\ & ( 
-- \u2|u3|u4|r[7]~3_combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u4|u1|u1|u1|u0|co~combout\)))) ) ) ) # ( \u2|u3|u4|r[4]~0_combout\ & ( !\u2|u3|u4|r[7]~3_combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & 
-- (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u4|u1|u1|u1|u0|co~combout\)))) ) ) ) # ( !\u2|u3|u4|r[4]~0_combout\ & ( !\u2|u3|u4|r[7]~3_combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ 
-- $ (\u2|u4|u1|u1|u1|u0|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001001000010001001000100001000100100001001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datab => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	datac => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datad => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	datae => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	dataf => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	combout => \u2|u4|u1|r[9]~6_combout\);

-- Location: LABCELL_X77_Y3_N24
\u2|u4|u1|r[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[8]~5_combout\ = ( \u2|u3|u4|r[7]~3_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[4]~0_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[6]~2_combout\))) # (\u2|u3|u4|r[8]~4_combout\) ) ) ) # ( !\u2|u3|u4|r[7]~3_combout\ & 
-- ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & (!\u2|u3|u4|r[4]~0_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[6]~2_combout\)))) ) ) ) # ( \u2|u3|u4|r[7]~3_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( 
-- (!\u2|u3|u4|r[4]~0_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[6]~2_combout\))) # (\u2|u3|u4|r[8]~4_combout\) ) ) ) # ( !\u2|u3|u4|r[7]~3_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( (\u2|u3|u4|r[8]~4_combout\ & (!\u2|u3|u4|r[4]~0_combout\ $ 
-- (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[6]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100010010011110111011011100010010001000011011011101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	datab => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	datac => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datad => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datae => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	dataf => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[8]~5_combout\);

-- Location: LABCELL_X73_Y3_N54
\u2|u4|u1|r[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[7]~4_combout\ = ( \u2|u3|u4|r[8]~4_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[6]~2_combout\ & (!\u2|u3|u4|r[7]~3_combout\ & (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[4]~0_combout\)))) # (\u2|u3|u4|r[6]~2_combout\ & 
-- ((!\u2|u3|u4|r[7]~3_combout\) # (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[4]~0_combout\)))) ) ) ) # ( !\u2|u3|u4|r[8]~4_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[6]~2_combout\ & (\u2|u3|u4|r[7]~3_combout\ & (!\u2|u3|u4|r[5]~1_combout\ 
-- $ (!\u2|u3|u4|r[4]~0_combout\)))) # (\u2|u3|u4|r[6]~2_combout\ & ((!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[4]~0_combout\)) # (\u2|u3|u4|r[7]~3_combout\))) ) ) ) # ( \u2|u3|u4|r[8]~4_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( 
-- (!\u2|u3|u4|r[6]~2_combout\ & (!\u2|u3|u4|r[7]~3_combout\ & (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[4]~0_combout\)))) # (\u2|u3|u4|r[6]~2_combout\ & ((!\u2|u3|u4|r[7]~3_combout\) # (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[4]~0_combout\)))) ) ) ) # ( 
-- !\u2|u3|u4|r[8]~4_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( (!\u2|u3|u4|r[6]~2_combout\ & (\u2|u3|u4|r[7]~3_combout\ & (!\u2|u3|u4|r[5]~1_combout\ $ (\u2|u3|u4|r[4]~0_combout\)))) # (\u2|u3|u4|r[6]~2_combout\ & ((!\u2|u3|u4|r[5]~1_combout\ $ 
-- (!\u2|u3|u4|r[4]~0_combout\)) # (\u2|u3|u4|r[7]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110101000111110100010111010001000111000111010111010011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datab => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datac => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	datad => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	datae => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	dataf => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[7]~4_combout\);

-- Location: LABCELL_X73_Y3_N48
\u2|u4|u1|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|u1|u2|u1|co~combout\ = ( \u2|u3|u4|r[8]~4_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( !\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[7]~3_combout\ $ (!\u2|u3|u4|r[4]~0_combout\))) ) ) ) # ( 
-- !\u2|u3|u4|r[8]~4_combout\ & ( \u2|u4|u1|u1|u1|u0|co~combout\ & ( !\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[7]~3_combout\ $ (\u2|u3|u4|r[4]~0_combout\))) ) ) ) # ( \u2|u3|u4|r[8]~4_combout\ & ( 
-- !\u2|u4|u1|u1|u1|u0|co~combout\ & ( !\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[7]~3_combout\ $ (\u2|u3|u4|r[4]~0_combout\))) ) ) ) # ( !\u2|u3|u4|r[8]~4_combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ & ( 
-- !\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[5]~1_combout\ $ (!\u2|u3|u4|r[7]~3_combout\ $ (!\u2|u3|u4|r[4]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datab => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datac => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	datad => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	datae => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	dataf => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u1|u1|u2|u1|co~combout\);

-- Location: LABCELL_X74_Y3_N48
\u2|u3|u4|r[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[2]~6_combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[1]~5_combout\ $ (((!\u2|u3|u4|u1|u1|u2|co~combout\ $ (!\u2|u3|u3|r[6]~3_combout\)) # (\u2|am[5]~5_combout\))) ) ) # ( !\u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u3|r[1]~5_combout\ $ 
-- (((!\u2|u3|u4|u1|u1|u2|co~combout\ $ (\u2|u3|u3|r[6]~3_combout\)) # (\u2|am[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100001111011010010000111110010110000011111001011000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u3|ALT_INV_r[1]~5_combout\,
	datad => \u2|ALT_INV_am[5]~5_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[2]~6_combout\);

-- Location: LABCELL_X74_Y3_N12
\u2|u3|u4|r[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[3]~7_combout\ = ( \u2|u3|u3|r[2]~0_combout\ & ( \u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u3|r[1]~5_combout\ & ((!\u2|am[5]~5_combout\) # (!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\)))) # (\u2|u3|u3|r[1]~5_combout\ & 
-- ((!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\)) # (\u2|am[5]~5_combout\))) ) ) ) # ( !\u2|u3|u3|r[2]~0_combout\ & ( \u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u3|r[1]~5_combout\ & (\u2|am[5]~5_combout\ & (!\u2|u3|u3|r[6]~3_combout\ $ 
-- (\u2|u3|u4|u1|u1|u2|co~combout\)))) # (\u2|u3|u3|r[1]~5_combout\ & (!\u2|am[5]~5_combout\ & (!\u2|u3|u3|r[6]~3_combout\ $ (\u2|u3|u4|u1|u1|u2|co~combout\)))) ) ) ) # ( \u2|u3|u3|r[2]~0_combout\ & ( !\u2|u3|u3|r[7]~4_combout\ & ( 
-- (!\u2|u3|u3|r[1]~5_combout\ & ((!\u2|am[5]~5_combout\) # (!\u2|u3|u3|r[6]~3_combout\ $ (\u2|u3|u4|u1|u1|u2|co~combout\)))) # (\u2|u3|u3|r[1]~5_combout\ & ((!\u2|u3|u3|r[6]~3_combout\ $ (\u2|u3|u4|u1|u1|u2|co~combout\)) # (\u2|am[5]~5_combout\))) ) ) ) # ( 
-- !\u2|u3|u3|r[2]~0_combout\ & ( !\u2|u3|u3|r[7]~4_combout\ & ( (!\u2|u3|u3|r[1]~5_combout\ & (\u2|am[5]~5_combout\ & (!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\)))) # (\u2|u3|u3|r[1]~5_combout\ & (!\u2|am[5]~5_combout\ & 
-- (!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000111010111101011101000001100000101011111001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|ALT_INV_r[1]~5_combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|ALT_INV_am[5]~5_combout\,
	datae => \u2|u3|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|r[3]~7_combout\);

-- Location: LABCELL_X74_Y3_N9
\u2|u3|u4|r[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|r[1]~5_combout\ = ( \u1|u3|u4|u1|u2|u2|co~combout\ & ( \u2|am[5]~5_combout\ ) ) # ( !\u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u2|u3|u3|r[7]~4_combout\ $ (!\u2|u3|u3|r[6]~3_combout\ $ (!\u2|am[5]~5_combout\ $ (!\u2|u3|u4|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	datac => \u2|ALT_INV_am[5]~5_combout\,
	datad => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u3|u4|r[1]~5_combout\);

-- Location: LABCELL_X77_Y3_N6
\u2|u4|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|u1|u1|u2|co~combout\ = ( \u2|u3|u4|r[4]~0_combout\ & ( !\u2|u3|u4|r[2]~6_combout\ $ (((!\u2|u3|u4|r[3]~7_combout\ $ (!\u2|u3|u4|r[1]~5_combout\)) # (\u2|u4|u1|u1|u2|u1|co~combout\))) ) ) # ( !\u2|u3|u4|r[4]~0_combout\ & ( 
-- !\u2|u3|u4|r[2]~6_combout\ $ (((!\u2|u4|u1|u1|u2|u1|co~combout\ & (!\u2|u3|u4|r[3]~7_combout\ $ (\u2|u3|u4|r[1]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011000110011011001100011010010011001110011001001100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datab => \u2|u3|u4|ALT_INV_r[2]~6_combout\,
	datac => \u2|u3|u4|ALT_INV_r[3]~7_combout\,
	datad => \u2|u3|u4|ALT_INV_r[1]~5_combout\,
	dataf => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	combout => \u2|u4|u2|u1|u1|u2|co~combout\);

-- Location: LABCELL_X77_Y3_N42
\u2|u4|u2|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|u1|u2|u2|co~combout\ = ( \u2|u4|u2|u1|u1|u2|co~combout\ & ( !\u2|u4|u1|r[6]~3_combout\ $ (!\u2|u4|u1|r[9]~6_combout\ $ (!\u2|u4|u1|r[8]~5_combout\ $ (\u2|u4|u1|r[7]~4_combout\))) ) ) # ( !\u2|u4|u2|u1|u1|u2|co~combout\ & ( 
-- !\u2|u4|u1|r[6]~3_combout\ $ (!\u2|u4|u1|r[9]~6_combout\ $ (!\u2|u4|u1|r[8]~5_combout\ $ (!\u2|u4|u1|r[7]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	datab => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	datac => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	dataf => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u2|u1|u2|u2|co~combout\);

-- Location: LABCELL_X77_Y3_N9
\u2|u4|u1|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[3]~1_combout\ = ( \u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u2|u3|u4|r[2]~6_combout\ $ (((!\u2|u4|u1|u1|u2|u1|co~combout\) # (\u2|u3|u4|r[1]~5_combout\))) ) ) # ( !\u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u2|u3|u4|r[2]~6_combout\ $ 
-- (((!\u2|u4|u1|u1|u2|u1|co~combout\) # (!\u2|u3|u4|r[1]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u2|u3|u4|ALT_INV_r[2]~6_combout\,
	datad => \u2|u3|u4|ALT_INV_r[1]~5_combout\,
	dataf => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[3]~1_combout\);

-- Location: LABCELL_X77_Y3_N45
\u2|u4|u1|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[4]~2_combout\ = ( \u2|u4|u1|u1|u2|u1|co~combout\ & ( !\u2|u4|u1|u1|u1|u0|co~combout\ ) ) # ( !\u2|u4|u1|u1|u2|u1|co~combout\ & ( \u2|u3|u4|r[3]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u2|u3|u4|ALT_INV_r[3]~7_combout\,
	dataf => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[4]~2_combout\);

-- Location: LABCELL_X75_Y2_N27
\u2|u4|u1|r[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[1]~7_combout\ = ( \u2|u4|u1|u1|u2|u1|co~combout\ & ( !\u1|u4|u1|u1|u2|u3|co~combout\ $ (\u1|u3|u4|u1|u2|u2|co~combout\) ) ) # ( !\u2|u4|u1|u1|u2|u1|co~combout\ & ( \u1|u3|u4|u1|u2|u2|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	dataf => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[1]~7_combout\);

-- Location: LABCELL_X77_Y3_N3
\u2|u4|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[2]~0_combout\ = ( \u1|u3|u4|u1|u2|u2|co~combout\ & ( \u2|u3|u4|r[1]~5_combout\ ) ) # ( !\u1|u3|u4|u1|u2|u2|co~combout\ & ( !\u2|u4|u1|u1|u2|u1|co~combout\ $ (!\u2|u3|u4|r[1]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u2|u3|u4|ALT_INV_r[1]~5_combout\,
	dataf => \u1|u3|u4|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u1|r[2]~0_combout\);

-- Location: LABCELL_X75_Y2_N33
\u2|u4|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|u1|u1|u2|co~combout\ = ( \u2|u4|u1|r[2]~0_combout\ & ( !\u2|u4|u1|r[4]~2_combout\ $ (((!\u2|u4|u1|r[3]~1_combout\ $ (!\u2|u4|u1|r[1]~7_combout\)) # (\u2|u4|u2|u1|u2|u2|co~combout\))) ) ) # ( !\u2|u4|u1|r[2]~0_combout\ & ( 
-- !\u2|u4|u1|r[4]~2_combout\ $ (((!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u1|r[3]~1_combout\ $ (\u2|u4|u1|r[1]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011010010011110001101001010000111001011011000011100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u1|ALT_INV_r[3]~1_combout\,
	datac => \u2|u4|u1|ALT_INV_r[4]~2_combout\,
	datad => \u2|u4|u1|ALT_INV_r[1]~7_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[2]~0_combout\,
	combout => \u2|u4|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X77_Y3_N39
\u2|u4|u2|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|r[7]~1_combout\ = ( \u2|u4|u1|r[8]~5_combout\ & ( (!\u2|u4|u2|u1|u1|u2|co~combout\ & ((!\u2|u4|u1|r[9]~6_combout\ $ (\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u2|u1|u1|u2|co~combout\ & (\u2|u4|u1|r[6]~3_combout\)) ) ) # ( 
-- !\u2|u4|u1|r[8]~5_combout\ & ( (!\u2|u4|u2|u1|u1|u2|co~combout\ & ((!\u2|u4|u1|r[9]~6_combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u2|u1|u1|u2|co~combout\ & (\u2|u4|u1|r[6]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111000101001101011100010111000101001101011100010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	datab => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	datac => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	combout => \u2|u4|u2|r[7]~1_combout\);

-- Location: LABCELL_X77_Y3_N15
\u2|u4|u2|r[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|r[10]~4_combout\ = ( \u2|u4|u1|r[8]~5_combout\ & ( (\u2|u4|u1|r[9]~6_combout\ & (!\u2|u4|u1|r[6]~3_combout\ $ (!\u2|u4|u2|u1|u1|u2|co~combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) ) ) # ( !\u2|u4|u1|r[8]~5_combout\ & ( (\u2|u4|u1|r[9]~6_combout\ & 
-- (!\u2|u4|u1|r[6]~3_combout\ $ (!\u2|u4|u2|u1|u1|u2|co~combout\ $ (\u2|u4|u1|r[7]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000100100010000100100001000100100010000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	datab => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	datac => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	combout => \u2|u4|u2|r[10]~4_combout\);

-- Location: LABCELL_X77_Y3_N12
\u2|u4|u2|r[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|r[9]~3_combout\ = ( \u2|u4|u2|u1|u1|u2|co~combout\ & ( (!\u2|u4|u1|r[6]~3_combout\ & ((!\u2|u4|u1|r[7]~4_combout\ & ((\u2|u4|u1|r[8]~5_combout\))) # (\u2|u4|u1|r[7]~4_combout\ & (\u2|u4|u1|r[9]~6_combout\)))) # (\u2|u4|u1|r[6]~3_combout\ & 
-- ((!\u2|u4|u1|r[7]~4_combout\ & (\u2|u4|u1|r[9]~6_combout\)) # (\u2|u4|u1|r[7]~4_combout\ & ((\u2|u4|u1|r[8]~5_combout\))))) ) ) # ( !\u2|u4|u2|u1|u1|u2|co~combout\ & ( (!\u2|u4|u1|r[6]~3_combout\ & ((!\u2|u4|u1|r[7]~4_combout\ & 
-- (\u2|u4|u1|r[9]~6_combout\)) # (\u2|u4|u1|r[7]~4_combout\ & ((\u2|u4|u1|r[8]~5_combout\))))) # (\u2|u4|u1|r[6]~3_combout\ & ((!\u2|u4|u1|r[7]~4_combout\ & ((\u2|u4|u1|r[8]~5_combout\))) # (\u2|u4|u1|r[7]~4_combout\ & (\u2|u4|u1|r[9]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100011011001001110001101100011011001001110001101100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	datab => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	datac => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	dataf => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u2|r[9]~3_combout\);

-- Location: LABCELL_X77_Y3_N36
\u2|u4|u2|r[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|r[8]~2_combout\ = ( \u2|u4|u2|u1|u1|u2|co~combout\ & ( (!\u2|u4|u1|r[6]~3_combout\ & (((\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u1|r[6]~3_combout\ & (!\u2|u4|u1|r[9]~6_combout\ $ ((!\u2|u4|u1|r[8]~5_combout\)))) ) ) # ( 
-- !\u2|u4|u2|u1|u1|u2|co~combout\ & ( (!\u2|u4|u1|r[6]~3_combout\ & (!\u2|u4|u1|r[9]~6_combout\ $ ((!\u2|u4|u1|r[8]~5_combout\)))) # (\u2|u4|u1|r[6]~3_combout\ & (((\u2|u4|u1|r[7]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001111101001010000111110100010100101111100001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	datab => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	datac => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	dataf => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u4|u2|r[8]~2_combout\);

-- Location: LABCELL_X74_Y3_N54
\u2|u4|u1|r[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u1|r[5]~8_combout\ = ( \u2|u3|u4|r[4]~0_combout\ & ( \u2|u3|u4|r[7]~3_combout\ & ( (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[8]~4_combout\ $ (!\u2|u3|u4|r[5]~1_combout\))) # (\u2|u4|u1|u1|u1|u0|co~combout\) ) ) ) # ( !\u2|u3|u4|r[4]~0_combout\ & 
-- ( \u2|u3|u4|r[7]~3_combout\ & ( (!\u2|u4|u1|u1|u1|u0|co~combout\ & (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[8]~4_combout\ $ (!\u2|u3|u4|r[5]~1_combout\)))) ) ) ) # ( \u2|u3|u4|r[4]~0_combout\ & ( !\u2|u3|u4|r[7]~3_combout\ & ( 
-- (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[8]~4_combout\ $ (\u2|u3|u4|r[5]~1_combout\))) # (\u2|u4|u1|u1|u1|u0|co~combout\) ) ) ) # ( !\u2|u3|u4|r[4]~0_combout\ & ( !\u2|u3|u4|r[7]~3_combout\ & ( (!\u2|u4|u1|u1|u1|u0|co~combout\ & 
-- (!\u2|u3|u4|r[6]~2_combout\ $ (!\u2|u3|u4|r[8]~4_combout\ $ (\u2|u3|u4|r[5]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000011010011111111110010110000000001001011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|ALT_INV_r[6]~2_combout\,
	datab => \u2|u3|u4|ALT_INV_r[8]~4_combout\,
	datac => \u2|u3|u4|ALT_INV_r[5]~1_combout\,
	datad => \u2|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	datae => \u2|u3|u4|ALT_INV_r[4]~0_combout\,
	dataf => \u2|u3|u4|ALT_INV_r[7]~3_combout\,
	combout => \u2|u4|u1|r[5]~8_combout\);

-- Location: LABCELL_X77_Y3_N30
\u2|u4|u2|r[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u2|r[6]~0_combout\ = ( \u2|u4|u1|r[9]~6_combout\ & ( \u2|u4|u1|r[6]~3_combout\ & ( (!\u2|u4|u1|r[5]~8_combout\ & (!\u2|u4|u2|u1|u1|u2|co~combout\ & (!\u2|u4|u1|r[8]~5_combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u1|r[5]~8_combout\ & 
-- ((!\u2|u4|u2|u1|u1|u2|co~combout\) # (!\u2|u4|u1|r[8]~5_combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) ) ) ) # ( !\u2|u4|u1|r[9]~6_combout\ & ( \u2|u4|u1|r[6]~3_combout\ & ( (!\u2|u4|u1|r[5]~8_combout\ & (!\u2|u4|u2|u1|u1|u2|co~combout\ & 
-- (!\u2|u4|u1|r[8]~5_combout\ $ (\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u1|r[5]~8_combout\ & ((!\u2|u4|u2|u1|u1|u2|co~combout\) # (!\u2|u4|u1|r[8]~5_combout\ $ (\u2|u4|u1|r[7]~4_combout\)))) ) ) ) # ( \u2|u4|u1|r[9]~6_combout\ & ( 
-- !\u2|u4|u1|r[6]~3_combout\ & ( (!\u2|u4|u1|r[5]~8_combout\ & (!\u2|u4|u2|u1|u1|u2|co~combout\ & (!\u2|u4|u1|r[8]~5_combout\ $ (\u2|u4|u1|r[7]~4_combout\)))) # (\u2|u4|u1|r[5]~8_combout\ & ((!\u2|u4|u2|u1|u1|u2|co~combout\) # (!\u2|u4|u1|r[8]~5_combout\ $ 
-- (\u2|u4|u1|r[7]~4_combout\)))) ) ) ) # ( !\u2|u4|u1|r[9]~6_combout\ & ( !\u2|u4|u1|r[6]~3_combout\ & ( (!\u2|u4|u1|r[5]~8_combout\ & (!\u2|u4|u2|u1|u1|u2|co~combout\ & (!\u2|u4|u1|r[8]~5_combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) # 
-- (\u2|u4|u1|r[5]~8_combout\ & ((!\u2|u4|u2|u1|u1|u2|co~combout\) # (!\u2|u4|u1|r[8]~5_combout\ $ (!\u2|u4|u1|r[7]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111010100110101000100110111010100010011010100110111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|ALT_INV_r[5]~8_combout\,
	datab => \u2|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|u4|u1|ALT_INV_r[8]~5_combout\,
	datad => \u2|u4|u1|ALT_INV_r[7]~4_combout\,
	datae => \u2|u4|u1|ALT_INV_r[9]~6_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[6]~3_combout\,
	combout => \u2|u4|u2|r[6]~0_combout\);

-- Location: LABCELL_X77_Y3_N18
\u2|u4|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|u1|u2|u3|co~combout\ = ( \u2|u4|u2|r[8]~2_combout\ & ( \u2|u4|u2|r[6]~0_combout\ & ( !\u2|u4|u2|r[7]~1_combout\ $ (!\u2|u4|u2|r[10]~4_combout\ $ (!\u2|u4|u3|u1|u1|u2|co~combout\ $ (!\u2|u4|u2|r[9]~3_combout\))) ) ) ) # ( 
-- !\u2|u4|u2|r[8]~2_combout\ & ( \u2|u4|u2|r[6]~0_combout\ & ( !\u2|u4|u2|r[7]~1_combout\ $ (!\u2|u4|u2|r[10]~4_combout\ $ (!\u2|u4|u3|u1|u1|u2|co~combout\ $ (\u2|u4|u2|r[9]~3_combout\))) ) ) ) # ( \u2|u4|u2|r[8]~2_combout\ & ( !\u2|u4|u2|r[6]~0_combout\ & 
-- ( !\u2|u4|u2|r[7]~1_combout\ $ (!\u2|u4|u2|r[10]~4_combout\ $ (!\u2|u4|u3|u1|u1|u2|co~combout\ $ (\u2|u4|u2|r[9]~3_combout\))) ) ) ) # ( !\u2|u4|u2|r[8]~2_combout\ & ( !\u2|u4|u2|r[6]~0_combout\ & ( !\u2|u4|u2|r[7]~1_combout\ $ 
-- (!\u2|u4|u2|r[10]~4_combout\ $ (!\u2|u4|u3|u1|u1|u2|co~combout\ $ (!\u2|u4|u2|r[9]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_r[7]~1_combout\,
	datab => \u2|u4|u2|ALT_INV_r[10]~4_combout\,
	datac => \u2|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u2|ALT_INV_r[9]~3_combout\,
	datae => \u2|u4|u2|ALT_INV_r[8]~2_combout\,
	dataf => \u2|u4|u2|ALT_INV_r[6]~0_combout\,
	combout => \u2|u4|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X75_Y2_N36
\u2|u4|u3|r[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|r[6]~0_combout\ = ( \u2|u4|u1|r[4]~2_combout\ & ( \u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u3|u1|u2|u3|co~combout\ & ((!\u2|u4|u2|u1|u2|u2|co~combout\) # ((!\u2|u4|u1|r[3]~1_combout\)))) # (\u2|u4|u3|u1|u2|u3|co~combout\ & 
-- (((!\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u2|u4|u1|r[4]~2_combout\ & ( \u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u3|u1|u2|u3|co~combout\ & (\u2|u4|u2|u1|u2|u2|co~combout\ & (\u2|u4|u1|r[3]~1_combout\))) # (\u2|u4|u3|u1|u2|u3|co~combout\ & 
-- (((!\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( \u2|u4|u1|r[4]~2_combout\ & ( !\u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u3|u1|u2|u3|co~combout\ & ((!\u2|u4|u2|u1|u2|u2|co~combout\) # ((\u2|u4|u1|r[3]~1_combout\)))) # (\u2|u4|u3|u1|u2|u3|co~combout\ & 
-- (((!\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u2|u4|u1|r[4]~2_combout\ & ( !\u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u3|u1|u2|u3|co~combout\ & (\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u1|r[3]~1_combout\))) # (\u2|u4|u3|u1|u2|u3|co~combout\ & 
-- (((!\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011110000101110111111000000010001111100001110111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u1|ALT_INV_r[3]~1_combout\,
	datac => \u2|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datae => \u2|u4|u1|ALT_INV_r[4]~2_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[2]~0_combout\,
	combout => \u2|u4|u3|r[6]~0_combout\);

-- Location: LABCELL_X75_Y2_N12
\u2|u4|u4|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u4|u1|u3|u3|co~0_combout\ = ( \u1|u4|u2|u1|u3|u0|co~combout\ & ( !\u2|u4|u1|r[1]~7_combout\ $ (((!\u1|u4|u1|u1|u2|u3|co~combout\ & (!\u2|u4|u2|u1|u2|u2|co~combout\ $ (\u2|u4|u3|u1|u2|u3|co~combout\))))) ) ) # ( !\u1|u4|u2|u1|u3|u0|co~combout\ & ( 
-- !\u2|u4|u1|r[1]~7_combout\ $ (((!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u3|u1|u2|u3|co~combout\ & !\u1|u4|u1|u1|u2|u3|co~combout\)) # (\u2|u4|u2|u1|u2|u2|co~combout\ & ((!\u2|u4|u3|u1|u2|u3|co~combout\) # (!\u1|u4|u1|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110110100001011011011010001101001111100000110100111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u2|u4|u1|ALT_INV_r[1]~7_combout\,
	datad => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u4|u1|u3|u3|co~0_combout\);

-- Location: LABCELL_X75_Y2_N15
\u2|u4|u3|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|r[4]~2_combout\ = ( \u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u2|u1|u2|u2|co~combout\ & ((!\u2|u4|u3|u1|u2|u3|co~combout\) # ((\u2|u4|u1|r[1]~7_combout\)))) # (\u2|u4|u2|u1|u2|u2|co~combout\ & ((!\u1|u4|u1|u1|u2|u3|co~combout\ $ 
-- (\u2|u4|u1|r[1]~7_combout\)) # (\u2|u4|u3|u1|u2|u3|co~combout\))) ) ) # ( !\u2|u4|u1|r[2]~0_combout\ & ( (!\u2|u4|u2|u1|u2|u2|co~combout\ & (\u2|u4|u3|u1|u2|u3|co~combout\ & ((!\u2|u4|u1|r[1]~7_combout\)))) # (\u2|u4|u2|u1|u2|u2|co~combout\ & 
-- (!\u2|u4|u3|u1|u2|u3|co~combout\ & (!\u1|u4|u1|u1|u2|u3|co~combout\ $ (!\u2|u4|u1|r[1]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011001000000001001100100000011011001101111111101100110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u1|ALT_INV_r[1]~7_combout\,
	dataf => \u2|u4|u1|ALT_INV_r[2]~0_combout\,
	combout => \u2|u4|u3|r[4]~2_combout\);

-- Location: LABCELL_X77_Y3_N54
\u2|u4|u4|u1|u3|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u4|u1|u3|u3|co~1_combout\ = ( \u2|u4|u2|r[8]~2_combout\ & ( \u2|u4|u2|r[6]~0_combout\ & ( (!\u2|u4|u2|r[10]~4_combout\ & (!\u2|u4|u2|r[7]~1_combout\ $ (((!\u2|u4|u2|r[9]~3_combout\))))) # (\u2|u4|u2|r[10]~4_combout\ & 
-- (((\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u2|u4|u2|r[8]~2_combout\ & ( \u2|u4|u2|r[6]~0_combout\ & ( (!\u2|u4|u2|r[10]~4_combout\ & (((\u2|u4|u3|u1|u1|u2|co~combout\)))) # (\u2|u4|u2|r[10]~4_combout\ & (!\u2|u4|u2|r[7]~1_combout\ $ 
-- (((!\u2|u4|u2|r[9]~3_combout\))))) ) ) ) # ( \u2|u4|u2|r[8]~2_combout\ & ( !\u2|u4|u2|r[6]~0_combout\ & ( (!\u2|u4|u2|r[10]~4_combout\ & (((\u2|u4|u3|u1|u1|u2|co~combout\)))) # (\u2|u4|u2|r[10]~4_combout\ & (!\u2|u4|u2|r[7]~1_combout\ $ 
-- (((!\u2|u4|u2|r[9]~3_combout\))))) ) ) ) # ( !\u2|u4|u2|r[8]~2_combout\ & ( !\u2|u4|u2|r[6]~0_combout\ & ( (!\u2|u4|u2|r[10]~4_combout\ & (!\u2|u4|u2|r[7]~1_combout\ $ (((!\u2|u4|u2|r[9]~3_combout\))))) # (\u2|u4|u2|r[10]~4_combout\ & 
-- (((\u2|u4|u3|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011110001011000111010010111000011101001011100100011110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|ALT_INV_r[7]~1_combout\,
	datab => \u2|u4|u2|ALT_INV_r[10]~4_combout\,
	datac => \u2|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u2|ALT_INV_r[9]~3_combout\,
	datae => \u2|u4|u2|ALT_INV_r[8]~2_combout\,
	dataf => \u2|u4|u2|ALT_INV_r[6]~0_combout\,
	combout => \u2|u4|u4|u1|u3|u3|co~1_combout\);

-- Location: LABCELL_X75_Y2_N30
\u2|u4|u3|r[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|r[5]~1_combout\ = ( \u2|u4|u3|u1|u2|u3|co~combout\ & ( !\u2|u4|u1|r[3]~1_combout\ $ (((!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u1|r[2]~0_combout\ $ (!\u2|u4|u1|r[1]~7_combout\))))) ) ) # ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( 
-- !\u2|u4|u1|r[3]~1_combout\ $ (((!\u2|u4|u2|u1|u2|u2|co~combout\) # (\u2|u4|u1|r[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011011000110110001111000110011011001100011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u1|ALT_INV_r[3]~1_combout\,
	datac => \u2|u4|u1|ALT_INV_r[2]~0_combout\,
	datad => \u2|u4|u1|ALT_INV_r[1]~7_combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u4|u3|r[5]~1_combout\);

-- Location: LABCELL_X77_Y2_N33
\u2|u4|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u4|u1|u3|u3|co~combout\ = ( \u2|u4|u4|u1|u3|u3|co~1_combout\ & ( \u2|u4|u3|r[5]~1_combout\ & ( !\u2|u4|u3|r[6]~0_combout\ $ (!\u2|u4|u4|u1|u3|u3|co~0_combout\ $ (\u2|u4|u3|r[4]~2_combout\)) ) ) ) # ( !\u2|u4|u4|u1|u3|u3|co~1_combout\ & ( 
-- \u2|u4|u3|r[5]~1_combout\ & ( !\u2|u4|u3|r[6]~0_combout\ $ (!\u2|u4|u4|u1|u3|u3|co~0_combout\ $ (!\u2|u4|u3|r[4]~2_combout\)) ) ) ) # ( \u2|u4|u4|u1|u3|u3|co~1_combout\ & ( !\u2|u4|u3|r[5]~1_combout\ & ( !\u2|u4|u3|r[6]~0_combout\ $ 
-- (!\u2|u4|u4|u1|u3|u3|co~0_combout\ $ (!\u2|u4|u3|r[4]~2_combout\)) ) ) ) # ( !\u2|u4|u4|u1|u3|u3|co~1_combout\ & ( !\u2|u4|u3|r[5]~1_combout\ & ( !\u2|u4|u3|r[6]~0_combout\ $ (!\u2|u4|u4|u1|u3|u3|co~0_combout\ $ (\u2|u4|u3|r[4]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u3|ALT_INV_r[6]~0_combout\,
	datab => \u2|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u2|u4|u3|ALT_INV_r[4]~2_combout\,
	datae => \u2|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\,
	dataf => \u2|u4|u3|ALT_INV_r[5]~1_combout\,
	combout => \u2|u4|u4|u1|u3|u3|co~combout\);

-- Location: LABCELL_X75_Y2_N21
\u2|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|r[1]~0_combout\ = ( \u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|am[1]~0_combout\ $ (((\u1|u4|u4|u1|u3|u3|co~4_combout\ & !\amag[15]~1_combout\))) ) ) # ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|am[1]~0_combout\ $ (((!\u1|u4|u4|u1|u3|u3|co~4_combout\) # 
-- (!\amag[15]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101010101111010100001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \u2|ALT_INV_am[1]~0_combout\,
	dataf => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u2|r[1]~0_combout\);

-- Location: LABCELL_X75_Y2_N45
\u2|u4|u3|r[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|r[1]~3_combout\ = ( \u1|u4|u2|u1|u3|u0|co~combout\ & ( (!\u2|u4|u3|u1|u2|u3|co~combout\) # (\u2|am[1]~0_combout\) ) ) # ( !\u1|u4|u2|u1|u3|u0|co~combout\ & ( (\u2|u4|u3|u1|u2|u3|co~combout\ & !\u2|am[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datad => \u2|ALT_INV_am[1]~0_combout\,
	dataf => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u3|r[1]~3_combout\);

-- Location: LABCELL_X75_Y2_N24
\u2|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|r[2]~1_combout\ = ( \amag[15]~1_combout\ & ( !\u2|u4|u3|r[1]~3_combout\ $ (((!\u1|u4|u4|u1|u3|u3|co~4_combout\ & ((!\u2|am[1]~0_combout\) # (\u2|u4|u4|u1|u3|u3|co~combout\))) # (\u1|u4|u4|u1|u3|u3|co~4_combout\ & (!\u2|am[1]~0_combout\ & 
-- \u2|u4|u4|u1|u3|u3|co~combout\)))) ) ) # ( !\amag[15]~1_combout\ & ( !\u2|u4|u3|r[1]~3_combout\ $ (((!\u2|u4|u4|u1|u3|u3|co~combout\) # (\u2|am[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001101110001100011100111000110001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	datab => \u2|ALT_INV_am[1]~0_combout\,
	datac => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u3|ALT_INV_r[1]~3_combout\,
	dataf => \ALT_INV_amag[15]~1_combout\,
	combout => \u2|r[2]~1_combout\);

-- Location: LABCELL_X75_Y2_N18
\u2|u4|u3|r[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|u3|r[2]~4_combout\ = ( \u1|u4|u2|u1|u3|u0|co~combout\ & ( \u1|u4|u1|u1|u2|u3|co~combout\ ) ) # ( !\u1|u4|u2|u1|u3|u0|co~combout\ & ( !\u2|u4|u3|u1|u2|u3|co~combout\ $ (!\u2|u4|u2|u1|u2|u2|co~combout\ $ (\u1|u4|u1|u1|u2|u3|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u1|u4|u1|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u1|u4|u2|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u4|u3|r[2]~4_combout\);

-- Location: LABCELL_X75_Y2_N54
\u2|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|r[3]~2_combout\ = ( \u2|u4|u3|r[1]~3_combout\ & ( \u2|u4|u4|u1|u3|u3|co~combout\ & ( !\amag[15]~1_combout\ $ (!\u2|u4|u3|r[2]~4_combout\ $ (!\u2|am[1]~0_combout\)) ) ) ) # ( !\u2|u4|u3|r[1]~3_combout\ & ( \u2|u4|u4|u1|u3|u3|co~combout\ & ( 
-- !\u2|u4|u3|r[2]~4_combout\ $ (((!\amag[15]~1_combout\ & ((!\u2|am[1]~0_combout\))) # (\amag[15]~1_combout\ & (\u1|u4|u4|u1|u3|u3|co~4_combout\ & \u2|am[1]~0_combout\)))) ) ) ) # ( \u2|u4|u3|r[1]~3_combout\ & ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( 
-- !\amag[15]~1_combout\ $ (!\u2|u4|u3|r[2]~4_combout\) ) ) ) # ( !\u2|u4|u3|r[1]~3_combout\ & ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|u4|u3|r[2]~4_combout\ $ (((!\amag[15]~1_combout\) # ((!\u1|u4|u4|u1|u3|u3|co~4_combout\ & !\u2|am[1]~0_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000111100001111000011110000111100111000011100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|u4|u1|u3|u3|ALT_INV_co~4_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	datac => \u2|u4|u3|ALT_INV_r[2]~4_combout\,
	datad => \u2|ALT_INV_am[1]~0_combout\,
	datae => \u2|u4|u3|ALT_INV_r[1]~3_combout\,
	dataf => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u2|r[3]~2_combout\);

-- Location: LABCELL_X73_Y4_N0
\u2|v1|u2|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v1|u2|u3|co~0_combout\ = ( \u2|v1|u2|u0|co~0_combout\ & ( (!\u1|q[11]~2_combout\ & (!\u1|q[9]~0_combout\ & !\u1|q[10]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_q[11]~2_combout\,
	datac => \u1|ALT_INV_q[9]~0_combout\,
	datad => \u1|ALT_INV_q[10]~1_combout\,
	dataf => \u2|v1|u2|u0|ALT_INV_co~0_combout\,
	combout => \u2|v1|u2|u3|co~0_combout\);

-- Location: LABCELL_X73_Y4_N9
\u2|u2|u3|u1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u3|u1|u1|u0|co~0_combout\ = ( \u1|q[12]~3_combout\ & ( (!\amag[15]~1_combout\) # (\u2|v1|u2|u3|co~0_combout\) ) ) # ( !\u1|q[12]~3_combout\ & ( (!\u2|v1|u2|u3|co~0_combout\ & \amag[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v1|u2|u3|ALT_INV_co~0_combout\,
	datab => \ALT_INV_amag[15]~1_combout\,
	dataf => \u1|ALT_INV_q[12]~3_combout\,
	combout => \u2|u2|u3|u1|u1|u0|co~0_combout\);

-- Location: LABCELL_X74_Y3_N42
\u2|u3|u4|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u4|u1|u2|u0|co~combout\ = ( \u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u4|u1|u1|u2|co~combout\ $ (\u2|u3|u3|r[6]~3_combout\) ) ) # ( !\u2|u3|u3|r[7]~4_combout\ & ( !\u2|u3|u4|u1|u1|u2|co~combout\ $ (!\u2|u3|u3|r[6]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u4|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u2|u3|u3|ALT_INV_r[6]~3_combout\,
	dataf => \u2|u3|u3|ALT_INV_r[7]~4_combout\,
	combout => \u2|u3|u4|u1|u2|u0|co~combout\);

-- Location: LABCELL_X74_Y4_N0
\u2|v3|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v3|u1|u1|co~0_combout\ = ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( (!\u2|u4|u1|u1|u2|u1|co~combout\ & (!\u2|u3|u3|u1|u1|u3|co~combout\ & (!\u2|u4|u2|u1|u2|u2|co~combout\ & !\u2|u3|u4|u1|u2|u0|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datab => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datac => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\,
	datae => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|v3|u1|u1|co~0_combout\);

-- Location: LABCELL_X74_Y4_N6
\u2|q[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|q[15]~0_combout\ = ( \u2|v3|u1|u1|co~0_combout\ & ( \u2|u2|u4|u1|u1|u1|co~combout\ & ( \amag[15]~1_combout\ ) ) ) # ( !\u2|v3|u1|u1|co~0_combout\ & ( \u2|u2|u4|u1|u1|u1|co~combout\ & ( \amag[15]~1_combout\ ) ) ) # ( \u2|v3|u1|u1|co~0_combout\ & ( 
-- !\u2|u2|u4|u1|u1|u1|co~combout\ & ( (\amag[15]~1_combout\ & (((\u2|u2|u3|u1|u1|u0|co~0_combout\) # (\u2|u3|u2|u1|u1|u2|co~combout\)) # (\u2|u3|u1|u1|u1|u1|co~combout\))) ) ) ) # ( !\u2|v3|u1|u1|co~0_combout\ & ( !\u2|u2|u4|u1|u1|u1|co~combout\ & ( 
-- \amag[15]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u2|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	datae => \u2|v3|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	combout => \u2|q[15]~0_combout\);

-- Location: LABCELL_X74_Y4_N15
\u3|v1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v1|u1|u0|co~0_combout\ = ( !\u2|u4|u1|u1|u2|u1|co~combout\ & ( (!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u3|u1|u2|u3|co~combout\ & (!\u2|u3|u4|u1|u2|u0|co~combout\ & !\u2|u4|u4|u1|u3|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u3|v1|u1|u0|co~0_combout\);

-- Location: LABCELL_X74_Y4_N18
\u2|v3|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v3|u1|u0|co~0_combout\ = ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( (!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u4|u1|u3|u3|co~combout\ & (!\u2|u4|u1|u1|u2|u1|co~combout\ & !\u2|u3|u4|u1|u2|u0|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datac => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datad => \u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|v3|u1|u0|co~0_combout\);

-- Location: LABCELL_X74_Y4_N51
\u3|am[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[5]~2_combout\ = ( \u2|v3|u1|u0|co~0_combout\ & ( !\u2|u3|u3|u1|u1|u3|co~combout\ $ (((!\u2|q[15]~0_combout\) # (\u3|v1|u1|u0|co~0_combout\))) ) ) # ( !\u2|v3|u1|u0|co~0_combout\ & ( !\amag[15]~1_combout\ $ (!\u2|u3|u3|u1|u1|u3|co~combout\ $ 
-- (((\u2|q[15]~0_combout\ & !\u3|v1|u1|u0|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110011010011001011001101000110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u3|v1|u1|u0|ALT_INV_co~0_combout\,
	datad => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u2|v3|u1|u0|ALT_INV_co~0_combout\,
	combout => \u3|am[5]~2_combout\);

-- Location: LABCELL_X74_Y4_N42
\u3|am[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[6]~1_combout\ = ( \amag[15]~1_combout\ & ( \u2|q[15]~0_combout\ & ( !\u2|u3|u2|u1|u1|u2|co~combout\ $ (((!\u2|v3|u1|u0|co~0_combout\ & ((!\u2|u3|u3|u1|u1|u3|co~combout\) # (!\u3|v1|u1|u0|co~0_combout\))) # (\u2|v3|u1|u0|co~0_combout\ & 
-- ((\u3|v1|u1|u0|co~0_combout\) # (\u2|u3|u3|u1|u1|u3|co~combout\))))) ) ) ) # ( !\amag[15]~1_combout\ & ( \u2|q[15]~0_combout\ & ( !\u2|u3|u2|u1|u1|u2|co~combout\ $ (((!\u2|u3|u3|u1|u1|u3|co~combout\ & \u3|v1|u1|u0|co~0_combout\))) ) ) ) # ( 
-- \amag[15]~1_combout\ & ( !\u2|q[15]~0_combout\ & ( !\u2|u3|u2|u1|u1|u2|co~combout\ $ (((\u2|v3|u1|u0|co~0_combout\ & !\u2|u3|u3|u1|u1|u3|co~combout\))) ) ) ) # ( !\amag[15]~1_combout\ & ( !\u2|q[15]~0_combout\ & ( \u2|u3|u2|u1|u1|u2|co~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101101001011010011110000001111000100101100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v3|u1|u0|ALT_INV_co~0_combout\,
	datab => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datac => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|v1|u1|u0|ALT_INV_co~0_combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|am[6]~1_combout\);

-- Location: LABCELL_X74_Y4_N39
\u2|q[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|q[7]~3_combout\ = ( \u2|u3|u2|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u1|u1|u1|co~combout\ $ (!\amag[15]~1_combout\) ) ) # ( !\u2|u3|u2|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u1|u1|u1|co~combout\ $ (((!\amag[15]~1_combout\) # (\u2|v3|u1|u1|co~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v3|u1|u1|ALT_INV_co~0_combout\,
	datac => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datad => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|q[7]~3_combout\);

-- Location: LABCELL_X74_Y4_N33
\u2|q[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|q[8]~1_combout\ = ( \u2|u2|u4|u1|u1|u1|co~combout\ & ( (!\amag[15]~1_combout\) # ((!\u2|u3|u2|u1|u1|u2|co~combout\ & (!\u2|u3|u1|u1|u1|u1|co~combout\ & \u2|v3|u1|u1|co~0_combout\))) ) ) # ( !\u2|u2|u4|u1|u1|u1|co~combout\ & ( (\amag[15]~1_combout\ & 
-- (((!\u2|v3|u1|u1|co~0_combout\) # (\u2|u3|u1|u1|u1|u1|co~combout\)) # (\u2|u3|u2|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010110101010111010101010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u2|v3|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	combout => \u2|q[8]~1_combout\);

-- Location: LABCELL_X73_Y4_N12
\u2|q[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|q[9]~2_combout\ = ( \u2|v3|u1|u1|co~0_combout\ & ( \u2|u2|u3|u1|u1|u0|co~0_combout\ & ( (!\amag[15]~1_combout\) # ((!\u2|u3|u1|u1|u1|u1|co~combout\ & (!\u2|u3|u2|u1|u1|u2|co~combout\ & !\u2|u2|u4|u1|u1|u1|co~combout\))) ) ) ) # ( 
-- !\u2|v3|u1|u1|co~0_combout\ & ( \u2|u2|u3|u1|u1|u0|co~0_combout\ & ( !\amag[15]~1_combout\ ) ) ) # ( \u2|v3|u1|u1|co~0_combout\ & ( !\u2|u2|u3|u1|u1|u0|co~0_combout\ & ( (\amag[15]~1_combout\ & (((\u2|u2|u4|u1|u1|u1|co~combout\) # 
-- (\u2|u3|u2|u1|u1|u2|co~combout\)) # (\u2|u3|u1|u1|u1|u1|co~combout\))) ) ) ) # ( !\u2|v3|u1|u1|co~0_combout\ & ( !\u2|u2|u3|u1|u1|u0|co~0_combout\ & ( \amag[15]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001110000111111110000111100001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \u2|u2|u4|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u2|v3|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u2|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u2|q[9]~2_combout\);

-- Location: LABCELL_X73_Y4_N6
\u2|u2|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u1|r[2]~0_combout\ = ( !\u1|q[12]~3_combout\ & ( (\u2|v1|u2|u3|co~0_combout\ & \amag[15]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v1|u2|u3|ALT_INV_co~0_combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	dataf => \u1|ALT_INV_q[12]~3_combout\,
	combout => \u2|u2|u1|r[2]~0_combout\);

-- Location: LABCELL_X74_Y4_N30
\u3|v1|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v1|u1|u2|co~0_combout\ = ( \u3|v1|u1|u0|co~0_combout\ & ( (!\u2|u3|u2|u1|u1|u2|co~combout\ & (!\u2|u3|u3|u1|u1|u3|co~combout\ & ((!\amag[15]~1_combout\) # (\u2|v3|u1|u0|co~0_combout\)))) # (\u2|u3|u2|u1|u1|u2|co~combout\ & (\amag[15]~1_combout\ & 
-- (!\u2|v3|u1|u0|co~0_combout\ & \u2|u3|u3|u1|u1|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001100000100001000110000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u2|v3|u1|u0|ALT_INV_co~0_combout\,
	datad => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|v1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u3|v1|u1|u2|co~0_combout\);

-- Location: LABCELL_X73_Y4_N36
\u3|u3|u1|r[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|r[1]~1_combout\ = ( \u2|u2|u1|r[2]~0_combout\ & ( \u3|v1|u1|u2|co~0_combout\ & ( (!\u2|q[15]~0_combout\ & (((\u2|q[8]~1_combout\)))) # (\u2|q[15]~0_combout\ & (!\u2|q[8]~1_combout\ & ((\u2|q[9]~2_combout\) # (\u2|q[7]~3_combout\)))) ) ) ) # ( 
-- !\u2|u2|u1|r[2]~0_combout\ & ( \u3|v1|u1|u2|co~0_combout\ & ( (!\u2|q[7]~3_combout\ & (((\u2|q[15]~0_combout\ & !\u2|q[9]~2_combout\)) # (\u2|q[8]~1_combout\))) # (\u2|q[7]~3_combout\ & (!\u2|q[15]~0_combout\ $ ((!\u2|q[8]~1_combout\)))) ) ) ) # ( 
-- \u2|u2|u1|r[2]~0_combout\ & ( !\u3|v1|u1|u2|co~0_combout\ & ( !\u2|q[8]~1_combout\ $ (((!\u2|q[15]~0_combout\) # (\u2|q[7]~3_combout\))) ) ) ) # ( !\u2|u2|u1|r[2]~0_combout\ & ( !\u3|v1|u1|u2|co~0_combout\ & ( !\u2|q[15]~0_combout\ $ 
-- (!\u2|q[8]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001011010010110100111110000111100001110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[7]~3_combout\,
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u2|ALT_INV_q[8]~1_combout\,
	datad => \u2|ALT_INV_q[9]~2_combout\,
	datae => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	dataf => \u3|v1|u1|u2|ALT_INV_co~0_combout\,
	combout => \u3|u3|u1|r[1]~1_combout\);

-- Location: LABCELL_X74_Y4_N24
\u3|v1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v1|u1|u3|co~0_combout\ = ( \amag[15]~1_combout\ & ( \u3|v1|u1|u0|co~0_combout\ & ( (!\u2|v3|u1|u0|co~0_combout\ & (\u2|u3|u3|u1|u1|u3|co~combout\ & (\u2|u3|u2|u1|u1|u2|co~combout\ & \u2|u3|u1|u1|u1|u1|co~combout\))) # (\u2|v3|u1|u0|co~0_combout\ & 
-- (!\u2|u3|u3|u1|u1|u3|co~combout\ & (!\u2|u3|u2|u1|u1|u2|co~combout\ & !\u2|u3|u1|u1|u1|u1|co~combout\))) ) ) ) # ( !\amag[15]~1_combout\ & ( \u3|v1|u1|u0|co~0_combout\ & ( (!\u2|u3|u3|u1|u1|u3|co~combout\ & (!\u2|u3|u2|u1|u1|u2|co~combout\ & 
-- !\u2|u3|u1|u1|u1|u1|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|v3|u1|u0|ALT_INV_co~0_combout\,
	datab => \u2|u3|u3|u1|u1|u3|ALT_INV_co~combout\,
	datac => \u2|u3|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u2|u3|u1|u1|u1|u1|ALT_INV_co~combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u3|v1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u3|v1|u1|u3|co~0_combout\);

-- Location: LABCELL_X73_Y4_N48
\u3|u3|u1|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|r[4]~2_combout\ = ( \u2|q[15]~0_combout\ & ( (!\u2|q[8]~1_combout\ & (\u3|v1|u1|u3|co~0_combout\ & (\u2|u2|u1|r[2]~0_combout\ & !\u2|q[9]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[8]~1_combout\,
	datab => \u3|v1|u1|u3|ALT_INV_co~0_combout\,
	datac => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	datad => \u2|ALT_INV_q[9]~2_combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|u3|u1|r[4]~2_combout\);

-- Location: LABCELL_X73_Y4_N30
\u3|u3|u2|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|r[4]~0_combout\ = ( \u3|v1|u1|u3|co~0_combout\ & ( (\u2|q[15]~0_combout\ & (!\u2|q[9]~2_combout\ & ((!\u2|q[8]~1_combout\) # (\u2|u2|u1|r[2]~0_combout\)))) ) ) # ( !\u3|v1|u1|u3|co~0_combout\ & ( (\u2|u2|u1|r[2]~0_combout\ & 
-- (\u2|q[15]~0_combout\ & (!\u2|q[8]~1_combout\ $ (\u2|q[9]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000100000000000100110001000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u2|ALT_INV_q[8]~1_combout\,
	datad => \u2|ALT_INV_q[9]~2_combout\,
	dataf => \u3|v1|u1|u3|ALT_INV_co~0_combout\,
	combout => \u3|u3|u2|r[4]~0_combout\);

-- Location: LABCELL_X73_Y4_N51
\u3|u3|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|r[2]~0_combout\ = ( \u2|q[15]~0_combout\ & ( (!\u2|q[8]~1_combout\ & (\u2|q[9]~2_combout\ & ((!\u3|v1|u1|u3|co~0_combout\) # (\u2|u2|u1|r[2]~0_combout\)))) # (\u2|q[8]~1_combout\ & (!\u2|q[9]~2_combout\ $ (((!\u2|u2|u1|r[2]~0_combout\) # 
-- (\u3|v1|u1|u3|co~0_combout\))))) ) ) # ( !\u2|q[15]~0_combout\ & ( !\u2|q[9]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001101010010110000110101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[8]~1_combout\,
	datab => \u3|v1|u1|u3|ALT_INV_co~0_combout\,
	datac => \u2|ALT_INV_q[9]~2_combout\,
	datad => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|u3|u1|r[2]~0_combout\);

-- Location: LABCELL_X75_Y4_N30
\u3|u3|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u3|u1|u1|u2|co~combout\ = ( \u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & ((!\u3|u3|u2|r[4]~0_combout\) # (\u3|u3|u1|r[4]~2_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & (\u3|u3|u1|r[4]~2_combout\ & !\u3|u3|u2|r[4]~0_combout\)) ) ) # ( 
-- !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & ((!\u3|u3|u1|r[4]~2_combout\) # (!\u3|u3|u2|r[4]~0_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & (!\u3|u3|u1|r[4]~2_combout\ & !\u3|u3|u2|r[4]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100010111011001000101011101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datab => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datad => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X75_Y4_N3
\u3|u3|u3|r[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u3|r[1]~2_combout\ = ( \u3|u3|u3|u1|u1|u2|co~combout\ & ( \u3|am[6]~1_combout\ ) ) # ( !\u3|u3|u3|u1|u1|u2|co~combout\ & ( !\u3|am[5]~2_combout\ $ (\u3|am[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_am[5]~2_combout\,
	datac => \u3|ALT_INV_am[6]~1_combout\,
	dataf => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u3|u3|r[1]~2_combout\);

-- Location: LABCELL_X73_Y4_N33
\u3|am[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[7]~0_combout\ = ( \u3|v1|u1|u2|co~0_combout\ & ( \u2|q[7]~3_combout\ ) ) # ( !\u3|v1|u1|u2|co~0_combout\ & ( !\u2|q[15]~0_combout\ $ (!\u2|q[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datad => \u2|ALT_INV_q[7]~3_combout\,
	dataf => \u3|v1|u1|u2|ALT_INV_co~0_combout\,
	combout => \u3|am[7]~0_combout\);

-- Location: LABCELL_X75_Y4_N18
\u3|u3|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u3|r[2]~0_combout\ = ( \u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( \u3|am[7]~0_combout\ ) ) ) # ( !\u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( !\u3|am[7]~0_combout\ $ (((!\u3|u3|u1|r[1]~1_combout\ & 
-- ((!\u3|u3|u1|r[4]~2_combout\) # (\u3|u3|u2|r[4]~0_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & (!\u3|u3|u1|r[4]~2_combout\ & \u3|u3|u2|r[4]~0_combout\)))) ) ) ) # ( \u3|am[6]~1_combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( \u3|am[7]~0_combout\ ) ) ) # ( 
-- !\u3|am[6]~1_combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( !\u3|am[7]~0_combout\ $ (((!\u3|u3|u1|r[1]~1_combout\ & ((\u3|u3|u2|r[4]~0_combout\) # (\u3|u3|u1|r[4]~2_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & (\u3|u3|u1|r[4]~2_combout\ & 
-- \u3|u3|u2|r[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001001001011000011110000111101111000000111100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datab => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datac => \u3|ALT_INV_am[7]~0_combout\,
	datad => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datae => \u3|ALT_INV_am[6]~1_combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u3|r[2]~0_combout\);

-- Location: LABCELL_X75_Y4_N54
\u3|u3|u3|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u3|r[3]~1_combout\ = ( \u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & (\u3|u3|u1|r[4]~2_combout\ & (!\u3|am[7]~0_combout\ & !\u3|u3|u2|r[4]~0_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & 
-- (((!\u3|u3|u1|r[4]~2_combout\ & \u3|u3|u2|r[4]~0_combout\)) # (\u3|am[7]~0_combout\))) ) ) ) # ( !\u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( (!\u3|am[7]~0_combout\ & (!\u3|u3|u1|r[1]~1_combout\ $ (((!\u3|u3|u1|r[4]~2_combout\) # 
-- (\u3|u3|u2|r[4]~0_combout\))))) # (\u3|am[7]~0_combout\ & (\u3|u3|u1|r[1]~1_combout\ & (!\u3|u3|u1|r[4]~2_combout\ $ (!\u3|u3|u2|r[4]~0_combout\)))) ) ) ) # ( \u3|am[6]~1_combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & 
-- (!\u3|u3|u1|r[4]~2_combout\ & (!\u3|am[7]~0_combout\ & !\u3|u3|u2|r[4]~0_combout\))) # (\u3|u3|u1|r[1]~1_combout\ & (((\u3|u3|u1|r[4]~2_combout\ & \u3|u3|u2|r[4]~0_combout\)) # (\u3|am[7]~0_combout\))) ) ) ) # ( !\u3|am[6]~1_combout\ & ( 
-- !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|am[7]~0_combout\ & (!\u3|u3|u1|r[1]~1_combout\ $ (((\u3|u3|u2|r[4]~0_combout\) # (\u3|u3|u1|r[4]~2_combout\))))) # (\u3|am[7]~0_combout\ & (\u3|u3|u1|r[1]~1_combout\ & (!\u3|u3|u1|r[4]~2_combout\ $ 
-- (\u3|u3|u2|r[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010001010001100001010001010101100001010101000010010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datab => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datac => \u3|ALT_INV_am[7]~0_combout\,
	datad => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datae => \u3|ALT_INV_am[6]~1_combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u3|r[3]~1_combout\);

-- Location: LABCELL_X75_Y4_N36
\u3|u3|u4|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|u1|u1|u1|co~combout\ = ( \u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & (!\u3|am[7]~0_combout\ $ (((!\u3|u3|u1|r[4]~2_combout\) # (\u3|u3|u2|r[4]~0_combout\))))) # (\u3|u3|u1|r[1]~1_combout\ & 
-- (!\u3|am[7]~0_combout\ & (!\u3|u3|u1|r[4]~2_combout\ $ (!\u3|u3|u2|r[4]~0_combout\)))) ) ) ) # ( !\u3|am[6]~1_combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & (((\u3|am[7]~0_combout\)))) # (\u3|u3|u1|r[1]~1_combout\ & 
-- ((!\u3|u3|u1|r[4]~2_combout\ & (!\u3|am[7]~0_combout\ & \u3|u3|u2|r[4]~0_combout\)) # (\u3|u3|u1|r[4]~2_combout\ & (\u3|am[7]~0_combout\ & !\u3|u3|u2|r[4]~0_combout\)))) ) ) ) # ( \u3|am[6]~1_combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( 
-- (!\u3|u3|u1|r[1]~1_combout\ & (!\u3|am[7]~0_combout\ $ (((!\u3|u3|u1|r[4]~2_combout\ & !\u3|u3|u2|r[4]~0_combout\))))) # (\u3|u3|u1|r[1]~1_combout\ & ((!\u3|u3|u1|r[4]~2_combout\ $ (!\u3|u3|u2|r[4]~0_combout\)) # (\u3|am[7]~0_combout\))) ) ) ) # ( 
-- !\u3|am[6]~1_combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & (((!\u3|am[7]~0_combout\)))) # (\u3|u3|u1|r[1]~1_combout\ & ((!\u3|u3|u1|r[4]~2_combout\ & ((!\u3|am[7]~0_combout\) # (\u3|u3|u2|r[4]~0_combout\))) # 
-- (\u3|u3|u1|r[4]~2_combout\ & ((!\u3|u3|u2|r[4]~0_combout\) # (\u3|am[7]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111100101001111011110010100001011010010100011100001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datab => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datac => \u3|ALT_INV_am[7]~0_combout\,
	datad => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datae => \u3|ALT_INV_am[6]~1_combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u4|u1|u1|u1|co~combout\);

-- Location: LABCELL_X73_Y4_N27
\u3|u3|u2|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u2|u1|u1|u1|co~combout\ = ( \u2|q[15]~0_combout\ & ( (!\u2|u2|u1|r[2]~0_combout\ & (!\u2|q[9]~2_combout\ $ (((!\u2|q[8]~1_combout\ & \u3|v1|u1|u3|co~0_combout\))))) # (\u2|u2|u1|r[2]~0_combout\ & (!\u2|q[8]~1_combout\ & (\u3|v1|u1|u3|co~0_combout\ 
-- & !\u2|q[9]~2_combout\))) ) ) # ( !\u2|q[15]~0_combout\ & ( \u2|q[9]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111010010001000001101001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[8]~1_combout\,
	datab => \u3|v1|u1|u3|ALT_INV_co~0_combout\,
	datac => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	datad => \u2|ALT_INV_q[9]~2_combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|u3|u2|u1|u1|u1|co~combout\);

-- Location: LABCELL_X75_Y4_N33
\u3|u3|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u3|u1|u1|u0|co~combout\ = ( \u3|u3|u1|r[2]~0_combout\ & ( (\u3|u3|u2|u1|u1|u1|co~combout\) # (\u3|u3|u1|r[1]~1_combout\) ) ) # ( !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & !\u3|u3|u2|u1|u1|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datac => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u3|u1|u1|u0|co~combout\);

-- Location: LABCELL_X75_Y4_N0
\u3|u3|u4|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|u1|u1|u3|co~combout\ = ( \u3|u3|u3|u1|u1|u0|co~combout\ & ( !\u3|u3|u2|r[4]~0_combout\ $ (\u3|u3|u4|u1|u1|u1|co~combout\) ) ) # ( !\u3|u3|u3|u1|u1|u0|co~combout\ & ( !\u3|u3|u4|u1|u1|u1|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datad => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u3|u4|u1|u1|u3|co~combout\);

-- Location: LABCELL_X75_Y4_N24
\u3|u3|u4|r[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[5]~5_combout\ = ( \u3|u3|u4|u1|u1|u1|co~combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( (\u3|u3|u2|u1|u1|u1|co~combout\ & (\u3|u3|u2|r[4]~0_combout\ & (!\u3|u3|u1|r[1]~1_combout\ $ (!\u3|am[7]~0_combout\)))) ) ) ) # ( 
-- !\u3|u3|u4|u1|u1|u1|co~combout\ & ( \u3|u3|u1|r[2]~0_combout\ & ( \u3|u3|u2|r[4]~0_combout\ ) ) ) # ( \u3|u3|u4|u1|u1|u1|co~combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ & (!\u3|u3|u2|u1|u1|u1|co~combout\ & 
-- \u3|u3|u2|r[4]~0_combout\)) ) ) ) # ( !\u3|u3|u4|u1|u1|u1|co~combout\ & ( !\u3|u3|u1|r[2]~0_combout\ & ( (!\u3|u3|u1|r[1]~1_combout\ $ (((!\u3|u3|u2|u1|u1|u1|co~combout\) # (\u3|am[7]~0_combout\)))) # (\u3|u3|u2|r[4]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010111111111000000001000100000000000111111110000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[1]~1_combout\,
	datab => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u3|ALT_INV_am[7]~0_combout\,
	datad => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datae => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u1|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u4|r[5]~5_combout\);

-- Location: LABCELL_X75_Y4_N6
\u3|u4|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u1|u1|u2|co~combout\ = ( \u3|u3|u4|r[5]~5_combout\ & ( !\u3|u3|u3|r[3]~1_combout\ $ (((\u3|u3|u4|u1|u1|u3|co~combout\ & (!\u3|u3|u3|r[1]~2_combout\ $ (!\u3|u3|u3|r[2]~0_combout\))))) ) ) # ( !\u3|u3|u4|r[5]~5_combout\ & ( 
-- !\u3|u3|u3|r[3]~1_combout\ $ (((!\u3|u3|u4|u1|u1|u3|co~combout\) # (!\u3|u3|u3|r[1]~2_combout\ $ (\u3|u3|u3|r[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101101001000011110110100111110000100101101111000010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u3|ALT_INV_r[1]~2_combout\,
	datab => \u3|u3|u3|ALT_INV_r[2]~0_combout\,
	datac => \u3|u3|u3|ALT_INV_r[3]~1_combout\,
	datad => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|u3|u4|ALT_INV_r[5]~5_combout\,
	combout => \u3|u4|u1|u1|u1|u2|co~combout\);

-- Location: LABCELL_X75_Y4_N15
\u3|u3|u4|r[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[6]~1_combout\ = ( \u3|u3|u3|u1|u1|u0|co~combout\ & ( (\u3|u3|u4|u1|u1|u1|co~combout\ & \u3|u3|u2|r[4]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u3|u4|r[6]~1_combout\);

-- Location: LABCELL_X75_Y4_N45
\u3|u3|u4|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[2]~0_combout\ = ( \u3|am[5]~2_combout\ & ( \u3|am[6]~1_combout\ ) ) # ( !\u3|am[5]~2_combout\ & ( !\u3|u3|u4|u1|u1|u1|co~combout\ $ (!\u3|am[6]~1_combout\ $ (((\u3|u3|u3|u1|u1|u0|co~combout\) # (\u3|u3|u2|r[4]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110100101011010011010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datac => \u3|ALT_INV_am[6]~1_combout\,
	datad => \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	dataf => \u3|ALT_INV_am[5]~2_combout\,
	combout => \u3|u3|u4|r[2]~0_combout\);

-- Location: LABCELL_X74_Y4_N36
\u2|v3|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|v3|u0|u3|co~0_combout\ = ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( (!\u2|u4|u4|u1|u3|u3|co~combout\ & (!\u2|u4|u2|u1|u2|u2|co~combout\ & !\u2|u4|u1|u1|u2|u1|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datac => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datad => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|v3|u0|u3|co~0_combout\);

-- Location: LABCELL_X74_Y4_N21
\u3|v1|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v1|u0|u3|co~0_combout\ = ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( (!\u2|u4|u2|u1|u2|u2|co~combout\ & (!\u2|u4|u4|u1|u3|u3|co~combout\ & !\u2|u4|u1|u1|u2|u1|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|v1|u0|u3|co~0_combout\);

-- Location: LABCELL_X74_Y4_N48
\u3|am[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[4]~3_combout\ = ( \u3|v1|u0|u3|co~0_combout\ & ( !\u2|u3|u4|u1|u2|u0|co~combout\ $ (((!\amag[15]~1_combout\) # (\u2|v3|u0|u3|co~0_combout\))) ) ) # ( !\u3|v1|u0|u3|co~0_combout\ & ( !\u2|q[15]~0_combout\ $ (!\u2|u3|u4|u1|u2|u0|co~combout\ $ 
-- (((\amag[15]~1_combout\ & !\u2|v3|u0|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100011000111001110001010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_amag[15]~1_combout\,
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u2|v3|u0|u3|ALT_INV_co~0_combout\,
	datad => \u2|u3|u4|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \u3|v1|u0|u3|ALT_INV_co~0_combout\,
	combout => \u3|am[4]~3_combout\);

-- Location: LABCELL_X75_Y4_N12
\u3|u3|u4|r[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[1]~2_combout\ = ( \u3|am[5]~2_combout\ & ( (!\u3|u3|u4|u1|u1|u1|co~combout\ $ (((\u3|u3|u2|r[4]~0_combout\ & \u3|u3|u3|u1|u1|u0|co~combout\)))) # (\u3|am[4]~3_combout\) ) ) # ( !\u3|am[5]~2_combout\ & ( (!\u3|am[4]~3_combout\ & 
-- (!\u3|u3|u4|u1|u1|u1|co~combout\ $ (((!\u3|u3|u2|r[4]~0_combout\) # (!\u3|u3|u3|u1|u1|u0|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000000000010101100000000010101001111111111010100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datac => \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u3|ALT_INV_am[4]~3_combout\,
	dataf => \u3|ALT_INV_am[5]~2_combout\,
	combout => \u3|u3|u4|r[1]~2_combout\);

-- Location: LABCELL_X77_Y4_N33
\u3|u4|u2|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|u1|u1|u0|co~combout\ = ( \u3|u3|u4|r[1]~2_combout\ & ( !\u3|u3|u4|r[2]~0_combout\ ) ) # ( !\u3|u3|u4|r[1]~2_combout\ & ( !\u3|u4|u1|u1|u1|u2|co~combout\ $ (!\u3|u3|u4|r[6]~1_combout\ $ (\u3|u3|u4|r[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u3|u3|u4|ALT_INV_r[1]~2_combout\,
	combout => \u3|u4|u2|u1|u1|u0|co~combout\);

-- Location: MLABCELL_X72_Y3_N30
\u3|u4|u1|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[6]~2_combout\ = ( \u3|u3|u4|r[5]~5_combout\ & ( (!\u3|u4|u1|u1|u1|u2|co~combout\) # (\u3|u3|u4|r[6]~1_combout\) ) ) # ( !\u3|u3|u4|r[5]~5_combout\ & ( (\u3|u3|u4|r[6]~1_combout\ & !\u3|u4|u1|u1|u1|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u3|u4|ALT_INV_r[5]~5_combout\,
	combout => \u3|u4|u1|r[6]~2_combout\);

-- Location: LABCELL_X75_Y4_N9
\u3|u3|u4|r[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[3]~3_combout\ = ( \u3|am[5]~2_combout\ & ( !\u3|u3|u3|r[2]~0_combout\ $ (((\u3|u3|u4|u1|u1|u3|co~combout\) # (\u3|u3|u3|r[1]~2_combout\))) ) ) # ( !\u3|am[5]~2_combout\ & ( !\u3|u3|u3|r[2]~0_combout\ $ (((!\u3|u3|u3|r[1]~2_combout\) # 
-- (\u3|u3|u4|u1|u1|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110011011001100011001110011001001100111001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u3|ALT_INV_r[1]~2_combout\,
	datab => \u3|u3|u3|ALT_INV_r[2]~0_combout\,
	datad => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|ALT_INV_am[5]~2_combout\,
	combout => \u3|u3|u4|r[3]~3_combout\);

-- Location: LABCELL_X75_Y4_N51
\u3|u4|u1|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[4]~0_combout\ = ( \u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u3|u4|r[3]~3_combout\ $ (((\u3|u3|u4|r[2]~0_combout\) # (\u3|u3|u4|r[6]~1_combout\))) ) ) # ( !\u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u3|u4|r[3]~3_combout\ $ 
-- (((!\u3|u3|u4|r[6]~1_combout\) # (\u3|u3|u4|r[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|u3|u4|ALT_INV_r[3]~3_combout\,
	datad => \u3|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u4|u1|r[4]~0_combout\);

-- Location: MLABCELL_X72_Y3_N51
\u3|u4|u1|r[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[7]~3_combout\ = (\u3|u4|u1|u1|u1|u2|co~combout\ & \u3|u3|u4|r[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	combout => \u3|u4|u1|r[7]~3_combout\);

-- Location: LABCELL_X75_Y4_N42
\u3|u3|u4|r[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u4|r[4]~4_combout\ = ( \u3|u3|u3|r[2]~0_combout\ & ( \u3|u3|u3|r[3]~1_combout\ ) ) # ( !\u3|u3|u3|r[2]~0_combout\ & ( !\u3|u3|u4|u1|u1|u1|co~combout\ $ (!\u3|u3|u3|r[3]~1_combout\ $ (((\u3|u3|u2|r[4]~0_combout\ & \u3|u3|u3|u1|u1|u0|co~combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u2|ALT_INV_r[4]~0_combout\,
	datac => \u3|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u3|u3|u3|ALT_INV_r[3]~1_combout\,
	dataf => \u3|u3|u3|ALT_INV_r[2]~0_combout\,
	combout => \u3|u3|u4|r[4]~4_combout\);

-- Location: LABCELL_X75_Y4_N48
\u3|u4|u1|r[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[5]~1_combout\ = ( \u3|u3|u4|r[3]~3_combout\ & ( !\u3|u3|u4|r[4]~4_combout\ $ (((!\u3|u3|u4|r[2]~0_combout\) # (!\u3|u3|u4|r[6]~1_combout\ $ (\u3|u4|u1|u1|u1|u2|co~combout\)))) ) ) # ( !\u3|u3|u4|r[3]~3_combout\ & ( !\u3|u3|u4|r[4]~4_combout\ $ 
-- (((!\u3|u3|u4|r[6]~1_combout\ $ (\u3|u4|u1|u1|u1|u2|co~combout\)) # (\u3|u3|u4|r[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110000111010010111000011100011110001011010001111000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datab => \u3|u3|u4|ALT_INV_r[2]~0_combout\,
	datac => \u3|u3|u4|ALT_INV_r[4]~4_combout\,
	datad => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u3|u4|ALT_INV_r[3]~3_combout\,
	combout => \u3|u4|u1|r[5]~1_combout\);

-- Location: LABCELL_X77_Y4_N6
\u3|u4|u2|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|u1|u2|u1|co~combout\ = ( \u3|u4|u1|r[5]~1_combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ $ (!\u3|u4|u1|r[6]~2_combout\ $ (!\u3|u4|u1|r[4]~0_combout\ $ (!\u3|u4|u1|r[7]~3_combout\))) ) ) # ( !\u3|u4|u1|r[5]~1_combout\ & ( 
-- !\u3|u4|u2|u1|u1|u0|co~combout\ $ (!\u3|u4|u1|r[6]~2_combout\ $ (!\u3|u4|u1|r[4]~0_combout\ $ (\u3|u4|u1|r[7]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001100101100110100101101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u3|u4|u1|ALT_INV_r[6]~2_combout\,
	datac => \u3|u4|u1|ALT_INV_r[4]~0_combout\,
	datad => \u3|u4|u1|ALT_INV_r[7]~3_combout\,
	dataf => \u3|u4|u1|ALT_INV_r[5]~1_combout\,
	combout => \u3|u4|u2|u1|u2|u1|co~combout\);

-- Location: LABCELL_X77_Y4_N30
\u3|u4|u1|r[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[3]~4_combout\ = ( \u3|u3|u4|r[1]~2_combout\ & ( !\u3|u3|u4|r[2]~0_combout\ $ (((!\u3|u4|u1|u1|u1|u2|co~combout\ $ (\u3|u3|u4|r[6]~1_combout\)) # (\u3|am[4]~3_combout\))) ) ) # ( !\u3|u3|u4|r[1]~2_combout\ & ( !\u3|u3|u4|r[2]~0_combout\ $ 
-- (((!\u3|am[4]~3_combout\) # (!\u3|u4|u1|u1|u1|u2|co~combout\ $ (\u3|u3|u4|r[6]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111001000001101111100101100000100111110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|ALT_INV_am[4]~3_combout\,
	datad => \u3|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u3|u3|u4|ALT_INV_r[1]~2_combout\,
	combout => \u3|u4|u1|r[3]~4_combout\);

-- Location: LABCELL_X77_Y4_N3
\u3|u4|u2|r[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|r[4]~2_combout\ = ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (\u3|u4|u2|u1|u2|u1|co~combout\ & \u3|u4|u1|r[3]~4_combout\) ) ) # ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u2|u1|u2|u1|co~combout\) # (\u3|u4|u1|r[3]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u3|u4|u1|ALT_INV_r[3]~4_combout\,
	dataf => \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u4|u2|r[4]~2_combout\);

-- Location: LABCELL_X74_Y4_N12
\u3|am[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[2]~5_combout\ = ( \u2|q[15]~0_combout\ & ( !\u2|u4|u2|u1|u2|u2|co~combout\ $ ((((!\u2|u4|u3|u1|u2|u3|co~combout\ & !\u2|u4|u4|u1|u3|u3|co~combout\)) # (\amag[15]~1_combout\))) ) ) # ( !\u2|q[15]~0_combout\ & ( !\u2|u4|u2|u1|u2|u2|co~combout\ $ 
-- (((!\amag[15]~1_combout\) # ((!\u2|u4|u3|u1|u2|u3|co~combout\ & !\u2|u4|u4|u1|u3|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011010010101100101101001100101101001010110010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datac => \ALT_INV_amag[15]~1_combout\,
	datad => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|am[2]~5_combout\);

-- Location: LABCELL_X74_Y4_N54
\u3|am[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|am[3]~4_combout\ = ( \amag[15]~1_combout\ & ( \u2|u4|u3|u1|u2|u3|co~combout\ & ( !\u2|q[15]~0_combout\ $ (\u2|u4|u1|u1|u2|u1|co~combout\) ) ) ) # ( !\amag[15]~1_combout\ & ( \u2|u4|u3|u1|u2|u3|co~combout\ & ( !\u2|q[15]~0_combout\ $ 
-- (!\u2|u4|u1|u1|u2|u1|co~combout\) ) ) ) # ( \amag[15]~1_combout\ & ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( !\u2|u4|u1|u1|u2|u1|co~combout\ $ ((((!\u2|u4|u2|u1|u2|u2|co~combout\ & !\u2|u4|u4|u1|u3|u3|co~combout\)) # (\u2|q[15]~0_combout\))) ) ) ) # ( 
-- !\amag[15]~1_combout\ & ( !\u2|u4|u3|u1|u2|u3|co~combout\ & ( !\u2|u4|u1|u1|u2|u1|co~combout\ $ (((!\u2|q[15]~0_combout\) # ((!\u2|u4|u2|u1|u2|u2|co~combout\ & !\u2|u4|u4|u1|u3|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000111100010010111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u2|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u2|u4|u1|u1|u2|u1|ALT_INV_co~combout\,
	datad => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datae => \ALT_INV_amag[15]~1_combout\,
	dataf => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|am[3]~4_combout\);

-- Location: LABCELL_X77_Y4_N9
\u3|u4|u3|u1|u0|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|u1|u0|u2|s~0_combout\ = ( \u3|am[3]~4_combout\ & ( (!\u3|am[2]~5_combout\ & \u3|u4|u2|u1|u2|u1|co~combout\) ) ) # ( !\u3|am[3]~4_combout\ & ( (!\u3|u4|u2|u1|u2|u1|co~combout\) # (\u3|am[2]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|ALT_INV_am[2]~5_combout\,
	datad => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u3|ALT_INV_am[3]~4_combout\,
	combout => \u3|u4|u3|u1|u0|u2|s~0_combout\);

-- Location: LABCELL_X77_Y4_N12
\u3|u4|u1|r[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[1]~6_combout\ = ( \u3|am[4]~3_combout\ & ( (!\u3|u4|u1|u1|u1|u2|co~combout\ $ (\u3|u3|u4|r[6]~1_combout\)) # (\u3|am[3]~4_combout\) ) ) # ( !\u3|am[4]~3_combout\ & ( (!\u3|am[3]~4_combout\ & (!\u3|u4|u1|u1|u1|u2|co~combout\ $ 
-- (!\u3|u3|u4|r[6]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000010011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|ALT_INV_am[3]~4_combout\,
	dataf => \u3|ALT_INV_am[4]~3_combout\,
	combout => \u3|u4|u1|r[1]~6_combout\);

-- Location: LABCELL_X77_Y4_N0
\u3|u4|u2|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|r[2]~0_combout\ = ( \u3|u4|u1|r[1]~6_combout\ & ( (\u3|am[3]~4_combout\) # (\u3|u4|u2|u1|u2|u1|co~combout\) ) ) # ( !\u3|u4|u1|r[1]~6_combout\ & ( (!\u3|u4|u2|u1|u2|u1|co~combout\ & !\u3|am[3]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u3|ALT_INV_am[3]~4_combout\,
	dataf => \u3|u4|u1|ALT_INV_r[1]~6_combout\,
	combout => \u3|u4|u2|r[2]~0_combout\);

-- Location: LABCELL_X77_Y4_N15
\u3|u4|u1|r[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|r[2]~5_combout\ = ( \u3|am[4]~3_combout\ & ( \u3|u3|u4|r[1]~2_combout\ ) ) # ( !\u3|am[4]~3_combout\ & ( !\u3|u4|u1|u1|u1|u2|co~combout\ $ (!\u3|u3|u4|r[6]~1_combout\ $ (\u3|u3|u4|r[1]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datac => \u3|u3|u4|ALT_INV_r[1]~2_combout\,
	dataf => \u3|ALT_INV_am[4]~3_combout\,
	combout => \u3|u4|u1|r[2]~5_combout\);

-- Location: LABCELL_X77_Y4_N48
\u3|u4|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|u1|u1|u2|co~combout\ = ( \u3|u4|u1|r[3]~4_combout\ & ( !\u3|u4|u1|r[4]~0_combout\ $ (!\u3|u4|u1|r[2]~5_combout\ $ (((!\u3|u4|u2|u1|u2|u1|co~combout\) # (!\u3|u4|u1|r[1]~6_combout\)))) ) ) # ( !\u3|u4|u1|r[3]~4_combout\ & ( 
-- !\u3|u4|u1|r[4]~0_combout\ $ (!\u3|u4|u1|r[2]~5_combout\ $ (((!\u3|u4|u2|u1|u2|u1|co~combout\) # (\u3|u4|u1|r[1]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010001001011101101000100101111100001000111101110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	datab => \u3|u4|u1|ALT_INV_r[1]~6_combout\,
	datac => \u3|u4|u1|ALT_INV_r[4]~0_combout\,
	datad => \u3|u4|u1|ALT_INV_r[2]~5_combout\,
	dataf => \u3|u4|u1|ALT_INV_r[3]~4_combout\,
	combout => \u3|u4|u3|u1|u1|u2|co~combout\);

-- Location: LABCELL_X77_Y4_N42
\u3|u4|u4|u1|u3|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u4|u1|u3|u3|co~1_combout\ = ( \u3|u4|u1|r[7]~3_combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[4]~0_combout\ & (!\u3|u4|u3|u1|u1|u2|co~combout\ & ((\u3|u4|u1|r[6]~2_combout\) # (\u3|u4|u1|r[5]~1_combout\)))) # 
-- (\u3|u4|u1|r[4]~0_combout\ & (\u3|u4|u1|r[5]~1_combout\ & ((\u3|u4|u1|r[6]~2_combout\) # (\u3|u4|u3|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u3|u4|u1|r[7]~3_combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[4]~0_combout\ & 
-- (!\u3|u4|u1|r[5]~1_combout\ & ((!\u3|u4|u3|u1|u1|u2|co~combout\) # (!\u3|u4|u1|r[6]~2_combout\)))) # (\u3|u4|u1|r[4]~0_combout\ & (\u3|u4|u3|u1|u1|u2|co~combout\ & ((!\u3|u4|u1|r[5]~1_combout\) # (!\u3|u4|u1|r[6]~2_combout\)))) ) ) ) # ( 
-- \u3|u4|u1|r[7]~3_combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u3|u1|u1|u2|co~combout\ & (((\u3|u4|u1|r[6]~2_combout\) # (\u3|u4|u1|r[5]~1_combout\)))) # (\u3|u4|u3|u1|u1|u2|co~combout\ & (!\u3|u4|u1|r[5]~1_combout\ $ 
-- (((!\u3|u4|u1|r[4]~0_combout\) # (\u3|u4|u1|r[6]~2_combout\))))) ) ) ) # ( !\u3|u4|u1|r[7]~3_combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u3|u1|u1|u2|co~combout\ & (!\u3|u4|u1|r[5]~1_combout\ $ (((!\u3|u4|u1|r[4]~0_combout\ & 
-- \u3|u4|u1|r[6]~2_combout\))))) # (\u3|u4|u3|u1|u1|u2|co~combout\ & (((!\u3|u4|u1|r[5]~1_combout\) # (!\u3|u4|u1|r[6]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101101100001101101111001110001101100001000010000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|ALT_INV_r[4]~0_combout\,
	datab => \u3|u4|u1|ALT_INV_r[5]~1_combout\,
	datac => \u3|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|u4|u1|ALT_INV_r[6]~2_combout\,
	datae => \u3|u4|u1|ALT_INV_r[7]~3_combout\,
	dataf => \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u4|u4|u1|u3|u3|co~1_combout\);

-- Location: LABCELL_X77_Y4_N54
\u3|u4|u3|u1|u2|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|u1|u2|u2|co~1_combout\ = ( \u3|u4|u1|u1|u1|u2|co~combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & (((!\u3|u4|u1|r[4]~0_combout\ & \u3|u3|u4|r[6]~1_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & 
-- ((!\u3|u3|u4|r[6]~1_combout\ & ((!\u3|u4|u1|r[4]~0_combout\))) # (\u3|u3|u4|r[6]~1_combout\ & (\u3|u3|u4|r[5]~5_combout\)))) ) ) ) # ( !\u3|u4|u1|u1|u1|u2|co~combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & 
-- (((\u3|u3|u4|r[6]~1_combout\)) # (\u3|u3|u4|r[5]~5_combout\))) # (\u3|u4|u1|r[5]~1_combout\ & (((!\u3|u4|u1|r[4]~0_combout\)))) ) ) ) # ( \u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & 
-- (((\u3|u4|u1|r[4]~0_combout\ & \u3|u3|u4|r[6]~1_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & ((!\u3|u3|u4|r[6]~1_combout\ & ((\u3|u4|u1|r[4]~0_combout\))) # (\u3|u3|u4|r[6]~1_combout\ & (\u3|u3|u4|r[5]~5_combout\)))) ) ) ) # ( 
-- !\u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & (((\u3|u3|u4|r[6]~1_combout\)) # (\u3|u3|u4|r[5]~5_combout\))) # (\u3|u4|u1|r[5]~1_combout\ & (((\u3|u4|u1|r[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111000000110001110101110100111111000011000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|ALT_INV_r[5]~5_combout\,
	datab => \u3|u4|u1|ALT_INV_r[5]~1_combout\,
	datac => \u3|u4|u1|ALT_INV_r[4]~0_combout\,
	datad => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datae => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u4|u3|u1|u2|u2|co~1_combout\);

-- Location: LABCELL_X77_Y4_N18
\u3|u4|u3|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|u1|u2|u2|co~0_combout\ = ( \u3|u4|u1|u1|u1|u2|co~combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & (((!\u3|u3|u4|r[6]~1_combout\) # (\u3|u4|u1|r[4]~0_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & 
-- ((!\u3|u3|u4|r[6]~1_combout\ & ((\u3|u4|u1|r[4]~0_combout\))) # (\u3|u3|u4|r[6]~1_combout\ & (!\u3|u3|u4|r[5]~5_combout\)))) ) ) ) # ( !\u3|u4|u1|u1|u1|u2|co~combout\ & ( \u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & 
-- (!\u3|u3|u4|r[5]~5_combout\ & ((!\u3|u3|u4|r[6]~1_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & (((\u3|u4|u1|r[4]~0_combout\)))) ) ) ) # ( \u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & 
-- (((!\u3|u4|u1|r[4]~0_combout\) # (!\u3|u3|u4|r[6]~1_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & ((!\u3|u3|u4|r[6]~1_combout\ & ((!\u3|u4|u1|r[4]~0_combout\))) # (\u3|u3|u4|r[6]~1_combout\ & (!\u3|u3|u4|r[5]~5_combout\)))) ) ) ) # ( 
-- !\u3|u4|u1|u1|u1|u2|co~combout\ & ( !\u3|u4|u2|u1|u1|u0|co~combout\ & ( (!\u3|u4|u1|r[5]~1_combout\ & (!\u3|u3|u4|r[5]~5_combout\ & ((!\u3|u3|u4|r[6]~1_combout\)))) # (\u3|u4|u1|r[5]~1_combout\ & (((!\u3|u4|u1|r[4]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100000110000111111001110001010001011000000111100111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u4|ALT_INV_r[5]~5_combout\,
	datab => \u3|u4|u1|ALT_INV_r[5]~1_combout\,
	datac => \u3|u4|u1|ALT_INV_r[4]~0_combout\,
	datad => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	datae => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u4|u3|u1|u2|u2|co~0_combout\);

-- Location: LABCELL_X77_Y4_N27
\u3|u4|u3|u1|u2|u2|co~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|u1|u2|u2|co~2_combout\ = ( \u3|u4|u3|u1|u2|u2|co~0_combout\ & ( (!\u3|u4|u3|u1|u1|u2|co~combout\) # (\u3|u4|u3|u1|u2|u2|co~1_combout\) ) ) # ( !\u3|u4|u3|u1|u2|u2|co~0_combout\ & ( (\u3|u4|u3|u1|u1|u2|co~combout\ & 
-- \u3|u4|u3|u1|u2|u2|co~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u3|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	dataf => \u3|u4|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	combout => \u3|u4|u3|u1|u2|u2|co~2_combout\);

-- Location: LABCELL_X77_Y4_N51
\u3|u4|u2|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u2|r[3]~1_combout\ = ( \u3|u4|u1|r[1]~6_combout\ & ( !\u3|u4|u1|r[2]~5_combout\ $ (((\u3|am[3]~4_combout\) # (\u3|u4|u2|u1|u2|u1|co~combout\))) ) ) # ( !\u3|u4|u1|r[1]~6_combout\ & ( !\u3|u4|u1|r[2]~5_combout\ $ (((!\u3|am[3]~4_combout\) # 
-- (\u3|u4|u2|u1|u2|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u3|u4|u1|ALT_INV_r[2]~5_combout\,
	datad => \u3|ALT_INV_am[3]~4_combout\,
	dataf => \u3|u4|u1|ALT_INV_r[1]~6_combout\,
	combout => \u3|u4|u2|r[3]~1_combout\);

-- Location: LABCELL_X77_Y4_N36
\u3|u4|u4|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u4|u1|u3|u3|co~0_combout\ = ( \u3|u4|u3|u1|u2|u2|co~2_combout\ & ( \u3|u4|u2|r[3]~1_combout\ & ( !\u3|u4|u2|r[4]~2_combout\ $ (!\u3|u4|u2|r[2]~0_combout\ $ (!\u3|u4|u4|u1|u3|u3|co~1_combout\)) ) ) ) # ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ & ( 
-- \u3|u4|u2|r[3]~1_combout\ & ( !\u3|u4|u2|r[4]~2_combout\ $ (!\u3|u4|u3|u1|u0|u2|s~0_combout\ $ (!\u3|u4|u2|r[2]~0_combout\ $ (!\u3|u4|u4|u1|u3|u3|co~1_combout\))) ) ) ) # ( \u3|u4|u3|u1|u2|u2|co~2_combout\ & ( !\u3|u4|u2|r[3]~1_combout\ & ( 
-- !\u3|u4|u2|r[4]~2_combout\ $ (!\u3|u4|u2|r[2]~0_combout\ $ (\u3|u4|u4|u1|u3|u3|co~1_combout\)) ) ) ) # ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ & ( !\u3|u4|u2|r[3]~1_combout\ & ( !\u3|u4|u2|r[4]~2_combout\ $ (!\u3|u4|u3|u1|u0|u2|s~0_combout\ $ 
-- (!\u3|u4|u2|r[2]~0_combout\ $ (!\u3|u4|u4|u1|u3|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110010110101010010101101001100101101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u2|ALT_INV_r[4]~2_combout\,
	datab => \u3|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\,
	datac => \u3|u4|u2|ALT_INV_r[2]~0_combout\,
	datad => \u3|u4|u4|u1|u3|u3|ALT_INV_co~1_combout\,
	datae => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	dataf => \u3|u4|u2|ALT_INV_r[3]~1_combout\,
	combout => \u3|u4|u4|u1|u3|u3|co~0_combout\);

-- Location: LABCELL_X77_Y4_N24
\u3|u4|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|r[2]~0_combout\ = ( \u3|am[3]~4_combout\ & ( (!\u3|u4|u2|u1|u2|u1|co~combout\ $ (\u3|u4|u3|u1|u2|u2|co~2_combout\)) # (\u3|am[2]~5_combout\) ) ) # ( !\u3|am[3]~4_combout\ & ( (!\u3|am[2]~5_combout\ & (!\u3|u4|u2|u1|u2|u1|co~combout\ $ 
-- (!\u3|u4|u3|u1|u2|u2|co~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011110011001111111111001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_am[2]~5_combout\,
	datac => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	dataf => \u3|ALT_INV_am[3]~4_combout\,
	combout => \u3|u4|u3|r[2]~0_combout\);

-- Location: MLABCELL_X72_Y4_N30
\u3|u4|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u4|u1|u3|u3|co~combout\ = ( \u3|u4|u3|r[2]~0_combout\ & ( !\u3|u4|u4|u1|u3|u3|co~0_combout\ ) ) # ( !\u3|u4|u3|r[2]~0_combout\ & ( \u3|u4|u4|u1|u3|u3|co~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	dataf => \u3|u4|u3|ALT_INV_r[2]~0_combout\,
	combout => \u3|u4|u4|u1|u3|u3|co~combout\);

-- Location: MLABCELL_X72_Y4_N39
\u3|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|r[1]~0_combout\ = ( \u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|q[15]~0_combout\ $ (!\u2|u4|u3|u1|u2|u3|co~combout\) ) ) # ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u3|u4|u4|u1|u3|u3|co~combout\ $ (\u2|u4|u3|u1|u2|u3|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datac => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u3|r[1]~0_combout\);

-- Location: MLABCELL_X72_Y4_N45
\u3|u4|u3|r[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u3|r[1]~1_combout\ = !\u3|am[2]~5_combout\ $ (((\u2|u4|u3|u1|u2|u3|co~combout\) # (\u3|u4|u3|u1|u2|u2|co~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100001111101001010000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	datac => \u3|ALT_INV_am[2]~5_combout\,
	datad => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u4|u3|r[1]~1_combout\);

-- Location: MLABCELL_X72_Y4_N33
\u3|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|r[2]~1_combout\ = ( \u2|u4|u4|u1|u3|u3|co~combout\ & ( !\u2|q[15]~0_combout\ $ (!\u3|u4|u3|r[1]~1_combout\ $ (((!\u3|u4|u4|u1|u3|u3|co~combout\ & !\u2|u4|u3|u1|u2|u3|co~combout\)))) ) ) # ( !\u2|u4|u4|u1|u3|u3|co~combout\ & ( 
-- !\u3|u4|u3|r[1]~1_combout\ $ (((!\u2|q[15]~0_combout\ & ((\u2|u4|u3|u1|u2|u3|co~combout\) # (\u3|u4|u4|u1|u3|u3|co~combout\))) # (\u2|q[15]~0_combout\ & ((!\u3|u4|u4|u1|u3|u3|co~combout\) # (!\u2|u4|u3|u1|u2|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011100011110100001110001111010010110010110101001011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datab => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datac => \u3|u4|u3|ALT_INV_r[1]~1_combout\,
	datad => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	combout => \u3|r[2]~1_combout\);

-- Location: MLABCELL_X72_Y4_N18
\u3|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|r[3]~2_combout\ = ( \u2|q[15]~0_combout\ & ( \u3|u4|u3|r[2]~0_combout\ & ( (!\u2|u4|u4|u1|u3|u3|co~combout\ & (!\u2|u4|u3|u1|u2|u3|co~combout\ & (!\u3|u4|u3|r[1]~1_combout\ $ (\u3|u4|u4|u1|u3|u3|co~0_combout\)))) # (\u2|u4|u4|u1|u3|u3|co~combout\ & 
-- (\u3|u4|u4|u1|u3|u3|co~0_combout\ & (!\u2|u4|u3|u1|u2|u3|co~combout\ $ (!\u3|u4|u3|r[1]~1_combout\)))) ) ) ) # ( !\u2|q[15]~0_combout\ & ( \u3|u4|u3|r[2]~0_combout\ & ( (!\u3|u4|u4|u1|u3|u3|co~0_combout\) # (!\u2|u4|u3|u1|u2|u3|co~combout\ $ 
-- (\u3|u4|u3|r[1]~1_combout\)) ) ) ) # ( \u2|q[15]~0_combout\ & ( !\u3|u4|u3|r[2]~0_combout\ & ( (!\u2|u4|u4|u1|u3|u3|co~combout\ & ((!\u3|u4|u3|r[1]~1_combout\ $ (\u3|u4|u4|u1|u3|u3|co~0_combout\)) # (\u2|u4|u3|u1|u2|u3|co~combout\))) # 
-- (\u2|u4|u4|u1|u3|u3|co~combout\ & ((!\u2|u4|u3|u1|u2|u3|co~combout\ $ (\u3|u4|u3|r[1]~1_combout\)) # (\u3|u4|u4|u1|u3|u3|co~0_combout\))) ) ) ) # ( !\u2|q[15]~0_combout\ & ( !\u3|u4|u3|r[2]~0_combout\ & ( (!\u3|u4|u4|u1|u3|u3|co~0_combout\ & 
-- (!\u2|u4|u3|u1|u2|u3|co~combout\ $ (!\u3|u4|u3|r[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000110110010111111111111111100110011000000000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u3|u4|u3|ALT_INV_r[1]~1_combout\,
	datac => \u2|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datae => \u2|ALT_INV_q[15]~0_combout\,
	dataf => \u3|u4|u3|ALT_INV_r[2]~0_combout\,
	combout => \u3|r[3]~2_combout\);

-- Location: MLABCELL_X72_Y4_N0
\u3|v3|u0|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v3|u0|u1|co~0_combout\ = (\u3|u4|u3|u1|u2|u2|co~2_combout\ & (!\u3|u4|u4|u1|u3|u3|co~0_combout\ $ (!\u3|u4|u3|r[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u3|u4|u3|ALT_INV_r[2]~0_combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	combout => \u3|v3|u0|u1|co~0_combout\);

-- Location: MLABCELL_X72_Y3_N48
\u3|u4|u1|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|u1|u1|u2|u0|co~combout\ = !\u3|u4|u1|u1|u1|u2|co~combout\ $ (\u3|u3|u4|r[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u4|ALT_INV_r[6]~1_combout\,
	combout => \u3|u4|u1|u1|u2|u0|co~combout\);

-- Location: MLABCELL_X72_Y4_N3
\u4|v1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|v1|u1|u0|co~0_combout\ = ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (\u3|v3|u0|u1|co~0_combout\ & (\u3|u4|u1|u1|u2|u0|co~combout\ & \u3|u3|u4|u1|u1|u3|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|v3|u0|u1|ALT_INV_co~0_combout\,
	datac => \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|v1|u1|u0|co~0_combout\);

-- Location: LABCELL_X73_Y4_N24
\u3|u3|u1|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u1|u0|co~combout\ = ( \u2|q[15]~0_combout\ & ( !\u2|u2|u1|r[2]~0_combout\ $ ((((!\u3|v1|u1|u3|co~0_combout\) # (\u2|q[9]~2_combout\)) # (\u2|q[8]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101101000011110010110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[8]~1_combout\,
	datab => \u3|v1|u1|u3|ALT_INV_co~0_combout\,
	datac => \u2|u2|u1|ALT_INV_r[2]~0_combout\,
	datad => \u2|ALT_INV_q[9]~2_combout\,
	dataf => \u2|ALT_INV_q[15]~0_combout\,
	combout => \u3|u3|u1|u1|u1|u0|co~combout\);

-- Location: MLABCELL_X72_Y4_N24
\u3|v3|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|v3|u1|u0|co~0_combout\ = ( \u3|u3|u4|u1|u1|u3|co~combout\ & ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (\u3|u4|u3|u1|u2|u2|co~2_combout\ & (\u3|u4|u1|u1|u2|u0|co~combout\ & (!\u3|u4|u3|r[2]~0_combout\ $ (!\u3|u4|u4|u1|u3|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	datab => \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u3|u4|u3|ALT_INV_r[2]~0_combout\,
	datad => \u3|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datae => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u3|v3|u1|u0|co~0_combout\);

-- Location: LABCELL_X73_Y4_N42
\u3|q[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[15]~0_combout\ = ( \u3|u3|u2|u1|u1|u1|co~combout\ & ( \u3|u3|u3|u1|u1|u2|co~combout\ & ( \u2|q[15]~0_combout\ ) ) ) # ( !\u3|u3|u2|u1|u1|u1|co~combout\ & ( \u3|u3|u3|u1|u1|u2|co~combout\ & ( (\u2|q[15]~0_combout\ & (((!\u3|v3|u1|u0|co~0_combout\) # 
-- (\u3|u3|u1|r[4]~2_combout\)) # (\u3|u3|u1|u1|u1|u0|co~combout\))) ) ) ) # ( \u3|u3|u2|u1|u1|u1|co~combout\ & ( !\u3|u3|u3|u1|u1|u2|co~combout\ & ( \u2|q[15]~0_combout\ ) ) ) # ( !\u3|u3|u2|u1|u1|u1|co~combout\ & ( !\u3|u3|u3|u1|u1|u2|co~combout\ & ( 
-- \u2|q[15]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000110111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u3|v3|u1|u0|ALT_INV_co~0_combout\,
	datac => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datad => \u2|ALT_INV_q[15]~0_combout\,
	datae => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|q[15]~0_combout\);

-- Location: MLABCELL_X72_Y4_N54
\u4|am[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|am[4]~0_combout\ = ( \u3|u3|u4|u1|u1|u3|co~combout\ & ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (!\u3|u4|u1|u1|u2|u0|co~combout\ & (!\u2|q[15]~0_combout\ $ (((!\u3|q[15]~0_combout\))))) # (\u3|u4|u1|u1|u2|u0|co~combout\ & (!\u3|v3|u0|u1|co~0_combout\ & 
-- (!\u2|q[15]~0_combout\ $ (!\u3|q[15]~0_combout\)))) ) ) ) # ( !\u3|u3|u4|u1|u1|u3|co~combout\ & ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (!\u3|u4|u1|u1|u2|u0|co~combout\ & (!\u2|q[15]~0_combout\ $ (((\u3|q[15]~0_combout\))))) # (\u3|u4|u1|u1|u2|u0|co~combout\ 
-- & ((!\u2|q[15]~0_combout\ $ (\u3|q[15]~0_combout\)) # (\u3|v3|u0|u1|co~0_combout\))) ) ) ) # ( \u3|u3|u4|u1|u1|u3|co~combout\ & ( !\u3|u4|u2|u1|u2|u1|co~combout\ & ( !\u2|q[15]~0_combout\ $ (!\u3|q[15]~0_combout\) ) ) ) # ( !\u3|u3|u4|u1|u1|u3|co~combout\ 
-- & ( !\u3|u4|u2|u1|u2|u1|co~combout\ & ( !\u2|q[15]~0_combout\ $ (\u3|q[15]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101010101011010101010101011010101110101010010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datab => \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u3|v3|u0|u1|ALT_INV_co~0_combout\,
	datad => \u3|ALT_INV_q[15]~0_combout\,
	datae => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|am[4]~0_combout\);

-- Location: MLABCELL_X72_Y4_N6
\u3|q[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[5]~1_combout\ = ( \u3|v3|u1|u0|co~0_combout\ & ( \u3|u3|u3|u1|u1|u2|co~combout\ ) ) # ( !\u3|v3|u1|u0|co~0_combout\ & ( !\u2|q[15]~0_combout\ $ (!\u3|u3|u3|u1|u1|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datab => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|v3|u1|u0|ALT_INV_co~0_combout\,
	combout => \u3|q[5]~1_combout\);

-- Location: MLABCELL_X72_Y4_N36
\u3|q[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[7]~3_combout\ = ( \u3|u3|u1|u1|u1|u0|co~combout\ & ( (\u2|q[15]~0_combout\ & ((!\u3|u3|u3|u1|u1|u2|co~combout\) # ((!\u3|v3|u1|u0|co~0_combout\) # (\u3|u3|u2|u1|u1|u1|co~combout\)))) ) ) # ( !\u3|u3|u1|u1|u1|u0|co~combout\ & ( 
-- (!\u2|q[15]~0_combout\) # ((\u3|u3|u3|u1|u1|u2|co~combout\ & (\u3|v3|u1|u0|co~0_combout\ & !\u3|u3|u2|u1|u1|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101010101010111010101001010100010101010101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datab => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u3|v3|u1|u0|ALT_INV_co~0_combout\,
	datad => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|q[7]~3_combout\);

-- Location: MLABCELL_X72_Y4_N48
\u4|v1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|v1|u1|u1|co~0_combout\ = ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (\u3|v3|u0|u1|co~0_combout\ & (\u3|u4|u1|u1|u2|u0|co~combout\ & (\u3|u3|u4|u1|u1|u3|co~combout\ & \u3|u3|u3|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|v3|u0|u1|ALT_INV_co~0_combout\,
	datab => \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u3|u3|u4|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|v1|u1|u1|co~0_combout\);

-- Location: MLABCELL_X72_Y4_N12
\u3|q[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[8]~4_combout\ = ( \u2|q[15]~0_combout\ & ( \u3|u3|u1|u1|u1|u0|co~combout\ & ( !\u3|u3|u1|r[4]~2_combout\ ) ) ) # ( \u2|q[15]~0_combout\ & ( !\u3|u3|u1|u1|u1|u0|co~combout\ & ( !\u3|u3|u1|r[4]~2_combout\ $ (((!\u3|u3|u2|u1|u1|u1|co~combout\ & 
-- (\u3|v3|u1|u0|co~0_combout\ & \u3|u3|u3|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010011000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|ALT_INV_r[4]~2_combout\,
	datab => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u3|v3|u1|u0|ALT_INV_co~0_combout\,
	datad => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u2|ALT_INV_q[15]~0_combout\,
	dataf => \u3|u3|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|q[8]~4_combout\);

-- Location: MLABCELL_X72_Y4_N9
\u3|q[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|q[6]~2_combout\ = ( \u3|v3|u1|u0|co~0_combout\ & ( !\u3|u3|u2|u1|u1|u1|co~combout\ $ (((\u2|q[15]~0_combout\ & !\u3|u3|u3|u1|u1|u2|co~combout\))) ) ) # ( !\u3|v3|u1|u0|co~0_combout\ & ( !\u2|q[15]~0_combout\ $ (\u3|u3|u2|u1|u1|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010110110100101101001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_q[15]~0_combout\,
	datab => \u3|u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u3|u3|u2|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|v3|u1|u0|ALT_INV_co~0_combout\,
	combout => \u3|q[6]~2_combout\);

-- Location: LABCELL_X73_Y4_N18
\u4|u3|u4|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|u1|u1|u1|co~combout\ = ( \u3|q[15]~0_combout\ & ( (!\u3|q[7]~3_combout\ & ((!\u4|v1|u1|u1|co~0_combout\) # ((!\u3|q[8]~4_combout\) # (!\u3|q[6]~2_combout\)))) # (\u3|q[7]~3_combout\ & (!\u3|q[8]~4_combout\ $ (((\u4|v1|u1|u1|co~0_combout\ & 
-- \u3|q[6]~2_combout\))))) ) ) # ( !\u3|q[15]~0_combout\ & ( (\u3|q[8]~4_combout\) # (\u3|q[7]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111010111010011111101011101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[7]~3_combout\,
	datab => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	datac => \u3|ALT_INV_q[8]~4_combout\,
	datad => \u3|ALT_INV_q[6]~2_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u4|u1|u1|u1|co~combout\);

-- Location: LABCELL_X71_Y3_N0
\u4|u3|u4|r[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|r[1]~2_combout\ = ( \u3|q[15]~0_combout\ & ( !\u4|v1|u1|u0|co~0_combout\ $ (!\u3|q[5]~1_combout\ $ (((!\u4|am[4]~0_combout\ & !\u4|u3|u4|u1|u1|u1|co~combout\)))) ) ) # ( !\u3|q[15]~0_combout\ & ( !\u3|q[5]~1_combout\ $ (((!\u4|am[4]~0_combout\ & 
-- !\u4|u3|u4|u1|u1|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000010010110010110101001011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|v1|u1|u0|ALT_INV_co~0_combout\,
	datab => \u4|ALT_INV_am[4]~0_combout\,
	datac => \u3|ALT_INV_q[5]~1_combout\,
	datad => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u4|r[1]~2_combout\);

-- Location: LABCELL_X71_Y3_N36
\u4|u3|u4|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|r[2]~0_combout\ = ( \u4|v1|u1|u0|co~0_combout\ & ( \u3|q[15]~0_combout\ & ( ((\u3|q[8]~4_combout\ & (\u3|q[5]~1_combout\ & !\u3|q[7]~3_combout\))) # (\u3|q[6]~2_combout\) ) ) ) # ( !\u4|v1|u1|u0|co~0_combout\ & ( \u3|q[15]~0_combout\ & ( 
-- !\u3|q[6]~2_combout\ $ ((((\u3|q[8]~4_combout\ & !\u3|q[7]~3_combout\)) # (\u3|q[5]~1_combout\))) ) ) ) # ( \u4|v1|u1|u0|co~0_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u3|q[6]~2_combout\ $ (((\u3|q[5]~1_combout\ & ((!\u3|q[7]~3_combout\) # 
-- (\u3|q[8]~4_combout\))))) ) ) ) # ( !\u4|v1|u1|u0|co~0_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u3|q[6]~2_combout\ $ (((\u3|q[5]~1_combout\ & ((!\u3|q[7]~3_combout\) # (\u3|q[8]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110101001101001011010100110010101101001010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[6]~2_combout\,
	datab => \u3|ALT_INV_q[8]~4_combout\,
	datac => \u3|ALT_INV_q[5]~1_combout\,
	datad => \u3|ALT_INV_q[7]~3_combout\,
	datae => \u4|v1|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u4|r[2]~0_combout\);

-- Location: LABCELL_X71_Y3_N15
\u4|u3|u3|r[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u3|r[4]~1_combout\ = ( \u3|q[15]~0_combout\ & ( (!\u3|q[6]~2_combout\) # (((!\u3|q[7]~3_combout\) # (!\u4|v1|u1|u1|co~0_combout\)) # (\u3|q[8]~4_combout\)) ) ) # ( !\u3|q[15]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[6]~2_combout\,
	datab => \u3|ALT_INV_q[8]~4_combout\,
	datac => \u3|ALT_INV_q[7]~3_combout\,
	datad => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u3|r[4]~1_combout\);

-- Location: LABCELL_X71_Y3_N12
\u4|u3|u4|r[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|r[4]~1_combout\ = ( \u3|q[15]~0_combout\ & ( (!\u3|q[6]~2_combout\ & (!\u3|q[8]~4_combout\ & (!\u4|v1|u1|u1|co~0_combout\ $ (\u3|q[7]~3_combout\)))) # (\u3|q[6]~2_combout\ & (\u3|q[7]~3_combout\ & ((!\u3|q[8]~4_combout\) # 
-- (\u4|v1|u1|u1|co~0_combout\)))) ) ) # ( !\u3|q[15]~0_combout\ & ( (\u3|q[8]~4_combout\ & (!\u3|q[6]~2_combout\ $ (\u3|q[7]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110000000010011011000000001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[6]~2_combout\,
	datab => \u3|ALT_INV_q[8]~4_combout\,
	datac => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	datad => \u3|ALT_INV_q[7]~3_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u4|r[4]~1_combout\);

-- Location: LABCELL_X73_Y4_N21
\u4|u3|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u3|r[2]~0_combout\ = ( \u3|q[15]~0_combout\ & ( (!\u4|v1|u1|u1|co~0_combout\ & (!\u3|q[7]~3_combout\ $ (((\u3|q[8]~4_combout\) # (\u3|q[6]~2_combout\))))) # (\u4|v1|u1|u1|co~0_combout\ & (((\u3|q[6]~2_combout\ & \u3|q[8]~4_combout\)) # 
-- (\u3|q[7]~3_combout\))) ) ) # ( !\u3|q[15]~0_combout\ & ( !\u3|q[7]~3_combout\ $ (((\u3|q[6]~2_combout\ & \u3|q[8]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100101101010101010010110010101010101111001010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[7]~3_combout\,
	datab => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	datac => \u3|ALT_INV_q[6]~2_combout\,
	datad => \u3|ALT_INV_q[8]~4_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u3|r[2]~0_combout\);

-- Location: LABCELL_X71_Y3_N48
\u4|u3|u4|u1|u0|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|u1|u0|u2|s~0_combout\ = ( \u4|v1|u1|u0|co~0_combout\ & ( \u3|q[15]~0_combout\ & ( (!\u3|q[5]~1_combout\ & (!\u3|q[6]~2_combout\)) # (\u3|q[5]~1_combout\ & (!\u3|q[8]~4_combout\ $ (((!\u3|q[6]~2_combout\) # (\u3|q[7]~3_combout\))))) ) ) ) # ( 
-- !\u4|v1|u1|u0|co~0_combout\ & ( \u3|q[15]~0_combout\ & ( !\u3|q[6]~2_combout\ $ (((\u3|q[8]~4_combout\ & !\u3|q[5]~1_combout\))) ) ) ) # ( \u4|v1|u1|u0|co~0_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u3|q[6]~2_combout\ $ (((!\u3|q[5]~1_combout\) # 
-- (\u3|q[8]~4_combout\))) ) ) ) # ( !\u4|v1|u1|u0|co~0_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u3|q[6]~2_combout\ $ (((!\u3|q[5]~1_combout\) # (\u3|q[8]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100110011010100110101010011010100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[6]~2_combout\,
	datab => \u3|ALT_INV_q[8]~4_combout\,
	datac => \u3|ALT_INV_q[5]~1_combout\,
	datad => \u3|ALT_INV_q[7]~3_combout\,
	datae => \u4|v1|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u4|u1|u0|u2|s~0_combout\);

-- Location: LABCELL_X71_Y3_N30
\u4|u4|u2|r[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[5]~6_combout\ = ( !\u4|u3|u4|u1|u1|u1|co~combout\ & ( (!\u4|u3|u4|r[2]~0_combout\ & ((((\u4|u3|u4|r[4]~1_combout\))))) # (\u4|u3|u4|r[2]~0_combout\ & ((!\u4|u3|u4|r[1]~2_combout\ & (!\u4|u3|u4|r[4]~1_combout\ & 
-- (!\u4|u3|u4|u1|u0|u2|s~0_combout\ $ (!\u4|u3|u3|r[2]~0_combout\)))) # (\u4|u3|u4|r[1]~2_combout\ & (\u4|u3|u4|r[4]~1_combout\ & (!\u4|u3|u4|u1|u0|u2|s~0_combout\ $ (\u4|u3|u3|r[2]~0_combout\)))))) ) ) # ( \u4|u3|u4|u1|u1|u1|co~combout\ & ( 
-- (!\u4|u3|u4|r[2]~0_combout\ & ((!\u4|u3|u3|r[4]~1_combout\ $ ((\u4|u3|u4|r[4]~1_combout\))))) # (\u4|u3|u4|r[2]~0_combout\ & ((!\u4|u3|u4|r[1]~2_combout\ & ((!\u4|u3|u4|r[4]~1_combout\ & ((\u4|u3|u3|r[2]~0_combout\))) # (\u4|u3|u4|r[4]~1_combout\ & 
-- (!\u4|u3|u3|r[4]~1_combout\)))) # (\u4|u3|u4|r[1]~2_combout\ & ((!\u4|u3|u4|r[4]~1_combout\ & (!\u4|u3|u3|r[4]~1_combout\)) # (\u4|u3|u4|r[4]~1_combout\ & ((!\u4|u3|u3|r[2]~0_combout\))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011011100110100000011110100100000110011011111001000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u4|ALT_INV_r[1]~2_combout\,
	datab => \u4|u3|u4|ALT_INV_r[2]~0_combout\,
	datac => \u4|u3|u3|ALT_INV_r[4]~1_combout\,
	datad => \u4|u3|u4|ALT_INV_r[4]~1_combout\,
	datae => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u3|u3|ALT_INV_r[2]~0_combout\,
	datag => \u4|u3|u4|u1|u0|u2|ALT_INV_s~0_combout\,
	combout => \u4|u4|u2|r[5]~6_combout\);

-- Location: LABCELL_X71_Y3_N24
\u4|u4|u1|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|u1|u1|u2|co~combout\ = ( \u4|u3|u4|r[2]~0_combout\ & ( \u4|u3|u3|r[2]~0_combout\ & ( !\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|u1|u1|u1|co~combout\ & ((\u4|u3|u4|u1|u0|u2|s~0_combout\))) # (\u4|u3|u4|u1|u1|u1|co~combout\ & 
-- (!\u4|u3|u3|r[4]~1_combout\)))) ) ) ) # ( !\u4|u3|u4|r[2]~0_combout\ & ( \u4|u3|u3|r[2]~0_combout\ & ( !\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|u1|u1|u1|co~combout\ & ((!\u4|u3|u4|u1|u0|u2|s~0_combout\))) # (\u4|u3|u4|u1|u1|u1|co~combout\ & 
-- (\u4|u3|u3|r[4]~1_combout\)))) ) ) ) # ( \u4|u3|u4|r[2]~0_combout\ & ( !\u4|u3|u3|r[2]~0_combout\ & ( !\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|u1|u1|u1|co~combout\ & ((!\u4|u3|u4|u1|u0|u2|s~0_combout\))) # (\u4|u3|u4|u1|u1|u1|co~combout\ & 
-- (\u4|u3|u3|r[4]~1_combout\)))) ) ) ) # ( !\u4|u3|u4|r[2]~0_combout\ & ( !\u4|u3|u3|r[2]~0_combout\ & ( !\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|u1|u1|u1|co~combout\ & ((\u4|u3|u4|u1|u0|u2|s~0_combout\))) # (\u4|u3|u4|u1|u1|u1|co~combout\ & 
-- (!\u4|u3|u3|r[4]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110000110110011000111100100101100011110010011001110000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u4|ALT_INV_r[4]~1_combout\,
	datac => \u4|u3|u3|ALT_INV_r[4]~1_combout\,
	datad => \u4|u3|u4|u1|u0|u2|ALT_INV_s~0_combout\,
	datae => \u4|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u4|u3|u3|ALT_INV_r[2]~0_combout\,
	combout => \u4|u4|u1|u1|u1|u2|co~combout\);

-- Location: LABCELL_X71_Y3_N18
\u4|u3|u4|r[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u4|r[3]~3_combout\ = ( \u4|u3|u3|r[2]~0_combout\ & ( (!\u4|u3|u4|u1|u0|u2|s~0_combout\) # (\u4|u3|u4|u1|u1|u1|co~combout\) ) ) # ( !\u4|u3|u3|r[2]~0_combout\ & ( (!\u4|u3|u4|u1|u1|u1|co~combout\ & \u4|u3|u4|u1|u0|u2|s~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u4|u3|u4|u1|u0|u2|ALT_INV_s~0_combout\,
	dataf => \u4|u3|u3|ALT_INV_r[2]~0_combout\,
	combout => \u4|u3|u4|r[3]~3_combout\);

-- Location: LABCELL_X71_Y3_N21
\u4|u4|u2|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|u1|u1|u2|co~combout\ = ( \u4|u3|u4|r[3]~3_combout\ & ( !\u4|u3|u4|r[4]~1_combout\ $ (!\u4|u3|u4|r[2]~0_combout\ $ (((!\u4|u3|u4|r[1]~2_combout\) # (!\u4|u4|u1|u1|u1|u2|co~combout\)))) ) ) # ( !\u4|u3|u4|r[3]~3_combout\ & ( 
-- !\u4|u3|u4|r[4]~1_combout\ $ (!\u4|u3|u4|r[2]~0_combout\ $ (((!\u4|u4|u1|u1|u1|u2|co~combout\) # (\u4|u3|u4|r[1]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011000111001110001100011100111001001001101101100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u4|ALT_INV_r[1]~2_combout\,
	datab => \u4|u3|u4|ALT_INV_r[4]~1_combout\,
	datac => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u4|u3|u4|ALT_INV_r[3]~3_combout\,
	combout => \u4|u4|u2|u1|u1|u2|co~combout\);

-- Location: LABCELL_X71_Y3_N6
\u4|u4|u1|r[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|r[6]~2_combout\ = (\u4|u4|u1|u1|u1|u2|co~combout\ & (!\u4|u3|u3|r[4]~1_combout\ & \u4|u3|u4|u1|u1|u1|co~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u3|ALT_INV_r[4]~1_combout\,
	datad => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	combout => \u4|u4|u1|r[6]~2_combout\);

-- Location: LABCELL_X71_Y3_N3
\u4|u4|u2|r[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[7]~1_combout\ = ( \u4|u4|u1|r[6]~2_combout\ & ( \u4|u4|u2|u1|u1|u2|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	combout => \u4|u4|u2|r[7]~1_combout\);

-- Location: LABCELL_X71_Y3_N54
\u4|u4|u2|r[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[6]~0_combout\ = ( \u4|u4|u2|u1|u1|u2|co~combout\ & ( \u4|u3|u4|r[3]~3_combout\ & ( (\u4|u4|u1|r[6]~2_combout\ & (!\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|r[2]~0_combout\) # (\u4|u4|u1|u1|u1|u2|co~combout\))))) ) ) ) # ( 
-- !\u4|u4|u2|u1|u1|u2|co~combout\ & ( \u4|u3|u4|r[3]~3_combout\ & ( (!\u4|u3|u4|r[4]~1_combout\ $ (((!\u4|u3|u4|r[2]~0_combout\) # (\u4|u4|u1|u1|u1|u2|co~combout\)))) # (\u4|u4|u1|r[6]~2_combout\) ) ) ) # ( \u4|u4|u2|u1|u1|u2|co~combout\ & ( 
-- !\u4|u3|u4|r[3]~3_combout\ & ( (\u4|u4|u1|r[6]~2_combout\ & (!\u4|u3|u4|r[4]~1_combout\ $ (((\u4|u4|u1|u1|u1|u2|co~combout\) # (\u4|u3|u4|r[2]~0_combout\))))) ) ) ) # ( !\u4|u4|u2|u1|u1|u2|co~combout\ & ( !\u4|u3|u4|r[3]~3_combout\ & ( 
-- (!\u4|u3|u4|r[4]~1_combout\ $ (((\u4|u4|u1|u1|u1|u2|co~combout\) # (\u4|u3|u4|r[2]~0_combout\)))) # (\u4|u4|u1|r[6]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011101110111010000010001000101111101011101110001010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	datab => \u4|u3|u4|ALT_INV_r[4]~1_combout\,
	datac => \u4|u3|u4|ALT_INV_r[2]~0_combout\,
	datad => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|u3|u4|ALT_INV_r[3]~3_combout\,
	combout => \u4|u4|u2|r[6]~0_combout\);

-- Location: MLABCELL_X72_Y4_N51
\u4|am[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|am[3]~1_combout\ = ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( !\u3|u4|u1|u1|u2|u0|co~combout\ $ (((!\u3|v3|u0|u1|co~0_combout\ & (!\u3|q[15]~0_combout\ $ (!\u2|q[15]~0_combout\))))) ) ) # ( !\u3|u4|u2|u1|u2|u1|co~combout\ & ( !\u3|u4|u1|u1|u2|u0|co~combout\ 
-- $ (!\u3|q[15]~0_combout\ $ (!\u2|q[15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110011000110011011001100011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|v3|u0|u1|ALT_INV_co~0_combout\,
	datab => \u3|u4|u1|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u3|ALT_INV_q[15]~0_combout\,
	datad => \u2|ALT_INV_q[15]~0_combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|am[3]~1_combout\);

-- Location: LABCELL_X71_Y3_N42
\u4|u4|u1|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|r[2]~1_combout\ = ( \u4|am[4]~0_combout\ & ( \u4|u3|u4|r[1]~2_combout\ ) ) # ( !\u4|am[4]~0_combout\ & ( !\u4|u4|u1|u1|u1|u2|co~combout\ $ (\u4|u3|u4|r[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u4|ALT_INV_r[1]~2_combout\,
	dataf => \u4|ALT_INV_am[4]~0_combout\,
	combout => \u4|u4|u1|r[2]~1_combout\);

-- Location: LABCELL_X71_Y3_N45
\u4|u4|u1|r[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|r[1]~3_combout\ = ( \u4|am[4]~0_combout\ & ( (\u4|am[3]~1_combout\) # (\u4|u4|u1|u1|u1|u2|co~combout\) ) ) # ( !\u4|am[4]~0_combout\ & ( (!\u4|u4|u1|u1|u1|u2|co~combout\ & !\u4|am[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|ALT_INV_am[3]~1_combout\,
	dataf => \u4|ALT_INV_am[4]~0_combout\,
	combout => \u4|u4|u1|r[1]~3_combout\);

-- Location: MLABCELL_X72_Y3_N45
\u4|u4|u2|r[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[3]~4_combout\ = ( \u4|u4|u1|r[1]~3_combout\ & ( !\u4|u4|u1|r[2]~1_combout\ $ (((!\u4|u4|u1|r[6]~2_combout\ $ (\u4|u4|u2|u1|u1|u2|co~combout\)) # (\u4|am[3]~1_combout\))) ) ) # ( !\u4|u4|u1|r[1]~3_combout\ & ( !\u4|u4|u1|r[2]~1_combout\ $ 
-- (((!\u4|am[3]~1_combout\) # (!\u4|u4|u1|r[6]~2_combout\ $ (\u4|u4|u2|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000101101000111100010110101001011100001110100101110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	datab => \u4|ALT_INV_am[3]~1_combout\,
	datac => \u4|u4|u1|ALT_INV_r[2]~1_combout\,
	datad => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|u4|u1|ALT_INV_r[1]~3_combout\,
	combout => \u4|u4|u2|r[3]~4_combout\);

-- Location: LABCELL_X71_Y3_N9
\u4|u4|u1|r[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u1|r[3]~0_combout\ = ( \u4|am[4]~0_combout\ & ( !\u4|u3|u4|r[2]~0_combout\ $ (((\u4|u4|u1|u1|u1|u2|co~combout\) # (\u4|u3|u4|r[1]~2_combout\))) ) ) # ( !\u4|am[4]~0_combout\ & ( !\u4|u3|u4|r[2]~0_combout\ $ (((!\u4|u3|u4|r[1]~2_combout\) # 
-- (\u4|u4|u1|u1|u1|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010111011010001001011101110001000011101111000100001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u4|ALT_INV_r[1]~2_combout\,
	datab => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u4|ALT_INV_r[2]~0_combout\,
	dataf => \u4|ALT_INV_am[4]~0_combout\,
	combout => \u4|u4|u1|r[3]~0_combout\);

-- Location: MLABCELL_X72_Y3_N21
\u4|u4|u2|r[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[4]~5_combout\ = ( \u4|u4|u1|r[3]~0_combout\ & ( (!\u4|u4|u2|u1|u1|u2|co~combout\ $ (\u4|u4|u1|r[6]~2_combout\)) # (\u4|u4|u1|r[2]~1_combout\) ) ) # ( !\u4|u4|u1|r[3]~0_combout\ & ( (!\u4|u4|u1|r[2]~1_combout\ & (!\u4|u4|u2|u1|u1|u2|co~combout\ 
-- $ (!\u4|u4|u1|r[6]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100010111011011101111011101101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u4|u4|u1|ALT_INV_r[2]~1_combout\,
	datad => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u4|u4|u1|ALT_INV_r[3]~0_combout\,
	combout => \u4|u4|u2|r[4]~5_combout\);

-- Location: MLABCELL_X72_Y3_N18
\u4|u4|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|u1|u1|u0|co~combout\ = !\u4|u4|u1|r[2]~1_combout\ $ (((!\u4|u4|u1|r[1]~3_combout\ & (!\u4|u4|u2|u1|u1|u2|co~combout\ $ (\u4|u4|u1|r[6]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010011100011011001001110001101100100111000110110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u4|u4|u1|ALT_INV_r[2]~1_combout\,
	datac => \u4|u4|u1|ALT_INV_r[1]~3_combout\,
	datad => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	combout => \u4|u4|u3|u1|u1|u0|co~combout\);

-- Location: MLABCELL_X72_Y3_N24
\u4|u4|u4|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u4|u1|u3|u3|co~0_combout\ = ( \u4|u4|u2|r[4]~5_combout\ & ( \u4|u4|u3|u1|u1|u0|co~combout\ & ( (!\u4|u4|u2|r[6]~0_combout\ & (\u4|u4|u2|r[3]~4_combout\ & (!\u4|u4|u2|r[5]~6_combout\ $ (\u4|u4|u2|r[7]~1_combout\)))) # (\u4|u4|u2|r[6]~0_combout\ & 
-- ((!\u4|u4|u2|r[5]~6_combout\ $ (\u4|u4|u2|r[7]~1_combout\)) # (\u4|u4|u2|r[3]~4_combout\))) ) ) ) # ( !\u4|u4|u2|r[4]~5_combout\ & ( \u4|u4|u3|u1|u1|u0|co~combout\ & ( (!\u4|u4|u2|r[6]~0_combout\ & ((!\u4|u4|u2|r[5]~6_combout\ $ 
-- (\u4|u4|u2|r[7]~1_combout\)) # (\u4|u4|u2|r[3]~4_combout\))) # (\u4|u4|u2|r[6]~0_combout\ & (\u4|u4|u2|r[3]~4_combout\ & (!\u4|u4|u2|r[5]~6_combout\ $ (\u4|u4|u2|r[7]~1_combout\)))) ) ) ) # ( \u4|u4|u2|r[4]~5_combout\ & ( !\u4|u4|u3|u1|u1|u0|co~combout\ & 
-- ( (!\u4|u4|u2|r[6]~0_combout\ & (!\u4|u4|u2|r[3]~4_combout\ & (!\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\)))) # (\u4|u4|u2|r[6]~0_combout\ & ((!\u4|u4|u2|r[3]~4_combout\) # (!\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\)))) ) ) ) 
-- # ( !\u4|u4|u2|r[4]~5_combout\ & ( !\u4|u4|u3|u1|u1|u0|co~combout\ & ( (!\u4|u4|u2|r[6]~0_combout\ & ((!\u4|u4|u2|r[3]~4_combout\) # (!\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\)))) # (\u4|u4|u2|r[6]~0_combout\ & (!\u4|u4|u2|r[3]~4_combout\ & 
-- (!\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011001100000011011110000011010010000111110010000100110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_r[5]~6_combout\,
	datab => \u4|u4|u2|ALT_INV_r[7]~1_combout\,
	datac => \u4|u4|u2|ALT_INV_r[6]~0_combout\,
	datad => \u4|u4|u2|ALT_INV_r[3]~4_combout\,
	datae => \u4|u4|u2|ALT_INV_r[4]~5_combout\,
	dataf => \u4|u4|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u4|u4|u4|u1|u3|u3|co~0_combout\);

-- Location: MLABCELL_X72_Y3_N54
\u4|u4|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|u1|u1|u1|co~combout\ = ( \u4|u4|u1|r[3]~0_combout\ & ( (!\u4|u4|u1|r[6]~2_combout\ & ((!\u4|u4|u1|r[1]~3_combout\ $ (\u4|u4|u1|r[2]~1_combout\)) # (\u4|u4|u2|u1|u1|u2|co~combout\))) # (\u4|u4|u1|r[6]~2_combout\ & 
-- ((!\u4|u4|u2|u1|u1|u2|co~combout\) # (!\u4|u4|u1|r[1]~3_combout\ $ (\u4|u4|u1|r[2]~1_combout\)))) ) ) # ( !\u4|u4|u1|r[3]~0_combout\ & ( (!\u4|u4|u1|r[6]~2_combout\ & (!\u4|u4|u2|u1|u1|u2|co~combout\ & (!\u4|u4|u1|r[1]~3_combout\ $ 
-- (!\u4|u4|u1|r[2]~1_combout\)))) # (\u4|u4|u1|r[6]~2_combout\ & (\u4|u4|u2|u1|u1|u2|co~combout\ & (!\u4|u4|u1|r[1]~3_combout\ $ (!\u4|u4|u1|r[2]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110000100001000011000010011011110011110111101111001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	datab => \u4|u4|u1|ALT_INV_r[1]~3_combout\,
	datac => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|u4|u1|ALT_INV_r[2]~1_combout\,
	dataf => \u4|u4|u1|ALT_INV_r[3]~0_combout\,
	combout => \u4|u4|u3|u1|u1|u1|co~combout\);

-- Location: MLABCELL_X72_Y3_N57
\u4|u4|u2|r[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[2]~3_combout\ = !\u4|u4|u1|r[1]~3_combout\ $ (((!\u4|u4|u1|r[6]~2_combout\ $ (\u4|u4|u2|u1|u1|u2|co~combout\)) # (\u4|am[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110010011011000111001001101100011100100110110001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	datab => \u4|u4|u1|ALT_INV_r[1]~3_combout\,
	datac => \u4|ALT_INV_am[3]~1_combout\,
	datad => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u4|u2|r[2]~3_combout\);

-- Location: MLABCELL_X72_Y4_N42
\u4|am[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|am[2]~2_combout\ = ( \u3|u4|u2|u1|u2|u1|co~combout\ & ( (!\u3|v3|u0|u1|co~0_combout\ & (!\u3|q[15]~0_combout\ $ (!\u2|q[15]~0_combout\))) ) ) # ( !\u3|u4|u2|u1|u2|u1|co~combout\ & ( (!\u3|q[15]~0_combout\ $ (\u2|q[15]~0_combout\)) # 
-- (\u3|v3|u0|u1|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100111111110011110011111100110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|ALT_INV_q[15]~0_combout\,
	datac => \u3|v3|u0|u1|ALT_INV_co~0_combout\,
	datad => \u2|ALT_INV_q[15]~0_combout\,
	dataf => \u3|u4|u2|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|am[2]~2_combout\);

-- Location: MLABCELL_X72_Y3_N42
\u4|u4|u3|u1|u0|u2|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|u1|u0|u2|s~0_combout\ = ( \u4|am[2]~2_combout\ & ( !\u4|am[3]~1_combout\ ) ) # ( !\u4|am[2]~2_combout\ & ( !\u4|am[3]~1_combout\ $ (!\u4|u4|u1|r[6]~2_combout\ $ (\u4|u4|u2|u1|u1|u2|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_am[3]~1_combout\,
	datac => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	datad => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|ALT_INV_am[2]~2_combout\,
	combout => \u4|u4|u3|u1|u0|u2|s~0_combout\);

-- Location: LABCELL_X71_Y4_N3
\u4|u4|u3|r[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|r[3]~1_combout\ = ( \u4|u4|u2|r[2]~3_combout\ & ( \u4|u4|u3|u1|u0|u2|s~0_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ (\u4|u4|u3|u1|u1|u1|co~combout\))) ) ) ) # ( 
-- !\u4|u4|u2|r[2]~3_combout\ & ( \u4|u4|u3|u1|u0|u2|s~0_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ (!\u4|u4|u3|u1|u1|u1|co~combout\))) ) ) ) # ( \u4|u4|u2|r[2]~3_combout\ & ( 
-- !\u4|u4|u3|u1|u0|u2|s~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_r[5]~6_combout\,
	datab => \u4|u4|u2|ALT_INV_r[7]~1_combout\,
	datac => \u4|u4|u2|ALT_INV_r[6]~0_combout\,
	datad => \u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u4|u4|u2|ALT_INV_r[2]~3_combout\,
	dataf => \u4|u4|u3|u1|u0|u2|ALT_INV_s~0_combout\,
	combout => \u4|u4|u3|r[3]~1_combout\);

-- Location: MLABCELL_X72_Y3_N3
\u4|u4|u2|r[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|r[1]~2_combout\ = ( \u4|am[2]~2_combout\ & ( \u4|am[3]~1_combout\ ) ) # ( !\u4|am[2]~2_combout\ & ( !\u4|u4|u2|u1|u1|u2|co~combout\ $ (!\u4|am[3]~1_combout\ $ (\u4|u4|u1|r[6]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|ALT_INV_am[3]~1_combout\,
	datad => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	dataf => \u4|ALT_INV_am[2]~2_combout\,
	combout => \u4|u4|u2|r[1]~2_combout\);

-- Location: MLABCELL_X72_Y3_N6
\u4|u4|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|r[2]~0_combout\ = ( \u4|u4|u2|r[1]~2_combout\ & ( \u4|am[2]~2_combout\ ) ) # ( \u4|u4|u2|r[1]~2_combout\ & ( !\u4|am[2]~2_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ 
-- (\u4|u4|u3|u1|u1|u1|co~combout\))) ) ) ) # ( !\u4|u4|u2|r[1]~2_combout\ & ( !\u4|am[2]~2_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ (!\u4|u4|u3|u1|u1|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_r[5]~6_combout\,
	datab => \u4|u4|u2|ALT_INV_r[7]~1_combout\,
	datac => \u4|u4|u2|ALT_INV_r[6]~0_combout\,
	datad => \u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u4|u4|u2|ALT_INV_r[1]~2_combout\,
	dataf => \u4|ALT_INV_am[2]~2_combout\,
	combout => \u4|u4|u3|r[2]~0_combout\);

-- Location: LABCELL_X71_Y4_N36
\u4|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|r[1]~0_combout\ = ( \u4|u4|u3|r[2]~0_combout\ & ( \u3|q[15]~0_combout\ & ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ $ (((!\u3|u4|u4|u1|u3|u3|co~combout\) # (!\u4|u4|u4|u1|u3|u3|co~0_combout\ $ (!\u4|u4|u3|r[3]~1_combout\)))) ) ) ) # ( 
-- !\u4|u4|u3|r[2]~0_combout\ & ( \u3|q[15]~0_combout\ & ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ $ (((!\u3|u4|u4|u1|u3|u3|co~combout\) # (!\u4|u4|u4|u1|u3|u3|co~0_combout\ $ (\u4|u4|u3|r[3]~1_combout\)))) ) ) ) # ( \u4|u4|u3|r[2]~0_combout\ & ( 
-- !\u3|q[15]~0_combout\ & ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ $ (((\u3|u4|u4|u1|u3|u3|co~combout\ & (!\u4|u4|u4|u1|u3|u3|co~0_combout\ $ (!\u4|u4|u3|r[3]~1_combout\))))) ) ) ) # ( !\u4|u4|u3|r[2]~0_combout\ & ( !\u3|q[15]~0_combout\ & ( 
-- !\u3|u4|u3|u1|u2|u2|co~2_combout\ $ (((\u3|u4|u4|u1|u3|u3|co~combout\ & (!\u4|u4|u4|u1|u3|u3|co~0_combout\ $ (\u4|u4|u3|r[3]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111001000001111010110001010000010100111010110100000110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u3|ALT_INV_r[3]~1_combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	datae => \u4|u4|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|r[1]~0_combout\);

-- Location: LABCELL_X71_Y4_N0
\u4|u4|u3|r[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|r[1]~2_combout\ = ( \u4|am[2]~2_combout\ & ( \u3|u4|u3|u1|u2|u2|co~2_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u3|u1|u1|u1|co~combout\ $ (\u4|u4|u2|r[6]~0_combout\))) ) ) ) # ( !\u4|am[2]~2_combout\ & ( 
-- \u3|u4|u3|u1|u2|u2|co~2_combout\ & ( !\u4|u4|u2|r[5]~6_combout\ $ (!\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u3|u1|u1|u1|co~combout\ $ (!\u4|u4|u2|r[6]~0_combout\))) ) ) ) # ( \u4|am[2]~2_combout\ & ( !\u3|u4|u3|u1|u2|u2|co~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u2|ALT_INV_r[5]~6_combout\,
	datab => \u4|u4|u2|ALT_INV_r[7]~1_combout\,
	datac => \u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u4|u4|u2|ALT_INV_r[6]~0_combout\,
	datae => \u4|ALT_INV_am[2]~2_combout\,
	dataf => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	combout => \u4|u4|u3|r[1]~2_combout\);

-- Location: LABCELL_X71_Y4_N45
\u4|u4|u4|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u4|u1|u3|u3|co~combout\ = !\u4|u4|u3|r[2]~0_combout\ $ (!\u4|u4|u4|u1|u3|u3|co~0_combout\ $ (\u4|u4|u3|r[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|ALT_INV_r[2]~0_combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datad => \u4|u4|u3|ALT_INV_r[3]~1_combout\,
	combout => \u4|u4|u4|u1|u3|u3|co~combout\);

-- Location: LABCELL_X71_Y4_N18
\u4|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|r[2]~1_combout\ = ( \u3|q[15]~0_combout\ & ( !\u4|u4|u3|r[1]~2_combout\ $ (((!\u4|u4|u4|u1|u3|u3|co~combout\ & ((\u3|u4|u3|u1|u2|u2|co~2_combout\) # (\u3|u4|u4|u1|u3|u3|co~combout\))) # (\u4|u4|u4|u1|u3|u3|co~combout\ & (\u3|u4|u4|u1|u3|u3|co~combout\ 
-- & \u3|u4|u3|u1|u2|u2|co~2_combout\)))) ) ) # ( !\u3|q[15]~0_combout\ & ( !\u4|u4|u3|r[1]~2_combout\ $ (((!\u3|u4|u3|u1|u2|u2|co~2_combout\) # (\u4|u4|u4|u1|u3|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110011001010101011001100110100110011001011010011001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|ALT_INV_r[1]~2_combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datac => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|r[2]~1_combout\);

-- Location: LABCELL_X71_Y4_N54
\u4|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|r[3]~2_combout\ = ( \u4|u4|u3|r[1]~2_combout\ & ( \u3|q[15]~0_combout\ & ( !\u4|u4|u3|r[2]~0_combout\ $ (((!\u4|u4|u4|u1|u3|u3|co~combout\ & \u3|u4|u3|u1|u2|u2|co~2_combout\))) ) ) ) # ( !\u4|u4|u3|r[1]~2_combout\ & ( \u3|q[15]~0_combout\ & ( 
-- !\u4|u4|u3|r[2]~0_combout\ $ (((!\u3|u4|u4|u1|u3|u3|co~combout\ & (!\u4|u4|u4|u1|u3|u3|co~combout\ & !\u3|u4|u3|u1|u2|u2|co~2_combout\)) # (\u3|u4|u4|u1|u3|u3|co~combout\ & (\u4|u4|u4|u1|u3|u3|co~combout\ & \u3|u4|u3|u1|u2|u2|co~2_combout\)))) ) ) ) # ( 
-- \u4|u4|u3|r[1]~2_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u4|u4|u3|r[2]~0_combout\ $ (((!\u3|u4|u3|u1|u2|u2|co~2_combout\) # (\u4|u4|u4|u1|u3|u3|co~combout\))) ) ) ) # ( !\u4|u4|u3|r[1]~2_combout\ & ( !\u3|q[15]~0_combout\ & ( !\u4|u4|u3|r[2]~0_combout\ $ 
-- (((\u3|u4|u3|u1|u2|u2|co~2_combout\) # (\u4|u4|u4|u1|u3|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111000011111100001101111000111000011111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datac => \u4|u4|u3|ALT_INV_r[2]~0_combout\,
	datad => \u3|u4|u3|u1|u2|u2|ALT_INV_co~2_combout\,
	datae => \u4|u4|u3|ALT_INV_r[1]~2_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|r[3]~2_combout\);

-- Location: MLABCELL_X72_Y3_N0
\u4|u4|u3|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u3|u1|u2|u0|co~combout\ = ( \u4|u4|u2|r[5]~6_combout\ & ( !\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ (\u4|u4|u3|u1|u1|u1|co~combout\)) ) ) # ( !\u4|u4|u2|r[5]~6_combout\ & ( !\u4|u4|u2|r[7]~1_combout\ $ (!\u4|u4|u2|r[6]~0_combout\ $ 
-- (!\u4|u4|u3|u1|u1|u1|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u4|u2|ALT_INV_r[7]~1_combout\,
	datac => \u4|u4|u2|ALT_INV_r[6]~0_combout\,
	datad => \u4|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u4|u2|ALT_INV_r[5]~6_combout\,
	combout => \u4|u4|u3|u1|u2|u0|co~combout\);

-- Location: LABCELL_X73_Y4_N54
\u4|u3|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u3|u1|u1|u0|co~combout\ = ( \u3|q[15]~0_combout\ & ( !\u3|q[8]~4_combout\ $ (((!\u3|q[7]~3_combout\) # ((!\u3|q[6]~2_combout\) # (!\u4|v1|u1|u1|co~0_combout\)))) ) ) # ( !\u3|q[15]~0_combout\ & ( !\u3|q[8]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[7]~3_combout\,
	datab => \u3|ALT_INV_q[6]~2_combout\,
	datac => \u3|ALT_INV_q[8]~4_combout\,
	datad => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|u3|u3|u1|u1|u0|co~combout\);

-- Location: LABCELL_X71_Y4_N21
\u4|u4|u2|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|u2|u1|u1|u3|co~combout\ = ( \u4|u4|u1|r[6]~2_combout\ & ( \u4|u4|u2|u1|u1|u2|co~combout\ ) ) # ( !\u4|u4|u1|r[6]~2_combout\ & ( !\u4|u4|u2|u1|u1|u2|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u4|u2|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|u4|u1|ALT_INV_r[6]~2_combout\,
	combout => \u4|u4|u2|u1|u1|u3|co~combout\);

-- Location: LABCELL_X71_Y4_N42
\u4|v3|u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|v3|u0|u2|co~0_combout\ = ( \u4|u4|u3|r[3]~1_combout\ & ( (\u4|u4|u2|u1|u1|u3|co~combout\ & (\u4|u4|u3|u1|u2|u0|co~combout\ & (!\u4|u4|u3|r[2]~0_combout\ $ (\u4|u4|u4|u1|u3|u3|co~0_combout\)))) ) ) # ( !\u4|u4|u3|r[3]~1_combout\ & ( 
-- (\u4|u4|u2|u1|u1|u3|co~combout\ & (\u4|u4|u3|u1|u2|u0|co~combout\ & (!\u4|u4|u3|r[2]~0_combout\ $ (!\u4|u4|u4|u1|u3|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|ALT_INV_r[2]~0_combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u2|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \u4|u4|u3|ALT_INV_r[3]~1_combout\,
	combout => \u4|v3|u0|u2|co~0_combout\);

-- Location: LABCELL_X73_Y4_N57
\u4|am[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|am[9]~3_combout\ = ( \u3|q[15]~0_combout\ & ( (\u3|q[7]~3_combout\ & (\u3|q[6]~2_combout\ & (\u4|v1|u1|u1|co~0_combout\ & !\u3|q[8]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|ALT_INV_q[7]~3_combout\,
	datab => \u3|ALT_INV_q[6]~2_combout\,
	datac => \u4|v1|u1|u1|ALT_INV_co~0_combout\,
	datad => \u3|ALT_INV_q[8]~4_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|am[9]~3_combout\);

-- Location: LABCELL_X71_Y4_N30
\u4|q[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|q[15]~0_combout\ = ( \u4|am[9]~3_combout\ & ( \u3|q[15]~0_combout\ ) ) # ( !\u4|am[9]~3_combout\ & ( \u3|q[15]~0_combout\ & ( (!\u4|u3|u3|u1|u1|u0|co~combout\) # ((!\u4|v3|u0|u2|co~0_combout\) # ((!\u4|u4|u1|u1|u1|u2|co~combout\) # 
-- (!\u4|u3|u4|u1|u1|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	datac => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u4|ALT_INV_am[9]~3_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|q[15]~0_combout\);

-- Location: LABCELL_X70_Y4_N3
\u5|am[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|am[2]~2_combout\ = ( \u3|q[15]~0_combout\ & ( !\u4|u4|u2|u1|u1|u3|co~combout\ $ (((!\u4|q[15]~0_combout\ & ((!\u4|u4|u3|u1|u2|u0|co~combout\) # (!\u4|u4|u4|u1|u3|u3|co~combout\))))) ) ) # ( !\u3|q[15]~0_combout\ & ( !\u4|u4|u2|u1|u1|u3|co~combout\ $ 
-- (((\u4|q[15]~0_combout\ & ((!\u4|u4|u3|u1|u2|u0|co~combout\) # (!\u4|u4|u4|u1|u3|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100110010110011010011001000110111110010000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	datab => \u4|ALT_INV_q[15]~0_combout\,
	datac => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datad => \u4|u4|u2|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u5|am[2]~2_combout\);

-- Location: LABCELL_X71_Y4_N51
\u4|q[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|q[5]~2_combout\ = ( \u4|u3|u3|u1|u1|u0|co~combout\ & ( (!\u3|q[15]~0_combout\) # ((\u4|u4|u1|u1|u1|u2|co~combout\ & (\u4|v3|u0|u2|co~0_combout\ & \u4|u3|u4|u1|u1|u1|co~combout\))) ) ) # ( !\u4|u3|u3|u1|u1|u0|co~combout\ & ( (\u3|q[15]~0_combout\ & 
-- ((!\u4|u4|u1|u1|u1|u2|co~combout\) # ((!\u4|v3|u0|u2|co~0_combout\) # (!\u4|u3|u4|u1|u1|u1|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datab => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	datac => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u3|ALT_INV_q[15]~0_combout\,
	dataf => \u4|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u4|q[5]~2_combout\);

-- Location: LABCELL_X71_Y4_N48
\u4|q[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|q[4]~1_combout\ = ( \u4|v3|u0|u2|co~0_combout\ & ( !\u4|u3|u4|u1|u1|u1|co~combout\ $ (((!\u3|q[15]~0_combout\) # (\u4|u4|u1|u1|u1|u2|co~combout\))) ) ) # ( !\u4|v3|u0|u2|co~0_combout\ & ( !\u4|u3|u4|u1|u1|u1|co~combout\ $ (!\u3|q[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u3|ALT_INV_q[15]~0_combout\,
	dataf => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	combout => \u4|q[4]~1_combout\);

-- Location: LABCELL_X71_Y4_N9
\u5|v1|u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|v1|u0|u2|co~0_combout\ = ( \u4|u4|u3|r[3]~1_combout\ & ( (\u4|u4|u3|u1|u2|u0|co~combout\ & (\u4|u4|u2|u1|u1|u3|co~combout\ & (!\u4|u4|u3|r[2]~0_combout\ $ (\u4|u4|u4|u1|u3|u3|co~0_combout\)))) ) ) # ( !\u4|u4|u3|r[3]~1_combout\ & ( 
-- (\u4|u4|u3|u1|u2|u0|co~combout\ & (\u4|u4|u2|u1|u1|u3|co~combout\ & (!\u4|u4|u3|r[2]~0_combout\ $ (!\u4|u4|u4|u1|u3|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|ALT_INV_r[2]~0_combout\,
	datab => \u4|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u4|u4|u2|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u4|u4|u3|ALT_INV_r[3]~1_combout\,
	combout => \u5|v1|u0|u2|co~0_combout\);

-- Location: LABCELL_X71_Y4_N15
\u5|v1|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|v1|u0|u3|co~0_combout\ = ( \u4|v3|u0|u2|co~0_combout\ & ( (\u4|u4|u1|u1|u1|u2|co~combout\ & \u5|v1|u0|u2|co~0_combout\) ) ) # ( !\u4|v3|u0|u2|co~0_combout\ & ( (\u5|v1|u0|u2|co~0_combout\ & (!\u4|u4|u1|u1|u1|u2|co~combout\ $ (!\u3|q[15]~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u5|v1|u0|u2|ALT_INV_co~0_combout\,
	datad => \u3|ALT_INV_q[15]~0_combout\,
	dataf => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	combout => \u5|v1|u0|u3|co~0_combout\);

-- Location: LABCELL_X71_Y4_N24
\u4|q[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|q[6]~3_combout\ = ( \u4|am[9]~3_combout\ & ( \u3|q[15]~0_combout\ & ( (\u4|u3|u3|u1|u1|u0|co~combout\ & (\u4|v3|u0|u2|co~0_combout\ & (\u4|u4|u1|u1|u1|u2|co~combout\ & \u4|u3|u4|u1|u1|u1|co~combout\))) ) ) ) # ( !\u4|am[9]~3_combout\ & ( 
-- \u3|q[15]~0_combout\ & ( (!\u4|u3|u3|u1|u1|u0|co~combout\) # ((!\u4|v3|u0|u2|co~0_combout\) # ((!\u4|u4|u1|u1|u1|u2|co~combout\) # (!\u4|u3|u4|u1|u1|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	datac => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u4|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u4|ALT_INV_am[9]~3_combout\,
	dataf => \u3|ALT_INV_q[15]~0_combout\,
	combout => \u4|q[6]~3_combout\);

-- Location: LABCELL_X70_Y4_N21
\u5|u4|u1|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u1|r[2]~0_combout\ = ( \u4|q[6]~3_combout\ & ( (!\u4|q[4]~1_combout\ & (!\u4|q[5]~2_combout\ $ ((!\u4|q[15]~0_combout\)))) # (\u4|q[4]~1_combout\ & (!\u4|q[5]~2_combout\ & ((!\u4|q[15]~0_combout\) # (!\u5|v1|u0|u3|co~0_combout\)))) ) ) # ( 
-- !\u4|q[6]~3_combout\ & ( !\u4|q[5]~2_combout\ $ (((!\u4|q[15]~0_combout\) # ((!\u4|q[4]~1_combout\ & !\u5|v1|u0|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011010010101100101101001101010011010000110101001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_q[5]~2_combout\,
	datab => \u4|ALT_INV_q[4]~1_combout\,
	datac => \u4|ALT_INV_q[15]~0_combout\,
	datad => \u5|v1|u0|u3|ALT_INV_co~0_combout\,
	dataf => \u4|ALT_INV_q[6]~3_combout\,
	combout => \u5|u4|u1|r[2]~0_combout\);

-- Location: LABCELL_X70_Y4_N9
\u5|u4|u2|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u2|u1|u1|u1|co~combout\ = ( \u4|q[6]~3_combout\ & ( (\u4|q[15]~0_combout\ & (!\u4|q[5]~2_combout\ $ (((!\u4|q[4]~1_combout\) # (!\u5|v1|u0|u3|co~0_combout\))))) ) ) # ( !\u4|q[6]~3_combout\ & ( (!\u4|q[5]~2_combout\ & (((!\u4|q[15]~0_combout\)))) # 
-- (\u4|q[5]~2_combout\ & (\u4|q[4]~1_combout\ & (\u4|q[15]~0_combout\ & \u5|v1|u0|u3|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100001101000001010000100000101000001100000010100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_q[5]~2_combout\,
	datab => \u4|ALT_INV_q[4]~1_combout\,
	datac => \u4|ALT_INV_q[15]~0_combout\,
	datad => \u5|v1|u0|u3|ALT_INV_co~0_combout\,
	dataf => \u4|ALT_INV_q[6]~3_combout\,
	combout => \u5|u4|u2|u1|u1|u1|co~combout\);

-- Location: LABCELL_X70_Y4_N18
\u5|u4|u1|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u1|u1|u1|u0|co~combout\ = ( \u4|q[6]~3_combout\ & ( (!\u4|q[15]~0_combout\) # ((\u4|q[5]~2_combout\ & (\u4|q[4]~1_combout\ & \u5|v1|u0|u3|co~0_combout\))) ) ) # ( !\u4|q[6]~3_combout\ & ( (\u4|q[15]~0_combout\ & ((!\u4|q[5]~2_combout\) # 
-- ((!\u4|q[4]~1_combout\) # (!\u5|v1|u0|u3|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_q[5]~2_combout\,
	datab => \u4|ALT_INV_q[4]~1_combout\,
	datac => \u5|v1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u4|ALT_INV_q[15]~0_combout\,
	dataf => \u4|ALT_INV_q[6]~3_combout\,
	combout => \u5|u4|u1|u1|u1|u0|co~combout\);

-- Location: LABCELL_X71_Y4_N6
\u4|q[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|q[3]~4_combout\ = ( \u4|v3|u0|u2|co~0_combout\ & ( \u4|u4|u1|u1|u1|u2|co~combout\ ) ) # ( !\u4|v3|u0|u2|co~0_combout\ & ( !\u4|u4|u1|u1|u1|u2|co~combout\ $ (!\u3|q[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u4|u1|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u3|ALT_INV_q[15]~0_combout\,
	dataf => \u4|v3|u0|u2|ALT_INV_co~0_combout\,
	combout => \u4|q[3]~4_combout\);

-- Location: LABCELL_X70_Y4_N45
\u5|am[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|am[3]~0_combout\ = ( \u4|q[15]~0_combout\ & ( !\u5|v1|u0|u2|co~0_combout\ $ (!\u4|q[3]~4_combout\) ) ) # ( !\u4|q[15]~0_combout\ & ( !\u4|q[3]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|v1|u0|u2|ALT_INV_co~0_combout\,
	datad => \u4|ALT_INV_q[3]~4_combout\,
	dataf => \u4|ALT_INV_q[15]~0_combout\,
	combout => \u5|am[3]~0_combout\);

-- Location: LABCELL_X70_Y4_N6
\u5|u4|u2|r[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u2|r[4]~0_combout\ = ( \u4|q[6]~3_combout\ & ( (!\u4|q[5]~2_combout\ & (!\u4|q[4]~1_combout\ & ((!\u4|q[15]~0_combout\)))) # (\u4|q[5]~2_combout\ & (\u4|q[4]~1_combout\ & ((!\u4|q[15]~0_combout\) # (\u5|v1|u0|u3|co~0_combout\)))) ) ) # ( 
-- !\u4|q[6]~3_combout\ & ( (\u4|q[15]~0_combout\ & (!\u4|q[5]~2_combout\ $ (((\u5|v1|u0|u3|co~0_combout\) # (\u4|q[4]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010101000000001001010110011001000000011001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_q[5]~2_combout\,
	datab => \u4|ALT_INV_q[4]~1_combout\,
	datac => \u5|v1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u4|ALT_INV_q[15]~0_combout\,
	dataf => \u4|ALT_INV_q[6]~3_combout\,
	combout => \u5|u4|u2|r[4]~0_combout\);

-- Location: LABCELL_X71_Y4_N12
\u5|am[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|am[4]~1_combout\ = ( \u5|v1|u0|u3|co~0_combout\ & ( !\u4|q[4]~1_combout\ ) ) # ( !\u5|v1|u0|u3|co~0_combout\ & ( !\u4|q[15]~0_combout\ $ (\u4|q[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|ALT_INV_q[15]~0_combout\,
	datac => \u4|ALT_INV_q[4]~1_combout\,
	dataf => \u5|v1|u0|u3|ALT_INV_co~0_combout\,
	combout => \u5|am[4]~1_combout\);

-- Location: LABCELL_X70_Y4_N54
\u5|u4|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u3|u1|u1|u1|co~combout\ = ( \u5|u4|u2|r[4]~0_combout\ & ( \u5|am[4]~1_combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ (((!\u5|u4|u2|u1|u1|u1|co~combout\ & (\u5|u4|u1|u1|u1|u0|co~combout\ & !\u5|am[3]~0_combout\)))) ) ) ) # ( !\u5|u4|u2|r[4]~0_combout\ & 
-- ( \u5|am[4]~1_combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ ((((!\u5|u4|u1|u1|u1|u0|co~combout\) # (\u5|am[3]~0_combout\)) # (\u5|u4|u2|u1|u1|u1|co~combout\))) ) ) ) # ( \u5|u4|u2|r[4]~0_combout\ & ( !\u5|am[4]~1_combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ 
-- (((!\u5|u4|u2|u1|u1|u1|co~combout\ & ((!\u5|u4|u1|u1|u1|u0|co~combout\) # (\u5|am[3]~0_combout\))))) ) ) ) # ( !\u5|u4|u2|r[4]~0_combout\ & ( !\u5|am[4]~1_combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ ((((\u5|u4|u1|u1|u1|u0|co~combout\ & 
-- !\u5|am[3]~0_combout\)) # (\u5|u4|u2|u1|u1|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110011001011010100110011001011001010101011010011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|u1|ALT_INV_r[2]~0_combout\,
	datab => \u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u5|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u5|ALT_INV_am[3]~0_combout\,
	datae => \u5|u4|u2|ALT_INV_r[4]~0_combout\,
	dataf => \u5|ALT_INV_am[4]~1_combout\,
	combout => \u5|u4|u3|u1|u1|u1|co~combout\);

-- Location: LABCELL_X70_Y4_N36
\u5|u4|u3|r[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u3|r[2]~0_combout\ = !\u5|am[3]~0_combout\ $ (((!\u5|u4|u3|u1|u1|u1|co~combout\ $ (\u5|u4|u2|u1|u1|u1|co~combout\)) # (\u5|am[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100011010111001010001101011100101000110101110010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ALT_INV_am[2]~2_combout\,
	datab => \u5|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datac => \u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u5|ALT_INV_am[3]~0_combout\,
	combout => \u5|u4|u3|r[2]~0_combout\);

-- Location: LABCELL_X70_Y4_N12
\u5|u4|u2|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u2|r[2]~1_combout\ = ( \u5|v1|u0|u2|co~0_combout\ & ( \u4|q[6]~3_combout\ & ( (!\u4|q[3]~4_combout\ & (!\u4|q[4]~1_combout\ $ (((\u4|q[15]~0_combout\))))) # (\u4|q[3]~4_combout\ & (((!\u4|q[5]~2_combout\ & \u4|q[15]~0_combout\)) # 
-- (\u4|q[4]~1_combout\))) ) ) ) # ( !\u5|v1|u0|u2|co~0_combout\ & ( \u4|q[6]~3_combout\ & ( !\u4|q[4]~1_combout\ $ ((((!\u4|q[5]~2_combout\ & \u4|q[15]~0_combout\)) # (\u4|q[3]~4_combout\))) ) ) ) # ( \u5|v1|u0|u2|co~0_combout\ & ( !\u4|q[6]~3_combout\ & ( 
-- !\u4|q[4]~1_combout\ $ ((((\u4|q[3]~4_combout\ & !\u4|q[5]~2_combout\)) # (\u4|q[15]~0_combout\))) ) ) ) # ( !\u5|v1|u0|u2|co~0_combout\ & ( !\u4|q[6]~3_combout\ & ( !\u4|q[4]~1_combout\ $ (((\u4|q[3]~4_combout\ & ((!\u4|q[5]~2_combout\) # 
-- (\u4|q[15]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110010011001100111000011001110011001001110011001100101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_q[3]~4_combout\,
	datab => \u4|ALT_INV_q[4]~1_combout\,
	datac => \u4|ALT_INV_q[5]~2_combout\,
	datad => \u4|ALT_INV_q[15]~0_combout\,
	datae => \u5|v1|u0|u2|ALT_INV_co~0_combout\,
	dataf => \u4|ALT_INV_q[6]~3_combout\,
	combout => \u5|u4|u2|r[2]~1_combout\);

-- Location: LABCELL_X70_Y4_N42
\u5|u4|u2|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u2|r[3]~2_combout\ = ( \u5|u4|u1|u1|u1|u0|co~combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ (((!\u5|am[4]~1_combout\ & \u5|u4|u2|u1|u1|u1|co~combout\))) ) ) # ( !\u5|u4|u1|u1|u1|u0|co~combout\ & ( !\u5|u4|u1|r[2]~0_combout\ $ 
-- (((\u5|u4|u2|u1|u1|u1|co~combout\ & (!\u5|am[4]~1_combout\ $ (!\u5|am[3]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110100110101010011010011010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u4|u1|ALT_INV_r[2]~0_combout\,
	datab => \u5|ALT_INV_am[4]~1_combout\,
	datac => \u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u5|ALT_INV_am[3]~0_combout\,
	dataf => \u5|u4|u1|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u5|u4|u2|r[3]~2_combout\);

-- Location: LABCELL_X70_Y4_N30
\u5|u4|u4|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u4|u1|u3|u3|co~0_combout\ = ( !\u5|u4|u3|u1|u1|u1|co~combout\ & ( (!\u5|u4|u2|r[2]~1_combout\ $ (!\u5|u4|u2|r[4]~0_combout\ $ (((\u5|u4|u2|r[3]~2_combout\))))) ) ) # ( \u5|u4|u3|u1|u1|u1|co~combout\ & ( (!\u5|am[3]~0_combout\ $ 
-- (!\u5|u4|u2|r[3]~2_combout\ $ (((!\u5|am[2]~2_combout\ & !\u5|u4|u2|u1|u1|u1|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110000111100101000000101111111000011110000110101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ALT_INV_am[2]~2_combout\,
	datab => \u5|u4|u2|ALT_INV_r[2]~1_combout\,
	datac => \u5|u4|u2|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u5|ALT_INV_am[3]~0_combout\,
	datae => \u5|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u5|u4|u2|ALT_INV_r[3]~2_combout\,
	datag => \u5|u4|u2|ALT_INV_r[4]~0_combout\,
	combout => \u5|u4|u4|u1|u3|u3|co~0_combout\);

-- Location: LABCELL_X70_Y4_N0
\u5|r[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|r[1]~0_combout\ = ( \u5|u4|u4|u1|u3|u3|co~0_combout\ & ( !\u4|u4|u3|u1|u2|u0|co~combout\ $ (((!\u4|u4|u4|u1|u3|u3|co~combout\ & (\u4|q[15]~0_combout\)) # (\u4|u4|u4|u1|u3|u3|co~combout\ & ((!\u5|u4|u3|r[2]~0_combout\))))) ) ) # ( 
-- !\u5|u4|u4|u1|u3|u3|co~0_combout\ & ( !\u4|u4|u3|u1|u2|u0|co~combout\ $ (((!\u4|u4|u4|u1|u3|u3|co~combout\ & (\u4|q[15]~0_combout\)) # (\u4|u4|u4|u1|u3|u3|co~combout\ & ((\u5|u4|u3|r[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110100101100110011010010110011001010110101001100101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	datab => \u4|ALT_INV_q[15]~0_combout\,
	datac => \u5|u4|u3|ALT_INV_r[2]~0_combout\,
	datad => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u5|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	combout => \u5|r[1]~0_combout\);

-- Location: LABCELL_X70_Y4_N39
\u5|u4|u3|r[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u4|u3|r[1]~1_combout\ = ( \u4|u4|u3|u1|u2|u0|co~combout\ & ( !\u5|am[2]~2_combout\ $ (!\u5|u4|u3|u1|u1|u1|co~combout\) ) ) # ( !\u4|u4|u3|u1|u2|u0|co~combout\ & ( \u5|am[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|ALT_INV_am[2]~2_combout\,
	datab => \u5|u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u5|u4|u3|r[1]~1_combout\);

-- Location: LABCELL_X70_Y4_N48
\u5|r[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|r[2]~1_combout\ = ( \u5|u4|u3|r[2]~0_combout\ & ( \u4|u4|u3|u1|u2|u0|co~combout\ & ( !\u5|u4|u3|r[1]~1_combout\ $ (((!\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((\u4|q[15]~0_combout\))) # (\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\) # 
-- (\u4|u4|u4|u1|u3|u3|co~combout\))))) ) ) ) # ( !\u5|u4|u3|r[2]~0_combout\ & ( \u4|u4|u3|u1|u2|u0|co~combout\ & ( !\u5|u4|u3|r[1]~1_combout\ $ (((!\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\) # (\u4|u4|u4|u1|u3|u3|co~combout\))) # 
-- (\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((\u4|q[15]~0_combout\))))) ) ) ) # ( \u5|u4|u3|r[2]~0_combout\ & ( !\u4|u4|u3|u1|u2|u0|co~combout\ & ( !\u5|u4|u3|r[1]~1_combout\ $ (((!\u4|q[15]~0_combout\) # ((\u4|u4|u4|u1|u3|u3|co~combout\ & 
-- !\u5|u4|u4|u1|u3|u3|co~0_combout\)))) ) ) ) # ( !\u5|u4|u3|r[2]~0_combout\ & ( !\u4|u4|u3|u1|u2|u0|co~combout\ & ( !\u5|u4|u3|r[1]~1_combout\ $ (((!\u4|q[15]~0_combout\) # ((\u4|u4|u4|u1|u3|u3|co~combout\ & \u5|u4|u4|u1|u3|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011110001000010111111010000111000110001111100001000111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u5|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|ALT_INV_q[15]~0_combout\,
	datad => \u5|u4|u3|ALT_INV_r[1]~1_combout\,
	datae => \u5|u4|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u5|r[2]~1_combout\);

-- Location: LABCELL_X70_Y4_N24
\u5|r[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|r[3]~2_combout\ = ( \u5|u4|u3|r[2]~0_combout\ & ( \u4|u4|u3|u1|u2|u0|co~combout\ & ( (!\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\ $ (\u5|u4|u3|r[1]~1_combout\)))) # (\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\) # 
-- ((\u4|u4|u4|u1|u3|u3|co~combout\ & !\u5|u4|u3|r[1]~1_combout\)))) ) ) ) # ( !\u5|u4|u3|r[2]~0_combout\ & ( \u4|u4|u3|u1|u2|u0|co~combout\ & ( (!\u5|u4|u4|u1|u3|u3|co~0_combout\ & (\u4|q[15]~0_combout\ & ((!\u4|u4|u4|u1|u3|u3|co~combout\) # 
-- (\u5|u4|u3|r[1]~1_combout\)))) # (\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\ $ (!\u5|u4|u3|r[1]~1_combout\)))) ) ) ) # ( \u5|u4|u3|r[2]~0_combout\ & ( !\u4|u4|u3|u1|u2|u0|co~combout\ & ( (!\u5|u4|u4|u1|u3|u3|co~0_combout\ & 
-- ((!\u4|q[15]~0_combout\ & ((\u5|u4|u3|r[1]~1_combout\))) # (\u4|q[15]~0_combout\ & (!\u4|u4|u4|u1|u3|u3|co~combout\ & !\u5|u4|u3|r[1]~1_combout\)))) # (\u5|u4|u4|u1|u3|u3|co~0_combout\ & (((!\u4|q[15]~0_combout\)))) ) ) ) # ( !\u5|u4|u3|r[2]~0_combout\ & 
-- ( !\u4|u4|u3|u1|u2|u0|co~combout\ & ( (!\u5|u4|u4|u1|u3|u3|co~0_combout\ & (((\u4|q[15]~0_combout\)))) # (\u5|u4|u4|u1|u3|u3|co~0_combout\ & ((!\u4|q[15]~0_combout\ & ((!\u5|u4|u3|r[1]~1_combout\))) # (\u4|q[15]~0_combout\ & ((\u5|u4|u3|r[1]~1_combout\) # 
-- (\u4|u4|u4|u1|u3|u3|co~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100001111001110001111000000001011001111001111000100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|u4|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u5|u4|u4|u1|u3|u3|ALT_INV_co~0_combout\,
	datac => \u4|ALT_INV_q[15]~0_combout\,
	datad => \u5|u4|u3|ALT_INV_r[1]~1_combout\,
	datae => \u5|u4|u3|ALT_INV_r[2]~0_combout\,
	dataf => \u4|u4|u3|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u5|r[3]~2_combout\);

-- Location: LABCELL_X9_Y44_N0
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


