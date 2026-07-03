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

-- DATE "06/16/2026 12:01:10"

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

ENTITY 	Multiplier IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	prod : OUT std_logic_vector(31 DOWNTO 0)
	);
END Multiplier;

-- Design Ports Information
-- prod[0]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[5]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[6]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[7]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[8]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[10]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[11]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[12]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[13]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[15]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[16]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[17]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[18]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[19]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[20]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[21]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[22]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[23]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[24]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[25]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[26]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[27]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[28]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[29]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[30]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prod[31]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier IS
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
SIGNAL ww_prod : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \v7|m[1]~14_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \v3|m[1]~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \v3|m[2]~1_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \v4|m[1]~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \v5|u0|u0|u1|co~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \v4|m[2]~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \v7|m[2]~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \v3|m[3]~2_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \v4|m[3]~2_combout\ : std_logic;
SIGNAL \v5|u0|u0|u2|co~0_combout\ : std_logic;
SIGNAL \v7|m[3]~1_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \v4|m[4]~3_combout\ : std_logic;
SIGNAL \v5|u0|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \v3|m[4]~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \v7|m[4]~2_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \v1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \v2|u1|u0|co~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \v4|m[5]~4_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \v7|m[5]~3_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \u2|u3|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u5|u0|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u5|u0|u1|u1|co~combout\ : std_logic;
SIGNAL \v5|u0|u1|u1|co~0_combout\ : std_logic;
SIGNAL \v7|m[6]~4_combout\ : std_logic;
SIGNAL \v5|u0|u1|u2|co~0_combout\ : std_logic;
SIGNAL \u5|u0|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \v3|m[7]~6_combout\ : std_logic;
SIGNAL \v3|m[6]~5_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|sum~0_combout\ : std_logic;
SIGNAL \v3|m[5]~4_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \v4|m[7]~5_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u2|sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \v7|m[7]~5_combout\ : std_logic;
SIGNAL \u5|u0|u1|u3|co~combout\ : std_logic;
SIGNAL \v4|m[6]~7_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \v3|m[8]~7_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u0|sum~combout\ : std_logic;
SIGNAL \v2|u1|u3|co~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \v4|m[8]~6_combout\ : std_logic;
SIGNAL \v5|u0|u1|u3|co~0_combout\ : std_logic;
SIGNAL \v7|m[8]~6_combout\ : std_logic;
SIGNAL \v1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \v3|m[9]~8_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u0|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u1|sum~combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \v4|m[9]~8_combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u1|sum~combout\ : std_logic;
SIGNAL \v5|u0|u2|u0|co~0_combout\ : std_logic;
SIGNAL \v7|m[9]~7_combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \v3|m[10]~9_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u5|u0|u2|u2|sum~combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \v4|m[10]~9_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u2|sum~combout\ : std_logic;
SIGNAL \v7|m[10]~8_combout\ : std_logic;
SIGNAL \u7|u0|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \v2|u2|u2|co~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \v4|m[11]~10_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u2|co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \v1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u1|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u3|sum~combout\ : std_logic;
SIGNAL \u7|u0|u2|u3|sum~combout\ : std_logic;
SIGNAL \v5|u0|u2|u2|co~0_combout\ : std_logic;
SIGNAL \v7|m[11]~9_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|co~1_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \v3|m[12]~11_combout\ : std_logic;
SIGNAL \v3|m[11]~10_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u1|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u5|u0|u3|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u2|sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \v4|m[12]~11_combout\ : std_logic;
SIGNAL \u6|u0|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u7|u0|u3|u0|sum~combout\ : std_logic;
SIGNAL \v7|m[12]~10_combout\ : std_logic;
SIGNAL \v5|u0|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u7|u0|u3|u0|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \v4|m[13]~12_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u6|u0|u3|u1|sum~combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \v3|m[13]~12_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|u0|co~combout\ : std_logic;
SIGNAL \u5|u0|u3|u1|sum~combout\ : std_logic;
SIGNAL \u7|u0|u3|u1|sum~combout\ : std_logic;
SIGNAL \v7|m[13]~11_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u1|co~combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \v4|m[14]~13_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u6|u0|u3|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \v1|u3|u1|co~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \v3|m[14]~13_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u3|sum~0_combout\ : std_logic;
SIGNAL \u5|u0|u3|u2|sum~combout\ : std_logic;
SIGNAL \u7|u0|u3|u2|sum~combout\ : std_logic;
SIGNAL \v7|m[14]~12_combout\ : std_logic;
SIGNAL \v4|m~14_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u0|sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \u6|u0|u3|u3|sum~combout\ : std_logic;
SIGNAL \u7|u0|u3|u2|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|u2|co~combout\ : std_logic;
SIGNAL \v3|m~14_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|u3|sum~combout\ : std_logic;
SIGNAL \u7|u0|u3|u3|sum~combout\ : std_logic;
SIGNAL \v5|u0|u3|u2|co~0_combout\ : std_logic;
SIGNAL \v7|m[15]~13_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u2|sum~0_combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u0|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u1|sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u0|sum~combout\ : std_logic;
SIGNAL \u7|u1|u0|u0|sum~combout\ : std_logic;
SIGNAL \v6|m[0]~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u0|co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u2|sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u3|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u7|u1|u0|u0|co~combout\ : std_logic;
SIGNAL \v5|u1|u0|u0|co~0_combout\ : std_logic;
SIGNAL \v6|m[1]~1_combout\ : std_logic;
SIGNAL \u6|u1|u0|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u7|u1|u0|u2|sum~0_combout\ : std_logic;
SIGNAL \v6|m[2]~2_combout\ : std_logic;
SIGNAL \u7|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u3|co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u2|co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u2|co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \v5|u1|u0|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|sum~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u6|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \v6|m[3]~3_combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u5|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u0|sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|u0|sum~0_combout\ : std_logic;
SIGNAL \v6|m[4]~4_combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u2|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|u0|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u3|sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u2|co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u3|co~combout\ : std_logic;
SIGNAL \u5|u1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u7|u1|u1|u1|sum~combout\ : std_logic;
SIGNAL \v5|u1|u1|u0|co~0_combout\ : std_logic;
SIGNAL \v6|m[5]~5_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u1|co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|sum~0_combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|sum~combout\ : std_logic;
SIGNAL \v6|m[6]~6_combout\ : std_logic;
SIGNAL \u5|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \v5|u1|u1|u2|co~0_combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|u3|sum~combout\ : std_logic;
SIGNAL \v6|m[7]~16_combout\ : std_logic;
SIGNAL \u6|u1|u1|u3|co~combout\ : std_logic;
SIGNAL \u3|u2|p[15]~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|u0|sum~combout\ : std_logic;
SIGNAL \v6|m[8]~15_combout\ : std_logic;
SIGNAL \v5|u1|u2|u0|co~0_combout\ : std_logic;
SIGNAL \u7|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u0|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|co~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u3|sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|u1|sum~combout\ : std_logic;
SIGNAL \v6|m[9]~7_combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u3|co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|u1|co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u2|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|u2|sum~combout\ : std_logic;
SIGNAL \v6|m[10]~8_combout\ : std_logic;
SIGNAL \u7|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \v5|u1|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|sum~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u3|co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u3|sum~combout\ : std_logic;
SIGNAL \v6|m[11]~9_combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u0|co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u3|sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \u6|u1|u3|u0|sum~combout\ : std_logic;
SIGNAL \v6|m[12]~10_combout\ : std_logic;
SIGNAL \u7|u1|u3|u0|co~0_combout\ : std_logic;
SIGNAL \v5|u1|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u3|sum~0_combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u1|co~combout\ : std_logic;
SIGNAL \u6|u1|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u2|co~combout\ : std_logic;
SIGNAL \u6|u1|u3|u1|sum~combout\ : std_logic;
SIGNAL \v6|m[13]~11_combout\ : std_logic;
SIGNAL \u6|u1|u3|u2|sum~combout\ : std_logic;
SIGNAL \v6|m[14]~12_combout\ : std_logic;
SIGNAL \v6|m[15]~13_combout\ : std_logic;
SIGNAL \v6|m[15]~14_combout\ : std_logic;
SIGNAL \u1|u1|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|u6|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|u4|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|u1|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|u2|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|u2|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|u4|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u4|u2|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|u6|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u4|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u6|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u4|u4|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u1|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|u2|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u4|u6|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u4|u1|p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \v6|ALT_INV_m[15]~13_combout\ : std_logic;
SIGNAL \u6|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u6|ALT_INV_p\ : std_logic_vector(15 DOWNTO 14);
SIGNAL \v5|u1|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u6|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u6|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_p\ : std_logic_vector(13 DOWNTO 1);
SIGNAL \u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u1|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_p\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \u3|u2|ALT_INV_p[15]~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u1|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_p\ : std_logic_vector(9 DOWNTO 7);
SIGNAL \u4|u1|ALT_INV_p\ : std_logic_vector(10 DOWNTO 8);
SIGNAL \u4|u3|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u6|ALT_INV_p\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \v5|u1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_p\ : std_logic_vector(11 DOWNTO 8);
SIGNAL \u3|u1|ALT_INV_p\ : std_logic_vector(12 DOWNTO 9);
SIGNAL \u3|u5|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v5|u1|u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u6|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u0|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v5|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u6|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u6|ALT_INV_p\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \u1|u5|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u1|u0|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u0|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u1|u0|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u1|u0|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_p\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \u1|u3|u1|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u0|u3|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u7|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m~14_combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u7|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u0|u3|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m~14_combout\ : std_logic;
SIGNAL \u1|u5|u1|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u0|u3|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u0|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u5|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[14]~13_combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u6|ALT_INV_p\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \u3|u5|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u0|u3|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u0|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_p\ : std_logic_vector(13 DOWNTO 3);
SIGNAL \u1|u1|ALT_INV_p\ : std_logic_vector(14 DOWNTO 4);
SIGNAL \v3|ALT_INV_m[14]~13_combout\ : std_logic;
SIGNAL \v1|u3|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u0|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[13]~12_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u3|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u6|u0|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|u0|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[13]~12_combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u0|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u0|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[12]~11_combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|u0|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[12]~11_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[11]~10_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u0|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v1|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[11]~10_combout\ : std_logic;
SIGNAL \v2|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u0|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[10]~9_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[10]~9_combout\ : std_logic;
SIGNAL \v5|u0|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|u3|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[9]~8_combout\ : std_logic;
SIGNAL \v1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[9]~8_combout\ : std_logic;
SIGNAL \u7|u0|u2|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v5|u0|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|u0|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[6]~7_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_p\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \u2|u1|ALT_INV_p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|u5|u1|u0|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[8]~7_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u0|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[8]~6_combout\ : std_logic;
SIGNAL \v2|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v5|u0|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[7]~5_combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[7]~6_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[6]~5_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[5]~4_combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u5|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u0|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u0|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u5|u0|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[5]~4_combout\ : std_logic;
SIGNAL \v2|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u1|u3|u1|u1|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v1|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \v5|u0|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[4]~3_combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[4]~3_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u7|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v5|u0|u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[3]~2_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[3]~2_combout\ : std_logic;
SIGNAL \u1|u5|u1|u0|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v5|u0|u0|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[2]~1_combout\ : std_logic;
SIGNAL \u1|u3|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[2]~1_combout\ : std_logic;
SIGNAL \v4|ALT_INV_m[1]~0_combout\ : std_logic;
SIGNAL \v3|ALT_INV_m[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
prod <= ww_prod;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
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
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\v6|ALT_INV_m[15]~13_combout\ <= NOT \v6|m[15]~13_combout\;
\u6|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u6|u1|u3|u2|sum~combout\;
\u4|u6|ALT_INV_p\(15) <= NOT \u4|u6|p\(15);
\v5|u1|u3|u0|ALT_INV_co~0_combout\ <= NOT \v5|u1|u3|u0|co~0_combout\;
\u7|u1|u3|u0|ALT_INV_co~0_combout\ <= NOT \u7|u1|u3|u0|co~0_combout\;
\u6|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u6|u1|u3|u1|sum~combout\;
\u6|u1|u3|u0|ALT_INV_co~0_combout\ <= NOT \u6|u1|u3|u0|co~0_combout\;
\u4|u6|ALT_INV_p\(14) <= NOT \u4|u6|p\(14);
\u4|u5|u1|u3|u3|ALT_INV_sum~0_combout\ <= NOT \u4|u5|u1|u3|u3|sum~0_combout\;
\u4|u5|u1|u3|u2|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u3|u2|co~combout\;
\u4|u7|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u3|u1|co~combout\;
\u6|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u6|u1|u3|u0|sum~combout\;
\u4|u7|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u3|u1|sum~combout\;
\u4|u5|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u3|u2|sum~combout\;
\u4|u3|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u3|u3|sum~combout\;
\u4|u3|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u3|u2|sum~combout\;
\u4|u5|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u3|u0|co~combout\;
\u4|u7|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u3|u0|co~combout\;
\v5|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \v5|u1|u2|u2|co~0_combout\;
\u7|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u7|u1|u2|u2|co~0_combout\;
\u6|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u6|u1|u2|u3|sum~combout\;
\u4|u7|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u3|u0|sum~combout\;
\u4|u5|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u3|u1|sum~combout\;
\u4|u4|ALT_INV_p\(13) <= NOT \u4|u4|p\(13);
\u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u3|u2|sum~0_combout\;
\u4|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u3|u1|co~combout\;
\u3|u7|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u3|u3|co~combout\;
\u6|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u6|u1|u2|u2|sum~combout\;
\u4|u7|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u2|u3|sum~combout\;
\u4|u5|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u3|u0|sum~combout\;
\u4|u4|ALT_INV_p\(12) <= NOT \u4|u4|p\(12);
\u4|u3|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u3|u1|sum~combout\;
\u4|u5|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u2|u3|co~combout\;
\u4|u7|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u2|u2|co~combout\;
\u3|u7|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u3|u3|sum~combout\;
\u3|u5|u1|u3|u2|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u3|u2|co~combout\;
\u3|u7|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u3|u1|co~combout\;
\u6|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u6|u1|u2|u1|co~combout\;
\v5|u1|u2|u0|ALT_INV_co~0_combout\ <= NOT \v5|u1|u2|u0|co~0_combout\;
\u7|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u7|u1|u2|u0|co~combout\;
\u6|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u6|u1|u2|u1|sum~combout\;
\u4|u7|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u2|u2|sum~combout\;
\u4|u5|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u2|u3|sum~combout\;
\u4|u4|ALT_INV_p\(11) <= NOT \u4|u4|p\(11);
\u4|u3|u1|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u3|u0|sum~0_combout\;
\u4|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u2|u3|co~combout\;
\u3|u7|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u3|u2|sum~combout\;
\u3|u5|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u3|u3|sum~combout\;
\u3|u5|u1|u3|u3|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u1|u3|u3|sum~0_combout\;
\u3|u3|u1|u3|u2|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u3|u2|co~0_combout\;
\u3|u5|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u3|u1|co~combout\;
\u3|u7|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u3|u0|co~combout\;
\u6|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u6|u1|u2|u0|co~combout\;
\u6|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u6|u1|u2|u0|sum~combout\;
\u4|u7|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u2|u1|sum~combout\;
\u4|u5|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u2|u2|sum~combout\;
\u4|u4|ALT_INV_p\(10) <= NOT \u4|u4|p\(10);
\u4|u3|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u2|u3|sum~combout\;
\u4|u3|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u2|u1|co~combout\;
\u4|u5|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u2|u1|co~combout\;
\u4|u7|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u2|u0|co~combout\;
\u3|u7|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u3|u1|sum~combout\;
\u3|u5|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u3|u2|sum~combout\;
\u3|u4|ALT_INV_p\(14) <= NOT \u3|u4|p\(14);
\u3|u2|ALT_INV_p[15]~0_combout\ <= NOT \u3|u2|p[15]~0_combout\;
\u3|u5|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u3|u1|sum~combout\;
\u6|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u6|u1|u1|u3|co~combout\;
\v5|u1|u1|u2|ALT_INV_co~0_combout\ <= NOT \v5|u1|u1|u2|co~0_combout\;
\u6|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u6|u1|u1|u3|sum~combout\;
\u4|u7|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u2|u0|sum~combout\;
\u4|u5|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u2|u1|sum~combout\;
\u4|u3|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u2|u2|sum~combout\;
\u4|u3|u1|u2|u2|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u2|u2|sum~0_combout\;
\u3|u7|u1|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u3|u0|sum~0_combout\;
\u3|u5|u1|u3|u1|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u1|u3|u1|sum~0_combout\;
\u3|u4|ALT_INV_p\(13) <= NOT \u3|u4|p\(13);
\u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u3|u2|sum~0_combout\;
\u3|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u3|u1|co~combout\;
\u3|u5|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u3|u0|co~combout\;
\u3|u7|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u2|u3|co~combout\;
\u5|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u5|u1|u1|u3|sum~combout\;
\u7|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u7|u1|u1|u2|co~combout\;
\u7|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u7|u1|u1|u2|sum~combout\;
\u7|u1|u1|u2|ALT_INV_sum~0_combout\ <= NOT \u7|u1|u1|u2|sum~0_combout\;
\u6|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u6|u1|u1|u2|sum~combout\;
\u4|u7|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u1|u3|sum~combout\;
\u4|u5|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u2|u0|sum~combout\;
\u4|u3|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u2|u1|sum~combout\;
\u4|u2|ALT_INV_p\(9) <= NOT \u4|u2|p\(9);
\u4|u1|ALT_INV_p\(10) <= NOT \u4|u1|p\(10);
\u4|u3|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u1|u3|co~combout\;
\u4|u5|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u1|u3|co~combout\;
\u4|u7|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u1|u2|co~combout\;
\u3|u7|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u2|u3|sum~combout\;
\u3|u5|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u3|u0|sum~combout\;
\u3|u3|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u3|u1|sum~combout\;
\u3|u5|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u2|u3|sum~combout\;
\u6|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u6|u1|u1|u1|co~combout\;
\u2|u7|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u3|u3|sum~combout\;
\u2|u6|ALT_INV_p\(15) <= NOT \u2|u6|p\(15);
\v5|u1|u1|u0|ALT_INV_co~0_combout\ <= NOT \v5|u1|u1|u0|co~0_combout\;
\u7|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u7|u1|u1|u1|sum~combout\;
\u6|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u6|u1|u1|u1|sum~combout\;
\u4|u7|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u1|u2|sum~combout\;
\u4|u5|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u1|u3|sum~combout\;
\u4|u3|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u2|u0|sum~combout\;
\u4|u3|u1|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u2|u0|sum~0_combout\;
\u4|u2|ALT_INV_p\(8) <= NOT \u4|u2|p\(8);
\u4|u1|ALT_INV_p\(9) <= NOT \u4|u1|p\(9);
\u3|u7|u1|u2|u2|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u2|u2|sum~0_combout\;
\u3|u3|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u3|u0|sum~combout\;
\u3|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u2|u3|co~combout\;
\u3|u5|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u2|u2|co~combout\;
\u3|u7|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u2|u1|co~combout\;
\u5|u1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u5|u1|u1|u0|co~0_combout\;
\u5|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u5|u1|u0|u3|co~combout\;
\u2|u7|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u3|u2|sum~combout\;
\u2|u6|ALT_INV_p\(14) <= NOT \u2|u6|p\(14);
\u2|u5|u1|u3|u3|ALT_INV_sum~0_combout\ <= NOT \u2|u5|u1|u3|u3|sum~0_combout\;
\u2|u5|u1|u3|u2|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u3|u2|co~combout\;
\u2|u7|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u3|u1|co~combout\;
\u7|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u7|u1|u1|u0|co~combout\;
\u7|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u7|u1|u1|u0|sum~0_combout\;
\u6|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u6|u1|u1|u0|sum~combout\;
\u4|u7|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u1|u1|sum~combout\;
\u4|u5|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u1|u2|sum~combout\;
\u4|u3|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u1|u3|sum~combout\;
\u4|u2|ALT_INV_p\(7) <= NOT \u4|u2|p\(7);
\u4|u1|ALT_INV_p\(8) <= NOT \u4|u1|p\(8);
\u4|u3|u1|u1|u2|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u1|u2|co~0_combout\;
\u4|u5|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u1|u1|co~combout\;
\u4|u7|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u1|u0|co~combout\;
\u3|u7|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u2|u1|sum~combout\;
\u3|u5|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u2|u2|sum~combout\;
\u3|u3|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u2|u3|sum~combout\;
\u3|u2|ALT_INV_p\(11) <= NOT \u3|u2|p\(11);
\u3|u1|ALT_INV_p\(12) <= NOT \u3|u1|p\(12);
\u3|u5|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u2|u1|sum~combout\;
\u6|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u6|u1|u0|u3|co~combout\;
\u5|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u5|u1|u1|u0|sum~combout\;
\u2|u7|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u3|u1|sum~combout\;
\u2|u5|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u3|u2|sum~combout\;
\u2|u3|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u3|u3|sum~combout\;
\v5|u1|u0|u2|ALT_INV_co~0_combout\ <= NOT \v5|u1|u0|u2|co~0_combout\;
\u6|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u6|u1|u0|u3|sum~combout\;
\u4|u7|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u1|u0|sum~combout\;
\u4|u5|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u1|u1|sum~combout\;
\u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u1|u2|sum~0_combout\;
\u4|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u1|u1|co~combout\;
\u4|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u1|u0|co~combout\;
\u4|u5|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u1|u0|co~combout\;
\u4|u7|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u0|u3|co~combout\;
\u3|u7|u1|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u2|u0|sum~0_combout\;
\u3|u3|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u2|u2|sum~combout\;
\u3|u2|ALT_INV_p\(10) <= NOT \u3|u2|p\(10);
\u3|u1|ALT_INV_p\(11) <= NOT \u3|u1|p\(11);
\u3|u3|u1|u2|u1|ALT_INV_co~1_combout\ <= NOT \u3|u3|u1|u2|u1|co~1_combout\;
\u3|u3|u1|u2|u1|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u2|u1|co~0_combout\;
\u3|u5|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u2|u0|co~combout\;
\u3|u7|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u1|u3|co~combout\;
\u5|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u5|u1|u0|u3|sum~combout\;
\u2|u7|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u3|u0|sum~combout\;
\u2|u5|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u3|u1|sum~combout\;
\u2|u3|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u3|u2|sum~combout\;
\u2|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u3|u1|co~combout\;
\u2|u5|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u3|u0|co~combout\;
\u2|u7|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u2|u3|co~combout\;
\u1|u7|u1|u3|u3|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u3|u3|co~combout\;
\u1|u5|u1|u3|u3|ALT_INV_co~0_combout\ <= NOT \u1|u5|u1|u3|u3|co~0_combout\;
\u1|u7|u1|u3|u2|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u3|u2|co~combout\;
\u5|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u5|u1|u0|u2|co~combout\;
\u7|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u7|u1|u0|u2|co~combout\;
\u7|u1|u0|u2|ALT_INV_sum~0_combout\ <= NOT \u7|u1|u0|u2|sum~0_combout\;
\u6|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u6|u1|u0|u2|sum~combout\;
\u4|u7|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u0|u3|sum~combout\;
\u4|u5|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u1|u0|sum~combout\;
\u4|u3|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u1|u1|sum~combout\;
\u4|u3|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u1|u1|sum~0_combout\;
\u4|u3|u1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u1|u0|co~0_combout\;
\u3|u7|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u1|u3|sum~combout\;
\u3|u5|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u2|u0|sum~combout\;
\u3|u3|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u2|u1|sum~combout\;
\u3|u3|u1|u2|u1|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u2|u1|sum~0_combout\;
\u3|u2|ALT_INV_p\(9) <= NOT \u3|u2|p\(9);
\u3|u1|ALT_INV_p\(10) <= NOT \u3|u1|p\(10);
\u3|u5|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u1|u3|sum~combout\;
\u6|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u6|u1|u0|u1|co~combout\;
\u5|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u5|u1|u0|u2|sum~combout\;
\u2|u7|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u2|u3|sum~combout\;
\u2|u5|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u3|u0|sum~combout\;
\u2|u3|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u3|u1|sum~combout\;
\u1|u7|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u3|u3|sum~combout\;
\u1|u7|u1|u3|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u3|u3|sum~0_combout\;
\v5|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \v5|u1|u0|u0|co~0_combout\;
\u6|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u6|u1|u0|u1|sum~combout\;
\u4|u7|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u0|u2|sum~combout\;
\u4|u5|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u0|u3|sum~combout\;
\u4|u3|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u1|u0|sum~combout\;
\u4|u3|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u1|u0|sum~0_combout\;
\u4|u3|u1|u0|u3|ALT_INV_co~0_combout\ <= NOT \u4|u3|u1|u0|u3|co~0_combout\;
\u4|u5|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u0|u2|co~combout\;
\u4|u7|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u4|u7|u1|u0|u1|co~combout\;
\u3|u7|u1|u1|u2|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u1|u2|sum~0_combout\;
\u3|u3|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u2|u0|sum~combout\;
\u3|u2|ALT_INV_p\(8) <= NOT \u3|u2|p\(8);
\u3|u1|ALT_INV_p\(9) <= NOT \u3|u1|p\(9);
\u3|u3|u1|u1|u3|ALT_INV_co~0_combout\ <= NOT \u3|u3|u1|u1|u3|co~0_combout\;
\u3|u5|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u1|u2|co~combout\;
\u3|u7|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u1|u1|co~combout\;
\u5|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u5|u1|u0|u1|sum~combout\;
\u2|u7|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u2|u2|sum~combout\;
\u2|u5|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u2|u3|sum~combout\;
\u2|u3|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u3|u0|sum~combout\;
\u2|u3|u1|u2|u3|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u2|u3|co~combout\;
\u2|u5|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u2|u2|co~combout\;
\u2|u7|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u2|u1|co~combout\;
\u1|u7|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u3|u2|sum~combout\;
\u1|u6|ALT_INV_p\(14) <= NOT \u1|u6|p\(14);
\u1|u5|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u3|u3|sum~combout\;
\u1|u5|u1|u3|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u3|u3|sum~0_combout\;
\u1|u5|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u3|u2|sum~combout\;
\u5|u1|u0|u0|ALT_INV_co~combout\ <= NOT \u5|u1|u0|u0|co~combout\;
\u7|u1|u0|u0|ALT_INV_co~combout\ <= NOT \u7|u1|u0|u0|co~combout\;
\u7|u1|u0|u0|ALT_INV_sum~combout\ <= NOT \u7|u1|u0|u0|sum~combout\;
\u6|u1|u0|u0|ALT_INV_sum~combout\ <= NOT \u6|u1|u0|u0|sum~combout\;
\u4|u7|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u4|u7|u1|u0|u1|sum~combout\;
\u4|u5|u1|u0|u2|ALT_INV_sum~0_combout\ <= NOT \u4|u5|u1|u0|u2|sum~0_combout\;
\u4|u4|ALT_INV_p\(2) <= NOT \u4|u4|p\(2);
\u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u0|u3|sum~0_combout\;
\u4|u3|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u4|u3|u1|u0|u2|co~combout\;
\u4|u5|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u4|u5|u1|u0|u1|co~combout\;
\u3|u7|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u1|u1|sum~combout\;
\u3|u5|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u1|u2|sum~combout\;
\u3|u4|ALT_INV_p\(6) <= NOT \u3|u4|p\(6);
\u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u1|u3|sum~0_combout\;
\u3|u3|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u1|u2|co~combout\;
\u3|u5|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u1|u1|sum~combout\;
\u6|u0|u3|u3|ALT_INV_co~combout\ <= NOT \u6|u0|u3|u3|co~combout\;
\u5|u1|u0|u0|ALT_INV_sum~combout\ <= NOT \u5|u1|u0|u0|sum~combout\;
\u2|u7|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u2|u1|sum~combout\;
\u2|u5|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u2|u2|sum~combout\;
\u2|u3|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u2|u3|sum~combout\;
\u1|u7|u1|u3|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u3|u1|sum~0_combout\;
\u1|u6|ALT_INV_p\(13) <= NOT \u1|u6|p\(13);
\u1|u4|ALT_INV_p\(14) <= NOT \u1|u4|p\(14);
\u1|u3|u1|u3|u3|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u3|u3|sum~combout\;
\u1|u3|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u3|u1|co~combout\;
\u1|u5|u1|u3|u1|ALT_INV_co~combout\ <= NOT \u1|u5|u1|u3|u1|co~combout\;
\u1|u7|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u3|u0|co~combout\;
\v5|u0|u3|u2|ALT_INV_co~0_combout\ <= NOT \v5|u0|u3|u2|co~0_combout\;
\u7|u0|u3|u3|ALT_INV_sum~combout\ <= NOT \u7|u0|u3|u3|sum~combout\;
\u6|u0|u3|u3|ALT_INV_sum~combout\ <= NOT \u6|u0|u3|u3|sum~combout\;
\u4|u7|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u7|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m~14_combout\ <= NOT \v4|m~14_combout\;
\u4|u5|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u4|u5|u1|u0|u1|sum~combout\;
\u4|u4|ALT_INV_p\(1) <= NOT \u4|u4|p\(1);
\u4|u3|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u4|u3|u1|u0|u2|sum~combout\;
\u4|u5|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u4|u5|u1|u0|u0|co~0_combout\;
\u3|u7|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u1|u0|sum~0_combout\;
\u3|u4|ALT_INV_p\(5) <= NOT \u3|u4|p\(5);
\u3|u3|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u1|u2|sum~combout\;
\u3|u5|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u1|u0|co~combout\;
\u3|u7|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u0|u3|co~combout\;
\u5|u0|u3|u3|ALT_INV_sum~combout\ <= NOT \u5|u0|u3|u3|sum~combout\;
\u2|u7|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u2|u0|sum~combout\;
\u2|u5|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u2|u1|sum~combout\;
\u2|u3|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u2|u2|sum~combout\;
\u2|u3|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u2|u1|co~combout\;
\u2|u5|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u2|u0|co~combout\;
\u2|u7|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u1|u3|co~combout\;
\u1|u7|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u3|u0|sum~combout\;
\u1|u5|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u3|u1|sum~combout\;
\u1|u4|ALT_INV_p\(13) <= NOT \u1|u4|p\(13);
\u1|u3|u1|u3|u2|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u3|u2|sum~combout\;
\u1|u3|u1|u3|u2|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u3|u2|sum~0_combout\;
\v3|ALT_INV_m~14_combout\ <= NOT \v3|m~14_combout\;
\u1|u5|u1|u3|u0|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u3|u0|sum~combout\;
\u5|u0|u3|u2|ALT_INV_co~combout\ <= NOT \u5|u0|u3|u2|co~combout\;
\u7|u0|u3|u2|ALT_INV_co~combout\ <= NOT \u7|u0|u3|u2|co~combout\;
\u7|u0|u3|u2|ALT_INV_sum~combout\ <= NOT \u7|u0|u3|u2|sum~combout\;
\u6|u0|u3|u2|ALT_INV_sum~combout\ <= NOT \u6|u0|u3|u2|sum~combout\;
\u4|u5|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u5|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[14]~13_combout\ <= NOT \v4|m[14]~13_combout\;
\u3|u7|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u3|u7|u1|u0|u3|sum~combout\;
\u3|u6|ALT_INV_p\(3) <= NOT \u3|u6|p\(3);
\u3|u5|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u1|u1|u0|sum~0_combout\;
\u3|u4|ALT_INV_p\(4) <= NOT \u3|u4|p\(4);
\u3|u3|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u1|u1|sum~0_combout\;
\u3|u3|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u1|u0|co~combout\;
\u3|u5|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u0|u3|co~combout\;
\u6|u0|u3|u1|ALT_INV_co~combout\ <= NOT \u6|u0|u3|u1|co~combout\;
\u5|u0|u3|u2|ALT_INV_sum~combout\ <= NOT \u5|u0|u3|u2|sum~combout\;
\u2|u7|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u1|u3|sum~combout\;
\u2|u5|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u2|u0|sum~combout\;
\u2|u3|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u2|u1|sum~combout\;
\u1|u7|u1|u2|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u2|u3|sum~0_combout\;
\u1|u4|ALT_INV_p\(12) <= NOT \u1|u4|p\(12);
\u1|u3|u1|u3|u1|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u3|u1|sum~combout\;
\u1|u2|ALT_INV_p\(13) <= NOT \u1|u2|p\(13);
\u1|u1|ALT_INV_p\(14) <= NOT \u1|u1|p\(14);
\v3|ALT_INV_m[14]~13_combout\ <= NOT \v3|m[14]~13_combout\;
\v1|u3|u1|ALT_INV_co~0_combout\ <= NOT \v1|u3|u1|co~0_combout\;
\u1|u3|u1|u3|u0|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u3|u0|co~combout\;
\u1|u3|u1|u3|u0|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u3|u0|co~0_combout\;
\u1|u5|u1|u2|u3|ALT_INV_co~1_combout\ <= NOT \u1|u5|u1|u2|u3|co~1_combout\;
\u1|u5|u1|u2|u3|ALT_INV_co~0_combout\ <= NOT \u1|u5|u1|u2|u3|co~0_combout\;
\u1|u7|u1|u2|u2|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u2|u2|co~combout\;
\v5|u0|u3|u0|ALT_INV_co~0_combout\ <= NOT \v5|u0|u3|u0|co~0_combout\;
\u7|u0|u3|u1|ALT_INV_sum~combout\ <= NOT \u7|u0|u3|u1|sum~combout\;
\u6|u0|u3|u1|ALT_INV_sum~combout\ <= NOT \u6|u0|u3|u1|sum~combout\;
\u4|u3|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u4|u3|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[13]~12_combout\ <= NOT \v4|m[13]~12_combout\;
\u3|u6|ALT_INV_p\(2) <= NOT \u3|u6|p\(2);
\u3|u5|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u3|u5|u1|u0|u3|sum~combout\;
\u3|u4|ALT_INV_p\(3) <= NOT \u3|u4|p\(3);
\u3|u3|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u1|u0|sum~combout\;
\u3|u5|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u0|u2|co~combout\;
\u3|u7|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u3|u7|u1|u0|u1|co~combout\;
\u6|u0|u3|u0|ALT_INV_co~0_combout\ <= NOT \u6|u0|u3|u0|co~0_combout\;
\u5|u0|u3|u1|ALT_INV_sum~combout\ <= NOT \u5|u0|u3|u1|sum~combout\;
\u2|u7|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u1|u2|sum~combout\;
\u2|u5|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u1|u3|sum~combout\;
\u2|u3|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u2|u0|sum~combout\;
\u2|u3|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u1|u3|co~combout\;
\u2|u5|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u1|u2|co~combout\;
\u2|u7|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u1|u1|co~combout\;
\u1|u7|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u2|u2|sum~combout\;
\u1|u5|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u2|u3|sum~combout\;
\u1|u5|u1|u2|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u2|u3|sum~0_combout\;
\u1|u4|ALT_INV_p\(11) <= NOT \u1|u4|p\(11);
\u1|u3|u1|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u3|u0|sum~0_combout\;
\v3|ALT_INV_m[13]~12_combout\ <= NOT \v3|m[13]~12_combout\;
\u1|u5|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u2|u2|sum~combout\;
\u5|u0|u3|u0|ALT_INV_co~combout\ <= NOT \u5|u0|u3|u0|co~combout\;
\u7|u0|u3|u0|ALT_INV_co~combout\ <= NOT \u7|u0|u3|u0|co~combout\;
\u7|u0|u3|u0|ALT_INV_sum~combout\ <= NOT \u7|u0|u3|u0|sum~combout\;
\u6|u0|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u6|u0|u3|u0|sum~0_combout\;
\v4|ALT_INV_m[12]~11_combout\ <= NOT \v4|m[12]~11_combout\;
\u3|u6|ALT_INV_p\(1) <= NOT \u3|u6|p\(1);
\u3|u5|u1|u0|u2|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u1|u0|u2|sum~0_combout\;
\u3|u4|ALT_INV_p\(2) <= NOT \u3|u4|p\(2);
\u3|u3|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u0|u3|sum~0_combout\;
\u3|u3|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u3|u3|u1|u0|u2|co~combout\;
\u3|u5|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u3|u5|u1|u0|u1|co~combout\;
\u3|u7|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u3|u7|u1|u0|u0|co~0_combout\;
\u5|u0|u3|u0|ALT_INV_sum~combout\ <= NOT \u5|u0|u3|u0|sum~combout\;
\u2|u7|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u1|u1|sum~combout\;
\u2|u5|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u1|u2|sum~combout\;
\u2|u3|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u1|u3|sum~combout\;
\u1|u7|u1|u2|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u2|u1|sum~0_combout\;
\u1|u6|ALT_INV_p\(9) <= NOT \u1|u6|p\(9);
\u1|u4|ALT_INV_p\(10) <= NOT \u1|u4|p\(10);
\u1|u3|u1|u2|u3|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u2|u3|sum~combout\;
\u1|u2|ALT_INV_p\(11) <= NOT \u1|u2|p\(11);
\u1|u1|ALT_INV_p\(12) <= NOT \u1|u1|p\(12);
\v3|ALT_INV_m[12]~11_combout\ <= NOT \v3|m[12]~11_combout\;
\u1|u3|u1|u2|u2|ALT_INV_co~1_combout\ <= NOT \u1|u3|u1|u2|u2|co~1_combout\;
\u1|u3|u1|u2|u2|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u2|u2|co~0_combout\;
\v3|ALT_INV_m[11]~10_combout\ <= NOT \v3|m[11]~10_combout\;
\u1|u3|u1|u2|u2|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u2|u2|sum~combout\;
\u1|u7|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u2|u0|co~combout\;
\v5|u0|u2|u2|ALT_INV_co~0_combout\ <= NOT \v5|u0|u2|u2|co~0_combout\;
\u7|u0|u2|u3|ALT_INV_sum~combout\ <= NOT \u7|u0|u2|u3|sum~combout\;
\u5|u0|u2|u3|ALT_INV_sum~combout\ <= NOT \u5|u0|u2|u3|sum~combout\;
\u2|u7|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u1|u0|sum~combout\;
\u2|u5|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u1|u1|sum~combout\;
\u2|u3|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u1|u2|sum~combout\;
\u2|u3|u1|u1|u1|ALT_INV_co~combout\ <= NOT \u2|u3|u1|u1|u1|co~combout\;
\u2|u3|u1|u1|u1|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u1|u1|co~0_combout\;
\u2|u5|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u1|u0|co~combout\;
\u2|u7|u1|u0|u3|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u0|u3|co~combout\;
\u1|u7|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u2|u0|sum~combout\;
\u1|u6|ALT_INV_p\(8) <= NOT \u1|u6|p\(8);
\u1|u5|u1|u2|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u2|u1|sum~0_combout\;
\u1|u4|ALT_INV_p\(9) <= NOT \u1|u4|p\(9);
\u1|u3|u1|u2|u2|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u2|u2|sum~0_combout\;
\v1|u2|u2|ALT_INV_co~0_combout\ <= NOT \v1|u2|u2|co~0_combout\;
\u1|u3|u1|u2|u1|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u2|u1|co~combout\;
\u1|u5|u1|u2|u0|ALT_INV_co~combout\ <= NOT \u1|u5|u1|u2|u0|co~combout\;
\u1|u5|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u2|u0|sum~combout\;
\u5|u0|u2|u2|ALT_INV_co~combout\ <= NOT \u5|u0|u2|u2|co~combout\;
\u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[11]~10_combout\ <= NOT \v4|m[11]~10_combout\;
\v2|u2|u2|ALT_INV_co~0_combout\ <= NOT \v2|u2|u2|co~0_combout\;
\u3|u4|ALT_INV_p\(1) <= NOT \u3|u4|p\(1);
\u3|u3|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u3|u3|u1|u0|u2|sum~combout\;
\u3|u5|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u3|u5|u1|u0|u0|co~0_combout\;
\u7|u0|u2|u2|ALT_INV_co~combout\ <= NOT \u7|u0|u2|u2|co~combout\;
\u7|u0|u2|u2|ALT_INV_sum~combout\ <= NOT \u7|u0|u2|u2|sum~combout\;
\u5|u0|u2|u2|ALT_INV_sum~combout\ <= NOT \u5|u0|u2|u2|sum~combout\;
\u2|u7|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u0|u3|sum~combout\;
\u2|u5|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u1|u0|sum~combout\;
\u2|u3|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u1|u1|sum~combout\;
\u2|u3|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u2|u3|u1|u1|u1|sum~0_combout\;
\u2|u3|u1|u1|u0|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u1|u0|co~0_combout\;
\u2|u7|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u0|u2|co~combout\;
\u1|u7|u1|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u1|u3|sum~0_combout\;
\u1|u6|ALT_INV_p\(7) <= NOT \u1|u6|p\(7);
\u1|u4|ALT_INV_p\(8) <= NOT \u1|u4|p\(8);
\u1|u3|u1|u2|u1|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u2|u1|sum~combout\;
\u1|u2|ALT_INV_p\(9) <= NOT \u1|u2|p\(9);
\u1|u1|ALT_INV_p\(10) <= NOT \u1|u1|p\(10);
\v3|ALT_INV_m[10]~9_combout\ <= NOT \v3|m[10]~9_combout\;
\u1|u3|u1|u2|u0|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u2|u0|co~0_combout\;
\u1|u3|u1|u2|u0|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u2|u0|sum~combout\;
\u1|u7|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u1|u2|co~combout\;
\u3|u5|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[10]~9_combout\ <= NOT \v4|m[10]~9_combout\;
\v5|u0|u2|u0|ALT_INV_co~0_combout\ <= NOT \v5|u0|u2|u0|co~0_combout\;
\u7|u0|u2|u1|ALT_INV_sum~combout\ <= NOT \u7|u0|u2|u1|sum~combout\;
\u5|u0|u2|u1|ALT_INV_sum~combout\ <= NOT \u5|u0|u2|u1|sum~combout\;
\u2|u7|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u0|u2|sum~combout\;
\u2|u4|ALT_INV_p\(3) <= NOT \u2|u4|p\(3);
\u2|u3|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u1|u0|sum~combout\;
\u2|u3|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u2|u3|u1|u1|u0|sum~0_combout\;
\u2|u3|u1|u0|u3|ALT_INV_co~1_combout\ <= NOT \u2|u3|u1|u0|u3|co~1_combout\;
\u2|u3|u1|u0|u3|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u0|u3|co~0_combout\;
\u2|u5|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u0|u2|co~combout\;
\u2|u7|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u2|u7|u1|u0|u1|co~combout\;
\u1|u7|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u1|u2|sum~combout\;
\u1|u6|ALT_INV_p\(6) <= NOT \u1|u6|p\(6);
\u1|u5|u1|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u1|u3|sum~0_combout\;
\u1|u4|ALT_INV_p\(7) <= NOT \u1|u4|p\(7);
\u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u2|u0|sum~0_combout\;
\v3|ALT_INV_m[9]~8_combout\ <= NOT \v3|m[9]~8_combout\;
\v1|u1|u3|ALT_INV_co~0_combout\ <= NOT \v1|u1|u3|co~0_combout\;
\u1|u3|u1|u1|u3|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u1|u3|co~combout\;
\u1|u3|u1|u1|u3|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u1|u3|co~0_combout\;
\u1|u5|u1|u1|u2|ALT_INV_co~combout\ <= NOT \u1|u5|u1|u1|u2|co~combout\;
\u1|u5|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u1|u2|sum~combout\;
\u5|u0|u2|u0|ALT_INV_co~combout\ <= NOT \u5|u0|u2|u0|co~combout\;
\u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u3|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[9]~8_combout\ <= NOT \v4|m[9]~8_combout\;
\u7|u0|u2|u0|ALT_INV_co~0_combout\ <= NOT \u7|u0|u2|u0|co~0_combout\;
\v5|u0|u1|u3|ALT_INV_co~0_combout\ <= NOT \v5|u0|u1|u3|co~0_combout\;
\u5|u0|u2|u0|ALT_INV_sum~combout\ <= NOT \u5|u0|u2|u0|sum~combout\;
\u2|u7|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u2|u7|u1|u0|u1|sum~combout\;
\u2|u6|ALT_INV_p\(1) <= NOT \u2|u6|p\(1);
\u2|u4|ALT_INV_p\(2) <= NOT \u2|u4|p\(2);
\v4|ALT_INV_m[6]~7_combout\ <= NOT \v4|m[6]~7_combout\;
\u2|u3|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u2|u3|u1|u0|u3|sum~combout\;
\u2|u3|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u2|u3|u1|u0|u3|sum~0_combout\;
\u2|u2|ALT_INV_p\(2) <= NOT \u2|u2|p\(2);
\u2|u1|ALT_INV_p\(3) <= NOT \u2|u1|p\(3);
\u2|u5|u1|u0|u1|ALT_INV_co~combout\ <= NOT \u2|u5|u1|u0|u1|co~combout\;
\u1|u7|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u1|u1|sum~combout\;
\u1|u7|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u1|u1|sum~0_combout\;
\u1|u6|ALT_INV_p\(5) <= NOT \u1|u6|p\(5);
\u1|u4|ALT_INV_p\(6) <= NOT \u1|u4|p\(6);
\u1|u3|u1|u1|u3|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u1|u3|sum~combout\;
\u1|u3|u1|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u1|u3|sum~0_combout\;
\v3|ALT_INV_m[8]~7_combout\ <= NOT \v3|m[8]~7_combout\;
\u1|u2|ALT_INV_p\(6) <= NOT \u1|u2|p\(6);
\u1|u1|ALT_INV_p\(7) <= NOT \u1|u1|p\(7);
\u1|u3|u1|u1|u2|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u1|u2|sum~combout\;
\u1|u7|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u1|u0|co~combout\;
\u5|u0|u1|u3|ALT_INV_co~combout\ <= NOT \u5|u0|u1|u3|co~combout\;
\v4|ALT_INV_m[8]~6_combout\ <= NOT \v4|m[8]~6_combout\;
\v2|u1|u3|ALT_INV_co~0_combout\ <= NOT \v2|u1|u3|co~0_combout\;
\v5|u0|u1|u2|ALT_INV_co~0_combout\ <= NOT \v5|u0|u1|u2|co~0_combout\;
\u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u2|u7|u1|u0|u0|sum~0_combout\;
\u2|u6|ALT_INV_p\(0) <= NOT \u2|u6|p\(0);
\v4|ALT_INV_m[7]~5_combout\ <= NOT \v4|m[7]~5_combout\;
\u2|u5|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u2|u5|u1|u0|u1|sum~combout\;
\u2|u4|ALT_INV_p\(1) <= NOT \u2|u4|p\(1);
\u2|u3|u1|u0|u2|ALT_INV_sum~0_combout\ <= NOT \u2|u3|u1|u0|u2|sum~0_combout\;
\u1|u7|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u1|u0|sum~combout\;
\u1|u6|ALT_INV_p\(4) <= NOT \u1|u6|p\(4);
\u1|u5|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u1|u1|sum~0_combout\;
\u1|u4|ALT_INV_p\(5) <= NOT \u1|u4|p\(5);
\u1|u3|u1|u1|u2|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u1|u2|sum~0_combout\;
\v3|ALT_INV_m[7]~6_combout\ <= NOT \v3|m[7]~6_combout\;
\u1|u3|u1|u1|u1|ALT_INV_co~1_combout\ <= NOT \u1|u3|u1|u1|u1|co~1_combout\;
\u1|u3|u1|u1|u1|ALT_INV_co~0_combout\ <= NOT \u1|u3|u1|u1|u1|co~0_combout\;
\v3|ALT_INV_m[6]~5_combout\ <= NOT \v3|m[6]~5_combout\;
\v3|ALT_INV_m[5]~4_combout\ <= NOT \v3|m[5]~4_combout\;
\u1|u5|u1|u1|u0|ALT_INV_co~combout\ <= NOT \u1|u5|u1|u1|u0|co~combout\;
\u1|u5|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u1|u0|sum~combout\;
\u5|u0|u1|u2|ALT_INV_co~combout\ <= NOT \u5|u0|u1|u2|co~combout\;
\v5|u0|u1|u1|ALT_INV_co~0_combout\ <= NOT \v5|u0|u1|u1|co~0_combout\;
\u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u2|u5|u1|u0|u0|sum~0_combout\;
\u2|u4|ALT_INV_p\(0) <= NOT \u2|u4|p\(0);
\u2|u2|ALT_INV_p\(1) <= NOT \u2|u2|p\(1);
\u2|u1|ALT_INV_p\(2) <= NOT \u2|u1|p\(2);
\u2|u3|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u2|u3|u1|u0|u0|co~0_combout\;
\u1|u7|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u0|u3|sum~combout\;
\u1|u7|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u7|u1|u0|u3|sum~0_combout\;
\u1|u6|ALT_INV_p\(3) <= NOT \u1|u6|p\(3);
\u1|u4|ALT_INV_p\(4) <= NOT \u1|u4|p\(4);
\u1|u3|u1|u1|u1|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u1|u1|sum~combout\;
\u1|u3|u1|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u1|u1|sum~0_combout\;
\u1|u2|ALT_INV_p\(4) <= NOT \u1|u2|p\(4);
\u1|u1|ALT_INV_p\(5) <= NOT \u1|u1|p\(5);
\u1|u3|u1|u1|u0|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u1|u0|sum~combout\;
\u1|u7|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u1|u7|u1|u0|u2|co~combout\;
\u5|u0|u1|u1|ALT_INV_co~combout\ <= NOT \u5|u0|u1|u1|co~combout\;
\u5|u0|u1|u0|ALT_INV_co~0_combout\ <= NOT \u5|u0|u1|u0|co~0_combout\;
\u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\ <= NOT \u2|u3|u1|u0|u0|sum~0_combout\;
\v4|ALT_INV_m[5]~4_combout\ <= NOT \v4|m[5]~4_combout\;
\v2|u1|u0|ALT_INV_co~0_combout\ <= NOT \v2|u1|u0|co~0_combout\;
\u1|u7|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u0|u2|sum~combout\;
\u1|u6|ALT_INV_p\(2) <= NOT \u1|u6|p\(2);
\u1|u5|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u5|u1|u0|u3|sum~0_combout\;
\u1|u4|ALT_INV_p\(3) <= NOT \u1|u4|p\(3);
\u1|u3|u1|u1|u0|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u1|u0|sum~0_combout\;
\v1|u1|u0|ALT_INV_co~0_combout\ <= NOT \v1|u1|u0|co~0_combout\;
\u1|u2|ALT_INV_p\(3) <= NOT \u1|u2|p\(3);
\u1|u1|ALT_INV_p\(4) <= NOT \u1|u1|p\(4);
\u1|u5|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u1|u5|u1|u0|u2|co~combout\;
\v5|u0|u0|u3|ALT_INV_co~0_combout\ <= NOT \v5|u0|u0|u3|co~0_combout\;
\u2|u1|ALT_INV_p\(0) <= NOT \u2|u1|p\(0);
\v4|ALT_INV_m[4]~3_combout\ <= NOT \v4|m[4]~3_combout\;
\u1|u7|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u1|u7|u1|u0|u1|sum~combout\;
\u1|u6|ALT_INV_p\(1) <= NOT \u1|u6|p\(1);
\u1|u5|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u0|u2|sum~combout\;
\u1|u4|ALT_INV_p\(2) <= NOT \u1|u4|p\(2);
\u1|u3|u1|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u1|u3|u1|u0|u3|sum~0_combout\;
\v3|ALT_INV_m[4]~3_combout\ <= NOT \v3|m[4]~3_combout\;
\u1|u3|u1|u0|u2|ALT_INV_co~combout\ <= NOT \u1|u3|u1|u0|u2|co~combout\;
\u1|u7|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u1|u7|u1|u0|u0|co~0_combout\;
\v5|u0|u0|u2|ALT_INV_co~0_combout\ <= NOT \v5|u0|u0|u2|co~0_combout\;
\v4|ALT_INV_m[3]~2_combout\ <= NOT \v4|m[3]~2_combout\;
\u1|u5|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u1|u5|u1|u0|u1|sum~combout\;
\u1|u4|ALT_INV_p\(1) <= NOT \u1|u4|p\(1);
\u1|u3|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u0|u2|sum~combout\;
\v3|ALT_INV_m[3]~2_combout\ <= NOT \v3|m[3]~2_combout\;
\u1|u5|u1|u0|u0|ALT_INV_co~0_combout\ <= NOT \u1|u5|u1|u0|u0|co~0_combout\;
\v5|u0|u0|u1|ALT_INV_co~0_combout\ <= NOT \v5|u0|u0|u1|co~0_combout\;
\v4|ALT_INV_m[2]~1_combout\ <= NOT \v4|m[2]~1_combout\;
\u1|u3|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u1|u3|u1|u0|u1|sum~combout\;
\v3|ALT_INV_m[2]~1_combout\ <= NOT \v3|m[2]~1_combout\;
\v4|ALT_INV_m[1]~0_combout\ <= NOT \v4|m[1]~0_combout\;
\v3|ALT_INV_m[1]~0_combout\ <= NOT \v3|m[1]~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;

-- Location: IOOBUF_X50_Y0_N76
\prod[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u1|p\(0),
	devoe => ww_devoe,
	o => ww_prod(0));

-- Location: IOOBUF_X52_Y0_N36
\prod[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[1]~14_combout\,
	devoe => ww_devoe,
	o => ww_prod(1));

-- Location: IOOBUF_X50_Y0_N59
\prod[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[2]~0_combout\,
	devoe => ww_devoe,
	o => ww_prod(2));

-- Location: IOOBUF_X36_Y0_N19
\prod[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_prod(3));

-- Location: IOOBUF_X52_Y0_N19
\prod[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_prod(4));

-- Location: IOOBUF_X54_Y0_N53
\prod[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_prod(5));

-- Location: IOOBUF_X38_Y0_N19
\prod[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_prod(6));

-- Location: IOOBUF_X40_Y0_N53
\prod[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[7]~5_combout\,
	devoe => ww_devoe,
	o => ww_prod(7));

-- Location: IOOBUF_X52_Y0_N53
\prod[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[8]~6_combout\,
	devoe => ww_devoe,
	o => ww_prod(8));

-- Location: IOOBUF_X70_Y0_N36
\prod[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[9]~7_combout\,
	devoe => ww_devoe,
	o => ww_prod(9));

-- Location: IOOBUF_X66_Y0_N42
\prod[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[10]~8_combout\,
	devoe => ww_devoe,
	o => ww_prod(10));

-- Location: IOOBUF_X70_Y0_N19
\prod[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[11]~9_combout\,
	devoe => ww_devoe,
	o => ww_prod(11));

-- Location: IOOBUF_X74_Y0_N76
\prod[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[12]~10_combout\,
	devoe => ww_devoe,
	o => ww_prod(12));

-- Location: IOOBUF_X68_Y0_N36
\prod[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[13]~11_combout\,
	devoe => ww_devoe,
	o => ww_prod(13));

-- Location: IOOBUF_X68_Y0_N2
\prod[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[14]~12_combout\,
	devoe => ww_devoe,
	o => ww_prod(14));

-- Location: IOOBUF_X60_Y0_N53
\prod[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v7|m[15]~13_combout\,
	devoe => ww_devoe,
	o => ww_prod(15));

-- Location: IOOBUF_X66_Y0_N93
\prod[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_prod(16));

-- Location: IOOBUF_X68_Y0_N53
\prod[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_prod(17));

-- Location: IOOBUF_X62_Y0_N19
\prod[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_prod(18));

-- Location: IOOBUF_X64_Y0_N2
\prod[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_prod(19));

-- Location: IOOBUF_X62_Y0_N2
\prod[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_prod(20));

-- Location: IOOBUF_X50_Y0_N42
\prod[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_prod(21));

-- Location: IOOBUF_X66_Y0_N59
\prod[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_prod(22));

-- Location: IOOBUF_X64_Y0_N53
\prod[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_prod(23));

-- Location: IOOBUF_X60_Y0_N2
\prod[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[8]~15_combout\,
	devoe => ww_devoe,
	o => ww_prod(24));

-- Location: IOOBUF_X32_Y0_N19
\prod[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[9]~7_combout\,
	devoe => ww_devoe,
	o => ww_prod(25));

-- Location: IOOBUF_X56_Y0_N36
\prod[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[10]~8_combout\,
	devoe => ww_devoe,
	o => ww_prod(26));

-- Location: IOOBUF_X54_Y0_N36
\prod[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[11]~9_combout\,
	devoe => ww_devoe,
	o => ww_prod(27));

-- Location: IOOBUF_X40_Y0_N36
\prod[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[12]~10_combout\,
	devoe => ww_devoe,
	o => ww_prod(28));

-- Location: IOOBUF_X38_Y0_N2
\prod[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[13]~11_combout\,
	devoe => ww_devoe,
	o => ww_prod(29));

-- Location: IOOBUF_X62_Y0_N36
\prod[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[14]~12_combout\,
	devoe => ww_devoe,
	o => ww_prod(30));

-- Location: IOOBUF_X62_Y0_N53
\prod[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v6|m[15]~14_combout\,
	devoe => ww_devoe,
	o => ww_prod(31));

-- Location: IOIBUF_X58_Y0_N75
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X57_Y3_N0
\u1|u1|p[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(0) = (\b[0]~input_o\ & \a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[0]~input_o\,
	combout => \u1|u1|p\(0));

-- Location: IOIBUF_X38_Y0_N52
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X57_Y4_N42
\v7|m[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[1]~14_combout\ = ( \b[0]~input_o\ & ( !\a[1]~input_o\ $ (((!\a[0]~input_o\) # (!\b[1]~input_o\))) ) ) # ( !\b[0]~input_o\ & ( (\a[0]~input_o\ & \b[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \v7|m[1]~14_combout\);

-- Location: IOIBUF_X60_Y0_N35
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LABCELL_X57_Y4_N3
\v3|m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[1]~0_combout\ = !\a[1]~input_o\ $ (((!\a[0]~input_o\) # (!\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	combout => \v3|m[1]~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X57_Y4_N0
\v3|m[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[2]~1_combout\ = ( \a[2]~input_o\ & ( (!\a[15]~input_o\) # ((!\a[0]~input_o\ & !\a[1]~input_o\)) ) ) # ( !\a[2]~input_o\ & ( (\a[15]~input_o\ & ((\a[1]~input_o\) # (\a[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	dataf => \ALT_INV_a[2]~input_o\,
	combout => \v3|m[2]~1_combout\);

-- Location: IOIBUF_X64_Y0_N18
\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LABCELL_X63_Y4_N6
\v4|m[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[1]~0_combout\ = !\b[1]~input_o\ $ (((!\b[15]~input_o\) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110000001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \v4|m[1]~0_combout\);

-- Location: LABCELL_X56_Y3_N3
\u1|u3|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u0|u1|sum~combout\ = ( \v4|m[1]~0_combout\ & ( (!\b[0]~input_o\ & (\v3|m[1]~0_combout\)) # (\b[0]~input_o\ & (!\v3|m[2]~1_combout\ $ (((!\v3|m[1]~0_combout\) # (\a[0]~input_o\))))) ) ) # ( !\v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & 
-- \v3|m[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110110001001110011011000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datac => \v3|ALT_INV_m[2]~1_combout\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X56_Y3_N0
\v5|u0|u0|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u0|u1|co~0_combout\ = ( \v4|m[1]~0_combout\ & ( ((\b[0]~input_o\ & \v3|m[1]~0_combout\)) # (\a[0]~input_o\) ) ) # ( !\v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & ((\a[0]~input_o\) # (\v3|m[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \v5|u0|u0|u1|co~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LABCELL_X63_Y4_N33
\v4|m[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[2]~1_combout\ = !\b[2]~input_o\ $ (((!\b[15]~input_o\) # ((!\b[1]~input_o\ & !\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000111100000111100011110000011110001111000001111000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_b[2]~input_o\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \v4|m[2]~1_combout\);

-- Location: LABCELL_X63_Y4_N30
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = !\b[15]~input_o\ $ (!\a[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X56_Y3_N36
\v7|m[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[2]~0_combout\ = ( \comb~0_combout\ & ( !\u1|u3|u1|u0|u1|sum~combout\ $ (!\v5|u0|u0|u1|co~0_combout\ $ (((\a[0]~input_o\ & \v4|m[2]~1_combout\)))) ) ) # ( !\comb~0_combout\ & ( !\u1|u3|u1|u0|u1|sum~combout\ $ (((!\a[0]~input_o\) # 
-- (!\v4|m[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001011010011010010101101001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u0|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v5|u0|u0|u1|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[2]~1_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[2]~0_combout\);

-- Location: LABCELL_X56_Y3_N12
\u1|u5|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u0|u0|co~0_combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( (\v3|m[2]~1_combout\ & (\a[0]~input_o\ & \v4|m[2]~1_combout\)) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( (\a[0]~input_o\ & (\v3|m[1]~0_combout\ & 
-- \v4|m[2]~1_combout\)) ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~0_combout\ & ( (\v3|m[2]~1_combout\ & (\a[0]~input_o\ & \v4|m[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000110000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[2]~1_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u5|u1|u0|u0|co~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X57_Y4_N39
\v3|m[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[3]~2_combout\ = ( \a[0]~input_o\ & ( !\a[3]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[0]~input_o\ & ( !\a[3]~input_o\ $ (((!\a[15]~input_o\) # ((!\a[1]~input_o\ & !\a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v3|m[3]~2_combout\);

-- Location: LABCELL_X56_Y3_N18
\u1|u3|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u0|u2|sum~combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( !\v3|m[3]~2_combout\ $ (((!\v3|m[2]~1_combout\ & ((!\a[0]~input_o\) # (!\v3|m[1]~0_combout\))) # (\v3|m[2]~1_combout\ & ((\v3|m[1]~0_combout\))))) ) ) ) # ( !\b[0]~input_o\ & ( 
-- \v4|m[1]~0_combout\ & ( \v3|m[2]~1_combout\ ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~0_combout\ & ( \v3|m[3]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101101000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v3|ALT_INV_m[1]~0_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X56_Y3_N24
\u1|u4|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(1) = ( \v4|m[2]~1_combout\ & ( \v3|m[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[1]~0_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(1));

-- Location: LABCELL_X56_Y3_N30
\u1|u5|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u0|u1|sum~combout\ = ( \u1|u4|p\(1) & ( !\u1|u5|u1|u0|u0|co~0_combout\ $ (\u1|u3|u1|u0|u2|sum~combout\) ) ) # ( !\u1|u4|p\(1) & ( !\u1|u5|u1|u0|u0|co~0_combout\ $ (!\u1|u3|u1|u0|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \u1|u4|ALT_INV_p\(1),
	combout => \u1|u5|u1|u0|u1|sum~combout\);

-- Location: IOIBUF_X70_Y0_N1
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X63_Y4_N42
\v4|m[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[3]~2_combout\ = ( \b[2]~input_o\ & ( !\b[3]~input_o\ $ (!\b[15]~input_o\) ) ) # ( !\b[2]~input_o\ & ( !\b[3]~input_o\ $ (((!\b[15]~input_o\) # ((!\b[1]~input_o\ & !\b[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101111000000011110111100000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \v4|m[3]~2_combout\);

-- Location: LABCELL_X56_Y3_N33
\v5|u0|u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u0|u2|co~0_combout\ = ( \a[0]~input_o\ & ( (!\v5|u0|u0|u1|co~0_combout\ & (!\v4|m[2]~1_combout\ $ (\u1|u3|u1|u0|u1|sum~combout\))) ) ) # ( !\a[0]~input_o\ & ( (!\v5|u0|u0|u1|co~0_combout\ & !\u1|u3|u1|u0|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u0|u0|u1|ALT_INV_co~0_combout\,
	datac => \v4|ALT_INV_m[2]~1_combout\,
	datad => \u1|u3|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v5|u0|u0|u2|co~0_combout\);

-- Location: LABCELL_X57_Y4_N45
\v7|m[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[3]~1_combout\ = ( \comb~0_combout\ & ( !\u1|u5|u1|u0|u1|sum~combout\ $ (!\v5|u0|u0|u2|co~0_combout\ $ (((!\a[0]~input_o\) # (!\v4|m[3]~2_combout\)))) ) ) # ( !\comb~0_combout\ & ( !\u1|u5|u1|u0|u1|sum~combout\ $ (((!\a[0]~input_o\) # 
-- (!\v4|m[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001001101101100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \u1|u5|u1|u0|u1|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[3]~2_combout\,
	datad => \v5|u0|u0|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[3]~1_combout\);

-- Location: IOIBUF_X70_Y0_N52
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LABCELL_X63_Y4_N18
\v4|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[4]~3_combout\ = ( \b[4]~input_o\ & ( \b[2]~input_o\ & ( !\b[15]~input_o\ ) ) ) # ( !\b[4]~input_o\ & ( \b[2]~input_o\ & ( \b[15]~input_o\ ) ) ) # ( \b[4]~input_o\ & ( !\b[2]~input_o\ & ( (!\b[15]~input_o\) # ((!\b[0]~input_o\ & (!\b[1]~input_o\ & 
-- !\b[3]~input_o\))) ) ) ) # ( !\b[4]~input_o\ & ( !\b[2]~input_o\ & ( (\b[15]~input_o\ & (((\b[3]~input_o\) # (\b[1]~input_o\)) # (\b[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101111010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	datae => \ALT_INV_b[4]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \v4|m[4]~3_combout\);

-- Location: LABCELL_X57_Y4_N24
\u2|u1|p[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|p\(0) = (\a[0]~input_o\ & \v4|m[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u1|p\(0));

-- Location: LABCELL_X57_Y4_N30
\v5|u0|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u0|u3|co~0_combout\ = ( \v4|m[3]~2_combout\ & ( (\v5|u0|u0|u2|co~0_combout\ & (!\a[0]~input_o\ $ (\u1|u5|u1|u0|u1|sum~combout\))) ) ) # ( !\v4|m[3]~2_combout\ & ( (\v5|u0|u0|u2|co~0_combout\ & !\u1|u5|u1|u0|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v5|u0|u0|u2|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u1|u5|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \v5|u0|u0|u3|co~0_combout\);

-- Location: LABCELL_X56_Y3_N48
\u1|u6|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(1) = ( \v4|m[3]~2_combout\ & ( \v3|m[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[1]~0_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(1));

-- Location: LABCELL_X56_Y3_N27
\u1|u7|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u0|co~0_combout\ = ( \v4|m[3]~2_combout\ & ( (\a[0]~input_o\ & (!\u1|u4|p\(1) $ (!\u1|u5|u1|u0|u0|co~0_combout\ $ (\u1|u3|u1|u0|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000010010000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(1),
	datab => \u1|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u1|u3|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u7|u1|u0|u0|co~0_combout\);

-- Location: LABCELL_X56_Y3_N6
\u1|u3|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u0|u2|co~combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( (!\v3|m[2]~1_combout\ & (\a[0]~input_o\ & (\v3|m[3]~2_combout\ & \v3|m[1]~0_combout\))) # (\v3|m[2]~1_combout\ & (((\v3|m[1]~0_combout\) # (\v3|m[3]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v3|ALT_INV_m[1]~0_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u0|u2|co~combout\);

-- Location: IOIBUF_X34_Y0_N41
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LABCELL_X57_Y4_N18
\v3|m[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[4]~3_combout\ = ( \a[15]~input_o\ & ( \a[4]~input_o\ & ( (!\a[0]~input_o\ & (!\a[2]~input_o\ & (!\a[1]~input_o\ & !\a[3]~input_o\))) ) ) ) # ( !\a[15]~input_o\ & ( \a[4]~input_o\ ) ) # ( \a[15]~input_o\ & ( !\a[4]~input_o\ & ( (((\a[3]~input_o\) # 
-- (\a[1]~input_o\)) # (\a[2]~input_o\)) # (\a[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111111111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	datae => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[4]~input_o\,
	combout => \v3|m[4]~3_combout\);

-- Location: LABCELL_X56_Y3_N42
\u1|u3|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u0|u3|sum~0_combout\ = ( \v4|m[1]~0_combout\ & ( !\v3|m[3]~2_combout\ $ (((!\v3|m[4]~3_combout\) # (!\b[0]~input_o\))) ) ) # ( !\v4|m[1]~0_combout\ & ( (\v3|m[4]~3_combout\ & \b[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u0|u3|sum~0_combout\);

-- Location: LABCELL_X56_Y3_N45
\u1|u4|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(2) = ( \v4|m[2]~1_combout\ & ( \v3|m[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(2));

-- Location: LABCELL_X57_Y3_N36
\u1|u5|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u0|u2|sum~combout\ = ( \u1|u3|u1|u0|u3|sum~0_combout\ & ( \u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ $ (((!\u1|u5|u1|u0|u0|co~0_combout\ & ((!\u1|u4|p\(1)) # (!\u1|u3|u1|u0|u2|sum~combout\))) # (\u1|u5|u1|u0|u0|co~0_combout\ & (!\u1|u4|p\(1) 
-- & !\u1|u3|u1|u0|u2|sum~combout\)))) ) ) ) # ( !\u1|u3|u1|u0|u3|sum~0_combout\ & ( \u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ $ (((!\u1|u5|u1|u0|u0|co~0_combout\ & (\u1|u4|p\(1) & \u1|u3|u1|u0|u2|sum~combout\)) # (\u1|u5|u1|u0|u0|co~0_combout\ & 
-- ((\u1|u3|u1|u0|u2|sum~combout\) # (\u1|u4|p\(1)))))) ) ) ) # ( \u1|u3|u1|u0|u3|sum~0_combout\ & ( !\u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ $ (((!\u1|u5|u1|u0|u0|co~0_combout\ & (\u1|u4|p\(1) & \u1|u3|u1|u0|u2|sum~combout\)) # 
-- (\u1|u5|u1|u0|u0|co~0_combout\ & ((\u1|u3|u1|u0|u2|sum~combout\) # (\u1|u4|p\(1)))))) ) ) ) # ( !\u1|u3|u1|u0|u3|sum~0_combout\ & ( !\u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ $ (((!\u1|u5|u1|u0|u0|co~0_combout\ & ((!\u1|u4|p\(1)) # 
-- (!\u1|u3|u1|u0|u2|sum~combout\))) # (\u1|u5|u1|u0|u0|co~0_combout\ & (!\u1|u4|p\(1) & !\u1|u3|u1|u0|u2|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011111100001100001110001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	datab => \u1|u4|ALT_INV_p\(1),
	datac => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datae => \u1|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	dataf => \u1|u4|ALT_INV_p\(2),
	combout => \u1|u5|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X56_Y4_N3
\u1|u7|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u1|sum~combout\ = ( \u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u6|p\(1) $ (\u1|u7|u1|u0|u0|co~0_combout\) ) ) # ( !\u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u6|p\(1) $ (!\u1|u7|u1|u0|u0|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u6|ALT_INV_p\(1),
	datad => \u1|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \u1|u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X57_Y4_N33
\v7|m[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[4]~2_combout\ = ( \comb~0_combout\ & ( !\u2|u1|p\(0) $ (!\v5|u0|u0|u3|co~0_combout\ $ (!\u1|u7|u1|u0|u1|sum~combout\)) ) ) # ( !\comb~0_combout\ & ( !\u2|u1|p\(0) $ (!\u1|u7|u1|u0|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|ALT_INV_p\(0),
	datac => \v5|u0|u0|u3|ALT_INV_co~0_combout\,
	datad => \u1|u7|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[4]~2_combout\);

-- Location: LABCELL_X56_Y3_N54
\u1|u5|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u0|u2|co~combout\ = ( \u1|u4|p\(2) & ( \u1|u3|u1|u0|u2|co~combout\ & ( (!\u1|u3|u1|u0|u3|sum~0_combout\) # ((!\u1|u4|p\(1) & (\u1|u3|u1|u0|u2|sum~combout\ & \u1|u5|u1|u0|u0|co~0_combout\)) # (\u1|u4|p\(1) & ((\u1|u5|u1|u0|u0|co~0_combout\) # 
-- (\u1|u3|u1|u0|u2|sum~combout\)))) ) ) ) # ( !\u1|u4|p\(2) & ( \u1|u3|u1|u0|u2|co~combout\ & ( (!\u1|u3|u1|u0|u3|sum~0_combout\ & ((!\u1|u4|p\(1) & (\u1|u3|u1|u0|u2|sum~combout\ & \u1|u5|u1|u0|u0|co~0_combout\)) # (\u1|u4|p\(1) & 
-- ((\u1|u5|u1|u0|u0|co~0_combout\) # (\u1|u3|u1|u0|u2|sum~combout\))))) ) ) ) # ( \u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ & ( ((!\u1|u4|p\(1) & (\u1|u3|u1|u0|u2|sum~combout\ & \u1|u5|u1|u0|u0|co~0_combout\)) # (\u1|u4|p\(1) & 
-- ((\u1|u5|u1|u0|u0|co~0_combout\) # (\u1|u3|u1|u0|u2|sum~combout\)))) # (\u1|u3|u1|u0|u3|sum~0_combout\) ) ) ) # ( !\u1|u4|p\(2) & ( !\u1|u3|u1|u0|u2|co~combout\ & ( (\u1|u3|u1|u0|u3|sum~0_combout\ & ((!\u1|u4|p\(1) & (\u1|u3|u1|u0|u2|sum~combout\ & 
-- \u1|u5|u1|u0|u0|co~0_combout\)) # (\u1|u4|p\(1) & ((\u1|u5|u1|u0|u0|co~0_combout\) # (\u1|u3|u1|u0|u2|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100000100010011001100110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(1),
	datab => \u1|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datac => \u1|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	datae => \u1|u4|ALT_INV_p\(2),
	dataf => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u1|u5|u1|u0|u2|co~combout\);

-- Location: LABCELL_X56_Y3_N39
\u1|u6|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(2) = ( \v4|m[3]~2_combout\ & ( \v3|m[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(2));

-- Location: LABCELL_X57_Y3_N3
\u1|u1|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(4) = ( \v3|m[4]~3_combout\ & ( \b[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	dataf => \v3|ALT_INV_m[4]~3_combout\,
	combout => \u1|u1|p\(4));

-- Location: LABCELL_X57_Y3_N12
\u1|u2|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(3) = ( \v4|m[1]~0_combout\ & ( \v3|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u2|p\(3));

-- Location: LABCELL_X57_Y3_N57
\u1|u4|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(3) = ( \v4|m[2]~1_combout\ & ( \v3|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(3));

-- Location: IOIBUF_X58_Y0_N58
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LABCELL_X57_Y4_N36
\v1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u1|u0|co~0_combout\ = ( !\a[0]~input_o\ & ( (!\a[1]~input_o\ & (!\a[2]~input_o\ & (!\a[4]~input_o\ & !\a[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_a[3]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \v1|u1|u0|co~0_combout\);

-- Location: LABCELL_X57_Y3_N48
\u1|u3|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u0|sum~0_combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( !\a[5]~input_o\ $ (!\v3|m[4]~3_combout\ $ (((!\v1|u1|u0|co~0_combout\ & \a[15]~input_o\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( \v3|m[4]~3_combout\ ) ) ) # ( 
-- \b[0]~input_o\ & ( !\v4|m[1]~0_combout\ & ( !\a[5]~input_o\ $ (((!\a[15]~input_o\) # (\v1|u1|u0|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010010100110011001100110110011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v1|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y3_N54
\u1|u5|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u0|u3|sum~0_combout\ = ( \u1|u3|u1|u1|u0|sum~0_combout\ & ( !\u1|u4|p\(3) $ (((!\u1|u1|p\(4) & (\u1|u2|p\(3) & \u1|u3|u1|u0|u2|co~combout\)) # (\u1|u1|p\(4) & ((\u1|u3|u1|u0|u2|co~combout\) # (\u1|u2|p\(3)))))) ) ) # ( 
-- !\u1|u3|u1|u1|u0|sum~0_combout\ & ( !\u1|u4|p\(3) $ (((!\u1|u1|p\(4) & ((!\u1|u2|p\(3)) # (!\u1|u3|u1|u0|u2|co~combout\))) # (\u1|u1|p\(4) & (!\u1|u2|p\(3) & !\u1|u3|u1|u0|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_p\(4),
	datab => \u1|u2|ALT_INV_p\(3),
	datac => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u1|u4|ALT_INV_p\(3),
	dataf => \u1|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u1|u5|u1|u0|u3|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N6
\u1|u7|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u2|sum~combout\ = ( \u1|u7|u1|u0|u0|co~0_combout\ & ( \u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u6|p\(2) $ (!\u1|u5|u1|u0|u3|sum~0_combout\)) ) ) ) # ( !\u1|u7|u1|u0|u0|co~0_combout\ & ( 
-- \u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u6|p\(1) $ (!\u1|u6|p\(2) $ (!\u1|u5|u1|u0|u3|sum~0_combout\))) ) ) ) # ( \u1|u7|u1|u0|u0|co~0_combout\ & ( !\u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u5|u1|u0|u2|co~combout\ $ 
-- (!\u1|u6|p\(1) $ (!\u1|u6|p\(2) $ (!\u1|u5|u1|u0|u3|sum~0_combout\))) ) ) ) # ( !\u1|u7|u1|u0|u0|co~0_combout\ & ( !\u1|u5|u1|u0|u2|sum~combout\ & ( !\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u6|p\(2) $ (\u1|u5|u1|u0|u3|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001101001100101101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u1|u6|ALT_INV_p\(1),
	datac => \u1|u6|ALT_INV_p\(2),
	datad => \u1|u5|u1|u0|u3|ALT_INV_sum~0_combout\,
	datae => \u1|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \u1|u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X63_Y4_N45
\v2|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|u1|u0|co~0_combout\ = ( !\b[2]~input_o\ & ( (!\b[1]~input_o\ & (!\b[0]~input_o\ & (!\b[4]~input_o\ & !\b[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[1]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datad => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[2]~input_o\,
	combout => \v2|u1|u0|co~0_combout\);

-- Location: IOIBUF_X68_Y0_N18
\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LABCELL_X62_Y4_N3
\v4|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[5]~4_combout\ = ( \b[5]~input_o\ & ( (!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\) ) ) # ( !\b[5]~input_o\ & ( (!\v2|u1|u0|co~0_combout\ & \b[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v2|u1|u0|ALT_INV_co~0_combout\,
	datab => \ALT_INV_b[15]~input_o\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \v4|m[5]~4_combout\);

-- Location: LABCELL_X57_Y4_N27
\u2|u3|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u0|sum~0_combout\ = (!\a[0]~input_o\ & (\v4|m[4]~3_combout\ & ((\v3|m[1]~0_combout\)))) # (\a[0]~input_o\ & (!\v4|m[5]~4_combout\ $ (((!\v4|m[4]~3_combout\) # (!\v3|m[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000001010011011000000101001101100000010100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \v4|ALT_INV_m[4]~3_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[1]~0_combout\,
	combout => \u2|u3|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N6
\v7|m[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[5]~3_combout\ = ( \u2|u3|u1|u0|u0|sum~0_combout\ & ( \comb~0_combout\ & ( !\u1|u7|u1|u0|u2|sum~combout\ $ (((!\u1|u7|u1|u0|u1|sum~combout\ & ((!\v5|u0|u0|u3|co~0_combout\) # (\u2|u1|p\(0)))) # (\u1|u7|u1|u0|u1|sum~combout\ & ((!\u2|u1|p\(0)) # 
-- (\v5|u0|u0|u3|co~0_combout\))))) ) ) ) # ( !\u2|u3|u1|u0|u0|sum~0_combout\ & ( \comb~0_combout\ & ( !\u1|u7|u1|u0|u2|sum~combout\ $ (((!\u1|u7|u1|u0|u1|sum~combout\ & (!\u2|u1|p\(0) & \v5|u0|u0|u3|co~0_combout\)) # (\u1|u7|u1|u0|u1|sum~combout\ & 
-- (\u2|u1|p\(0) & !\v5|u0|u0|u3|co~0_combout\)))) ) ) ) # ( \u2|u3|u1|u0|u0|sum~0_combout\ & ( !\comb~0_combout\ & ( !\u1|u7|u1|u0|u2|sum~combout\ $ (((\u1|u7|u1|u0|u1|sum~combout\ & \u2|u1|p\(0)))) ) ) ) # ( !\u2|u3|u1|u0|u0|sum~0_combout\ & ( 
-- !\comb~0_combout\ & ( !\u1|u7|u1|u0|u2|sum~combout\ $ (((!\u1|u7|u1|u0|u1|sum~combout\) # (!\u2|u1|p\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110101010011010100110101001011010100101011010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datac => \u2|u1|ALT_INV_p\(0),
	datad => \v5|u0|u0|u3|ALT_INV_co~0_combout\,
	datae => \u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[5]~3_combout\);

-- Location: IOIBUF_X76_Y0_N1
\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LABCELL_X63_Y4_N36
\u2|u4|p[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|p\(0) = ( \b[5]~input_o\ & ( (\a[0]~input_o\ & (!\b[15]~input_o\ $ (!\b[6]~input_o\))) ) ) # ( !\b[5]~input_o\ & ( (\a[0]~input_o\ & (!\b[6]~input_o\ $ (((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001011000001000000101100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \v2|u1|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \u2|u4|p\(0));

-- Location: LABCELL_X63_Y4_N3
\u2|u1|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|p\(2) = ( \v4|m[4]~3_combout\ & ( \v3|m[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u1|p\(2));

-- Location: LABCELL_X63_Y4_N39
\u2|u2|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|p\(1) = ( \b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & ((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))) ) ) # ( !\b[5]~input_o\ & ( (\b[15]~input_o\ & (!\v2|u1|u0|co~0_combout\ & \v3|m[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \v2|u1|u0|ALT_INV_co~0_combout\,
	datad => \v3|ALT_INV_m[1]~0_combout\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \u2|u2|p\(1));

-- Location: LABCELL_X63_Y4_N24
\u2|u3|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u0|co~0_combout\ = ( \b[15]~input_o\ & ( \b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & (\v2|u1|u0|co~0_combout\ & (\a[0]~input_o\ & \v4|m[4]~3_combout\))) ) ) ) # ( !\b[15]~input_o\ & ( \b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & (\a[0]~input_o\ & 
-- \v4|m[4]~3_combout\)) ) ) ) # ( \b[15]~input_o\ & ( !\b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & (!\v2|u1|u0|co~0_combout\ & (\a[0]~input_o\ & \v4|m[4]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000001010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[1]~0_combout\,
	datab => \v2|u1|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \ALT_INV_b[15]~input_o\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \u2|u3|u1|u0|u0|co~0_combout\);

-- Location: LABCELL_X64_Y4_N30
\u2|u5|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u0|u0|sum~0_combout\ = ( \u2|u3|u1|u0|u0|co~0_combout\ & ( !\u2|u4|p\(0) $ (!\u2|u1|p\(2) $ (!\u2|u2|p\(1))) ) ) # ( !\u2|u3|u1|u0|u0|co~0_combout\ & ( !\u2|u4|p\(0) $ (!\u2|u1|p\(2) $ (\u2|u2|p\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|ALT_INV_p\(0),
	datab => \u2|u1|ALT_INV_p\(2),
	datac => \u2|u2|ALT_INV_p\(1),
	dataf => \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u2|u5|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y3_N30
\u1|u1|p[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(5) = (\b[0]~input_o\ & (!\a[5]~input_o\ $ (((!\a[15]~input_o\) # (\v1|u1|u0|co~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100101000000000110010100000000011001010000000001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datac => \v1|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[0]~input_o\,
	combout => \u1|u1|p\(5));

-- Location: LABCELL_X57_Y3_N33
\u1|u2|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(4) = ( \v4|m[1]~0_combout\ & ( \v3|m[4]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u2|p\(4));

-- Location: IOIBUF_X58_Y0_N92
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LABCELL_X57_Y3_N6
\u1|u3|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u1|sum~0_combout\ = ( \b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( !\a[6]~input_o\ $ (((!\a[5]~input_o\) # ((\v1|u1|u0|co~0_combout\ & \a[15]~input_o\)))) ) ) ) # ( !\b[0]~input_o\ & ( \v4|m[1]~0_combout\ & ( !\a[5]~input_o\ $ 
-- (((!\a[15]~input_o\) # (\v1|u1|u0|co~0_combout\))) ) ) ) # ( \b[0]~input_o\ & ( !\v4|m[1]~0_combout\ & ( !\a[6]~input_o\ $ (((!\a[15]~input_o\) # ((!\a[5]~input_o\ & \v1|u1|u0|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111100011001010101101001010110011001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \v1|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[15]~input_o\,
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u1|sum~0_combout\);

-- Location: LABCELL_X57_Y3_N42
\u1|u3|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u1|sum~combout\ = ( \u1|u3|u1|u0|u2|co~combout\ & ( \u1|u2|p\(3) & ( !\u1|u3|u1|u1|u1|sum~0_combout\ $ (((!\u1|u1|p\(5) & !\u1|u2|p\(4)))) ) ) ) # ( !\u1|u3|u1|u0|u2|co~combout\ & ( \u1|u2|p\(3) & ( !\u1|u3|u1|u1|u1|sum~0_combout\ $ 
-- (((!\u1|u1|p\(4) & ((!\u1|u1|p\(5)) # (!\u1|u2|p\(4)))) # (\u1|u1|p\(4) & (!\u1|u1|p\(5) & !\u1|u2|p\(4))))) ) ) ) # ( \u1|u3|u1|u0|u2|co~combout\ & ( !\u1|u2|p\(3) & ( !\u1|u3|u1|u1|u1|sum~0_combout\ $ (((!\u1|u1|p\(4) & ((!\u1|u1|p\(5)) # 
-- (!\u1|u2|p\(4)))) # (\u1|u1|p\(4) & (!\u1|u1|p\(5) & !\u1|u2|p\(4))))) ) ) ) # ( !\u1|u3|u1|u0|u2|co~combout\ & ( !\u1|u2|p\(3) & ( !\u1|u3|u1|u1|u1|sum~0_combout\ $ (((!\u1|u1|p\(5)) # (!\u1|u2|p\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000101111110100000010111111010000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_p\(4),
	datab => \u1|u1|ALT_INV_p\(5),
	datac => \u1|u2|ALT_INV_p\(4),
	datad => \u1|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	datae => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u2|ALT_INV_p\(3),
	combout => \u1|u3|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X56_Y3_N51
\u1|u4|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(4) = ( \v3|m[4]~3_combout\ & ( \v4|m[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m[2]~1_combout\,
	dataf => \v3|ALT_INV_m[4]~3_combout\,
	combout => \u1|u4|p\(4));

-- Location: LABCELL_X57_Y3_N15
\u1|u3|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u0|sum~combout\ = ( \u1|u3|u1|u1|u0|sum~0_combout\ & ( (!\u1|u1|p\(4) & ((!\u1|u2|p\(3)) # (!\u1|u3|u1|u0|u2|co~combout\))) # (\u1|u1|p\(4) & (!\u1|u2|p\(3) & !\u1|u3|u1|u0|u2|co~combout\)) ) ) # ( !\u1|u3|u1|u1|u0|sum~0_combout\ & ( 
-- (!\u1|u1|p\(4) & (\u1|u2|p\(3) & \u1|u3|u1|u0|u2|co~combout\)) # (\u1|u1|p\(4) & ((\u1|u3|u1|u0|u2|co~combout\) # (\u1|u2|p\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111111111010101000001111101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_p\(4),
	datac => \u1|u2|ALT_INV_p\(3),
	datad => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u1|u3|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X60_Y4_N30
\u1|u6|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(3) = ( \v4|m[3]~2_combout\ & ( \v3|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(3));

-- Location: LABCELL_X56_Y4_N54
\u1|u7|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u3|sum~0_combout\ = ( \u1|u5|u1|u0|u2|co~combout\ & ( \u1|u6|p\(3) & ( !\u1|u3|u1|u1|u1|sum~combout\ $ (!\u1|u4|p\(4) $ (((!\u1|u4|p\(3) & !\u1|u3|u1|u1|u0|sum~combout\)))) ) ) ) # ( !\u1|u5|u1|u0|u2|co~combout\ & ( \u1|u6|p\(3) & ( 
-- !\u1|u3|u1|u1|u1|sum~combout\ $ (!\u1|u4|p\(4) $ (((!\u1|u4|p\(3)) # (!\u1|u3|u1|u1|u0|sum~combout\)))) ) ) ) # ( \u1|u5|u1|u0|u2|co~combout\ & ( !\u1|u6|p\(3) & ( !\u1|u3|u1|u1|u1|sum~combout\ $ (!\u1|u4|p\(4) $ (((\u1|u3|u1|u1|u0|sum~combout\) # 
-- (\u1|u4|p\(3))))) ) ) ) # ( !\u1|u5|u1|u0|u2|co~combout\ & ( !\u1|u6|p\(3) & ( !\u1|u3|u1|u1|u1|sum~combout\ $ (!\u1|u4|p\(4) $ (((\u1|u4|p\(3) & \u1|u3|u1|u1|u0|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100110011001100101101001011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u1|u4|ALT_INV_p\(4),
	datac => \u1|u4|ALT_INV_p\(3),
	datad => \u1|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u1|u5|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u6|ALT_INV_p\(3),
	combout => \u1|u7|u1|u0|u3|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N48
\u1|u7|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u2|co~combout\ = ( \u1|u7|u1|u0|u0|co~0_combout\ & ( \u1|u5|u1|u0|u2|sum~combout\ & ( (!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\)) # (\u1|u6|p\(2)) ) ) ) # ( !\u1|u7|u1|u0|u0|co~0_combout\ & ( 
-- \u1|u5|u1|u0|u2|sum~combout\ & ( (!\u1|u6|p\(1) & (\u1|u6|p\(2) & (!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\)))) # (\u1|u6|p\(1) & ((!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\)) # (\u1|u6|p\(2)))) ) ) ) # ( 
-- \u1|u7|u1|u0|u0|co~0_combout\ & ( !\u1|u5|u1|u0|u2|sum~combout\ & ( (!\u1|u6|p\(1) & (\u1|u6|p\(2) & (!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\)))) # (\u1|u6|p\(1) & ((!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\)) 
-- # (\u1|u6|p\(2)))) ) ) ) # ( !\u1|u7|u1|u0|u0|co~0_combout\ & ( !\u1|u5|u1|u0|u2|sum~combout\ & ( (\u1|u6|p\(2) & (!\u1|u5|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u0|u3|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000101110010101100010111001010110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u1|u6|ALT_INV_p\(1),
	datac => \u1|u6|ALT_INV_p\(2),
	datad => \u1|u5|u1|u0|u3|ALT_INV_sum~0_combout\,
	datae => \u1|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \u1|u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u0|u2|co~combout\);

-- Location: LABCELL_X56_Y4_N42
\u1|u7|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u0|u3|sum~combout\ = ( \u1|u7|u1|u0|u2|co~combout\ & ( !\u1|u7|u1|u0|u3|sum~0_combout\ ) ) # ( !\u1|u7|u1|u0|u2|co~combout\ & ( \u1|u7|u1|u0|u3|sum~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u7|u1|u0|u3|ALT_INV_sum~0_combout\,
	dataf => \u1|u7|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X56_Y4_N0
\u5|u0|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u1|u0|co~0_combout\ = ( \u2|u1|p\(0) & ( !\u1|u5|u1|u0|u2|sum~combout\ $ (!\u1|u6|p\(1) $ (\u1|u7|u1|u0|u0|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \u1|u6|ALT_INV_p\(1),
	datad => \u1|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \u2|u1|ALT_INV_p\(0),
	combout => \u5|u0|u1|u0|co~0_combout\);

-- Location: LABCELL_X56_Y4_N45
\u5|u0|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u1|u1|co~combout\ = ( \u2|u3|u1|u0|u0|sum~0_combout\ & ( (\u1|u7|u1|u0|u2|sum~combout\) # (\u5|u0|u1|u0|co~0_combout\) ) ) # ( !\u2|u3|u1|u0|u0|sum~0_combout\ & ( (\u5|u0|u1|u0|co~0_combout\ & \u1|u7|u1|u0|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u1|u0|ALT_INV_co~0_combout\,
	datac => \u1|u7|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \u5|u0|u1|u1|co~combout\);

-- Location: LABCELL_X56_Y4_N30
\v5|u0|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u1|u1|co~0_combout\ = ( \u2|u3|u1|u0|u0|sum~0_combout\ & ( (\v5|u0|u0|u3|co~0_combout\ & ((!\u2|u1|p\(0) & (!\u1|u7|u1|u0|u1|sum~combout\ & \u1|u7|u1|u0|u2|sum~combout\)) # (\u2|u1|p\(0) & (\u1|u7|u1|u0|u1|sum~combout\ & 
-- !\u1|u7|u1|u0|u2|sum~combout\)))) ) ) # ( !\u2|u3|u1|u0|u0|sum~0_combout\ & ( (\v5|u0|u0|u3|co~0_combout\ & ((!\u2|u1|p\(0) & (!\u1|u7|u1|u0|u1|sum~combout\ & !\u1|u7|u1|u0|u2|sum~combout\)) # (\u2|u1|p\(0) & (\u1|u7|u1|u0|u1|sum~combout\ & 
-- \u1|u7|u1|u0|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000001010000000000000100000001010000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u0|u0|u3|ALT_INV_co~0_combout\,
	datab => \u2|u1|ALT_INV_p\(0),
	datac => \u1|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \v5|u0|u1|u1|co~0_combout\);

-- Location: LABCELL_X60_Y4_N39
\v7|m[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[6]~4_combout\ = ( \comb~0_combout\ & ( !\u2|u5|u1|u0|u0|sum~0_combout\ $ (!\u1|u7|u1|u0|u3|sum~combout\ $ (!\u5|u0|u1|u1|co~combout\ $ (\v5|u0|u1|u1|co~0_combout\))) ) ) # ( !\comb~0_combout\ & ( !\u2|u5|u1|u0|u0|sum~0_combout\ $ 
-- (!\u1|u7|u1|u0|u3|sum~combout\ $ (\u5|u0|u1|u1|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	datab => \u1|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datac => \u5|u0|u1|u1|ALT_INV_co~combout\,
	datad => \v5|u0|u1|u1|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[6]~4_combout\);

-- Location: LABCELL_X60_Y4_N36
\v5|u0|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u1|u2|co~0_combout\ = ( \u5|u0|u1|u1|co~combout\ & ( (\v5|u0|u1|u1|co~0_combout\ & (!\u2|u5|u1|u0|u0|sum~0_combout\ $ (!\u1|u7|u1|u0|u3|sum~combout\))) ) ) # ( !\u5|u0|u1|u1|co~combout\ & ( (\v5|u0|u1|u1|co~0_combout\ & 
-- (!\u2|u5|u1|u0|u0|sum~0_combout\ $ (\u1|u7|u1|u0|u3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010011001000000001001100100000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	datab => \u1|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \v5|u0|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u5|u0|u1|u1|ALT_INV_co~combout\,
	combout => \v5|u0|u1|u2|co~0_combout\);

-- Location: LABCELL_X56_Y4_N36
\u5|u0|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u1|u2|co~combout\ = ( \u1|u7|u1|u0|u3|sum~0_combout\ & ( \u2|u5|u1|u0|u0|sum~0_combout\ & ( (!\u1|u7|u1|u0|u2|co~combout\) # ((!\u1|u7|u1|u0|u2|sum~combout\ & (\u5|u0|u1|u0|co~0_combout\ & \u2|u3|u1|u0|u0|sum~0_combout\)) # 
-- (\u1|u7|u1|u0|u2|sum~combout\ & ((\u2|u3|u1|u0|u0|sum~0_combout\) # (\u5|u0|u1|u0|co~0_combout\)))) ) ) ) # ( !\u1|u7|u1|u0|u3|sum~0_combout\ & ( \u2|u5|u1|u0|u0|sum~0_combout\ & ( ((!\u1|u7|u1|u0|u2|sum~combout\ & (\u5|u0|u1|u0|co~0_combout\ & 
-- \u2|u3|u1|u0|u0|sum~0_combout\)) # (\u1|u7|u1|u0|u2|sum~combout\ & ((\u2|u3|u1|u0|u0|sum~0_combout\) # (\u5|u0|u1|u0|co~0_combout\)))) # (\u1|u7|u1|u0|u2|co~combout\) ) ) ) # ( \u1|u7|u1|u0|u3|sum~0_combout\ & ( !\u2|u5|u1|u0|u0|sum~0_combout\ & ( 
-- (!\u1|u7|u1|u0|u2|co~combout\ & ((!\u1|u7|u1|u0|u2|sum~combout\ & (\u5|u0|u1|u0|co~0_combout\ & \u2|u3|u1|u0|u0|sum~0_combout\)) # (\u1|u7|u1|u0|u2|sum~combout\ & ((\u2|u3|u1|u0|u0|sum~0_combout\) # (\u5|u0|u1|u0|co~0_combout\))))) ) ) ) # ( 
-- !\u1|u7|u1|u0|u3|sum~0_combout\ & ( !\u2|u5|u1|u0|u0|sum~0_combout\ & ( (\u1|u7|u1|u0|u2|co~combout\ & ((!\u1|u7|u1|u0|u2|sum~combout\ & (\u5|u0|u1|u0|co~0_combout\ & \u2|u3|u1|u0|u0|sum~0_combout\)) # (\u1|u7|u1|u0|u2|sum~combout\ & 
-- ((\u2|u3|u1|u0|u0|sum~0_combout\) # (\u5|u0|u1|u0|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000100010101001010111011111111010101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u1|u7|u1|u0|u2|ALT_INV_sum~combout\,
	datac => \u5|u0|u1|u0|ALT_INV_co~0_combout\,
	datad => \u2|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	datae => \u1|u7|u1|u0|u3|ALT_INV_sum~0_combout\,
	dataf => \u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \u5|u0|u1|u2|co~combout\);

-- Location: LABCELL_X56_Y4_N12
\u1|u5|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u0|co~combout\ = ( \u1|u3|u1|u1|u1|sum~combout\ & ( ((!\u1|u4|p\(3) & (\u1|u3|u1|u1|u0|sum~combout\ & \u1|u5|u1|u0|u2|co~combout\)) # (\u1|u4|p\(3) & ((\u1|u5|u1|u0|u2|co~combout\) # (\u1|u3|u1|u1|u0|sum~combout\)))) # (\u1|u4|p\(4)) ) ) # ( 
-- !\u1|u3|u1|u1|u1|sum~combout\ & ( (\u1|u4|p\(4) & ((!\u1|u4|p\(3) & (\u1|u3|u1|u1|u0|sum~combout\ & \u1|u5|u1|u0|u2|co~combout\)) # (\u1|u4|p\(3) & ((\u1|u5|u1|u0|u2|co~combout\) # (\u1|u3|u1|u1|u0|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(3),
	datab => \u1|u4|ALT_INV_p\(4),
	datac => \u1|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u1|u5|u1|u1|u0|co~combout\);

-- Location: LABCELL_X56_Y4_N33
\u1|u6|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(4) = ( \v4|m[3]~2_combout\ & ( \v3|m[4]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(4));

-- Location: IOIBUF_X36_Y0_N1
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: MLABCELL_X59_Y4_N0
\v3|m[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[7]~6_combout\ = ( \a[15]~input_o\ & ( !\a[7]~input_o\ $ (((\v1|u1|u0|co~0_combout\ & (!\a[5]~input_o\ & !\a[6]~input_o\)))) ) ) # ( !\a[15]~input_o\ & ( \a[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110011100110011001001110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u1|u0|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[5]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m[7]~6_combout\);

-- Location: LABCELL_X57_Y3_N18
\v3|m[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[6]~5_combout\ = ( \v1|u1|u0|co~0_combout\ & ( !\a[6]~input_o\ $ (((!\a[5]~input_o\) # (!\a[15]~input_o\))) ) ) # ( !\v1|u1|u0|co~0_combout\ & ( !\a[15]~input_o\ $ (!\a[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[6]~input_o\,
	dataf => \v1|u1|u0|ALT_INV_co~0_combout\,
	combout => \v3|m[6]~5_combout\);

-- Location: LABCELL_X61_Y4_N33
\u1|u3|u1|u1|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u2|sum~0_combout\ = ( \v4|m[1]~0_combout\ & ( !\v3|m[6]~5_combout\ $ (((!\b[0]~input_o\) # (!\v3|m[7]~6_combout\))) ) ) # ( !\v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & \v3|m[7]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u2|sum~0_combout\);

-- Location: LABCELL_X57_Y3_N21
\v3|m[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[5]~4_combout\ = ( \v1|u1|u0|co~0_combout\ & ( \a[5]~input_o\ ) ) # ( !\v1|u1|u0|co~0_combout\ & ( !\a[5]~input_o\ $ (!\a[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	dataf => \v1|u1|u0|ALT_INV_co~0_combout\,
	combout => \v3|m[5]~4_combout\);

-- Location: LABCELL_X61_Y4_N39
\u1|u4|p[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(5) = ( \v4|m[2]~1_combout\ & ( \v3|m[5]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(5));

-- Location: LABCELL_X57_Y3_N24
\u1|u3|u1|u1|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u1|co~1_combout\ = ( \u1|u3|u1|u0|u2|co~combout\ & ( \u1|u2|p\(3) & ( (\u1|u3|u1|u1|u1|sum~0_combout\ & ((\u1|u2|p\(4)) # (\u1|u1|p\(5)))) ) ) ) # ( !\u1|u3|u1|u0|u2|co~combout\ & ( \u1|u2|p\(3) & ( (\u1|u3|u1|u1|u1|sum~0_combout\ & 
-- ((!\u1|u1|p\(4) & (\u1|u1|p\(5) & \u1|u2|p\(4))) # (\u1|u1|p\(4) & ((\u1|u2|p\(4)) # (\u1|u1|p\(5)))))) ) ) ) # ( \u1|u3|u1|u0|u2|co~combout\ & ( !\u1|u2|p\(3) & ( (\u1|u3|u1|u1|u1|sum~0_combout\ & ((!\u1|u1|p\(4) & (\u1|u1|p\(5) & \u1|u2|p\(4))) # 
-- (\u1|u1|p\(4) & ((\u1|u2|p\(4)) # (\u1|u1|p\(5)))))) ) ) ) # ( !\u1|u3|u1|u0|u2|co~combout\ & ( !\u1|u2|p\(3) & ( (\u1|u1|p\(5) & (\u1|u2|p\(4) & \u1|u3|u1|u1|u1|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000001011100000000000101110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_p\(4),
	datab => \u1|u1|ALT_INV_p\(5),
	datac => \u1|u2|ALT_INV_p\(4),
	datad => \u1|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	datae => \u1|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u2|ALT_INV_p\(3),
	combout => \u1|u3|u1|u1|u1|co~1_combout\);

-- Location: LABCELL_X61_Y4_N30
\u1|u3|u1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u1|co~0_combout\ = ( \v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & (\v3|m[5]~4_combout\ & \v3|m[6]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \v3|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u1|co~0_combout\);

-- Location: LABCELL_X61_Y4_N36
\u1|u5|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u1|sum~0_combout\ = ( \u1|u3|u1|u1|u1|co~0_combout\ & ( !\u1|u3|u1|u1|u2|sum~0_combout\ $ (\u1|u4|p\(5)) ) ) # ( !\u1|u3|u1|u1|u1|co~0_combout\ & ( !\u1|u3|u1|u1|u2|sum~0_combout\ $ (!\u1|u4|p\(5) $ (\u1|u3|u1|u1|u1|co~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	datab => \u1|u4|ALT_INV_p\(5),
	datac => \u1|u3|u1|u1|u1|ALT_INV_co~1_combout\,
	dataf => \u1|u3|u1|u1|u1|ALT_INV_co~0_combout\,
	combout => \u1|u5|u1|u1|u1|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N15
\u1|u5|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u0|sum~combout\ = ( \u1|u3|u1|u1|u1|sum~combout\ & ( !\u1|u4|p\(4) $ (((!\u1|u4|p\(3) & (\u1|u3|u1|u1|u0|sum~combout\ & \u1|u5|u1|u0|u2|co~combout\)) # (\u1|u4|p\(3) & ((\u1|u5|u1|u0|u2|co~combout\) # (\u1|u3|u1|u1|u0|sum~combout\))))) ) ) # 
-- ( !\u1|u3|u1|u1|u1|sum~combout\ & ( !\u1|u4|p\(4) $ (((!\u1|u4|p\(3) & ((!\u1|u3|u1|u1|u0|sum~combout\) # (!\u1|u5|u1|u0|u2|co~combout\))) # (\u1|u4|p\(3) & (!\u1|u3|u1|u1|u0|sum~combout\ & !\u1|u5|u1|u0|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(3),
	datab => \u1|u4|ALT_INV_p\(4),
	datac => \u1|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u1|u5|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X56_Y4_N18
\u1|u7|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u0|sum~combout\ = ( \u1|u5|u1|u1|u0|sum~combout\ & ( \u1|u6|p\(3) & ( !\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u6|p\(4) $ (!\u1|u5|u1|u1|u1|sum~0_combout\)) ) ) ) # ( !\u1|u5|u1|u1|u0|sum~combout\ & ( \u1|u6|p\(3) & ( !\u1|u7|u1|u0|u2|co~combout\ 
-- $ (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u6|p\(4) $ (!\u1|u5|u1|u1|u1|sum~0_combout\))) ) ) ) # ( \u1|u5|u1|u1|u0|sum~combout\ & ( !\u1|u6|p\(3) & ( !\u1|u7|u1|u0|u2|co~combout\ $ (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u6|p\(4) $ 
-- (!\u1|u5|u1|u1|u1|sum~0_combout\))) ) ) ) # ( !\u1|u5|u1|u1|u0|sum~combout\ & ( !\u1|u6|p\(3) & ( !\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u6|p\(4) $ (\u1|u5|u1|u1|u1|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011011010011001011001101001100101101100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u1|u5|u1|u1|u0|ALT_INV_co~combout\,
	datac => \u1|u6|ALT_INV_p\(4),
	datad => \u1|u5|u1|u1|u1|ALT_INV_sum~0_combout\,
	datae => \u1|u5|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \u1|u6|ALT_INV_p\(3),
	combout => \u1|u7|u1|u1|u0|sum~combout\);

-- Location: IOIBUF_X64_Y0_N35
\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LABCELL_X63_Y4_N48
\v4|m[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[7]~5_combout\ = ( \b[7]~input_o\ & ( (!\b[15]~input_o\) # ((!\b[5]~input_o\ & (\v2|u1|u0|co~0_combout\ & !\b[6]~input_o\))) ) ) # ( !\b[7]~input_o\ & ( (\b[15]~input_o\ & (((!\v2|u1|u0|co~0_combout\) # (\b[6]~input_o\)) # (\b[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001111000011010000111111110010111100001111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \v2|u1|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \v4|m[7]~5_combout\);

-- Location: LABCELL_X62_Y4_N36
\u2|u6|p[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u6|p\(0) = (\a[0]~input_o\ & \v4|m[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[0]~input_o\,
	datad => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u6|p\(0));

-- Location: LABCELL_X63_Y4_N12
\u2|u3|u1|u0|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u2|sum~0_combout\ = ( \v3|m[3]~2_combout\ & ( \v3|m[2]~1_combout\ & ( !\v4|m[4]~3_combout\ $ (!\b[5]~input_o\ $ (((\b[15]~input_o\ & !\v2|u1|u0|co~0_combout\)))) ) ) ) # ( !\v3|m[3]~2_combout\ & ( \v3|m[2]~1_combout\ & ( !\b[5]~input_o\ $ 
-- (((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))) ) ) ) # ( \v3|m[3]~2_combout\ & ( !\v3|m[2]~1_combout\ & ( \v4|m[4]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101011010000011110110100100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \v4|ALT_INV_m[4]~3_combout\,
	datac => \ALT_INV_b[5]~input_o\,
	datad => \v2|u1|u0|ALT_INV_co~0_combout\,
	datae => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v3|ALT_INV_m[2]~1_combout\,
	combout => \u2|u3|u1|u0|u2|sum~0_combout\);

-- Location: LABCELL_X63_Y4_N9
\u2|u4|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|p\(1) = ( \b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & (!\b[15]~input_o\ $ (!\b[6]~input_o\))) ) ) # ( !\b[5]~input_o\ & ( (\v3|m[1]~0_combout\ & (!\b[6]~input_o\ $ (((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000101000100000100010100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[1]~0_combout\,
	datab => \ALT_INV_b[15]~input_o\,
	datac => \v2|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \u2|u4|p\(1));

-- Location: LABCELL_X64_Y4_N6
\u2|u5|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u0|u1|sum~combout\ = ( \u2|u3|u1|u0|u2|sum~0_combout\ & ( \u2|u4|p\(1) & ( (!\u2|u4|p\(0) & ((!\u2|u1|p\(2) & (\u2|u2|p\(1) & \u2|u3|u1|u0|u0|co~0_combout\)) # (\u2|u1|p\(2) & ((\u2|u3|u1|u0|u0|co~0_combout\) # (\u2|u2|p\(1)))))) # (\u2|u4|p\(0) 
-- & ((!\u2|u1|p\(2) & ((\u2|u3|u1|u0|u0|co~0_combout\) # (\u2|u2|p\(1)))) # (\u2|u1|p\(2) & ((!\u2|u2|p\(1)) # (!\u2|u3|u1|u0|u0|co~0_combout\))))) ) ) ) # ( !\u2|u3|u1|u0|u2|sum~0_combout\ & ( \u2|u4|p\(1) & ( (!\u2|u4|p\(0) & ((!\u2|u1|p\(2) & 
-- ((!\u2|u2|p\(1)) # (!\u2|u3|u1|u0|u0|co~0_combout\))) # (\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u3|u1|u0|u0|co~0_combout\)))) # (\u2|u4|p\(0) & ((!\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u3|u1|u0|u0|co~0_combout\)) # (\u2|u1|p\(2) & (\u2|u2|p\(1) & 
-- \u2|u3|u1|u0|u0|co~0_combout\)))) ) ) ) # ( \u2|u3|u1|u0|u2|sum~0_combout\ & ( !\u2|u4|p\(1) & ( (!\u2|u4|p\(0) & ((!\u2|u1|p\(2) & ((!\u2|u2|p\(1)) # (!\u2|u3|u1|u0|u0|co~0_combout\))) # (\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u3|u1|u0|u0|co~0_combout\)))) 
-- # (\u2|u4|p\(0) & ((!\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u3|u1|u0|u0|co~0_combout\)) # (\u2|u1|p\(2) & (\u2|u2|p\(1) & \u2|u3|u1|u0|u0|co~0_combout\)))) ) ) ) # ( !\u2|u3|u1|u0|u2|sum~0_combout\ & ( !\u2|u4|p\(1) & ( (!\u2|u4|p\(0) & ((!\u2|u1|p\(2) & 
-- (\u2|u2|p\(1) & \u2|u3|u1|u0|u0|co~0_combout\)) # (\u2|u1|p\(2) & ((\u2|u3|u1|u0|u0|co~0_combout\) # (\u2|u2|p\(1)))))) # (\u2|u4|p\(0) & ((!\u2|u1|p\(2) & ((\u2|u3|u1|u0|u0|co~0_combout\) # (\u2|u2|p\(1)))) # (\u2|u1|p\(2) & ((!\u2|u2|p\(1)) # 
-- (!\u2|u3|u1|u0|u0|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111110111010001000000111101000100000010001011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|ALT_INV_p\(0),
	datab => \u2|u1|ALT_INV_p\(2),
	datac => \u2|u2|ALT_INV_p\(1),
	datad => \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\,
	datae => \u2|u3|u1|u0|u2|ALT_INV_sum~0_combout\,
	dataf => \u2|u4|ALT_INV_p\(1),
	combout => \u2|u5|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X62_Y4_N39
\u2|u7|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u0|sum~0_combout\ = ( \u2|u5|u1|u0|u1|sum~combout\ & ( !\u2|u6|p\(0) ) ) # ( !\u2|u5|u1|u0|u1|sum~combout\ & ( \u2|u6|p\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|ALT_INV_p\(0),
	dataf => \u2|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X60_Y4_N42
\v7|m[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[7]~5_combout\ = ( \comb~0_combout\ & ( !\v5|u0|u1|u2|co~0_combout\ $ (!\u5|u0|u1|u2|co~combout\ $ (!\u1|u7|u1|u1|u0|sum~combout\ $ (\u2|u7|u1|u0|u0|sum~0_combout\))) ) ) # ( !\comb~0_combout\ & ( !\u5|u0|u1|u2|co~combout\ $ 
-- (!\u1|u7|u1|u1|u0|sum~combout\ $ (\u2|u7|u1|u0|u0|sum~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001110010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u0|u1|u2|ALT_INV_co~0_combout\,
	datab => \u5|u0|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[7]~5_combout\);

-- Location: LABCELL_X57_Y4_N15
\u5|u0|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u1|u3|co~combout\ = ( \u5|u0|u1|u2|co~combout\ & ( (\u2|u7|u1|u0|u0|sum~0_combout\) # (\u1|u7|u1|u1|u0|sum~combout\) ) ) # ( !\u5|u0|u1|u2|co~combout\ & ( (\u1|u7|u1|u1|u0|sum~combout\ & \u2|u7|u1|u0|u0|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u5|u0|u1|u2|ALT_INV_co~combout\,
	combout => \u5|u0|u1|u3|co~combout\);

-- Location: LABCELL_X63_Y4_N57
\v4|m[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[6]~7_combout\ = ( \b[5]~input_o\ & ( !\b[15]~input_o\ $ (!\b[6]~input_o\) ) ) # ( !\b[5]~input_o\ & ( !\b[6]~input_o\ $ (((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datac => \v2|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \v4|m[6]~7_combout\);

-- Location: LABCELL_X64_Y4_N33
\u2|u4|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|p\(2) = (\v3|m[2]~1_combout\ & \v4|m[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[2]~1_combout\,
	datad => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u2|u4|p\(2));

-- Location: LABCELL_X62_Y4_N42
\u2|u6|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u6|p\(1) = (\v4|m[7]~5_combout\ & \v3|m[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[7]~5_combout\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	combout => \u2|u6|p\(1));

-- Location: LABCELL_X63_Y4_N15
\u2|u3|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u3|sum~0_combout\ = ( \v3|m[4]~3_combout\ & ( \v3|m[3]~2_combout\ & ( !\v4|m[4]~3_combout\ $ (!\b[5]~input_o\ $ (((\b[15]~input_o\ & !\v2|u1|u0|co~0_combout\)))) ) ) ) # ( !\v3|m[4]~3_combout\ & ( \v3|m[3]~2_combout\ & ( !\b[5]~input_o\ $ 
-- (((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))) ) ) ) # ( \v3|m[4]~3_combout\ & ( !\v3|m[3]~2_combout\ & ( \v4|m[4]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001101010000101011110110001110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[15]~input_o\,
	datab => \v4|ALT_INV_m[4]~3_combout\,
	datac => \v2|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[5]~input_o\,
	datae => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u2|u3|u1|u0|u3|sum~0_combout\);

-- Location: LABCELL_X63_Y4_N0
\u2|u2|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|p\(2) = ( \b[5]~input_o\ & ( (\v3|m[2]~1_combout\ & ((!\b[15]~input_o\) # (\v2|u1|u0|co~0_combout\))) ) ) # ( !\b[5]~input_o\ & ( (\v3|m[2]~1_combout\ & (\b[15]~input_o\ & !\v2|u1|u0|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datac => \ALT_INV_b[15]~input_o\,
	datad => \v2|u1|u0|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_b[5]~input_o\,
	combout => \u2|u2|p\(2));

-- Location: LABCELL_X63_Y4_N54
\u2|u1|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|p\(3) = ( \v4|m[4]~3_combout\ & ( \v3|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u1|p\(3));

-- Location: LABCELL_X64_Y4_N48
\u2|u3|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u3|sum~combout\ = ( \u2|u1|p\(3) & ( \u2|u3|u1|u0|u0|co~0_combout\ & ( !\u2|u3|u1|u0|u3|sum~0_combout\ $ (((!\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u2|p\(2))))) ) ) ) # ( !\u2|u1|p\(3) & ( \u2|u3|u1|u0|u0|co~0_combout\ & ( 
-- !\u2|u3|u1|u0|u3|sum~0_combout\ $ (((!\u2|u2|p\(2)) # ((!\u2|u1|p\(2) & !\u2|u2|p\(1))))) ) ) ) # ( \u2|u1|p\(3) & ( !\u2|u3|u1|u0|u0|co~0_combout\ & ( !\u2|u3|u1|u0|u3|sum~0_combout\ $ (((!\u2|u2|p\(2) & ((!\u2|u1|p\(2)) # (!\u2|u2|p\(1)))))) ) ) ) # ( 
-- !\u2|u1|p\(3) & ( !\u2|u3|u1|u0|u0|co~0_combout\ & ( !\u2|u3|u1|u0|u3|sum~0_combout\ $ (((!\u2|u1|p\(2)) # ((!\u2|u2|p\(1)) # (!\u2|u2|p\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101101010101001010101011010100110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datab => \u2|u1|ALT_INV_p\(2),
	datac => \u2|u2|ALT_INV_p\(1),
	datad => \u2|u2|ALT_INV_p\(2),
	datae => \u2|u1|ALT_INV_p\(3),
	dataf => \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X64_Y4_N42
\u2|u5|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u0|u1|co~combout\ = ( \u2|u3|u1|u0|u2|sum~0_combout\ & ( \u2|u4|p\(1) & ( (!\u2|u1|p\(2) & (((!\u2|u2|p\(1)) # (!\u2|u3|u1|u0|u0|co~0_combout\)))) # (\u2|u1|p\(2) & ((!\u2|u2|p\(1) & ((!\u2|u3|u1|u0|u0|co~0_combout\))) # (\u2|u2|p\(1) & 
-- (\u2|u4|p\(0) & \u2|u3|u1|u0|u0|co~0_combout\)))) ) ) ) # ( !\u2|u3|u1|u0|u2|sum~0_combout\ & ( \u2|u4|p\(1) & ( (!\u2|u4|p\(0) & ((!\u2|u1|p\(2) & (\u2|u2|p\(1) & \u2|u3|u1|u0|u0|co~0_combout\)) # (\u2|u1|p\(2) & ((\u2|u3|u1|u0|u0|co~0_combout\) # 
-- (\u2|u2|p\(1)))))) # (\u2|u4|p\(0) & (((\u2|u3|u1|u0|u0|co~0_combout\) # (\u2|u2|p\(1))) # (\u2|u1|p\(2)))) ) ) ) # ( \u2|u3|u1|u0|u2|sum~0_combout\ & ( !\u2|u4|p\(1) & ( (\u2|u4|p\(0) & ((!\u2|u1|p\(2) & (!\u2|u2|p\(1) $ 
-- (!\u2|u3|u1|u0|u0|co~0_combout\))) # (\u2|u1|p\(2) & (!\u2|u2|p\(1) & !\u2|u3|u1|u0|u0|co~0_combout\)))) ) ) ) # ( !\u2|u3|u1|u0|u2|sum~0_combout\ & ( !\u2|u4|p\(1) & ( (\u2|u4|p\(0) & (\u2|u1|p\(2) & (\u2|u2|p\(1) & \u2|u3|u1|u0|u0|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000101000100000000010111011111111111110011000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|ALT_INV_p\(0),
	datab => \u2|u1|ALT_INV_p\(2),
	datac => \u2|u2|ALT_INV_p\(1),
	datad => \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\,
	datae => \u2|u3|u1|u0|u2|ALT_INV_sum~0_combout\,
	dataf => \u2|u4|ALT_INV_p\(1),
	combout => \u2|u5|u1|u0|u1|co~combout\);

-- Location: LABCELL_X62_Y4_N48
\u2|u7|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u1|sum~combout\ = ( \u2|u6|p\(0) & ( \u2|u5|u1|u0|u1|sum~combout\ & ( !\u2|u4|p\(2) $ (!\u2|u6|p\(1) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (\u2|u5|u1|u0|u1|co~combout\))) ) ) ) # ( !\u2|u6|p\(0) & ( \u2|u5|u1|u0|u1|sum~combout\ & ( !\u2|u4|p\(2) 
-- $ (!\u2|u6|p\(1) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (!\u2|u5|u1|u0|u1|co~combout\))) ) ) ) # ( \u2|u6|p\(0) & ( !\u2|u5|u1|u0|u1|sum~combout\ & ( !\u2|u4|p\(2) $ (!\u2|u6|p\(1) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (!\u2|u5|u1|u0|u1|co~combout\))) ) ) ) # ( 
-- !\u2|u6|p\(0) & ( !\u2|u5|u1|u0|u1|sum~combout\ & ( !\u2|u4|p\(2) $ (!\u2|u6|p\(1) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (!\u2|u5|u1|u0|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|ALT_INV_p\(2),
	datab => \u2|u6|ALT_INV_p\(1),
	datac => \u2|u3|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u2|u5|u1|u0|u1|ALT_INV_co~combout\,
	datae => \u2|u6|ALT_INV_p\(0),
	dataf => \u2|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X56_Y4_N24
\u1|u7|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u0|co~combout\ = ( \u1|u5|u1|u1|u0|sum~combout\ & ( \u1|u6|p\(3) & ( (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u5|u1|u1|u1|sum~0_combout\)) # (\u1|u6|p\(4)) ) ) ) # ( !\u1|u5|u1|u1|u0|sum~combout\ & ( \u1|u6|p\(3) & ( 
-- (!\u1|u7|u1|u0|u2|co~combout\ & (\u1|u6|p\(4) & (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u5|u1|u1|u1|sum~0_combout\)))) # (\u1|u7|u1|u0|u2|co~combout\ & ((!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u5|u1|u1|u1|sum~0_combout\)) # (\u1|u6|p\(4)))) ) ) ) # ( 
-- \u1|u5|u1|u1|u0|sum~combout\ & ( !\u1|u6|p\(3) & ( (!\u1|u7|u1|u0|u2|co~combout\ & (\u1|u6|p\(4) & (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u5|u1|u1|u1|sum~0_combout\)))) # (\u1|u7|u1|u0|u2|co~combout\ & ((!\u1|u5|u1|u1|u0|co~combout\ $ 
-- (!\u1|u5|u1|u1|u1|sum~0_combout\)) # (\u1|u6|p\(4)))) ) ) ) # ( !\u1|u5|u1|u1|u0|sum~combout\ & ( !\u1|u6|p\(3) & ( (\u1|u6|p\(4) & (!\u1|u5|u1|u1|u0|co~combout\ $ (!\u1|u5|u1|u1|u1|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000101110100110100010111010011010011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u1|u5|u1|u1|u0|ALT_INV_co~combout\,
	datac => \u1|u6|ALT_INV_p\(4),
	datad => \u1|u5|u1|u1|u1|ALT_INV_sum~0_combout\,
	datae => \u1|u5|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \u1|u6|ALT_INV_p\(3),
	combout => \u1|u7|u1|u1|u0|co~combout\);

-- Location: LABCELL_X61_Y4_N0
\u1|u4|p[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(6) = ( \v4|m[2]~1_combout\ & ( \v3|m[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(6));

-- Location: LABCELL_X61_Y4_N48
\u1|u2|p[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(6) = ( \v4|m[1]~0_combout\ & ( \v3|m[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u2|p\(6));

-- Location: IOIBUF_X40_Y0_N1
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: MLABCELL_X59_Y4_N6
\v3|m[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[8]~7_combout\ = ( \a[6]~input_o\ & ( \a[15]~input_o\ & ( !\a[8]~input_o\ ) ) ) # ( !\a[6]~input_o\ & ( \a[15]~input_o\ & ( !\a[8]~input_o\ $ (((!\a[5]~input_o\ & (!\a[7]~input_o\ & \v1|u1|u0|co~0_combout\)))) ) ) ) # ( \a[6]~input_o\ & ( 
-- !\a[15]~input_o\ & ( \a[8]~input_o\ ) ) ) # ( !\a[6]~input_o\ & ( !\a[15]~input_o\ & ( \a[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110111000010001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[5]~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \v1|u1|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[8]~input_o\,
	datae => \ALT_INV_a[6]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m[8]~7_combout\);

-- Location: LABCELL_X61_Y4_N54
\u1|u3|u1|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u3|sum~0_combout\ = ( \v4|m[1]~0_combout\ & ( !\v3|m[7]~6_combout\ $ (((!\b[0]~input_o\) # (!\v3|m[8]~7_combout\))) ) ) # ( !\v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & \v3|m[8]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u3|sum~0_combout\);

-- Location: LABCELL_X61_Y4_N51
\u1|u1|p[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(7) = (\b[0]~input_o\ & \v3|m[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	combout => \u1|u1|p\(7));

-- Location: LABCELL_X61_Y4_N42
\u1|u3|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u3|sum~combout\ = ( \u1|u1|p\(7) & ( !\u1|u3|u1|u1|u3|sum~0_combout\ $ (((!\u1|u3|u1|u1|u1|co~1_combout\ & (!\u1|u3|u1|u1|u1|co~0_combout\ & !\u1|u2|p\(6))))) ) ) # ( !\u1|u1|p\(7) & ( !\u1|u3|u1|u1|u3|sum~0_combout\ $ (((!\u1|u2|p\(6)) # 
-- ((!\u1|u3|u1|u1|u1|co~1_combout\ & !\u1|u3|u1|u1|u1|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000000001111111100001111111100000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|ALT_INV_co~1_combout\,
	datab => \u1|u3|u1|u1|u1|ALT_INV_co~0_combout\,
	datac => \u1|u2|ALT_INV_p\(6),
	datad => \u1|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	dataf => \u1|u1|ALT_INV_p\(7),
	combout => \u1|u3|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X61_Y4_N45
\u1|u3|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u2|sum~combout\ = ( \u1|u3|u1|u1|u2|sum~0_combout\ & ( (!\u1|u3|u1|u1|u1|co~1_combout\ & !\u1|u3|u1|u1|u1|co~0_combout\) ) ) # ( !\u1|u3|u1|u1|u2|sum~0_combout\ & ( (\u1|u3|u1|u1|u1|co~0_combout\) # (\u1|u3|u1|u1|u1|co~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u1|u1|ALT_INV_co~1_combout\,
	datab => \u1|u3|u1|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u1|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	combout => \u1|u3|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X61_Y4_N9
\u1|u6|p[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(5) = ( \v4|m[3]~2_combout\ & ( \v3|m[5]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(5));

-- Location: LABCELL_X61_Y4_N12
\u1|u7|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u1|sum~0_combout\ = ( \u1|u3|u1|u1|u2|sum~combout\ & ( \u1|u6|p\(5) & ( !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ (((!\u1|u5|u1|u1|u0|co~combout\ & !\u1|u4|p\(5))))) ) ) ) # ( !\u1|u3|u1|u1|u2|sum~combout\ & ( \u1|u6|p\(5) & ( 
-- !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ (((!\u1|u5|u1|u1|u0|co~combout\) # (!\u1|u4|p\(5))))) ) ) ) # ( \u1|u3|u1|u1|u2|sum~combout\ & ( !\u1|u6|p\(5) & ( !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ (((\u1|u4|p\(5)) # 
-- (\u1|u5|u1|u1|u0|co~combout\)))) ) ) ) # ( !\u1|u3|u1|u1|u2|sum~combout\ & ( !\u1|u6|p\(5) & ( !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ (((\u1|u5|u1|u1|u0|co~combout\ & \u1|u4|p\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011111100001000111101000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u1|u4|ALT_INV_p\(5),
	datac => \u1|u4|ALT_INV_p\(6),
	datad => \u1|u3|u1|u1|u3|ALT_INV_sum~combout\,
	datae => \u1|u3|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u1|u6|ALT_INV_p\(5),
	combout => \u1|u7|u1|u1|u1|sum~0_combout\);

-- Location: LABCELL_X60_Y4_N21
\u1|u7|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u1|sum~combout\ = ( \u1|u7|u1|u1|u1|sum~0_combout\ & ( !\u1|u7|u1|u1|u0|co~combout\ ) ) # ( !\u1|u7|u1|u1|u1|sum~0_combout\ & ( \u1|u7|u1|u1|u0|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u1|u0|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u1|u7|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X57_Y4_N51
\u5|u0|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u0|sum~combout\ = ( \u1|u7|u1|u1|u1|sum~combout\ & ( !\u5|u0|u1|u3|co~combout\ $ (\u2|u7|u1|u0|u1|sum~combout\) ) ) # ( !\u1|u7|u1|u1|u1|sum~combout\ & ( !\u5|u0|u1|u3|co~combout\ $ (!\u2|u7|u1|u0|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|u0|u1|u3|ALT_INV_co~combout\,
	datad => \u2|u7|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \u1|u7|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u5|u0|u2|u0|sum~combout\);

-- Location: LABCELL_X63_Y4_N51
\v2|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|u1|u3|co~0_combout\ = ( !\b[7]~input_o\ & ( (!\b[5]~input_o\ & (\v2|u1|u0|co~0_combout\ & !\b[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[5]~input_o\,
	datab => \v2|u1|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_b[6]~input_o\,
	dataf => \ALT_INV_b[7]~input_o\,
	combout => \v2|u1|u3|co~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LABCELL_X62_Y4_N0
\v4|m[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[8]~6_combout\ = ( \b[8]~input_o\ & ( (!\b[15]~input_o\) # (\v2|u1|u3|co~0_combout\) ) ) # ( !\b[8]~input_o\ & ( (\b[15]~input_o\ & !\v2|u1|u3|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b[15]~input_o\,
	datac => \v2|u1|u3|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_b[8]~input_o\,
	combout => \v4|m[8]~6_combout\);

-- Location: LABCELL_X60_Y4_N54
\v5|u0|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u1|u3|co~0_combout\ = ( \v5|u0|u1|u1|co~0_combout\ & ( \u2|u5|u1|u0|u0|sum~0_combout\ & ( (!\u1|u7|u1|u0|u3|sum~combout\ & (\u5|u0|u1|u1|co~combout\ & (!\u2|u7|u1|u0|u0|sum~0_combout\ $ (!\u1|u7|u1|u1|u0|sum~combout\)))) # 
-- (\u1|u7|u1|u0|u3|sum~combout\ & (!\u5|u0|u1|u1|co~combout\ & (!\u2|u7|u1|u0|u0|sum~0_combout\ $ (!\u1|u7|u1|u1|u0|sum~combout\)))) ) ) ) # ( \v5|u0|u1|u1|co~0_combout\ & ( !\u2|u5|u1|u0|u0|sum~0_combout\ & ( (!\u1|u7|u1|u0|u3|sum~combout\ & 
-- (!\u5|u0|u1|u1|co~combout\ & (!\u2|u7|u1|u0|u0|sum~0_combout\ $ (\u1|u7|u1|u1|u0|sum~combout\)))) # (\u1|u7|u1|u0|u3|sum~combout\ & (\u5|u0|u1|u1|co~combout\ & (!\u2|u7|u1|u0|u0|sum~0_combout\ $ (!\u1|u7|u1|u1|u0|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000100001010000000000000000000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	datac => \u1|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u5|u0|u1|u1|ALT_INV_co~combout\,
	datae => \v5|u0|u1|u1|ALT_INV_co~0_combout\,
	dataf => \u2|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \v5|u0|u1|u3|co~0_combout\);

-- Location: LABCELL_X57_Y4_N48
\v7|m[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[8]~6_combout\ = ( \comb~0_combout\ & ( !\u5|u0|u2|u0|sum~combout\ $ (!\v5|u0|u1|u3|co~0_combout\ $ (((!\v4|m[8]~6_combout\) # (!\a[0]~input_o\)))) ) ) # ( !\comb~0_combout\ & ( !\u5|u0|u2|u0|sum~combout\ $ (((!\v4|m[8]~6_combout\) # 
-- (!\a[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010101001010101101010100101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|u0|ALT_INV_sum~combout\,
	datab => \v4|ALT_INV_m[8]~6_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \v5|u0|u1|u3|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v7|m[8]~6_combout\);

-- Location: MLABCELL_X59_Y4_N3
\v1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u1|u3|co~0_combout\ = (\v1|u1|u0|co~0_combout\ & (!\a[7]~input_o\ & (!\a[6]~input_o\ & !\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u1|u0|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[7]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_a[5]~input_o\,
	combout => \v1|u1|u3|co~0_combout\);

-- Location: IOIBUF_X60_Y0_N18
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: MLABCELL_X59_Y4_N12
\v3|m[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[9]~8_combout\ = ( \a[8]~input_o\ & ( !\a[9]~input_o\ $ (!\a[15]~input_o\) ) ) # ( !\a[8]~input_o\ & ( !\a[9]~input_o\ $ (((!\a[15]~input_o\) # (\v1|u1|u3|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u1|u3|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[8]~input_o\,
	combout => \v3|m[9]~8_combout\);

-- Location: MLABCELL_X59_Y4_N18
\u1|u3|u1|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u0|sum~0_combout\ = (!\v4|m[1]~0_combout\ & (\v3|m[9]~8_combout\ & (\b[0]~input_o\))) # (\v4|m[1]~0_combout\ & (!\v3|m[8]~7_combout\ $ (((!\v3|m[9]~8_combout\) # (!\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000110101011000000011010101100000001101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	combout => \u1|u3|u1|u2|u0|sum~0_combout\);

-- Location: LABCELL_X61_Y6_N33
\u1|u4|p[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(7) = ( \v4|m[2]~1_combout\ & ( \v3|m[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datae => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(7));

-- Location: LABCELL_X61_Y4_N57
\u1|u3|u1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u3|co~0_combout\ = ( \v4|m[1]~0_combout\ & ( (\b[0]~input_o\ & (\v3|m[7]~6_combout\ & \v3|m[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u3|u1|u1|u3|co~0_combout\);

-- Location: LABCELL_X61_Y4_N18
\u1|u3|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u1|u3|co~combout\ = ( \u1|u3|u1|u1|u1|co~1_combout\ & ( \u1|u1|p\(7) & ( (!\u1|u3|u1|u1|u3|sum~0_combout\ & !\u1|u3|u1|u1|u3|co~0_combout\) ) ) ) # ( !\u1|u3|u1|u1|u1|co~1_combout\ & ( \u1|u1|p\(7) & ( (!\u1|u3|u1|u1|u3|co~0_combout\ & 
-- ((!\u1|u3|u1|u1|u3|sum~0_combout\) # ((!\u1|u2|p\(6) & !\u1|u3|u1|u1|u1|co~0_combout\)))) ) ) ) # ( \u1|u3|u1|u1|u1|co~1_combout\ & ( !\u1|u1|p\(7) & ( (!\u1|u3|u1|u1|u3|co~0_combout\ & ((!\u1|u2|p\(6)) # (!\u1|u3|u1|u1|u3|sum~0_combout\))) ) ) ) # ( 
-- !\u1|u3|u1|u1|u1|co~1_combout\ & ( !\u1|u1|p\(7) & ( (!\u1|u3|u1|u1|u3|co~0_combout\ & ((!\u1|u2|p\(6)) # ((!\u1|u3|u1|u1|u1|co~0_combout\) # (!\u1|u3|u1|u1|u3|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111110100000000011111000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|ALT_INV_p\(6),
	datab => \u1|u3|u1|u1|u1|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	datad => \u1|u3|u1|u1|u3|ALT_INV_co~0_combout\,
	datae => \u1|u3|u1|u1|u1|ALT_INV_co~1_combout\,
	dataf => \u1|u1|ALT_INV_p\(7),
	combout => \u1|u3|u1|u1|u3|co~combout\);

-- Location: LABCELL_X61_Y4_N27
\u1|u5|u1|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u3|sum~0_combout\ = ( \u1|u3|u1|u1|u3|co~combout\ & ( !\u1|u3|u1|u2|u0|sum~0_combout\ $ (!\u1|u4|p\(7)) ) ) # ( !\u1|u3|u1|u1|u3|co~combout\ & ( !\u1|u3|u1|u2|u0|sum~0_combout\ $ (\u1|u4|p\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	datac => \u1|u4|ALT_INV_p\(7),
	dataf => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u1|u5|u1|u1|u3|sum~0_combout\);

-- Location: LABCELL_X61_Y4_N3
\u1|u5|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u2|sum~combout\ = ( \u1|u4|p\(5) & ( !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ (((\u1|u5|u1|u1|u0|co~combout\) # (\u1|u3|u1|u1|u2|sum~combout\)))) ) ) # ( !\u1|u4|p\(5) & ( !\u1|u4|p\(6) $ (!\u1|u3|u1|u1|u3|sum~combout\ $ 
-- (((\u1|u3|u1|u1|u2|sum~combout\ & \u1|u5|u1|u1|u0|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(6),
	datab => \u1|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \u1|u3|u1|u1|u3|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u1|u0|ALT_INV_co~combout\,
	dataf => \u1|u4|ALT_INV_p\(5),
	combout => \u1|u5|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X61_Y4_N24
\u1|u6|p[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(6) = ( \v4|m[3]~2_combout\ & ( \v3|m[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(6));

-- Location: LABCELL_X61_Y4_N6
\u1|u5|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u1|u2|co~combout\ = ( \u1|u4|p\(5) & ( (!\u1|u3|u1|u1|u3|sum~combout\ & (\u1|u4|p\(6) & ((\u1|u3|u1|u1|u2|sum~combout\) # (\u1|u5|u1|u1|u0|co~combout\)))) # (\u1|u3|u1|u1|u3|sum~combout\ & (((\u1|u3|u1|u1|u2|sum~combout\) # (\u1|u4|p\(6))) # 
-- (\u1|u5|u1|u1|u0|co~combout\))) ) ) # ( !\u1|u4|p\(5) & ( (!\u1|u3|u1|u1|u3|sum~combout\ & (\u1|u5|u1|u1|u0|co~combout\ & (\u1|u4|p\(6) & \u1|u3|u1|u1|u2|sum~combout\))) # (\u1|u3|u1|u1|u3|sum~combout\ & (((\u1|u5|u1|u1|u0|co~combout\ & 
-- \u1|u3|u1|u1|u2|sum~combout\)) # (\u1|u4|p\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u1|u3|u1|u1|u3|ALT_INV_sum~combout\,
	datac => \u1|u4|ALT_INV_p\(6),
	datad => \u1|u3|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u1|u4|ALT_INV_p\(5),
	combout => \u1|u5|u1|u1|u2|co~combout\);

-- Location: LABCELL_X60_Y4_N6
\u1|u7|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u2|sum~combout\ = ( \u1|u5|u1|u1|u2|co~combout\ & ( \u1|u7|u1|u1|u0|co~combout\ & ( !\u1|u5|u1|u1|u3|sum~0_combout\ $ (!\u1|u6|p\(6) $ (((!\u1|u6|p\(5) & !\u1|u5|u1|u1|u2|sum~combout\)))) ) ) ) # ( !\u1|u5|u1|u1|u2|co~combout\ & ( 
-- \u1|u7|u1|u1|u0|co~combout\ & ( !\u1|u5|u1|u1|u3|sum~0_combout\ $ (!\u1|u6|p\(6) $ (((\u1|u5|u1|u1|u2|sum~combout\) # (\u1|u6|p\(5))))) ) ) ) # ( \u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u7|u1|u1|u0|co~combout\ & ( !\u1|u5|u1|u1|u3|sum~0_combout\ $ 
-- (!\u1|u6|p\(6) $ (((!\u1|u6|p\(5)) # (!\u1|u5|u1|u1|u2|sum~combout\)))) ) ) ) # ( !\u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u7|u1|u1|u0|co~combout\ & ( !\u1|u5|u1|u1|u3|sum~0_combout\ $ (!\u1|u6|p\(6) $ (((\u1|u6|p\(5) & \u1|u5|u1|u1|u2|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001110010010011011001101100100100111001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(5),
	datab => \u1|u5|u1|u1|u3|ALT_INV_sum~0_combout\,
	datac => \u1|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u1|u6|ALT_INV_p\(6),
	datae => \u1|u5|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X60_Y4_N0
\u5|u0|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u0|co~combout\ = ( \u2|u7|u1|u0|u0|sum~0_combout\ & ( \u1|u7|u1|u1|u1|sum~0_combout\ & ( (!\u1|u7|u1|u1|u0|co~combout\ & (((\u2|u7|u1|u0|u1|sum~combout\) # (\u1|u7|u1|u1|u0|sum~combout\)) # (\u5|u0|u1|u2|co~combout\))) # 
-- (\u1|u7|u1|u1|u0|co~combout\ & (\u2|u7|u1|u0|u1|sum~combout\ & ((\u1|u7|u1|u1|u0|sum~combout\) # (\u5|u0|u1|u2|co~combout\)))) ) ) ) # ( !\u2|u7|u1|u0|u0|sum~0_combout\ & ( \u1|u7|u1|u1|u1|sum~0_combout\ & ( (!\u1|u7|u1|u1|u0|co~combout\ & 
-- (((\u5|u0|u1|u2|co~combout\ & \u1|u7|u1|u1|u0|sum~combout\)) # (\u2|u7|u1|u0|u1|sum~combout\))) # (\u1|u7|u1|u1|u0|co~combout\ & (\u5|u0|u1|u2|co~combout\ & (\u1|u7|u1|u1|u0|sum~combout\ & \u2|u7|u1|u0|u1|sum~combout\))) ) ) ) # ( 
-- \u2|u7|u1|u0|u0|sum~0_combout\ & ( !\u1|u7|u1|u1|u1|sum~0_combout\ & ( (!\u1|u7|u1|u1|u0|co~combout\ & (\u2|u7|u1|u0|u1|sum~combout\ & ((\u1|u7|u1|u1|u0|sum~combout\) # (\u5|u0|u1|u2|co~combout\)))) # (\u1|u7|u1|u1|u0|co~combout\ & 
-- (((\u2|u7|u1|u0|u1|sum~combout\) # (\u1|u7|u1|u1|u0|sum~combout\)) # (\u5|u0|u1|u2|co~combout\))) ) ) ) # ( !\u2|u7|u1|u0|u0|sum~0_combout\ & ( !\u1|u7|u1|u1|u1|sum~0_combout\ & ( (!\u1|u7|u1|u1|u0|co~combout\ & (\u5|u0|u1|u2|co~combout\ & 
-- (\u1|u7|u1|u1|u0|sum~combout\ & \u2|u7|u1|u0|u1|sum~combout\))) # (\u1|u7|u1|u1|u0|co~combout\ & (((\u5|u0|u1|u2|co~combout\ & \u1|u7|u1|u1|u0|sum~combout\)) # (\u2|u7|u1|u0|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000101010111111100000010101010110010101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u5|u0|u1|u2|ALT_INV_co~combout\,
	datac => \u1|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u2|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datae => \u2|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u1|u7|u1|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u5|u0|u2|u0|co~combout\);

-- Location: LABCELL_X62_Y4_N30
\u2|u7|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u1|co~combout\ = ( \u2|u6|p\(0) & ( \u2|u5|u1|u0|u1|sum~combout\ & ( (!\u2|u4|p\(2) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (\u2|u5|u1|u0|u1|co~combout\))) # (\u2|u6|p\(1)) ) ) ) # ( !\u2|u6|p\(0) & ( \u2|u5|u1|u0|u1|sum~combout\ & ( (\u2|u6|p\(1) 
-- & (!\u2|u4|p\(2) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (\u2|u5|u1|u0|u1|co~combout\)))) ) ) ) # ( \u2|u6|p\(0) & ( !\u2|u5|u1|u0|u1|sum~combout\ & ( (\u2|u6|p\(1) & (!\u2|u4|p\(2) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (\u2|u5|u1|u0|u1|co~combout\)))) ) ) ) # ( 
-- !\u2|u6|p\(0) & ( !\u2|u5|u1|u0|u1|sum~combout\ & ( (\u2|u6|p\(1) & (!\u2|u4|p\(2) $ (!\u2|u3|u1|u0|u3|sum~combout\ $ (\u2|u5|u1|u0|u1|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000100100010000100010010001000010111101110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|ALT_INV_p\(2),
	datab => \u2|u6|ALT_INV_p\(1),
	datac => \u2|u3|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u2|u5|u1|u0|u1|ALT_INV_co~combout\,
	datae => \u2|u6|ALT_INV_p\(0),
	dataf => \u2|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u0|u1|co~combout\);

-- Location: LABCELL_X64_Y4_N27
\u2|u5|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u0|u2|co~combout\ = ( \u2|u5|u1|u0|u1|co~combout\ & ( (\u2|u4|p\(2)) # (\u2|u3|u1|u0|u3|sum~combout\) ) ) # ( !\u2|u5|u1|u0|u1|co~combout\ & ( (\u2|u3|u1|u0|u3|sum~combout\ & \u2|u4|p\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u3|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u2|u4|ALT_INV_p\(2),
	dataf => \u2|u5|u1|u0|u1|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u0|u2|co~combout\);

-- Location: LABCELL_X64_Y4_N0
\u2|u3|u1|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u3|co~0_combout\ = ( \v4|m[4]~3_combout\ & ( (\v3|m[4]~3_combout\ & (\v3|m[3]~2_combout\ & \v4|m[5]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u0|u3|co~0_combout\);

-- Location: LABCELL_X64_Y4_N36
\u2|u3|u1|u0|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u0|u3|co~1_combout\ = ( \u2|u1|p\(3) & ( \u2|u3|u1|u0|u0|co~0_combout\ & ( (\u2|u3|u1|u0|u3|sum~0_combout\ & (((\u2|u2|p\(2)) # (\u2|u2|p\(1))) # (\u2|u1|p\(2)))) ) ) ) # ( !\u2|u1|p\(3) & ( \u2|u3|u1|u0|u0|co~0_combout\ & ( 
-- (\u2|u3|u1|u0|u3|sum~0_combout\ & (\u2|u2|p\(2) & ((\u2|u2|p\(1)) # (\u2|u1|p\(2))))) ) ) ) # ( \u2|u1|p\(3) & ( !\u2|u3|u1|u0|u0|co~0_combout\ & ( (\u2|u3|u1|u0|u3|sum~0_combout\ & (((\u2|u1|p\(2) & \u2|u2|p\(1))) # (\u2|u2|p\(2)))) ) ) ) # ( 
-- !\u2|u1|p\(3) & ( !\u2|u3|u1|u0|u0|co~0_combout\ & ( (\u2|u3|u1|u0|u3|sum~0_combout\ & (\u2|u1|p\(2) & (\u2|u2|p\(1) & \u2|u2|p\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010101010100000000000101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datab => \u2|u1|ALT_INV_p\(2),
	datac => \u2|u2|ALT_INV_p\(1),
	datad => \u2|u2|ALT_INV_p\(2),
	datae => \u2|u1|ALT_INV_p\(3),
	dataf => \u2|u3|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u2|u3|u1|u0|u3|co~1_combout\);

-- Location: LABCELL_X64_Y4_N12
\u2|u3|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u0|sum~0_combout\ = ( \v4|m[4]~3_combout\ & ( !\v3|m[5]~4_combout\ $ (((!\v4|m[5]~4_combout\) # (!\v3|m[4]~3_combout\))) ) ) # ( !\v4|m[4]~3_combout\ & ( (\v4|m[5]~4_combout\ & \v3|m[4]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u0|sum~0_combout\);

-- Location: LABCELL_X64_Y4_N3
\u2|u3|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u0|sum~combout\ = ( \u2|u3|u1|u1|u0|sum~0_combout\ & ( (!\u2|u3|u1|u0|u3|co~0_combout\ & !\u2|u3|u1|u0|u3|co~1_combout\) ) ) # ( !\u2|u3|u1|u1|u0|sum~0_combout\ & ( (\u2|u3|u1|u0|u3|co~1_combout\) # (\u2|u3|u1|u0|u3|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u2|u3|u1|u0|u3|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u2|u3|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X66_Y6_N0
\u2|u4|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|p\(3) = ( \v4|m[6]~7_combout\ & ( \v3|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[6]~7_combout\,
	combout => \u2|u4|p\(3));

-- Location: LABCELL_X66_Y6_N36
\u2|u7|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u2|sum~combout\ = ( \u2|u4|p\(3) & ( \v4|m[7]~5_combout\ & ( !\u2|u7|u1|u0|u1|co~combout\ $ (!\v3|m[2]~1_combout\ $ (!\u2|u5|u1|u0|u2|co~combout\ $ (\u2|u3|u1|u1|u0|sum~combout\))) ) ) ) # ( !\u2|u4|p\(3) & ( \v4|m[7]~5_combout\ & ( 
-- !\u2|u7|u1|u0|u1|co~combout\ $ (!\v3|m[2]~1_combout\ $ (!\u2|u5|u1|u0|u2|co~combout\ $ (!\u2|u3|u1|u1|u0|sum~combout\))) ) ) ) # ( \u2|u4|p\(3) & ( !\v4|m[7]~5_combout\ & ( !\u2|u7|u1|u0|u1|co~combout\ $ (!\u2|u5|u1|u0|u2|co~combout\ $ 
-- (!\u2|u3|u1|u1|u0|sum~combout\)) ) ) ) # ( !\u2|u4|p\(3) & ( !\v4|m[7]~5_combout\ & ( !\u2|u7|u1|u0|u1|co~combout\ $ (!\u2|u5|u1|u0|u2|co~combout\ $ (\u2|u3|u1|u1|u0|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101001101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u1|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \u2|u5|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u2|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u2|u4|ALT_INV_p\(3),
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u7|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X64_Y6_N0
\u5|u0|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u1|sum~combout\ = ( \u2|u7|u1|u0|u2|sum~combout\ & ( !\u1|u7|u1|u1|u2|sum~combout\ $ (\u5|u0|u2|u0|co~combout\) ) ) # ( !\u2|u7|u1|u0|u2|sum~combout\ & ( !\u1|u7|u1|u1|u2|sum~combout\ $ (!\u5|u0|u2|u0|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u7|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u5|u0|u2|u0|ALT_INV_co~combout\,
	dataf => \u2|u7|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u5|u0|u2|u1|sum~combout\);

-- Location: IOIBUF_X72_Y0_N1
\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LABCELL_X62_Y4_N57
\v4|m[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[9]~8_combout\ = ( \v2|u1|u3|co~0_combout\ & ( !\b[9]~input_o\ $ (((!\b[8]~input_o\) # (!\b[15]~input_o\))) ) ) # ( !\v2|u1|u3|co~0_combout\ & ( !\b[9]~input_o\ $ (!\b[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => \ALT_INV_b[8]~input_o\,
	datac => \ALT_INV_b[15]~input_o\,
	dataf => \v2|u1|u3|ALT_INV_co~0_combout\,
	combout => \v4|m[9]~8_combout\);

-- Location: LABCELL_X64_Y2_N30
\u3|u3|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u0|u0|sum~0_combout\ = ( \a[0]~input_o\ & ( !\v4|m[9]~8_combout\ $ (((!\v3|m[1]~0_combout\) # (!\v4|m[8]~6_combout\))) ) ) # ( !\a[0]~input_o\ & ( (\v3|m[1]~0_combout\ & \v4|m[8]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datac => \v4|ALT_INV_m[8]~6_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u3|u3|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N12
\u7|u0|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u2|u0|co~0_combout\ = ( \v4|m[8]~6_combout\ & ( (\a[0]~input_o\ & (!\u1|u7|u1|u1|u1|sum~combout\ $ (!\u5|u0|u1|u3|co~combout\ $ (\u2|u7|u1|u0|u1|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000010010000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u5|u0|u1|u3|ALT_INV_co~combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u2|u7|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u7|u0|u2|u0|co~0_combout\);

-- Location: LABCELL_X64_Y2_N33
\u7|u0|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u2|u1|sum~combout\ = ( \u7|u0|u2|u0|co~0_combout\ & ( !\u5|u0|u2|u1|sum~combout\ $ (\u3|u3|u1|u0|u0|sum~0_combout\) ) ) # ( !\u7|u0|u2|u0|co~0_combout\ & ( !\u5|u0|u2|u1|sum~combout\ $ (!\u3|u3|u1|u0|u0|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|u1|ALT_INV_sum~combout\,
	datac => \u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u7|u0|u2|u0|ALT_INV_co~0_combout\,
	combout => \u7|u0|u2|u1|sum~combout\);

-- Location: LABCELL_X57_Y4_N54
\v5|u0|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u2|u0|co~0_combout\ = ( \u5|u0|u1|u3|co~combout\ & ( \u2|u7|u1|u0|u1|sum~combout\ & ( (\v5|u0|u1|u3|co~0_combout\ & (!\u1|u7|u1|u1|u1|sum~combout\ $ (((\a[0]~input_o\ & \v4|m[8]~6_combout\))))) ) ) ) # ( !\u5|u0|u1|u3|co~combout\ & ( 
-- \u2|u7|u1|u0|u1|sum~combout\ & ( (\v5|u0|u1|u3|co~0_combout\ & (!\u1|u7|u1|u1|u1|sum~combout\ $ (((!\a[0]~input_o\) # (!\v4|m[8]~6_combout\))))) ) ) ) # ( \u5|u0|u1|u3|co~combout\ & ( !\u2|u7|u1|u0|u1|sum~combout\ & ( (\v5|u0|u1|u3|co~0_combout\ & 
-- (!\u1|u7|u1|u1|u1|sum~combout\ $ (((!\a[0]~input_o\) # (!\v4|m[8]~6_combout\))))) ) ) ) # ( !\u5|u0|u1|u3|co~combout\ & ( !\u2|u7|u1|u0|u1|sum~combout\ & ( (\v5|u0|u1|u3|co~0_combout\ & (!\u1|u7|u1|u1|u1|sum~combout\ $ (((\a[0]~input_o\ & 
-- \v4|m[8]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100001000100010001001000010001000100100010001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \v5|u0|u1|u3|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \u5|u0|u1|u3|ALT_INV_co~combout\,
	dataf => \u2|u7|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \v5|u0|u2|u0|co~0_combout\);

-- Location: LABCELL_X64_Y2_N39
\v7|m[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[9]~7_combout\ = ( \v5|u0|u2|u0|co~0_combout\ & ( \u7|u0|u2|u1|sum~combout\ ) ) # ( !\v5|u0|u2|u0|co~0_combout\ & ( !\u7|u0|u2|u1|sum~combout\ $ (!\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u2|u1|ALT_INV_sum~combout\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \v5|u0|u2|u0|ALT_INV_co~0_combout\,
	combout => \v7|m[9]~7_combout\);

-- Location: LABCELL_X66_Y6_N42
\u2|u7|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u2|co~combout\ = ( \u2|u4|p\(3) & ( \v4|m[7]~5_combout\ & ( (!\u2|u7|u1|u0|u1|co~combout\ & (\v3|m[2]~1_combout\ & (!\u2|u5|u1|u0|u2|co~combout\ $ (\u2|u3|u1|u1|u0|sum~combout\)))) # (\u2|u7|u1|u0|u1|co~combout\ & 
-- ((!\u2|u5|u1|u0|u2|co~combout\ $ (\u2|u3|u1|u1|u0|sum~combout\)) # (\v3|m[2]~1_combout\))) ) ) ) # ( !\u2|u4|p\(3) & ( \v4|m[7]~5_combout\ & ( (!\u2|u7|u1|u0|u1|co~combout\ & (\v3|m[2]~1_combout\ & (!\u2|u5|u1|u0|u2|co~combout\ $ 
-- (!\u2|u3|u1|u1|u0|sum~combout\)))) # (\u2|u7|u1|u0|u1|co~combout\ & ((!\u2|u5|u1|u0|u2|co~combout\ $ (!\u2|u3|u1|u1|u0|sum~combout\)) # (\v3|m[2]~1_combout\))) ) ) ) # ( \u2|u4|p\(3) & ( !\v4|m[7]~5_combout\ & ( (\u2|u7|u1|u0|u1|co~combout\ & 
-- (!\u2|u5|u1|u0|u2|co~combout\ $ (\u2|u3|u1|u1|u0|sum~combout\))) ) ) ) # ( !\u2|u4|p\(3) & ( !\v4|m[7]~5_combout\ & ( (\u2|u7|u1|u0|u1|co~combout\ & (!\u2|u5|u1|u0|u2|co~combout\ $ (!\u2|u3|u1|u1|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000010100000000010100010111011100010111000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u1|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \u2|u5|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u2|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u2|u4|ALT_INV_p\(3),
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u7|u1|u0|u2|co~combout\);

-- Location: LABCELL_X64_Y4_N15
\u2|u3|u1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u0|co~0_combout\ = ( \v4|m[4]~3_combout\ & ( (\v4|m[5]~4_combout\ & (\v3|m[4]~3_combout\ & \v3|m[5]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datac => \v3|ALT_INV_m[4]~3_combout\,
	datad => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u0|co~0_combout\);

-- Location: LABCELL_X64_Y4_N18
\u2|u3|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u1|sum~0_combout\ = ( \v4|m[4]~3_combout\ & ( !\v3|m[6]~5_combout\ $ (((!\v4|m[5]~4_combout\) # (!\v3|m[5]~4_combout\))) ) ) # ( !\v4|m[4]~3_combout\ & ( (\v4|m[5]~4_combout\ & \v3|m[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u1|sum~0_combout\);

-- Location: LABCELL_X64_Y4_N24
\u2|u3|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u1|sum~combout\ = ( \u2|u3|u1|u1|u0|sum~0_combout\ & ( !\u2|u3|u1|u1|u1|sum~0_combout\ $ (((!\u2|u3|u1|u0|u3|co~0_combout\ & (!\u2|u3|u1|u1|u0|co~0_combout\ & !\u2|u3|u1|u0|u3|co~1_combout\)))) ) ) # ( !\u2|u3|u1|u1|u0|sum~0_combout\ & ( 
-- !\u2|u3|u1|u1|u0|co~0_combout\ $ (!\u2|u3|u1|u1|u1|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001111000111100000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	datab => \u2|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	datac => \u2|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	datad => \u2|u3|u1|u0|u3|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u2|u3|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X66_Y6_N48
\u2|u5|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u0|sum~combout\ = ( \u2|u5|u1|u0|u2|co~combout\ & ( \u2|u3|u1|u1|u1|sum~combout\ & ( (!\v4|m[6]~7_combout\ & (((!\u2|u3|u1|u1|u0|sum~combout\)))) # (\v4|m[6]~7_combout\ & (!\v3|m[4]~3_combout\ $ (((\u2|u3|u1|u1|u0|sum~combout\) # 
-- (\v3|m[3]~2_combout\))))) ) ) ) # ( !\u2|u5|u1|u0|u2|co~combout\ & ( \u2|u3|u1|u1|u1|sum~combout\ & ( (!\v4|m[6]~7_combout\) # (!\v3|m[4]~3_combout\ $ (((\v3|m[3]~2_combout\ & \u2|u3|u1|u1|u0|sum~combout\)))) ) ) ) # ( \u2|u5|u1|u0|u2|co~combout\ & ( 
-- !\u2|u3|u1|u1|u1|sum~combout\ & ( (!\v4|m[6]~7_combout\ & (((\u2|u3|u1|u1|u0|sum~combout\)))) # (\v4|m[6]~7_combout\ & (!\v3|m[4]~3_combout\ $ (((!\v3|m[3]~2_combout\ & !\u2|u3|u1|u1|u0|sum~combout\))))) ) ) ) # ( !\u2|u5|u1|u0|u2|co~combout\ & ( 
-- !\u2|u3|u1|u1|u1|sum~combout\ & ( (\v4|m[6]~7_combout\ & (!\v3|m[4]~3_combout\ $ (((!\v3|m[3]~2_combout\) # (!\u2|u3|u1|u1|u0|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010100000101001110111011101110111010111110101100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \u2|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u2|u5|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u2|u3|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u2|u5|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X66_Y6_N3
\u2|u7|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u3|sum~combout\ = ( \u2|u5|u1|u1|u0|sum~combout\ & ( !\u2|u7|u1|u0|u2|co~combout\ $ (((\v3|m[3]~2_combout\ & \v4|m[7]~5_combout\))) ) ) # ( !\u2|u5|u1|u1|u0|sum~combout\ & ( !\u2|u7|u1|u0|u2|co~combout\ $ (((!\v3|m[3]~2_combout\) # 
-- (!\v4|m[7]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[3]~2_combout\,
	datac => \u2|u7|u1|u0|u2|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[7]~5_combout\,
	dataf => \u2|u5|u1|u1|u0|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X61_Y6_N12
\u1|u4|p[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(8) = (\v3|m[8]~7_combout\ & \v4|m[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(8));

-- Location: LABCELL_X60_Y4_N45
\u1|u6|p[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(7) = ( \v4|m[3]~2_combout\ & ( \v3|m[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u6|p\(7));

-- Location: IOIBUF_X56_Y0_N18
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: MLABCELL_X59_Y4_N15
\v3|m[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[10]~9_combout\ = ( \a[10]~input_o\ & ( (!\a[15]~input_o\) # ((\v1|u1|u3|co~0_combout\ & (!\a[8]~input_o\ & !\a[9]~input_o\))) ) ) # ( !\a[10]~input_o\ & ( (\a[15]~input_o\ & ((!\v1|u1|u3|co~0_combout\) # ((\a[9]~input_o\) # (\a[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111111111111010000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u1|u3|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[8]~input_o\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	dataf => \ALT_INV_a[10]~input_o\,
	combout => \v3|m[10]~9_combout\);

-- Location: MLABCELL_X59_Y4_N30
\u1|u1|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(10) = ( \v3|m[10]~9_combout\ & ( \b[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b[0]~input_o\,
	dataf => \v3|ALT_INV_m[10]~9_combout\,
	combout => \u1|u1|p\(10));

-- Location: MLABCELL_X59_Y4_N57
\u1|u3|u1|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u0|co~0_combout\ = ( \b[0]~input_o\ & ( (\v4|m[1]~0_combout\ & (\v3|m[9]~8_combout\ & \v3|m[8]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \u1|u3|u1|u2|u0|co~0_combout\);

-- Location: MLABCELL_X59_Y4_N21
\u1|u2|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(9) = (\v4|m[1]~0_combout\ & \v3|m[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	combout => \u1|u2|p\(9));

-- Location: LABCELL_X60_Y4_N51
\u1|u3|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|sum~combout\ = ( \u1|u3|u1|u1|u3|co~combout\ & ( !\u1|u1|p\(10) $ (!\u1|u3|u1|u2|u0|co~0_combout\ $ (\u1|u2|p\(9))) ) ) # ( !\u1|u3|u1|u1|u3|co~combout\ & ( !\u1|u1|p\(10) $ (!\u1|u2|p\(9) $ (((\u1|u3|u1|u2|u0|sum~0_combout\) # 
-- (\u1|u3|u1|u2|u0|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010010101011001101001100101101010100101010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_p\(10),
	datab => \u1|u3|u1|u2|u0|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	datad => \u1|u2|ALT_INV_p\(9),
	datae => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u1|u3|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X61_Y6_N9
\u1|u3|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u0|sum~combout\ = ( \u1|u3|u1|u2|u0|sum~0_combout\ & ( \u1|u3|u1|u1|u3|co~combout\ ) ) # ( !\u1|u3|u1|u2|u0|sum~0_combout\ & ( !\u1|u3|u1|u1|u3|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u1|u3|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X60_Y4_N24
\u1|u7|u1|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u3|sum~0_combout\ = ( \u1|u5|u1|u1|u2|co~combout\ & ( \u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) $ (!\u1|u6|p\(7) $ (!\u1|u3|u1|u2|u1|sum~combout\)) ) ) ) # ( !\u1|u5|u1|u1|u2|co~combout\ & ( \u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) 
-- $ (!\u1|u6|p\(7) $ (!\u1|u3|u1|u2|u1|sum~combout\ $ (!\u1|u4|p\(7)))) ) ) ) # ( \u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) $ (!\u1|u6|p\(7) $ (!\u1|u3|u1|u2|u1|sum~combout\ $ (!\u1|u4|p\(7)))) ) ) ) # ( 
-- !\u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) $ (!\u1|u6|p\(7) $ (\u1|u3|u1|u2|u1|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010011001011001101001100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(8),
	datab => \u1|u6|ALT_INV_p\(7),
	datac => \u1|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datad => \u1|u4|ALT_INV_p\(7),
	datae => \u1|u5|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u2|u0|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u1|u3|sum~0_combout\);

-- Location: LABCELL_X60_Y4_N12
\u1|u7|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u1|u2|co~combout\ = ( \u1|u5|u1|u1|u2|co~combout\ & ( \u1|u7|u1|u1|u0|co~combout\ & ( (!\u1|u5|u1|u1|u3|sum~0_combout\ & (((\u1|u6|p\(6)) # (\u1|u5|u1|u1|u2|sum~combout\)) # (\u1|u6|p\(5)))) # (\u1|u5|u1|u1|u3|sum~0_combout\ & (\u1|u6|p\(6) & 
-- ((\u1|u5|u1|u1|u2|sum~combout\) # (\u1|u6|p\(5))))) ) ) ) # ( !\u1|u5|u1|u1|u2|co~combout\ & ( \u1|u7|u1|u1|u0|co~combout\ & ( (!\u1|u5|u1|u1|u3|sum~0_combout\ & (\u1|u6|p\(6) & ((\u1|u5|u1|u1|u2|sum~combout\) # (\u1|u6|p\(5))))) # 
-- (\u1|u5|u1|u1|u3|sum~0_combout\ & (((\u1|u6|p\(6)) # (\u1|u5|u1|u1|u2|sum~combout\)) # (\u1|u6|p\(5)))) ) ) ) # ( \u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u7|u1|u1|u0|co~combout\ & ( (!\u1|u5|u1|u1|u3|sum~0_combout\ & (((\u1|u6|p\(5) & 
-- \u1|u5|u1|u1|u2|sum~combout\)) # (\u1|u6|p\(6)))) # (\u1|u5|u1|u1|u3|sum~0_combout\ & (\u1|u6|p\(5) & (\u1|u5|u1|u1|u2|sum~combout\ & \u1|u6|p\(6)))) ) ) ) # ( !\u1|u5|u1|u1|u2|co~combout\ & ( !\u1|u7|u1|u1|u0|co~combout\ & ( 
-- (!\u1|u5|u1|u1|u3|sum~0_combout\ & (\u1|u6|p\(5) & (\u1|u5|u1|u1|u2|sum~combout\ & \u1|u6|p\(6)))) # (\u1|u5|u1|u1|u3|sum~0_combout\ & (((\u1|u6|p\(5) & \u1|u5|u1|u1|u2|sum~combout\)) # (\u1|u6|p\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000001001100110100010011011111110100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(5),
	datab => \u1|u5|u1|u1|u3|ALT_INV_sum~0_combout\,
	datac => \u1|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u1|u6|ALT_INV_p\(6),
	datae => \u1|u5|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u1|u2|co~combout\);

-- Location: LABCELL_X64_Y6_N6
\u5|u0|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u2|sum~combout\ = ( \u1|u7|u1|u1|u2|sum~combout\ & ( \u5|u0|u2|u0|co~combout\ & ( !\u2|u7|u1|u0|u3|sum~combout\ $ (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u1|u7|u1|u1|u2|co~combout\)) ) ) ) # ( !\u1|u7|u1|u1|u2|sum~combout\ & ( 
-- \u5|u0|u2|u0|co~combout\ & ( !\u2|u7|u1|u0|u3|sum~combout\ $ (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u2|u7|u1|u0|u2|sum~combout\ $ (!\u1|u7|u1|u1|u2|co~combout\))) ) ) ) # ( \u1|u7|u1|u1|u2|sum~combout\ & ( !\u5|u0|u2|u0|co~combout\ & ( 
-- !\u2|u7|u1|u0|u3|sum~combout\ $ (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u2|u7|u1|u0|u2|sum~combout\ $ (!\u1|u7|u1|u1|u2|co~combout\))) ) ) ) # ( !\u1|u7|u1|u1|u2|sum~combout\ & ( !\u5|u0|u2|u0|co~combout\ & ( !\u2|u7|u1|u0|u3|sum~combout\ $ 
-- (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (\u1|u7|u1|u1|u2|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011010011001011001101001100101101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u1|u3|ALT_INV_sum~0_combout\,
	datac => \u2|u7|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u5|u0|u2|u0|ALT_INV_co~combout\,
	combout => \u5|u0|u2|u2|sum~combout\);

-- Location: IOIBUF_X74_Y0_N58
\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LABCELL_X62_Y4_N54
\v4|m[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[10]~9_combout\ = ( \b[10]~input_o\ & ( (!\b[15]~input_o\) # ((!\b[9]~input_o\ & (!\b[8]~input_o\ & \v2|u1|u3|co~0_combout\))) ) ) # ( !\b[10]~input_o\ & ( (\b[15]~input_o\ & (((!\v2|u1|u3|co~0_combout\) # (\b[8]~input_o\)) # (\b[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011111111111000010001111111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => \ALT_INV_b[8]~input_o\,
	datac => \v2|u1|u3|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[15]~input_o\,
	dataf => \ALT_INV_b[10]~input_o\,
	combout => \v4|m[10]~9_combout\);

-- Location: LABCELL_X64_Y2_N42
\u3|u5|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u0|sum~0_combout\ = ( \v4|m[8]~6_combout\ & ( \a[0]~input_o\ & ( !\v3|m[2]~1_combout\ $ (!\v4|m[10]~9_combout\) ) ) ) # ( !\v4|m[8]~6_combout\ & ( \a[0]~input_o\ & ( !\v4|m[10]~9_combout\ $ (((!\v4|m[9]~8_combout\) # (!\v3|m[1]~0_combout\))) 
-- ) ) ) # ( \v4|m[8]~6_combout\ & ( !\a[0]~input_o\ & ( !\v3|m[2]~1_combout\ $ (((!\v4|m[9]~8_combout\) # (!\v3|m[1]~0_combout\))) ) ) ) # ( !\v4|m[8]~6_combout\ & ( !\a[0]~input_o\ & ( (\v4|m[9]~8_combout\ & \v3|m[1]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101100011011000000101111110100011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~8_combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[10]~9_combout\,
	datae => \v4|ALT_INV_m[8]~6_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u3|u5|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X64_Y2_N51
\u7|u0|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u2|u2|sum~combout\ = ( \u3|u5|u1|u0|u0|sum~0_combout\ & ( !\u5|u0|u2|u2|sum~combout\ $ (((!\u7|u0|u2|u0|co~0_combout\ & (\u3|u3|u1|u0|u0|sum~0_combout\ & \u5|u0|u2|u1|sum~combout\)) # (\u7|u0|u2|u0|co~0_combout\ & ((\u5|u0|u2|u1|sum~combout\) # 
-- (\u3|u3|u1|u0|u0|sum~0_combout\))))) ) ) # ( !\u3|u5|u1|u0|u0|sum~0_combout\ & ( !\u5|u0|u2|u2|sum~combout\ $ (((!\u7|u0|u2|u0|co~0_combout\ & ((!\u3|u3|u1|u0|u0|sum~0_combout\) # (!\u5|u0|u2|u1|sum~combout\))) # (\u7|u0|u2|u0|co~0_combout\ & 
-- (!\u3|u3|u1|u0|u0|sum~0_combout\ & !\u5|u0|u2|u1|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101010101001100101011010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|u2|ALT_INV_sum~combout\,
	datab => \u7|u0|u2|u0|ALT_INV_co~0_combout\,
	datac => \u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	datad => \u5|u0|u2|u1|ALT_INV_sum~combout\,
	dataf => \u3|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \u7|u0|u2|u2|sum~combout\);

-- Location: LABCELL_X64_Y2_N36
\v7|m[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[10]~8_combout\ = ( \v5|u0|u2|u0|co~0_combout\ & ( !\u7|u0|u2|u2|sum~combout\ $ (((!\u7|u0|u2|u1|sum~combout\) # (!\comb~0_combout\))) ) ) # ( !\v5|u0|u2|u0|co~0_combout\ & ( !\comb~0_combout\ $ (!\u7|u0|u2|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u2|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \u7|u0|u2|u2|ALT_INV_sum~combout\,
	dataf => \v5|u0|u2|u0|ALT_INV_co~0_combout\,
	combout => \v7|m[10]~8_combout\);

-- Location: LABCELL_X64_Y2_N48
\u7|u0|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u2|u2|co~combout\ = ( \u3|u3|u1|u0|u0|sum~0_combout\ & ( (!\u5|u0|u2|u2|sum~combout\ & (\u3|u5|u1|u0|u0|sum~0_combout\ & ((\u5|u0|u2|u1|sum~combout\) # (\u7|u0|u2|u0|co~0_combout\)))) # (\u5|u0|u2|u2|sum~combout\ & 
-- (((\u3|u5|u1|u0|u0|sum~0_combout\) # (\u5|u0|u2|u1|sum~combout\)) # (\u7|u0|u2|u0|co~0_combout\))) ) ) # ( !\u3|u3|u1|u0|u0|sum~0_combout\ & ( (!\u5|u0|u2|u2|sum~combout\ & (\u7|u0|u2|u0|co~0_combout\ & (\u5|u0|u2|u1|sum~combout\ & 
-- \u3|u5|u1|u0|u0|sum~0_combout\))) # (\u5|u0|u2|u2|sum~combout\ & (((\u7|u0|u2|u0|co~0_combout\ & \u5|u0|u2|u1|sum~combout\)) # (\u3|u5|u1|u0|u0|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011100010101011111110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|u2|ALT_INV_sum~combout\,
	datab => \u7|u0|u2|u0|ALT_INV_co~0_combout\,
	datac => \u5|u0|u2|u1|ALT_INV_sum~combout\,
	datad => \u3|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \u7|u0|u2|u2|co~combout\);

-- Location: MLABCELL_X65_Y2_N42
\u3|u4|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(1) = (\v3|m[1]~0_combout\ & \v4|m[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(1));

-- Location: MLABCELL_X65_Y2_N6
\u3|u3|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u0|u2|sum~combout\ = ( \v4|m[9]~8_combout\ & ( \a[0]~input_o\ & ( !\v3|m[2]~1_combout\ $ (((!\v4|m[8]~6_combout\) # (!\v3|m[1]~0_combout\ $ (\v3|m[3]~2_combout\)))) ) ) ) # ( !\v4|m[9]~8_combout\ & ( \a[0]~input_o\ & ( (\v3|m[3]~2_combout\ & 
-- \v4|m[8]~6_combout\) ) ) ) # ( \v4|m[9]~8_combout\ & ( !\a[0]~input_o\ & ( (!\v4|m[8]~6_combout\ & (\v3|m[2]~1_combout\)) # (\v4|m[8]~6_combout\ & (!\v3|m[3]~2_combout\ $ (((!\v3|m[2]~1_combout\) # (\v3|m[1]~0_combout\))))) ) ) ) # ( !\v4|m[9]~8_combout\ 
-- & ( !\a[0]~input_o\ & ( (\v3|m[3]~2_combout\ & \v4|m[8]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010100101100000000000011110101010101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u3|u3|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X62_Y4_N9
\v2|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v2|u2|u2|co~0_combout\ = ( \v2|u1|u3|co~0_combout\ & ( (!\b[9]~input_o\ & (!\b[8]~input_o\ & !\b[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[9]~input_o\,
	datab => \ALT_INV_b[8]~input_o\,
	datac => \ALT_INV_b[10]~input_o\,
	dataf => \v2|u1|u3|ALT_INV_co~0_combout\,
	combout => \v2|u2|u2|co~0_combout\);

-- Location: IOIBUF_X74_Y0_N92
\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LABCELL_X62_Y4_N6
\v4|m[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[11]~10_combout\ = ( \b[15]~input_o\ & ( !\v2|u2|u2|co~0_combout\ $ (\b[11]~input_o\) ) ) # ( !\b[15]~input_o\ & ( \b[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v2|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[11]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[11]~10_combout\);

-- Location: MLABCELL_X65_Y2_N30
\u3|u5|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u0|co~0_combout\ = ( \v4|m[9]~8_combout\ & ( \v4|m[8]~6_combout\ & ( (\v3|m[2]~1_combout\ & (\a[0]~input_o\ & \v4|m[10]~9_combout\)) ) ) ) # ( !\v4|m[9]~8_combout\ & ( \v4|m[8]~6_combout\ & ( (\v3|m[2]~1_combout\ & (\a[0]~input_o\ & 
-- \v4|m[10]~9_combout\)) ) ) ) # ( \v4|m[9]~8_combout\ & ( !\v4|m[8]~6_combout\ & ( (\v3|m[1]~0_combout\ & (\a[0]~input_o\ & \v4|m[10]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \v4|ALT_INV_m[10]~9_combout\,
	datae => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u5|u1|u0|u0|co~0_combout\);

-- Location: MLABCELL_X65_Y2_N51
\u3|u7|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u0|u0|sum~0_combout\ = ( \u3|u5|u1|u0|u0|co~0_combout\ & ( !\u3|u4|p\(1) $ (!\u3|u3|u1|u0|u2|sum~combout\ $ (((!\a[0]~input_o\) # (!\v4|m[11]~10_combout\)))) ) ) # ( !\u3|u5|u1|u0|u0|co~0_combout\ & ( !\u3|u4|p\(1) $ 
-- (!\u3|u3|u1|u0|u2|sum~combout\ $ (((\a[0]~input_o\ & \v4|m[11]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100111000011100101101100001110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \u3|u4|ALT_INV_p\(1),
	datac => \u3|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u3|u7|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X66_Y6_N54
\u2|u7|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u0|u3|co~combout\ = ( \u2|u5|u1|u1|u0|sum~combout\ & ( ((\v4|m[7]~5_combout\ & \v3|m[3]~2_combout\)) # (\u2|u7|u1|u0|u2|co~combout\) ) ) # ( !\u2|u5|u1|u1|u0|sum~combout\ & ( (\u2|u7|u1|u0|u2|co~combout\ & (\v4|m[7]~5_combout\ & 
-- \v3|m[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u7|u1|u0|u2|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \u2|u5|u1|u1|u0|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u0|u3|co~combout\);

-- Location: LABCELL_X64_Y4_N21
\u2|u3|u1|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u1|co~0_combout\ = ( \v4|m[4]~3_combout\ & ( (\v4|m[5]~4_combout\ & (\v3|m[6]~5_combout\ & \v3|m[5]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u1|co~0_combout\);

-- Location: LABCELL_X64_Y4_N54
\u2|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u1|co~combout\ = ( \u2|u3|u1|u0|u3|co~1_combout\ & ( \u2|u3|u1|u1|u1|sum~0_combout\ & ( (!\u2|u3|u1|u1|u1|co~0_combout\ & (!\u2|u3|u1|u1|u0|sum~0_combout\ & !\u2|u3|u1|u1|u0|co~0_combout\)) ) ) ) # ( !\u2|u3|u1|u0|u3|co~1_combout\ & ( 
-- \u2|u3|u1|u1|u1|sum~0_combout\ & ( (!\u2|u3|u1|u1|u1|co~0_combout\ & (!\u2|u3|u1|u1|u0|co~0_combout\ & ((!\u2|u3|u1|u1|u0|sum~0_combout\) # (!\u2|u3|u1|u0|u3|co~0_combout\)))) ) ) ) # ( \u2|u3|u1|u0|u3|co~1_combout\ & ( !\u2|u3|u1|u1|u1|sum~0_combout\ & ( 
-- !\u2|u3|u1|u1|u1|co~0_combout\ ) ) ) # ( !\u2|u3|u1|u0|u3|co~1_combout\ & ( !\u2|u3|u1|u1|u1|sum~0_combout\ & ( !\u2|u3|u1|u1|u1|co~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u1|ALT_INV_co~0_combout\,
	datab => \u2|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	datac => \u2|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u2|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	datae => \u2|u3|u1|u0|u3|ALT_INV_co~1_combout\,
	dataf => \u2|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u2|u3|u1|u1|u1|co~combout\);

-- Location: MLABCELL_X65_Y5_N30
\u2|u3|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u2|sum~combout\ = ( \u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & ( !\v3|m[7]~6_combout\ $ (((!\v3|m[6]~5_combout\) # (!\v4|m[5]~4_combout\))) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & ( !\v3|m[7]~6_combout\ $ 
-- (((\v3|m[6]~5_combout\ & \v4|m[5]~4_combout\))) ) ) ) # ( \u2|u3|u1|u1|u1|co~combout\ & ( !\v4|m[4]~3_combout\ & ( (\v3|m[6]~5_combout\ & \v4|m[5]~4_combout\) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( !\v4|m[4]~3_combout\ & ( (!\v3|m[6]~5_combout\) # 
-- (!\v4|m[5]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000000110000001110101001101010010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v3|ALT_INV_m[6]~5_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datae => \u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X66_Y6_N30
\u2|u5|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u0|co~combout\ = ( \u2|u5|u1|u0|u2|co~combout\ & ( \u2|u3|u1|u1|u1|sum~combout\ & ( ((\v4|m[6]~7_combout\ & ((\v3|m[3]~2_combout\) # (\v3|m[4]~3_combout\)))) # (\u2|u3|u1|u1|u0|sum~combout\) ) ) ) # ( !\u2|u5|u1|u0|u2|co~combout\ & ( 
-- \u2|u3|u1|u1|u1|sum~combout\ & ( (\v4|m[6]~7_combout\ & (((\v3|m[3]~2_combout\ & \u2|u3|u1|u1|u0|sum~combout\)) # (\v3|m[4]~3_combout\))) ) ) ) # ( \u2|u5|u1|u0|u2|co~combout\ & ( !\u2|u3|u1|u1|u1|sum~combout\ & ( (\v4|m[6]~7_combout\ & 
-- (\v3|m[4]~3_combout\ & ((\u2|u3|u1|u1|u0|sum~combout\) # (\v3|m[3]~2_combout\)))) ) ) ) # ( !\u2|u5|u1|u0|u2|co~combout\ & ( !\u2|u3|u1|u1|u1|sum~combout\ & ( (\v4|m[6]~7_combout\ & (\v3|m[4]~3_combout\ & (\v3|m[3]~2_combout\ & 
-- \u2|u3|u1|u1|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001000100010001000101010001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \u2|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u2|u5|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u2|u3|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u2|u5|u1|u1|u0|co~combout\);

-- Location: LABCELL_X66_Y6_N57
\u2|u5|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u1|sum~combout\ = ( \u2|u5|u1|u1|u0|co~combout\ & ( !\u2|u3|u1|u1|u2|sum~combout\ $ (((\v4|m[6]~7_combout\ & \v3|m[5]~4_combout\))) ) ) # ( !\u2|u5|u1|u1|u0|co~combout\ & ( !\u2|u3|u1|u1|u2|sum~combout\ $ (((!\v4|m[6]~7_combout\) # 
-- (!\v3|m[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	datad => \u2|u3|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u2|u5|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u1|u1|sum~combout\);

-- Location: MLABCELL_X65_Y6_N3
\u2|u7|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u0|sum~combout\ = !\u2|u7|u1|u0|u3|co~combout\ $ (!\u2|u5|u1|u1|u1|sum~combout\ $ (((\v4|m[7]~5_combout\ & \v3|m[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100100111100011010010011110001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datab => \u2|u7|u1|u0|u3|ALT_INV_co~combout\,
	datac => \u2|u5|u1|u1|u1|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	combout => \u2|u7|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X64_Y6_N12
\u5|u0|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u2|co~combout\ = ( \u1|u7|u1|u1|u2|sum~combout\ & ( \u5|u0|u2|u0|co~combout\ & ( (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u1|u7|u1|u1|u2|co~combout\)) # (\u2|u7|u1|u0|u3|sum~combout\) ) ) ) # ( !\u1|u7|u1|u1|u2|sum~combout\ & ( 
-- \u5|u0|u2|u0|co~combout\ & ( (!\u2|u7|u1|u0|u3|sum~combout\ & (\u2|u7|u1|u0|u2|sum~combout\ & (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u1|u7|u1|u1|u2|co~combout\)))) # (\u2|u7|u1|u0|u3|sum~combout\ & ((!\u1|u7|u1|u1|u3|sum~0_combout\ $ 
-- (!\u1|u7|u1|u1|u2|co~combout\)) # (\u2|u7|u1|u0|u2|sum~combout\))) ) ) ) # ( \u1|u7|u1|u1|u2|sum~combout\ & ( !\u5|u0|u2|u0|co~combout\ & ( (!\u2|u7|u1|u0|u3|sum~combout\ & (\u2|u7|u1|u0|u2|sum~combout\ & (!\u1|u7|u1|u1|u3|sum~0_combout\ $ 
-- (!\u1|u7|u1|u1|u2|co~combout\)))) # (\u2|u7|u1|u0|u3|sum~combout\ & ((!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u1|u7|u1|u1|u2|co~combout\)) # (\u2|u7|u1|u0|u2|sum~combout\))) ) ) ) # ( !\u1|u7|u1|u1|u2|sum~combout\ & ( !\u5|u0|u2|u0|co~combout\ & ( 
-- (\u2|u7|u1|u0|u3|sum~combout\ & (!\u1|u7|u1|u1|u3|sum~0_combout\ $ (!\u1|u7|u1|u1|u2|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000101110100110100010111010011010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u1|u3|ALT_INV_sum~0_combout\,
	datac => \u2|u7|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u5|u0|u2|u0|ALT_INV_co~combout\,
	combout => \u5|u0|u2|u2|co~combout\);

-- Location: LABCELL_X61_Y6_N15
\u1|u5|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u0|sum~combout\ = ( \u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) $ (!\u1|u3|u1|u2|u1|sum~combout\ $ (((\u1|u5|u1|u1|u2|co~combout\) # (\u1|u4|p\(7))))) ) ) # ( !\u1|u3|u1|u2|u0|sum~combout\ & ( !\u1|u4|p\(8) $ (!\u1|u3|u1|u2|u1|sum~combout\ 
-- $ (((\u1|u4|p\(7) & \u1|u5|u1|u1|u2|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001001111000110100101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(7),
	datab => \u1|u4|ALT_INV_p\(8),
	datac => \u1|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u2|u0|ALT_INV_sum~combout\,
	combout => \u1|u5|u1|u2|u0|sum~combout\);

-- Location: MLABCELL_X59_Y4_N36
\v1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u2|u2|co~0_combout\ = ( !\a[9]~input_o\ & ( (!\a[8]~input_o\ & (!\a[10]~input_o\ & \v1|u1|u3|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[8]~input_o\,
	datac => \ALT_INV_a[10]~input_o\,
	datad => \v1|u1|u3|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \v1|u2|u2|co~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: MLABCELL_X59_Y4_N42
\u1|u3|u1|u2|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|sum~0_combout\ = ( \v4|m[1]~0_combout\ & ( \b[0]~input_o\ & ( !\v3|m[10]~9_combout\ $ (!\a[11]~input_o\ $ (((!\v1|u2|u2|co~0_combout\ & \a[15]~input_o\)))) ) ) ) # ( !\v4|m[1]~0_combout\ & ( \b[0]~input_o\ & ( !\a[11]~input_o\ $ 
-- (((!\a[15]~input_o\) # (\v1|u2|u2|co~0_combout\))) ) ) ) # ( \v4|m[1]~0_combout\ & ( !\b[0]~input_o\ & ( \v3|m[10]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111101001010011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u2|u2|ALT_INV_co~0_combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \ALT_INV_a[15]~input_o\,
	datae => \v4|ALT_INV_m[1]~0_combout\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \u1|u3|u1|u2|u2|sum~0_combout\);

-- Location: MLABCELL_X59_Y4_N33
\u1|u3|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u1|co~combout\ = ( \u1|u2|p\(9) & ( (!\u1|u1|p\(10) & (!\u1|u3|u1|u2|u0|co~0_combout\ & ((!\u1|u3|u1|u2|u0|sum~0_combout\) # (\u1|u3|u1|u1|u3|co~combout\)))) ) ) # ( !\u1|u2|p\(9) & ( (!\u1|u1|p\(10)) # ((!\u1|u3|u1|u2|u0|co~0_combout\ & 
-- ((!\u1|u3|u1|u2|u0|sum~0_combout\) # (\u1|u3|u1|u1|u3|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011111100111011001111110010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	datab => \u1|u1|ALT_INV_p\(10),
	datac => \u1|u3|u1|u2|u0|ALT_INV_co~0_combout\,
	datad => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u1|u2|ALT_INV_p\(9),
	combout => \u1|u3|u1|u2|u1|co~combout\);

-- Location: LABCELL_X64_Y6_N51
\u1|u4|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(9) = (\v4|m[2]~1_combout\ & \v3|m[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~1_combout\,
	datad => \v3|ALT_INV_m[9]~8_combout\,
	combout => \u1|u4|p\(9));

-- Location: LABCELL_X64_Y6_N24
\u1|u5|u1|u2|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u1|sum~0_combout\ = ( \u1|u4|p\(9) & ( !\u1|u3|u1|u2|u2|sum~0_combout\ $ (!\u1|u3|u1|u2|u1|co~combout\) ) ) # ( !\u1|u4|p\(9) & ( !\u1|u3|u1|u2|u2|sum~0_combout\ $ (\u1|u3|u1|u2|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_sum~0_combout\,
	datab => \u1|u3|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u1|u4|ALT_INV_p\(9),
	combout => \u1|u5|u1|u2|u1|sum~0_combout\);

-- Location: MLABCELL_X65_Y4_N33
\u1|u6|p[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(8) = (\v4|m[3]~2_combout\ & \v3|m[8]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[3]~2_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	combout => \u1|u6|p\(8));

-- Location: LABCELL_X61_Y6_N6
\u1|u5|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u0|co~combout\ = ( \u1|u3|u1|u2|u0|sum~combout\ & ( (!\u1|u4|p\(8) & (\u1|u3|u1|u2|u1|sum~combout\ & ((\u1|u5|u1|u1|u2|co~combout\) # (\u1|u4|p\(7))))) # (\u1|u4|p\(8) & (((\u1|u3|u1|u2|u1|sum~combout\) # (\u1|u5|u1|u1|u2|co~combout\)) # 
-- (\u1|u4|p\(7)))) ) ) # ( !\u1|u3|u1|u2|u0|sum~combout\ & ( (!\u1|u4|p\(8) & (\u1|u4|p\(7) & (\u1|u5|u1|u1|u2|co~combout\ & \u1|u3|u1|u2|u1|sum~combout\))) # (\u1|u4|p\(8) & (((\u1|u4|p\(7) & \u1|u5|u1|u1|u2|co~combout\)) # (\u1|u3|u1|u2|u1|sum~combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(7),
	datab => \u1|u4|ALT_INV_p\(8),
	datac => \u1|u5|u1|u1|u2|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u1|u3|u1|u2|u0|ALT_INV_sum~combout\,
	combout => \u1|u5|u1|u2|u0|co~combout\);

-- Location: LABCELL_X64_Y6_N30
\u1|u7|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u0|sum~combout\ = ( \u1|u6|p\(8) & ( \u1|u5|u1|u2|u0|co~combout\ & ( !\u1|u5|u1|u2|u1|sum~0_combout\ $ (((!\u1|u6|p\(7) & ((!\u1|u5|u1|u2|u0|sum~combout\) # (!\u1|u7|u1|u1|u2|co~combout\))) # (\u1|u6|p\(7) & (!\u1|u5|u1|u2|u0|sum~combout\ & 
-- !\u1|u7|u1|u1|u2|co~combout\)))) ) ) ) # ( !\u1|u6|p\(8) & ( \u1|u5|u1|u2|u0|co~combout\ & ( !\u1|u5|u1|u2|u1|sum~0_combout\ $ (((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & \u1|u7|u1|u1|u2|co~combout\)) # (\u1|u6|p\(7) & 
-- ((\u1|u7|u1|u1|u2|co~combout\) # (\u1|u5|u1|u2|u0|sum~combout\))))) ) ) ) # ( \u1|u6|p\(8) & ( !\u1|u5|u1|u2|u0|co~combout\ & ( !\u1|u5|u1|u2|u1|sum~0_combout\ $ (((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & \u1|u7|u1|u1|u2|co~combout\)) # 
-- (\u1|u6|p\(7) & ((\u1|u7|u1|u1|u2|co~combout\) # (\u1|u5|u1|u2|u0|sum~combout\))))) ) ) ) # ( !\u1|u6|p\(8) & ( !\u1|u5|u1|u2|u0|co~combout\ & ( !\u1|u5|u1|u2|u1|sum~0_combout\ $ (((!\u1|u6|p\(7) & ((!\u1|u5|u1|u2|u0|sum~combout\) # 
-- (!\u1|u7|u1|u1|u2|co~combout\))) # (\u1|u6|p\(7) & (!\u1|u5|u1|u2|u0|sum~combout\ & !\u1|u7|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011111100001100001110001111001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(7),
	datab => \u1|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \u1|u5|u1|u2|u1|ALT_INV_sum~0_combout\,
	datad => \u1|u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u1|u6|ALT_INV_p\(8),
	dataf => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u2|u0|sum~combout\);

-- Location: MLABCELL_X65_Y6_N0
\u5|u0|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|u3|sum~combout\ = ( \u1|u7|u1|u2|u0|sum~combout\ & ( !\u2|u7|u1|u1|u0|sum~combout\ $ (\u5|u0|u2|u2|co~combout\) ) ) # ( !\u1|u7|u1|u2|u0|sum~combout\ & ( !\u2|u7|u1|u1|u0|sum~combout\ $ (!\u5|u0|u2|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u5|u0|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u2|u0|ALT_INV_sum~combout\,
	combout => \u5|u0|u2|u3|sum~combout\);

-- Location: LABCELL_X62_Y2_N30
\u7|u0|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u2|u3|sum~combout\ = ( \u5|u0|u2|u3|sum~combout\ & ( !\u7|u0|u2|u2|co~combout\ $ (\u3|u7|u1|u0|u0|sum~0_combout\) ) ) # ( !\u5|u0|u2|u3|sum~combout\ & ( !\u7|u0|u2|u2|co~combout\ $ (!\u3|u7|u1|u0|u0|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u7|u0|u2|u2|ALT_INV_co~combout\,
	datad => \u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u5|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u7|u0|u2|u3|sum~combout\);

-- Location: LABCELL_X64_Y2_N24
\v5|u0|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u2|u2|co~0_combout\ = ( \u5|u0|u2|u1|sum~combout\ & ( \u7|u0|u2|u0|co~0_combout\ & ( (\v5|u0|u2|u0|co~0_combout\ & (!\u3|u3|u1|u0|u0|sum~0_combout\ & (!\u5|u0|u2|u2|sum~combout\ $ (!\u3|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( 
-- !\u5|u0|u2|u1|sum~combout\ & ( \u7|u0|u2|u0|co~0_combout\ & ( (\v5|u0|u2|u0|co~0_combout\ & (\u3|u3|u1|u0|u0|sum~0_combout\ & (!\u5|u0|u2|u2|sum~combout\ $ (!\u3|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( \u5|u0|u2|u1|sum~combout\ & ( 
-- !\u7|u0|u2|u0|co~0_combout\ & ( (\v5|u0|u2|u0|co~0_combout\ & (\u3|u3|u1|u0|u0|sum~0_combout\ & (!\u5|u0|u2|u2|sum~combout\ $ (!\u3|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( !\u5|u0|u2|u1|sum~combout\ & ( !\u7|u0|u2|u0|co~0_combout\ & ( 
-- (\v5|u0|u2|u0|co~0_combout\ & (!\u3|u3|u1|u0|u0|sum~0_combout\ & (!\u5|u0|u2|u2|sum~combout\ $ (\u3|u5|u1|u0|u0|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000011000000000000001100000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|u2|ALT_INV_sum~combout\,
	datab => \u3|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	datac => \v5|u0|u2|u0|ALT_INV_co~0_combout\,
	datad => \u3|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	datae => \u5|u0|u2|u1|ALT_INV_sum~combout\,
	dataf => \u7|u0|u2|u0|ALT_INV_co~0_combout\,
	combout => \v5|u0|u2|u2|co~0_combout\);

-- Location: LABCELL_X64_Y2_N0
\v7|m[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[11]~9_combout\ = ( \v5|u0|u2|u2|co~0_combout\ & ( \u7|u0|u2|u3|sum~combout\ ) ) # ( !\v5|u0|u2|u2|co~0_combout\ & ( !\u7|u0|u2|u3|sum~combout\ $ (!\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u2|u3|ALT_INV_sum~combout\,
	datab => \ALT_INV_comb~0_combout\,
	dataf => \v5|u0|u2|u2|ALT_INV_co~0_combout\,
	combout => \v7|m[11]~9_combout\);

-- Location: MLABCELL_X65_Y5_N6
\u2|u3|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u3|sum~combout\ = ( \u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & ( !\v3|m[8]~7_combout\ $ (((!\v3|m[7]~6_combout\) # ((!\v4|m[5]~4_combout\) # (\v3|m[6]~5_combout\)))) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & 
-- ( !\v3|m[8]~7_combout\ $ (((!\v3|m[7]~6_combout\ & ((!\v4|m[5]~4_combout\) # (!\v3|m[6]~5_combout\))) # (\v3|m[7]~6_combout\ & (\v4|m[5]~4_combout\)))) ) ) ) # ( \u2|u3|u1|u1|u1|co~combout\ & ( !\v4|m[4]~3_combout\ & ( (\v3|m[7]~6_combout\ & 
-- \v4|m[5]~4_combout\) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( !\v4|m[4]~3_combout\ & ( (\v4|m[5]~4_combout\ & (!\v3|m[7]~6_combout\ $ (!\v3|m[6]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000010101100011011010010011011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v3|ALT_INV_m[8]~7_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	datae => \u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X66_Y6_N6
\u2|u5|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u2|sum~combout\ = ( \v3|m[5]~4_combout\ & ( \v3|m[6]~5_combout\ & ( !\u2|u3|u1|u1|u3|sum~combout\ $ (((!\u2|u5|u1|u1|u0|co~combout\ & ((!\v4|m[6]~7_combout\) # (\u2|u3|u1|u1|u2|sum~combout\))) # (\u2|u5|u1|u1|u0|co~combout\ & 
-- ((!\u2|u3|u1|u1|u2|sum~combout\) # (\v4|m[6]~7_combout\))))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \v3|m[6]~5_combout\ & ( !\u2|u3|u1|u1|u3|sum~combout\ $ (!\v4|m[6]~7_combout\ $ (((\u2|u5|u1|u1|u0|co~combout\ & \u2|u3|u1|u1|u2|sum~combout\)))) ) ) ) # ( 
-- \v3|m[5]~4_combout\ & ( !\v3|m[6]~5_combout\ & ( !\u2|u3|u1|u1|u3|sum~combout\ $ (((!\u2|u5|u1|u1|u0|co~combout\ & ((!\v4|m[6]~7_combout\) # (!\u2|u3|u1|u1|u2|sum~combout\))) # (\u2|u5|u1|u1|u0|co~combout\ & (!\v4|m[6]~7_combout\ & 
-- !\u2|u3|u1|u1|u2|sum~combout\)))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\v3|m[6]~5_combout\ & ( !\u2|u3|u1|u1|u3|sum~combout\ $ (((!\u2|u5|u1|u1|u0|co~combout\) # (!\u2|u3|u1|u1|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101100110101001011010011010010101100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u3|ALT_INV_sum~combout\,
	datab => \u2|u5|u1|u1|u0|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v3|ALT_INV_m[6]~5_combout\,
	combout => \u2|u5|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X66_Y6_N12
\u2|u7|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u1|sum~combout\ = ( \u2|u5|u1|u1|u1|sum~combout\ & ( \v3|m[5]~4_combout\ & ( !\u2|u5|u1|u1|u2|sum~combout\ $ (((!\u2|u7|u1|u0|u3|co~combout\ & ((!\v4|m[7]~5_combout\) # (\v3|m[4]~3_combout\))) # (\u2|u7|u1|u0|u3|co~combout\ & 
-- (\v4|m[7]~5_combout\)))) ) ) ) # ( !\u2|u5|u1|u1|u1|sum~combout\ & ( \v3|m[5]~4_combout\ & ( !\u2|u5|u1|u1|u2|sum~combout\ $ (((!\v4|m[7]~5_combout\) # ((\u2|u7|u1|u0|u3|co~combout\ & \v3|m[4]~3_combout\)))) ) ) ) # ( \u2|u5|u1|u1|u1|sum~combout\ & ( 
-- !\v3|m[5]~4_combout\ & ( !\u2|u5|u1|u1|u2|sum~combout\ $ (((!\u2|u7|u1|u0|u3|co~combout\ & ((!\v4|m[7]~5_combout\) # (!\v3|m[4]~3_combout\))))) ) ) ) # ( !\u2|u5|u1|u1|u1|sum~combout\ & ( !\v3|m[5]~4_combout\ & ( !\u2|u5|u1|u1|u2|sum~combout\ $ 
-- (((!\u2|u7|u1|u0|u3|co~combout\) # ((!\v4|m[7]~5_combout\) # (!\v3|m[4]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110011001100110110000111100001110010110100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u3|ALT_INV_co~combout\,
	datab => \u2|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	datae => \u2|u5|u1|u1|u1|ALT_INV_sum~combout\,
	dataf => \v3|ALT_INV_m[5]~4_combout\,
	combout => \u2|u7|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X60_Y4_N18
\u1|u4|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(10) = ( \v4|m[2]~1_combout\ & ( \v3|m[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(10));

-- Location: MLABCELL_X65_Y4_N30
\u1|u6|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(9) = ( \v3|m[9]~8_combout\ & ( \v4|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[3]~2_combout\,
	dataf => \v3|ALT_INV_m[9]~8_combout\,
	combout => \u1|u6|p\(9));

-- Location: LABCELL_X64_Y6_N27
\u1|u3|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|sum~combout\ = !\u1|u3|u1|u2|u2|sum~0_combout\ $ (\u1|u3|u1|u2|u1|co~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_sum~0_combout\,
	datab => \u1|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u1|u3|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X59_Y4_N48
\u1|u3|u1|u2|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|co~1_combout\ = ( \u1|u3|u1|u1|u3|co~combout\ & ( \u1|u3|u1|u2|u2|sum~0_combout\ & ( (!\u1|u2|p\(9) & (\u1|u3|u1|u2|u0|co~0_combout\ & \u1|u1|p\(10))) # (\u1|u2|p\(9) & ((\u1|u1|p\(10)) # (\u1|u3|u1|u2|u0|co~0_combout\))) ) ) ) # ( 
-- !\u1|u3|u1|u1|u3|co~combout\ & ( \u1|u3|u1|u2|u2|sum~0_combout\ & ( (!\u1|u2|p\(9) & (\u1|u1|p\(10) & ((\u1|u3|u1|u2|u0|sum~0_combout\) # (\u1|u3|u1|u2|u0|co~0_combout\)))) # (\u1|u2|p\(9) & (((\u1|u1|p\(10)) # (\u1|u3|u1|u2|u0|sum~0_combout\)) # 
-- (\u1|u3|u1|u2|u0|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101011111110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u2|ALT_INV_p\(9),
	datab => \u1|u3|u1|u2|u0|ALT_INV_co~0_combout\,
	datac => \u1|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	datad => \u1|u1|ALT_INV_p\(10),
	datae => \u1|u3|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u1|u3|u1|u2|u2|ALT_INV_sum~0_combout\,
	combout => \u1|u3|u1|u2|u2|co~1_combout\);

-- Location: IOIBUF_X54_Y0_N1
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: MLABCELL_X59_Y4_N24
\v3|m[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[12]~11_combout\ = ( \a[15]~input_o\ & ( !\a[12]~input_o\ $ (((\v1|u2|u2|co~0_combout\ & !\a[11]~input_o\))) ) ) # ( !\a[15]~input_o\ & ( \a[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[12]~input_o\,
	datac => \v1|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m[12]~11_combout\);

-- Location: MLABCELL_X59_Y5_N6
\u1|u1|p[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(12) = ( \b[0]~input_o\ & ( \v3|m[12]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_b[0]~input_o\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u1|u1|p\(12));

-- Location: MLABCELL_X59_Y4_N39
\v3|m[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[11]~10_combout\ = !\a[11]~input_o\ $ (((!\a[15]~input_o\) # (\v1|u2|u2|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010101011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[11]~input_o\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	combout => \v3|m[11]~10_combout\);

-- Location: MLABCELL_X59_Y5_N3
\u1|u3|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u2|co~0_combout\ = ( \b[0]~input_o\ & ( (\v3|m[10]~9_combout\ & (\v3|m[11]~10_combout\ & \v4|m[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \v4|ALT_INV_m[1]~0_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \u1|u3|u1|u2|u2|co~0_combout\);

-- Location: MLABCELL_X59_Y5_N15
\u1|u2|p[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(11) = ( \v4|m[1]~0_combout\ & ( \v3|m[11]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datae => \v4|ALT_INV_m[1]~0_combout\,
	combout => \u1|u2|p\(11));

-- Location: MLABCELL_X59_Y5_N48
\u1|u3|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u2|u3|sum~combout\ = ( \u1|u3|u1|u2|u2|co~0_combout\ & ( \u1|u2|p\(11) & ( \u1|u1|p\(12) ) ) ) # ( !\u1|u3|u1|u2|u2|co~0_combout\ & ( \u1|u2|p\(11) & ( !\u1|u3|u1|u2|u2|co~1_combout\ $ (\u1|u1|p\(12)) ) ) ) # ( \u1|u3|u1|u2|u2|co~0_combout\ & ( 
-- !\u1|u2|p\(11) & ( !\u1|u1|p\(12) ) ) ) # ( !\u1|u3|u1|u2|u2|co~0_combout\ & ( !\u1|u2|p\(11) & ( !\u1|u3|u1|u2|u2|co~1_combout\ $ (!\u1|u1|p\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100111111110000000011001100001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datad => \u1|u1|ALT_INV_p\(12),
	datae => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \u1|u2|ALT_INV_p\(11),
	combout => \u1|u3|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X64_Y6_N42
\u1|u7|u1|u2|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u1|sum~0_combout\ = ( \u1|u3|u1|u2|u2|sum~combout\ & ( \u1|u3|u1|u2|u3|sum~combout\ & ( !\u1|u4|p\(10) $ (!\u1|u6|p\(9) $ (((!\u1|u4|p\(9) & !\u1|u5|u1|u2|u0|co~combout\)))) ) ) ) # ( !\u1|u3|u1|u2|u2|sum~combout\ & ( 
-- \u1|u3|u1|u2|u3|sum~combout\ & ( !\u1|u4|p\(10) $ (!\u1|u6|p\(9) $ (((!\u1|u4|p\(9)) # (!\u1|u5|u1|u2|u0|co~combout\)))) ) ) ) # ( \u1|u3|u1|u2|u2|sum~combout\ & ( !\u1|u3|u1|u2|u3|sum~combout\ & ( !\u1|u4|p\(10) $ (!\u1|u6|p\(9) $ 
-- (((\u1|u5|u1|u2|u0|co~combout\) # (\u1|u4|p\(9))))) ) ) ) # ( !\u1|u3|u1|u2|u2|sum~combout\ & ( !\u1|u3|u1|u2|u3|sum~combout\ & ( !\u1|u4|p\(10) $ (!\u1|u6|p\(9) $ (((\u1|u4|p\(9) & \u1|u5|u1|u2|u0|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011111100001000111101000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(9),
	datab => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u1|u4|ALT_INV_p\(10),
	datad => \u1|u6|ALT_INV_p\(9),
	datae => \u1|u3|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \u1|u3|u1|u2|u3|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u2|u1|sum~0_combout\);

-- Location: LABCELL_X64_Y6_N36
\u1|u7|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u0|co~combout\ = ( \u1|u6|p\(8) & ( \u1|u5|u1|u2|u0|co~combout\ & ( (!\u1|u5|u1|u2|u1|sum~0_combout\) # ((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & \u1|u7|u1|u1|u2|co~combout\)) # (\u1|u6|p\(7) & ((\u1|u7|u1|u1|u2|co~combout\) # 
-- (\u1|u5|u1|u2|u0|sum~combout\)))) ) ) ) # ( !\u1|u6|p\(8) & ( \u1|u5|u1|u2|u0|co~combout\ & ( (!\u1|u5|u1|u2|u1|sum~0_combout\ & ((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & \u1|u7|u1|u1|u2|co~combout\)) # (\u1|u6|p\(7) & 
-- ((\u1|u7|u1|u1|u2|co~combout\) # (\u1|u5|u1|u2|u0|sum~combout\))))) ) ) ) # ( \u1|u6|p\(8) & ( !\u1|u5|u1|u2|u0|co~combout\ & ( ((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & \u1|u7|u1|u1|u2|co~combout\)) # (\u1|u6|p\(7) & 
-- ((\u1|u7|u1|u1|u2|co~combout\) # (\u1|u5|u1|u2|u0|sum~combout\)))) # (\u1|u5|u1|u2|u1|sum~0_combout\) ) ) ) # ( !\u1|u6|p\(8) & ( !\u1|u5|u1|u2|u0|co~combout\ & ( (\u1|u5|u1|u2|u1|sum~0_combout\ & ((!\u1|u6|p\(7) & (\u1|u5|u1|u2|u0|sum~combout\ & 
-- \u1|u7|u1|u1|u2|co~combout\)) # (\u1|u6|p\(7) & ((\u1|u7|u1|u1|u2|co~combout\) # (\u1|u5|u1|u2|u0|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000111110111111100010000011100001111000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(7),
	datab => \u1|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \u1|u5|u1|u2|u1|ALT_INV_sum~0_combout\,
	datad => \u1|u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u1|u6|ALT_INV_p\(8),
	dataf => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u2|u0|co~combout\);

-- Location: MLABCELL_X65_Y6_N6
\u5|u0|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u0|sum~combout\ = ( \u5|u0|u2|u2|co~combout\ & ( \u1|u7|u1|u2|u0|co~combout\ & ( !\u2|u7|u1|u1|u1|sum~combout\ $ (!\u1|u7|u1|u2|u1|sum~0_combout\ $ (((!\u1|u7|u1|u2|u0|sum~combout\ & !\u2|u7|u1|u1|u0|sum~combout\)))) ) ) ) # ( 
-- !\u5|u0|u2|u2|co~combout\ & ( \u1|u7|u1|u2|u0|co~combout\ & ( !\u2|u7|u1|u1|u1|sum~combout\ $ (!\u1|u7|u1|u2|u1|sum~0_combout\ $ (((!\u1|u7|u1|u2|u0|sum~combout\) # (!\u2|u7|u1|u1|u0|sum~combout\)))) ) ) ) # ( \u5|u0|u2|u2|co~combout\ & ( 
-- !\u1|u7|u1|u2|u0|co~combout\ & ( !\u2|u7|u1|u1|u1|sum~combout\ $ (!\u1|u7|u1|u2|u1|sum~0_combout\ $ (((\u2|u7|u1|u1|u0|sum~combout\) # (\u1|u7|u1|u2|u0|sum~combout\)))) ) ) ) # ( !\u5|u0|u2|u2|co~combout\ & ( !\u1|u7|u1|u2|u0|co~combout\ & ( 
-- !\u2|u7|u1|u1|u1|sum~combout\ $ (!\u1|u7|u1|u2|u1|sum~0_combout\ $ (((\u1|u7|u1|u2|u0|sum~combout\ & \u2|u7|u1|u1|u0|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001011011001001001111001001001101101001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u2|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datac => \u2|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u2|u1|ALT_INV_sum~0_combout\,
	datae => \u5|u0|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u5|u0|u3|u0|sum~combout\);

-- Location: MLABCELL_X65_Y2_N45
\u3|u6|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u6|p\(1) = (\v3|m[1]~0_combout\ & \v4|m[11]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	combout => \u3|u6|p\(1));

-- Location: MLABCELL_X65_Y2_N48
\u3|u5|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u1|co~combout\ = ( \u3|u5|u1|u0|u0|co~0_combout\ & ( (\u3|u4|p\(1)) # (\u3|u3|u1|u0|u2|sum~combout\) ) ) # ( !\u3|u5|u1|u0|u0|co~0_combout\ & ( (\u3|u3|u1|u0|u2|sum~combout\ & \u3|u4|p\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \u3|u4|ALT_INV_p\(1),
	dataf => \u3|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u3|u5|u1|u0|u1|co~combout\);

-- Location: MLABCELL_X65_Y2_N0
\u3|u3|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u0|u2|co~combout\ = ( \v4|m[9]~8_combout\ & ( \a[0]~input_o\ & ( (\v4|m[8]~6_combout\ & ((!\v3|m[2]~1_combout\ & (\v3|m[1]~0_combout\ & \v3|m[3]~2_combout\)) # (\v3|m[2]~1_combout\ & ((\v3|m[3]~2_combout\) # (\v3|m[1]~0_combout\))))) ) ) ) # ( 
-- \v4|m[9]~8_combout\ & ( !\a[0]~input_o\ & ( (\v3|m[2]~1_combout\ & (\v4|m[8]~6_combout\ & ((\v3|m[3]~2_combout\) # (\v3|m[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001010100000000000000000000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datab => \v3|ALT_INV_m[1]~0_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \u3|u3|u1|u0|u2|co~combout\);

-- Location: MLABCELL_X65_Y2_N36
\u3|u3|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u0|u3|sum~0_combout\ = ( \v4|m[8]~6_combout\ & ( !\v3|m[4]~3_combout\ $ (((!\v3|m[3]~2_combout\) # (!\v4|m[9]~8_combout\))) ) ) # ( !\v4|m[8]~6_combout\ & ( (\v3|m[3]~2_combout\ & \v4|m[9]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u3|u1|u0|u3|sum~0_combout\);

-- Location: MLABCELL_X65_Y2_N39
\u3|u4|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(2) = (\v3|m[2]~1_combout\ & \v4|m[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[2]~1_combout\,
	datac => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(2));

-- Location: MLABCELL_X65_Y2_N24
\u3|u5|u1|u0|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u2|sum~0_combout\ = ( \u3|u4|p\(2) & ( !\u3|u3|u1|u0|u2|co~combout\ $ (\u3|u3|u1|u0|u3|sum~0_combout\) ) ) # ( !\u3|u4|p\(2) & ( !\u3|u3|u1|u0|u2|co~combout\ $ (!\u3|u3|u1|u0|u3|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u3|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u3|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	dataf => \u3|u4|ALT_INV_p\(2),
	combout => \u3|u5|u1|u0|u2|sum~0_combout\);

-- Location: MLABCELL_X65_Y2_N27
\u3|u7|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u0|u0|co~0_combout\ = ( \u3|u5|u1|u0|u0|co~0_combout\ & ( (\a[0]~input_o\ & (\v4|m[11]~10_combout\ & (!\u3|u4|p\(1) $ (\u3|u3|u1|u0|u2|sum~combout\)))) ) ) # ( !\u3|u5|u1|u0|u0|co~0_combout\ & ( (\a[0]~input_o\ & (\v4|m[11]~10_combout\ & 
-- (!\u3|u4|p\(1) $ (!\u3|u3|u1|u0|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datab => \u3|u4|ALT_INV_p\(1),
	datac => \u3|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u3|u7|u1|u0|u0|co~0_combout\);

-- Location: IOIBUF_X72_Y0_N52
\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LABCELL_X62_Y4_N15
\v4|m[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[12]~11_combout\ = ( \b[15]~input_o\ & ( !\b[12]~input_o\ $ (((!\b[11]~input_o\ & \v2|u2|u2|co~0_combout\))) ) ) # ( !\b[15]~input_o\ & ( \b[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[12]~input_o\,
	datac => \ALT_INV_b[11]~input_o\,
	datad => \v2|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[12]~11_combout\);

-- Location: LABCELL_X64_Y2_N6
\u6|u0|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u0|sum~0_combout\ = ( \u3|u7|u1|u0|u0|co~0_combout\ & ( \v4|m[12]~11_combout\ & ( !\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ (!\a[0]~input_o\ $ (\u3|u5|u1|u0|u2|sum~0_combout\))) ) ) ) # ( !\u3|u7|u1|u0|u0|co~0_combout\ & ( 
-- \v4|m[12]~11_combout\ & ( !\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ (!\a[0]~input_o\ $ (!\u3|u5|u1|u0|u2|sum~0_combout\))) ) ) ) # ( \u3|u7|u1|u0|u0|co~0_combout\ & ( !\v4|m[12]~11_combout\ & ( !\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ 
-- (!\u3|u5|u1|u0|u2|sum~0_combout\)) ) ) ) # ( !\u3|u7|u1|u0|u0|co~0_combout\ & ( !\v4|m[12]~11_combout\ & ( !\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ (\u3|u5|u1|u0|u2|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001100110010110011001101001100101101001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u6|ALT_INV_p\(1),
	datab => \u3|u5|u1|u0|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u3|u5|u1|u0|u2|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[12]~11_combout\,
	combout => \u6|u0|u3|u0|sum~0_combout\);

-- Location: LABCELL_X62_Y2_N39
\u7|u0|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u0|sum~combout\ = ( \u5|u0|u2|u3|sum~combout\ & ( !\u5|u0|u3|u0|sum~combout\ $ (!\u6|u0|u3|u0|sum~0_combout\ $ (((\u3|u7|u1|u0|u0|sum~0_combout\) # (\u7|u0|u2|u2|co~combout\)))) ) ) # ( !\u5|u0|u2|u3|sum~combout\ & ( !\u5|u0|u3|u0|sum~combout\ $ 
-- (!\u6|u0|u3|u0|sum~0_combout\ $ (((\u7|u0|u2|u2|co~combout\ & \u3|u7|u1|u0|u0|sum~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u3|u0|ALT_INV_sum~combout\,
	datab => \u7|u0|u2|u2|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	datad => \u6|u0|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u5|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u7|u0|u3|u0|sum~combout\);

-- Location: LABCELL_X64_Y2_N3
\v7|m[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[12]~10_combout\ = ( \v5|u0|u2|u2|co~0_combout\ & ( !\u7|u0|u3|u0|sum~combout\ $ (((!\u7|u0|u2|u3|sum~combout\) # (!\comb~0_combout\))) ) ) # ( !\v5|u0|u2|u2|co~0_combout\ & ( !\comb~0_combout\ $ (!\u7|u0|u3|u0|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u2|u3|ALT_INV_sum~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \u7|u0|u3|u0|ALT_INV_sum~combout\,
	dataf => \v5|u0|u2|u2|ALT_INV_co~0_combout\,
	combout => \v7|m[12]~10_combout\);

-- Location: LABCELL_X62_Y2_N12
\v5|u0|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u3|u0|co~0_combout\ = ( \u6|u0|u3|u0|sum~0_combout\ & ( \u5|u0|u2|u3|sum~combout\ & ( (!\u5|u0|u3|u0|sum~combout\ & (\v5|u0|u2|u2|co~0_combout\ & (!\u7|u0|u2|u2|co~combout\ $ (!\u3|u7|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( 
-- !\u6|u0|u3|u0|sum~0_combout\ & ( \u5|u0|u2|u3|sum~combout\ & ( (\u5|u0|u3|u0|sum~combout\ & (\v5|u0|u2|u2|co~0_combout\ & (!\u7|u0|u2|u2|co~combout\ $ (!\u3|u7|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( \u6|u0|u3|u0|sum~0_combout\ & ( 
-- !\u5|u0|u2|u3|sum~combout\ & ( (\v5|u0|u2|u2|co~0_combout\ & ((!\u5|u0|u3|u0|sum~combout\ & (\u7|u0|u2|u2|co~combout\ & \u3|u7|u1|u0|u0|sum~0_combout\)) # (\u5|u0|u3|u0|sum~combout\ & (!\u7|u0|u2|u2|co~combout\ & !\u3|u7|u1|u0|u0|sum~0_combout\)))) ) ) ) 
-- # ( !\u6|u0|u3|u0|sum~0_combout\ & ( !\u5|u0|u2|u3|sum~combout\ & ( (\v5|u0|u2|u2|co~0_combout\ & ((!\u5|u0|u3|u0|sum~combout\ & (!\u7|u0|u2|u2|co~combout\ & !\u3|u7|u1|u0|u0|sum~0_combout\)) # (\u5|u0|u3|u0|sum~combout\ & (\u7|u0|u2|u2|co~combout\ & 
-- \u3|u7|u1|u0|u0|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001000001000000001000000001000001000000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u3|u0|ALT_INV_sum~combout\,
	datab => \u7|u0|u2|u2|ALT_INV_co~combout\,
	datac => \v5|u0|u2|u2|ALT_INV_co~0_combout\,
	datad => \u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	datae => \u6|u0|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u5|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \v5|u0|u3|u0|co~0_combout\);

-- Location: LABCELL_X62_Y2_N36
\u7|u0|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u0|co~combout\ = ( \u5|u0|u2|u3|sum~combout\ & ( (!\u5|u0|u3|u0|sum~combout\ & (\u6|u0|u3|u0|sum~0_combout\ & ((\u3|u7|u1|u0|u0|sum~0_combout\) # (\u7|u0|u2|u2|co~combout\)))) # (\u5|u0|u3|u0|sum~combout\ & (((\u3|u7|u1|u0|u0|sum~0_combout\) # 
-- (\u6|u0|u3|u0|sum~0_combout\)) # (\u7|u0|u2|u2|co~combout\))) ) ) # ( !\u5|u0|u2|u3|sum~combout\ & ( (!\u5|u0|u3|u0|sum~combout\ & (\u7|u0|u2|u2|co~combout\ & (\u6|u0|u3|u0|sum~0_combout\ & \u3|u7|u1|u0|u0|sum~0_combout\))) # (\u5|u0|u3|u0|sum~combout\ & 
-- (((\u7|u0|u2|u2|co~combout\ & \u3|u7|u1|u0|u0|sum~0_combout\)) # (\u6|u0|u3|u0|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u3|u0|ALT_INV_sum~combout\,
	datab => \u7|u0|u2|u2|ALT_INV_co~combout\,
	datac => \u6|u0|u3|u0|ALT_INV_sum~0_combout\,
	datad => \u3|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u5|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u7|u0|u3|u0|co~combout\);

-- Location: MLABCELL_X65_Y2_N12
\u3|u5|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u2|co~combout\ = ( \u3|u3|u1|u0|u2|co~combout\ & ( \u3|u5|u1|u0|u0|co~0_combout\ & ( (!\u3|u4|p\(2) & (!\u3|u3|u1|u0|u3|sum~0_combout\ & ((\u3|u4|p\(1)) # (\u3|u3|u1|u0|u2|sum~combout\)))) # (\u3|u4|p\(2) & (((!\u3|u3|u1|u0|u3|sum~0_combout\) 
-- # (\u3|u4|p\(1))) # (\u3|u3|u1|u0|u2|sum~combout\))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( \u3|u5|u1|u0|u0|co~0_combout\ & ( (!\u3|u4|p\(2) & (\u3|u3|u1|u0|u3|sum~0_combout\ & ((\u3|u4|p\(1)) # (\u3|u3|u1|u0|u2|sum~combout\)))) # (\u3|u4|p\(2) & 
-- (((\u3|u4|p\(1)) # (\u3|u3|u1|u0|u3|sum~0_combout\)) # (\u3|u3|u1|u0|u2|sum~combout\))) ) ) ) # ( \u3|u3|u1|u0|u2|co~combout\ & ( !\u3|u5|u1|u0|u0|co~0_combout\ & ( (!\u3|u4|p\(2) & (\u3|u3|u1|u0|u2|sum~combout\ & (!\u3|u3|u1|u0|u3|sum~0_combout\ & 
-- \u3|u4|p\(1)))) # (\u3|u4|p\(2) & ((!\u3|u3|u1|u0|u3|sum~0_combout\) # ((\u3|u3|u1|u0|u2|sum~combout\ & \u3|u4|p\(1))))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( !\u3|u5|u1|u0|u0|co~0_combout\ & ( (!\u3|u4|p\(2) & (\u3|u3|u1|u0|u2|sum~combout\ & 
-- (\u3|u3|u1|u0|u3|sum~0_combout\ & \u3|u4|p\(1)))) # (\u3|u4|p\(2) & (((\u3|u3|u1|u0|u2|sum~combout\ & \u3|u4|p\(1))) # (\u3|u3|u1|u0|u3|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111010100000111000100010111010111110111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_p\(2),
	datab => \u3|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datac => \u3|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datad => \u3|u4|ALT_INV_p\(1),
	datae => \u3|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u3|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u3|u5|u1|u0|u2|co~combout\);

-- Location: MLABCELL_X65_Y2_N18
\u3|u3|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u0|sum~combout\ = ( \u3|u3|u1|u0|u2|co~combout\ & ( \v3|m[3]~2_combout\ & ( (!\v4|m[8]~6_combout\ & (\v4|m[9]~8_combout\ & (!\v3|m[4]~3_combout\))) # (\v4|m[8]~6_combout\ & (!\v4|m[9]~8_combout\ $ (!\v3|m[4]~3_combout\ $ 
-- (\v3|m[5]~4_combout\)))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( \v3|m[3]~2_combout\ & ( (!\v4|m[8]~6_combout\ & (\v4|m[9]~8_combout\ & (\v3|m[4]~3_combout\))) # (\v4|m[8]~6_combout\ & (((\v3|m[5]~4_combout\)))) ) ) ) # ( \u3|u3|u1|u0|u2|co~combout\ & 
-- ( !\v3|m[3]~2_combout\ & ( (!\v3|m[4]~3_combout\ & (((\v3|m[5]~4_combout\ & \v4|m[8]~6_combout\)))) # (\v3|m[4]~3_combout\ & (!\v4|m[9]~8_combout\ $ (((!\v4|m[8]~6_combout\) # (\v3|m[5]~4_combout\))))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( 
-- !\v3|m[3]~2_combout\ & ( (!\v4|m[9]~8_combout\ & (((\v3|m[5]~4_combout\ & \v4|m[8]~6_combout\)))) # (\v4|m[9]~8_combout\ & (!\v3|m[4]~3_combout\ $ (((!\v3|m[5]~4_combout\) # (!\v4|m[8]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011110000100010010110100010001000011110100010001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~8_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \u3|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u3|u3|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X66_Y3_N39
\u3|u4|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(3) = ( \v3|m[3]~2_combout\ & ( \v4|m[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v3|ALT_INV_m[3]~2_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(3));

-- Location: MLABCELL_X65_Y3_N3
\u3|u5|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u3|sum~combout\ = ( \u3|u4|p\(3) & ( !\u3|u5|u1|u0|u2|co~combout\ $ (\u3|u3|u1|u1|u0|sum~combout\) ) ) # ( !\u3|u4|p\(3) & ( !\u3|u5|u1|u0|u2|co~combout\ $ (!\u3|u3|u1|u1|u0|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \u3|u4|ALT_INV_p\(3),
	combout => \u3|u5|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X64_Y2_N12
\u6|u0|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u0|co~0_combout\ = ( \u3|u7|u1|u0|u0|co~0_combout\ & ( \v4|m[12]~11_combout\ & ( (\a[0]~input_o\ & (!\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ (!\u3|u5|u1|u0|u2|sum~0_combout\)))) ) ) ) # ( !\u3|u7|u1|u0|u0|co~0_combout\ & ( 
-- \v4|m[12]~11_combout\ & ( (\a[0]~input_o\ & (!\u3|u6|p\(1) $ (!\u3|u5|u1|u0|u1|co~combout\ $ (\u3|u5|u1|u0|u2|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000010010000100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u6|ALT_INV_p\(1),
	datab => \u3|u5|u1|u0|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \u3|u5|u1|u0|u2|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \v4|ALT_INV_m[12]~11_combout\,
	combout => \u6|u0|u3|u0|co~0_combout\);

-- Location: LABCELL_X64_Y2_N18
\u3|u7|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u0|u1|co~combout\ = ( \u3|u6|p\(1) & ( (!\u3|u5|u1|u0|u2|sum~0_combout\ $ (!\u3|u5|u1|u0|u1|co~combout\)) # (\u3|u7|u1|u0|u0|co~0_combout\) ) ) # ( !\u3|u6|p\(1) & ( (\u3|u7|u1|u0|u0|co~0_combout\ & (!\u3|u5|u1|u0|u2|sum~0_combout\ $ 
-- (!\u3|u5|u1|u0|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u5|u1|u0|u2|ALT_INV_sum~0_combout\,
	datac => \u3|u7|u1|u0|u0|ALT_INV_co~0_combout\,
	datad => \u3|u5|u1|u0|u1|ALT_INV_co~combout\,
	dataf => \u3|u6|ALT_INV_p\(1),
	combout => \u3|u7|u1|u0|u1|co~combout\);

-- Location: IOIBUF_X66_Y0_N75
\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LABCELL_X62_Y4_N12
\v4|m[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[13]~12_combout\ = ( \b[15]~input_o\ & ( !\b[13]~input_o\ $ (((!\b[12]~input_o\ & (!\b[11]~input_o\ & \v2|u2|u2|co~0_combout\)))) ) ) # ( !\b[15]~input_o\ & ( \b[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110111000010001111011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[12]~input_o\,
	datab => \ALT_INV_b[11]~input_o\,
	datac => \v2|u2|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_b[13]~input_o\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v4|m[13]~12_combout\);

-- Location: LABCELL_X64_Y2_N21
\u4|u3|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u0|u0|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( !\a[0]~input_o\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[1]~0_combout\))) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v4|m[12]~11_combout\ & \v3|m[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[0]~input_o\,
	datac => \v4|ALT_INV_m[12]~11_combout\,
	datad => \v3|ALT_INV_m[1]~0_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X63_Y2_N33
\u3|u6|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u6|p\(2) = (\v4|m[11]~10_combout\ & \v3|m[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datac => \v3|ALT_INV_m[2]~1_combout\,
	combout => \u3|u6|p\(2));

-- Location: LABCELL_X63_Y2_N39
\u6|u0|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u1|sum~combout\ = ( \u3|u6|p\(2) & ( !\u3|u5|u1|u0|u3|sum~combout\ $ (!\u6|u0|u3|u0|co~0_combout\ $ (!\u3|u7|u1|u0|u1|co~combout\ $ (\u4|u3|u1|u0|u0|sum~0_combout\))) ) ) # ( !\u3|u6|p\(2) & ( !\u3|u5|u1|u0|u3|sum~combout\ $ 
-- (!\u6|u0|u3|u0|co~0_combout\ $ (!\u3|u7|u1|u0|u1|co~combout\ $ (!\u4|u3|u1|u0|u0|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u6|u0|u3|u0|ALT_INV_co~0_combout\,
	datac => \u3|u7|u1|u0|u1|ALT_INV_co~combout\,
	datad => \u4|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u6|ALT_INV_p\(2),
	combout => \u6|u0|u3|u1|sum~combout\);

-- Location: MLABCELL_X59_Y5_N54
\u1|u4|p[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(11) = ( \v4|m[2]~1_combout\ & ( \v3|m[11]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[11]~10_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(11));

-- Location: IOIBUF_X54_Y0_N18
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: MLABCELL_X59_Y4_N27
\v3|m[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[13]~12_combout\ = ( \a[15]~input_o\ & ( !\a[13]~input_o\ $ (((\v1|u2|u2|co~0_combout\ & (!\a[12]~input_o\ & !\a[11]~input_o\)))) ) ) # ( !\a[15]~input_o\ & ( \a[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110110100111100001011010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u2|u2|ALT_INV_co~0_combout\,
	datab => \ALT_INV_a[12]~input_o\,
	datac => \ALT_INV_a[13]~input_o\,
	datad => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m[13]~12_combout\);

-- Location: MLABCELL_X59_Y5_N57
\u1|u3|u1|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u0|sum~0_combout\ = ( \v3|m[12]~11_combout\ & ( !\v4|m[1]~0_combout\ $ (((!\b[0]~input_o\) # (!\v3|m[13]~12_combout\))) ) ) # ( !\v3|m[12]~11_combout\ & ( (\b[0]~input_o\ & \v3|m[13]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \v4|ALT_INV_m[1]~0_combout\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u1|u3|u1|u3|u0|sum~0_combout\);

-- Location: MLABCELL_X59_Y5_N30
\u1|u5|u1|u2|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u3|sum~0_combout\ = ( \u1|u3|u1|u3|u0|sum~0_combout\ & ( \u1|u2|p\(11) & ( !\u1|u4|p\(11) $ ((((\u1|u1|p\(12)) # (\u1|u3|u1|u2|u2|co~0_combout\)) # (\u1|u3|u1|u2|u2|co~1_combout\))) ) ) ) # ( !\u1|u3|u1|u3|u0|sum~0_combout\ & ( \u1|u2|p\(11) 
-- & ( !\u1|u4|p\(11) $ (((!\u1|u3|u1|u2|u2|co~1_combout\ & (!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u1|p\(12))))) ) ) ) # ( \u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u2|p\(11) & ( !\u1|u4|p\(11) $ (((\u1|u1|p\(12) & ((\u1|u3|u1|u2|u2|co~0_combout\) # 
-- (\u1|u3|u1|u2|u2|co~1_combout\))))) ) ) ) # ( !\u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u2|p\(11) & ( !\u1|u4|p\(11) $ (((!\u1|u1|p\(12)) # ((!\u1|u3|u1|u2|u2|co~1_combout\ & !\u1|u3|u1|u2|u2|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101101010101010101001010101101010101010101001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(11),
	datab => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datac => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datad => \u1|u1|ALT_INV_p\(12),
	datae => \u1|u3|u1|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u1|u2|ALT_INV_p\(11),
	combout => \u1|u5|u1|u2|u3|sum~0_combout\);

-- Location: LABCELL_X64_Y6_N18
\u1|u5|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u3|sum~combout\ = ( \u1|u3|u1|u2|u2|sum~combout\ & ( \u1|u4|p\(9) & ( !\u1|u5|u1|u2|u3|sum~0_combout\ $ (((!\u1|u4|p\(10) & !\u1|u3|u1|u2|u3|sum~combout\))) ) ) ) # ( !\u1|u3|u1|u2|u2|sum~combout\ & ( \u1|u4|p\(9) & ( 
-- !\u1|u5|u1|u2|u3|sum~0_combout\ $ (((!\u1|u4|p\(10) & ((!\u1|u5|u1|u2|u0|co~combout\) # (!\u1|u3|u1|u2|u3|sum~combout\))) # (\u1|u4|p\(10) & (!\u1|u5|u1|u2|u0|co~combout\ & !\u1|u3|u1|u2|u3|sum~combout\)))) ) ) ) # ( \u1|u3|u1|u2|u2|sum~combout\ & ( 
-- !\u1|u4|p\(9) & ( !\u1|u5|u1|u2|u3|sum~0_combout\ $ (((!\u1|u4|p\(10) & ((!\u1|u5|u1|u2|u0|co~combout\) # (!\u1|u3|u1|u2|u3|sum~combout\))) # (\u1|u4|p\(10) & (!\u1|u5|u1|u2|u0|co~combout\ & !\u1|u3|u1|u2|u3|sum~combout\)))) ) ) ) # ( 
-- !\u1|u3|u1|u2|u2|sum~combout\ & ( !\u1|u4|p\(9) & ( !\u1|u5|u1|u2|u3|sum~0_combout\ $ (((!\u1|u4|p\(10)) # (!\u1|u3|u1|u2|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000101111110100000010111111010000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(10),
	datab => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u1|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u2|u3|ALT_INV_sum~0_combout\,
	datae => \u1|u3|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \u1|u4|ALT_INV_p\(9),
	combout => \u1|u5|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X64_Y6_N3
\u1|u5|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u2|sum~combout\ = ( \u1|u4|p\(9) & ( !\u1|u3|u1|u2|u3|sum~combout\ $ (!\u1|u4|p\(10) $ (((\u1|u3|u1|u2|u2|sum~combout\) # (\u1|u5|u1|u2|u0|co~combout\)))) ) ) # ( !\u1|u4|p\(9) & ( !\u1|u3|u1|u2|u3|sum~combout\ $ (!\u1|u4|p\(10) $ 
-- (((\u1|u5|u1|u2|u0|co~combout\ & \u1|u3|u1|u2|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \u1|u4|ALT_INV_p\(10),
	datac => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u1|u3|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \u1|u4|ALT_INV_p\(9),
	combout => \u1|u5|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X65_Y6_N18
\u1|u7|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u2|sum~combout\ = ( \v3|m[10]~9_combout\ & ( \u1|u5|u1|u2|u2|sum~combout\ & ( !\u1|u5|u1|u2|u3|sum~combout\ $ (((!\u1|u7|u1|u2|u0|co~combout\ & ((!\v4|m[3]~2_combout\) # (\v3|m[9]~8_combout\))) # (\u1|u7|u1|u2|u0|co~combout\ & 
-- ((\v4|m[3]~2_combout\))))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u1|u5|u1|u2|u2|sum~combout\ & ( !\u1|u5|u1|u2|u3|sum~combout\ $ (((!\u1|u7|u1|u2|u0|co~combout\ & ((!\v3|m[9]~8_combout\) # (!\v4|m[3]~2_combout\))))) ) ) ) # ( \v3|m[10]~9_combout\ & ( 
-- !\u1|u5|u1|u2|u2|sum~combout\ & ( !\u1|u5|u1|u2|u3|sum~combout\ $ (((!\v4|m[3]~2_combout\) # ((\u1|u7|u1|u2|u0|co~combout\ & \v3|m[9]~8_combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u1|u5|u1|u2|u2|sum~combout\ & ( !\u1|u5|u1|u2|u3|sum~combout\ $ 
-- (((!\u1|u7|u1|u2|u0|co~combout\) # ((!\v3|m[9]~8_combout\) # (!\v4|m[3]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000011101111000101010111101010000101100010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u2|u0|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[3]~2_combout\,
	datad => \u1|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u1|u5|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u2|u2|sum~combout\);

-- Location: LABCELL_X66_Y6_N18
\u2|u7|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u1|co~combout\ = ( \u2|u5|u1|u1|u1|sum~combout\ & ( \v3|m[5]~4_combout\ & ( (!\u2|u7|u1|u0|u3|co~combout\ & (\v4|m[7]~5_combout\ & ((\v3|m[4]~3_combout\) # (\u2|u5|u1|u1|u2|sum~combout\)))) # (\u2|u7|u1|u0|u3|co~combout\ & 
-- (((\v4|m[7]~5_combout\)) # (\u2|u5|u1|u1|u2|sum~combout\))) ) ) ) # ( !\u2|u5|u1|u1|u1|sum~combout\ & ( \v3|m[5]~4_combout\ & ( (\v4|m[7]~5_combout\ & (((\u2|u7|u1|u0|u3|co~combout\ & \v3|m[4]~3_combout\)) # (\u2|u5|u1|u1|u2|sum~combout\))) ) ) ) # ( 
-- \u2|u5|u1|u1|u1|sum~combout\ & ( !\v3|m[5]~4_combout\ & ( (\u2|u5|u1|u1|u2|sum~combout\ & (((\v4|m[7]~5_combout\ & \v3|m[4]~3_combout\)) # (\u2|u7|u1|u0|u3|co~combout\))) ) ) ) # ( !\u2|u5|u1|u1|u1|sum~combout\ & ( !\v3|m[5]~4_combout\ & ( 
-- (\u2|u7|u1|u0|u3|co~combout\ & (\u2|u5|u1|u1|u2|sum~combout\ & (\v4|m[7]~5_combout\ & \v3|m[4]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100010001001100000011000001110001011100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u0|u3|ALT_INV_co~combout\,
	datab => \u2|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	datae => \u2|u5|u1|u1|u1|ALT_INV_sum~combout\,
	dataf => \v3|ALT_INV_m[5]~4_combout\,
	combout => \u2|u7|u1|u1|u1|co~combout\);

-- Location: MLABCELL_X65_Y5_N12
\u2|u3|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u1|u3|co~combout\ = ( \u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & ( (\v3|m[7]~6_combout\ & (\v4|m[5]~4_combout\ & ((\v3|m[6]~5_combout\) # (\v3|m[8]~7_combout\)))) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( \v4|m[4]~3_combout\ & ( 
-- (!\v3|m[7]~6_combout\ & (\v3|m[8]~7_combout\ & (\v4|m[5]~4_combout\ & \v3|m[6]~5_combout\))) # (\v3|m[7]~6_combout\ & (((\v4|m[5]~4_combout\)) # (\v3|m[8]~7_combout\))) ) ) ) # ( !\u2|u3|u1|u1|u1|co~combout\ & ( !\v4|m[4]~3_combout\ & ( 
-- (\v3|m[7]~6_combout\ & (\v4|m[5]~4_combout\ & \v3|m[6]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000010101000101110000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v3|ALT_INV_m[8]~7_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	datae => \u2|u3|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u1|u3|co~combout\);

-- Location: MLABCELL_X65_Y5_N51
\u2|u3|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u0|sum~combout\ = ( \v4|m[5]~4_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( !\v3|m[8]~7_combout\ $ (((\v4|m[4]~3_combout\ & \v3|m[9]~8_combout\))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( (!\v4|m[4]~3_combout\) # 
-- (!\v3|m[9]~8_combout\) ) ) ) # ( \v4|m[5]~4_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( !\v3|m[8]~7_combout\ $ (((!\v4|m[4]~3_combout\) # (!\v3|m[9]~8_combout\))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( (\v4|m[4]~3_combout\ & 
-- \v3|m[9]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101100011011011111010111110101100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[4]~3_combout\,
	datab => \v3|ALT_INV_m[8]~7_combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datae => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \u2|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X66_Y6_N24
\u2|u5|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u2|co~combout\ = ( \v3|m[5]~4_combout\ & ( \v3|m[6]~5_combout\ & ( (!\u2|u3|u1|u1|u3|sum~combout\ & (\v4|m[6]~7_combout\ & ((\u2|u3|u1|u1|u2|sum~combout\) # (\u2|u5|u1|u1|u0|co~combout\)))) # (\u2|u3|u1|u1|u3|sum~combout\ & 
-- (((\u2|u5|u1|u1|u0|co~combout\ & \u2|u3|u1|u1|u2|sum~combout\)) # (\v4|m[6]~7_combout\))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \v3|m[6]~5_combout\ & ( (!\u2|u3|u1|u1|u3|sum~combout\ & (\u2|u5|u1|u1|u0|co~combout\ & (\v4|m[6]~7_combout\ & 
-- \u2|u3|u1|u1|u2|sum~combout\))) # (\u2|u3|u1|u1|u3|sum~combout\ & (((\u2|u5|u1|u1|u0|co~combout\ & \u2|u3|u1|u1|u2|sum~combout\)) # (\v4|m[6]~7_combout\))) ) ) ) # ( \v3|m[5]~4_combout\ & ( !\v3|m[6]~5_combout\ & ( (\u2|u3|u1|u1|u3|sum~combout\ & 
-- ((!\u2|u5|u1|u1|u0|co~combout\ & (\v4|m[6]~7_combout\ & \u2|u3|u1|u1|u2|sum~combout\)) # (\u2|u5|u1|u1|u0|co~combout\ & ((\u2|u3|u1|u1|u2|sum~combout\) # (\v4|m[6]~7_combout\))))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\v3|m[6]~5_combout\ & ( 
-- (\u2|u3|u1|u1|u3|sum~combout\ & (\u2|u5|u1|u1|u0|co~combout\ & \u2|u3|u1|u1|u2|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000010001010100000101000101110000011100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u1|u3|ALT_INV_sum~combout\,
	datab => \u2|u5|u1|u1|u0|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v3|ALT_INV_m[6]~5_combout\,
	combout => \u2|u5|u1|u1|u2|co~combout\);

-- Location: LABCELL_X66_Y3_N3
\u2|u5|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u1|u3|sum~combout\ = ( \v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u0|sum~combout\ $ (\v4|m[6]~7_combout\) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u0|sum~combout\ ) ) ) # ( 
-- \v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u0|sum~combout\ $ (!\v4|m[6]~7_combout\) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( \u2|u3|u1|u2|u0|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110011001100110011001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u2|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u1|u3|sum~combout\);

-- Location: MLABCELL_X65_Y6_N27
\u2|u7|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u2|sum~combout\ = !\u2|u7|u1|u1|u1|co~combout\ $ (!\u2|u5|u1|u1|u3|sum~combout\ $ (((\v4|m[7]~5_combout\ & \v3|m[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datab => \v3|ALT_INV_m[6]~5_combout\,
	datac => \u2|u7|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u2|u5|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u1|u2|sum~combout\);

-- Location: MLABCELL_X65_Y6_N12
\u5|u0|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u0|co~combout\ = ( \u5|u0|u2|u2|co~combout\ & ( \u1|u7|u1|u2|u0|co~combout\ & ( (!\u2|u7|u1|u1|u1|sum~combout\ & (!\u1|u7|u1|u2|u1|sum~0_combout\ & ((\u2|u7|u1|u1|u0|sum~combout\) # (\u1|u7|u1|u2|u0|sum~combout\)))) # 
-- (\u2|u7|u1|u1|u1|sum~combout\ & (((!\u1|u7|u1|u2|u1|sum~0_combout\) # (\u2|u7|u1|u1|u0|sum~combout\)) # (\u1|u7|u1|u2|u0|sum~combout\))) ) ) ) # ( !\u5|u0|u2|u2|co~combout\ & ( \u1|u7|u1|u2|u0|co~combout\ & ( (!\u2|u7|u1|u1|u1|sum~combout\ & 
-- (\u1|u7|u1|u2|u0|sum~combout\ & (\u2|u7|u1|u1|u0|sum~combout\ & !\u1|u7|u1|u2|u1|sum~0_combout\))) # (\u2|u7|u1|u1|u1|sum~combout\ & ((!\u1|u7|u1|u2|u1|sum~0_combout\) # ((\u1|u7|u1|u2|u0|sum~combout\ & \u2|u7|u1|u1|u0|sum~combout\)))) ) ) ) # ( 
-- \u5|u0|u2|u2|co~combout\ & ( !\u1|u7|u1|u2|u0|co~combout\ & ( (!\u2|u7|u1|u1|u1|sum~combout\ & (\u1|u7|u1|u2|u1|sum~0_combout\ & ((\u2|u7|u1|u1|u0|sum~combout\) # (\u1|u7|u1|u2|u0|sum~combout\)))) # (\u2|u7|u1|u1|u1|sum~combout\ & 
-- (((\u1|u7|u1|u2|u1|sum~0_combout\) # (\u2|u7|u1|u1|u0|sum~combout\)) # (\u1|u7|u1|u2|u0|sum~combout\))) ) ) ) # ( !\u5|u0|u2|u2|co~combout\ & ( !\u1|u7|u1|u2|u0|co~combout\ & ( (!\u2|u7|u1|u1|u1|sum~combout\ & (\u1|u7|u1|u2|u0|sum~combout\ & 
-- (\u2|u7|u1|u1|u0|sum~combout\ & \u1|u7|u1|u2|u1|sum~0_combout\))) # (\u2|u7|u1|u1|u1|sum~combout\ & (((\u1|u7|u1|u2|u0|sum~combout\ & \u2|u7|u1|u1|u0|sum~combout\)) # (\u1|u7|u1|u2|u1|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100110111111100110111000000010111111100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u2|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datac => \u2|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u2|u1|ALT_INV_sum~0_combout\,
	datae => \u5|u0|u2|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u5|u0|u3|u0|co~combout\);

-- Location: MLABCELL_X65_Y6_N24
\u5|u0|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u1|sum~combout\ = ( \u5|u0|u3|u0|co~combout\ & ( !\u1|u7|u1|u2|u2|sum~combout\ $ (\u2|u7|u1|u1|u2|sum~combout\) ) ) # ( !\u5|u0|u3|u0|co~combout\ & ( !\u1|u7|u1|u2|u2|sum~combout\ $ (!\u2|u7|u1|u1|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u7|u1|u2|u2|ALT_INV_sum~combout\,
	datad => \u2|u7|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|u0|ALT_INV_co~combout\,
	combout => \u5|u0|u3|u1|sum~combout\);

-- Location: LABCELL_X63_Y2_N45
\u7|u0|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u1|sum~combout\ = ( \u5|u0|u3|u1|sum~combout\ & ( !\u7|u0|u3|u0|co~combout\ $ (\u6|u0|u3|u1|sum~combout\) ) ) # ( !\u5|u0|u3|u1|sum~combout\ & ( !\u7|u0|u3|u0|co~combout\ $ (!\u6|u0|u3|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u0|ALT_INV_co~combout\,
	datab => \u6|u0|u3|u1|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|u1|ALT_INV_sum~combout\,
	combout => \u7|u0|u3|u1|sum~combout\);

-- Location: LABCELL_X63_Y2_N51
\v7|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[13]~11_combout\ = !\u7|u0|u3|u1|sum~combout\ $ (((!\comb~0_combout\) # (\v5|u0|u3|u0|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010100001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u0|u3|u0|ALT_INV_co~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \u7|u0|u3|u1|ALT_INV_sum~combout\,
	combout => \v7|m[13]~11_combout\);

-- Location: LABCELL_X63_Y2_N30
\u3|u6|p[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u6|p\(3) = (\v4|m[11]~10_combout\ & \v3|m[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datad => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u3|u6|p\(3));

-- Location: MLABCELL_X65_Y3_N9
\u3|u3|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u1|sum~0_combout\ = ( \v3|m[6]~5_combout\ & ( !\v4|m[8]~6_combout\ $ (((!\v4|m[9]~8_combout\) # (!\v3|m[5]~4_combout\))) ) ) # ( !\v3|m[6]~5_combout\ & ( (\v4|m[9]~8_combout\ & \v3|m[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[8]~6_combout\,
	datad => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v3|ALT_INV_m[6]~5_combout\,
	combout => \u3|u3|u1|u1|u1|sum~0_combout\);

-- Location: MLABCELL_X65_Y3_N45
\u3|u4|p[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(4) = ( \v4|m[10]~9_combout\ & ( \v3|m[4]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(4));

-- Location: MLABCELL_X65_Y2_N54
\u3|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u0|co~combout\ = ( \u3|u3|u1|u0|u2|co~combout\ & ( \v3|m[3]~2_combout\ & ( (!\v4|m[9]~8_combout\ & (\v3|m[4]~3_combout\ & (\v3|m[5]~4_combout\ & \v4|m[8]~6_combout\))) # (\v4|m[9]~8_combout\ & (((\v3|m[5]~4_combout\ & \v4|m[8]~6_combout\)) # 
-- (\v3|m[4]~3_combout\))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( \v3|m[3]~2_combout\ & ( (\v4|m[9]~8_combout\ & (\v3|m[4]~3_combout\ & \v4|m[8]~6_combout\)) ) ) ) # ( \u3|u3|u1|u0|u2|co~combout\ & ( !\v3|m[3]~2_combout\ & ( (\v3|m[4]~3_combout\ & 
-- (\v4|m[8]~6_combout\ & ((\v3|m[5]~4_combout\) # (\v4|m[9]~8_combout\)))) ) ) ) # ( !\u3|u3|u1|u0|u2|co~combout\ & ( !\v3|m[3]~2_combout\ & ( (\v4|m[9]~8_combout\ & (\v3|m[4]~3_combout\ & (\v3|m[5]~4_combout\ & \v4|m[8]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000001001100000000000100010001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~8_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \u3|u3|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u3|u3|u1|u1|u0|co~combout\);

-- Location: MLABCELL_X65_Y3_N48
\u3|u5|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u0|sum~0_combout\ = ( \u3|u3|u1|u1|u0|co~combout\ & ( !\u3|u3|u1|u1|u1|sum~0_combout\ $ (\u3|u4|p\(4)) ) ) # ( !\u3|u3|u1|u1|u0|co~combout\ & ( !\u3|u3|u1|u1|u1|sum~0_combout\ $ (!\u3|u4|p\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	datad => \u3|u4|ALT_INV_p\(4),
	dataf => \u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u1|u0|sum~0_combout\);

-- Location: MLABCELL_X65_Y3_N0
\u3|u5|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u0|u3|co~combout\ = ( \u3|u4|p\(3) & ( (\u3|u3|u1|u1|u0|sum~combout\) # (\u3|u5|u1|u0|u2|co~combout\) ) ) # ( !\u3|u4|p\(3) & ( (\u3|u5|u1|u0|u2|co~combout\ & \u3|u3|u1|u1|u0|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \u3|u4|ALT_INV_p\(3),
	combout => \u3|u5|u1|u0|u3|co~combout\);

-- Location: LABCELL_X63_Y2_N24
\u3|u7|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u0|u3|sum~combout\ = ( \u3|u5|u1|u1|u0|sum~0_combout\ & ( \u3|u5|u1|u0|u3|co~combout\ & ( !\u3|u6|p\(3) $ (((!\u3|u5|u1|u0|u3|sum~combout\ & ((!\u3|u6|p\(2)) # (!\u3|u7|u1|u0|u1|co~combout\))) # (\u3|u5|u1|u0|u3|sum~combout\ & (!\u3|u6|p\(2) & 
-- !\u3|u7|u1|u0|u1|co~combout\)))) ) ) ) # ( !\u3|u5|u1|u1|u0|sum~0_combout\ & ( \u3|u5|u1|u0|u3|co~combout\ & ( !\u3|u6|p\(3) $ (((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & \u3|u7|u1|u0|u1|co~combout\)) # (\u3|u5|u1|u0|u3|sum~combout\ & 
-- ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2)))))) ) ) ) # ( \u3|u5|u1|u1|u0|sum~0_combout\ & ( !\u3|u5|u1|u0|u3|co~combout\ & ( !\u3|u6|p\(3) $ (((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & \u3|u7|u1|u0|u1|co~combout\)) # 
-- (\u3|u5|u1|u0|u3|sum~combout\ & ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2)))))) ) ) ) # ( !\u3|u5|u1|u1|u0|sum~0_combout\ & ( !\u3|u5|u1|u0|u3|co~combout\ & ( !\u3|u6|p\(3) $ (((!\u3|u5|u1|u0|u3|sum~combout\ & ((!\u3|u6|p\(2)) # 
-- (!\u3|u7|u1|u0|u1|co~combout\))) # (\u3|u5|u1|u0|u3|sum~combout\ & (!\u3|u6|p\(2) & !\u3|u7|u1|u0|u1|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100110010011001001111001001100100110011011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u3|u6|ALT_INV_p\(3),
	datac => \u3|u6|ALT_INV_p\(2),
	datad => \u3|u7|u1|u0|u1|ALT_INV_co~combout\,
	datae => \u3|u5|u1|u1|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u5|u1|u0|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X63_Y2_N36
\u6|u0|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u1|co~combout\ = ( \u3|u7|u1|u0|u1|co~combout\ & ( (!\u6|u0|u3|u0|co~0_combout\ & (\u4|u3|u1|u0|u0|sum~0_combout\ & (!\u3|u5|u1|u0|u3|sum~combout\ $ (\u3|u6|p\(2))))) # (\u6|u0|u3|u0|co~0_combout\ & ((!\u3|u5|u1|u0|u3|sum~combout\ $ 
-- (\u3|u6|p\(2))) # (\u4|u3|u1|u0|u0|sum~0_combout\))) ) ) # ( !\u3|u7|u1|u0|u1|co~combout\ & ( (!\u6|u0|u3|u0|co~0_combout\ & (\u4|u3|u1|u0|u0|sum~0_combout\ & (!\u3|u5|u1|u0|u3|sum~combout\ $ (!\u3|u6|p\(2))))) # (\u6|u0|u3|u0|co~0_combout\ & 
-- ((!\u3|u5|u1|u0|u3|sum~combout\ $ (!\u3|u6|p\(2))) # (\u4|u3|u1|u0|u0|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100100001101101110010000110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u6|u0|u3|u0|ALT_INV_co~0_combout\,
	datac => \u3|u6|ALT_INV_p\(2),
	datad => \u4|u3|u1|u0|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u7|u1|u0|u1|ALT_INV_co~combout\,
	combout => \u6|u0|u3|u1|co~combout\);

-- Location: IOIBUF_X74_Y0_N41
\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LABCELL_X62_Y4_N18
\v4|m[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m[14]~13_combout\ = ( \b[11]~input_o\ & ( \v2|u2|u2|co~0_combout\ & ( !\b[14]~input_o\ $ (!\b[15]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( \v2|u2|u2|co~0_combout\ & ( !\b[14]~input_o\ $ (((!\b[15]~input_o\) # ((!\b[13]~input_o\ & !\b[12]~input_o\)))) 
-- ) ) ) # ( \b[11]~input_o\ & ( !\v2|u2|u2|co~0_combout\ & ( !\b[14]~input_o\ $ (!\b[15]~input_o\) ) ) ) # ( !\b[11]~input_o\ & ( !\v2|u2|u2|co~0_combout\ & ( !\b[14]~input_o\ $ (!\b[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101011010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[14]~input_o\,
	datab => \ALT_INV_b[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \v2|u2|u2|ALT_INV_co~0_combout\,
	combout => \v4|m[14]~13_combout\);

-- Location: LABCELL_X64_Y2_N54
\u4|u5|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u0|sum~0_combout\ = ( \v3|m[1]~0_combout\ & ( \v4|m[13]~12_combout\ & ( (!\a[0]~input_o\ & (((!\v3|m[2]~1_combout\) # (!\v4|m[12]~11_combout\)))) # (\a[0]~input_o\ & (!\v4|m[14]~13_combout\ $ (((!\v3|m[2]~1_combout\ & 
-- \v4|m[12]~11_combout\))))) ) ) ) # ( !\v3|m[1]~0_combout\ & ( \v4|m[13]~12_combout\ & ( (!\v4|m[14]~13_combout\ & (\v3|m[2]~1_combout\ & ((\v4|m[12]~11_combout\)))) # (\v4|m[14]~13_combout\ & (!\a[0]~input_o\ $ (((!\v3|m[2]~1_combout\) # 
-- (!\v4|m[12]~11_combout\))))) ) ) ) # ( \v3|m[1]~0_combout\ & ( !\v4|m[13]~12_combout\ & ( (!\v4|m[14]~13_combout\ & (\v3|m[2]~1_combout\ & ((\v4|m[12]~11_combout\)))) # (\v4|m[14]~13_combout\ & (!\a[0]~input_o\ $ (((!\v3|m[2]~1_combout\) # 
-- (!\v4|m[12]~11_combout\))))) ) ) ) # ( !\v3|m[1]~0_combout\ & ( !\v4|m[13]~12_combout\ & ( (!\v4|m[14]~13_combout\ & (\v3|m[2]~1_combout\ & ((\v4|m[12]~11_combout\)))) # (\v4|m[14]~13_combout\ & (!\a[0]~input_o\ $ (((!\v3|m[2]~1_combout\) # 
-- (!\v4|m[12]~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000001010011011000000101001101101111101011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	datae => \v3|ALT_INV_m[1]~0_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u5|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X63_Y2_N0
\u6|u0|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u2|sum~combout\ = ( \u4|u5|u1|u0|u0|sum~0_combout\ & ( !\u3|u7|u1|u0|u3|sum~combout\ $ (\u6|u0|u3|u1|co~combout\) ) ) # ( !\u4|u5|u1|u0|u0|sum~0_combout\ & ( !\u3|u7|u1|u0|u3|sum~combout\ $ (!\u6|u0|u3|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u6|u0|u3|u1|ALT_INV_co~combout\,
	dataf => \u4|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	combout => \u6|u0|u3|u2|sum~combout\);

-- Location: MLABCELL_X65_Y6_N30
\u1|u7|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u2|co~combout\ = ( \v3|m[10]~9_combout\ & ( \u1|u5|u1|u2|u2|sum~combout\ & ( (!\u1|u7|u1|u2|u0|co~combout\ & (\v4|m[3]~2_combout\ & ((\u1|u5|u1|u2|u3|sum~combout\) # (\v3|m[9]~8_combout\)))) # (\u1|u7|u1|u2|u0|co~combout\ & 
-- (((\u1|u5|u1|u2|u3|sum~combout\) # (\v4|m[3]~2_combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u1|u5|u1|u2|u2|sum~combout\ & ( (\u1|u5|u1|u2|u3|sum~combout\ & (((\v3|m[9]~8_combout\ & \v4|m[3]~2_combout\)) # (\u1|u7|u1|u2|u0|co~combout\))) ) ) ) # ( 
-- \v3|m[10]~9_combout\ & ( !\u1|u5|u1|u2|u2|sum~combout\ & ( (\v4|m[3]~2_combout\ & (((\u1|u7|u1|u2|u0|co~combout\ & \v3|m[9]~8_combout\)) # (\u1|u5|u1|u2|u3|sum~combout\))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u1|u5|u1|u2|u2|sum~combout\ & ( 
-- (\u1|u7|u1|u2|u0|co~combout\ & (\v3|m[9]~8_combout\ & (\v4|m[3]~2_combout\ & \u1|u5|u1|u2|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000111100000000010101110000011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u2|u0|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[3]~2_combout\,
	datad => \u1|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u1|u5|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u2|u2|co~combout\);

-- Location: MLABCELL_X65_Y5_N54
\u2|u3|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u1|sum~combout\ = ( \v3|m[10]~9_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( (!\v3|m[9]~8_combout\ & (!\v4|m[4]~3_combout\ $ (((!\v4|m[5]~4_combout\) # (!\v3|m[8]~7_combout\))))) # (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\ & 
-- ((!\v3|m[8]~7_combout\) # (\v4|m[4]~3_combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( (!\v3|m[9]~8_combout\ & (((\v4|m[5]~4_combout\ & \v3|m[8]~7_combout\)))) # (\v3|m[9]~8_combout\ & ((!\v4|m[4]~3_combout\ & 
-- (\v4|m[5]~4_combout\ & !\v3|m[8]~7_combout\)) # (\v4|m[4]~3_combout\ & (!\v4|m[5]~4_combout\)))) ) ) ) # ( \v3|m[10]~9_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( (!\v4|m[4]~3_combout\ & (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\))) # 
-- (\v4|m[4]~3_combout\ & ((!\v3|m[9]~8_combout\) # ((!\v4|m[5]~4_combout\) # (\v3|m[8]~7_combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\ & ((!\v4|m[4]~3_combout\) # 
-- (!\v3|m[8]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010010101100101011100010010000111000100011101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[4]~3_combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u2|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X66_Y3_N12
\u2|u5|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u0|sum~combout\ = ( \v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[6]~7_combout\ & ((!\u2|u3|u1|u2|u0|sum~combout\))) # (\v4|m[6]~7_combout\ & (\v3|m[8]~7_combout\)))) ) ) ) # ( 
-- !\v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u1|sum~combout\ $ (!\u2|u3|u1|u2|u0|sum~combout\ $ (((\v4|m[6]~7_combout\ & \v3|m[8]~7_combout\)))) ) ) ) # ( \v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( 
-- !\u2|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[6]~7_combout\) # (!\v3|m[8]~7_combout\ $ (\u2|u3|u1|u2|u0|sum~combout\)))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( !\u2|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[6]~7_combout\) # 
-- (!\v3|m[8]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100110010101010110101010010110010110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datab => \v4|ALT_INV_m[6]~7_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u2|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u2|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u0|sum~combout\);

-- Location: MLABCELL_X65_Y6_N36
\u2|u7|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u3|sum~combout\ = ( \v3|m[6]~5_combout\ & ( \u2|u5|u1|u1|u3|sum~combout\ & ( !\u2|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[7]~5_combout\ & (!\u2|u7|u1|u1|u1|co~combout\)) # (\v4|m[7]~5_combout\ & ((\v3|m[7]~6_combout\))))) ) ) ) # ( 
-- !\v3|m[6]~5_combout\ & ( \u2|u5|u1|u1|u3|sum~combout\ & ( !\u2|u5|u1|u2|u0|sum~combout\ $ (!\u2|u7|u1|u1|u1|co~combout\ $ (((\v4|m[7]~5_combout\ & \v3|m[7]~6_combout\)))) ) ) ) # ( \v3|m[6]~5_combout\ & ( !\u2|u5|u1|u1|u3|sum~combout\ & ( 
-- !\u2|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[7]~5_combout\) # (!\u2|u7|u1|u1|u1|co~combout\ $ (\v3|m[7]~6_combout\)))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( !\u2|u5|u1|u1|u3|sum~combout\ & ( !\u2|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[7]~5_combout\) # 
-- (!\v3|m[7]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101100101100101100110011010010110101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u2|u7|u1|u1|u1|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \v3|ALT_INV_m[7]~6_combout\,
	datae => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u2|u5|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X61_Y6_N18
\u1|u4|p[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(12) = ( \v4|m[2]~1_combout\ & ( \v3|m[12]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[12]~11_combout\,
	datae => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(12));

-- Location: MLABCELL_X59_Y5_N36
\u1|u5|u1|u2|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u3|co~0_combout\ = ( \u1|u3|u1|u3|u0|sum~0_combout\ & ( \u1|u2|p\(11) & ( (\u1|u4|p\(11) & (!\u1|u3|u1|u2|u2|co~1_combout\ & (!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u1|p\(12)))) ) ) ) # ( !\u1|u3|u1|u3|u0|sum~0_combout\ & ( \u1|u2|p\(11) & ( 
-- (\u1|u4|p\(11) & (((\u1|u1|p\(12)) # (\u1|u3|u1|u2|u2|co~0_combout\)) # (\u1|u3|u1|u2|u2|co~1_combout\))) ) ) ) # ( \u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u2|p\(11) & ( (\u1|u4|p\(11) & ((!\u1|u1|p\(12)) # ((!\u1|u3|u1|u2|u2|co~1_combout\ & 
-- !\u1|u3|u1|u2|u2|co~0_combout\)))) ) ) ) # ( !\u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u2|p\(11) & ( (\u1|u4|p\(11) & (\u1|u1|p\(12) & ((\u1|u3|u1|u2|u2|co~0_combout\) # (\u1|u3|u1|u2|u2|co~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101010101010100000000010101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(11),
	datab => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datac => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datad => \u1|u1|ALT_INV_p\(12),
	datae => \u1|u3|u1|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u1|u2|ALT_INV_p\(11),
	combout => \u1|u5|u1|u2|u3|co~0_combout\);

-- Location: LABCELL_X64_Y6_N54
\u1|u5|u1|u2|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u2|u3|co~1_combout\ = ( \u1|u3|u1|u2|u2|sum~combout\ & ( \u1|u4|p\(9) & ( (\u1|u5|u1|u2|u3|sum~0_combout\ & ((\u1|u3|u1|u2|u3|sum~combout\) # (\u1|u4|p\(10)))) ) ) ) # ( !\u1|u3|u1|u2|u2|sum~combout\ & ( \u1|u4|p\(9) & ( 
-- (\u1|u5|u1|u2|u3|sum~0_combout\ & ((!\u1|u4|p\(10) & (\u1|u5|u1|u2|u0|co~combout\ & \u1|u3|u1|u2|u3|sum~combout\)) # (\u1|u4|p\(10) & ((\u1|u3|u1|u2|u3|sum~combout\) # (\u1|u5|u1|u2|u0|co~combout\))))) ) ) ) # ( \u1|u3|u1|u2|u2|sum~combout\ & ( 
-- !\u1|u4|p\(9) & ( (\u1|u5|u1|u2|u3|sum~0_combout\ & ((!\u1|u4|p\(10) & (\u1|u5|u1|u2|u0|co~combout\ & \u1|u3|u1|u2|u3|sum~combout\)) # (\u1|u4|p\(10) & ((\u1|u3|u1|u2|u3|sum~combout\) # (\u1|u5|u1|u2|u0|co~combout\))))) ) ) ) # ( 
-- !\u1|u3|u1|u2|u2|sum~combout\ & ( !\u1|u4|p\(9) & ( (\u1|u4|p\(10) & (\u1|u3|u1|u2|u3|sum~combout\ & \u1|u5|u1|u2|u3|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000001011100000000000101110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(10),
	datab => \u1|u5|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u1|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u2|u3|ALT_INV_sum~0_combout\,
	datae => \u1|u3|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \u1|u4|ALT_INV_p\(9),
	combout => \u1|u5|u1|u2|u3|co~1_combout\);

-- Location: MLABCELL_X59_Y5_N42
\u1|u3|u1|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u0|co~0_combout\ = ( \b[0]~input_o\ & ( (\v4|m[1]~0_combout\ & (\v3|m[13]~12_combout\ & \v3|m[12]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datab => \v3|ALT_INV_m[13]~12_combout\,
	datac => \v3|ALT_INV_m[12]~11_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \u1|u3|u1|u3|u0|co~0_combout\);

-- Location: MLABCELL_X59_Y5_N18
\u1|u3|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u0|co~combout\ = ( \u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u3|u1|u3|u0|co~0_combout\ & ( (!\u1|u2|p\(11) & ((!\u1|u1|p\(12)) # ((!\u1|u3|u1|u2|u2|co~1_combout\ & !\u1|u3|u1|u2|u2|co~0_combout\)))) # (\u1|u2|p\(11) & 
-- (!\u1|u3|u1|u2|u2|co~1_combout\ & (!\u1|u3|u1|u2|u2|co~0_combout\ & !\u1|u1|p\(12)))) ) ) ) # ( !\u1|u3|u1|u3|u0|sum~0_combout\ & ( !\u1|u3|u1|u3|u0|co~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u2|u2|ALT_INV_co~1_combout\,
	datab => \u1|u2|ALT_INV_p\(11),
	datac => \u1|u3|u1|u2|u2|ALT_INV_co~0_combout\,
	datad => \u1|u1|ALT_INV_p\(12),
	datae => \u1|u3|u1|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u1|u3|u1|u3|u0|ALT_INV_co~0_combout\,
	combout => \u1|u3|u1|u3|u0|co~combout\);

-- Location: LABCELL_X60_Y5_N15
\u1|u2|p[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|p\(13) = ( \v3|m[13]~12_combout\ & ( \v4|m[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datae => \v3|ALT_INV_m[13]~12_combout\,
	combout => \u1|u2|p\(13));

-- Location: MLABCELL_X59_Y4_N54
\v1|u3|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v1|u3|u1|co~0_combout\ = ( !\a[12]~input_o\ & ( (!\a[13]~input_o\ & (!\a[11]~input_o\ & \v1|u2|u2|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \v1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \v1|u3|u1|co~0_combout\);

-- Location: IOIBUF_X50_Y0_N92
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LABCELL_X60_Y5_N3
\v3|m[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m[14]~13_combout\ = ( \a[14]~input_o\ & ( \a[15]~input_o\ & ( \v1|u3|u1|co~0_combout\ ) ) ) # ( !\a[14]~input_o\ & ( \a[15]~input_o\ & ( !\v1|u3|u1|co~0_combout\ ) ) ) # ( \a[14]~input_o\ & ( !\a[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v1|u3|u1|ALT_INV_co~0_combout\,
	datae => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m[14]~13_combout\);

-- Location: LABCELL_X60_Y5_N6
\u1|u1|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|p\(14) = ( \b[0]~input_o\ & ( \v3|m[14]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datae => \ALT_INV_b[0]~input_o\,
	combout => \u1|u1|p\(14));

-- Location: LABCELL_X60_Y5_N48
\u1|u3|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u1|sum~combout\ = ( \u1|u1|p\(14) & ( !\u1|u3|u1|u3|u0|co~combout\ $ (!\u1|u2|p\(13)) ) ) # ( !\u1|u1|p\(14) & ( !\u1|u3|u1|u3|u0|co~combout\ $ (\u1|u2|p\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u1|u3|u0|ALT_INV_co~combout\,
	datad => \u1|u2|ALT_INV_p\(13),
	dataf => \u1|u1|ALT_INV_p\(14),
	combout => \u1|u3|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X66_Y4_N0
\u1|u7|u1|u2|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u2|u3|sum~0_combout\ = ( \u1|u3|u1|u3|u1|sum~combout\ & ( \v4|m[3]~2_combout\ & ( !\u1|u4|p\(12) $ (!\v3|m[11]~10_combout\ $ (((!\u1|u5|u1|u2|u3|co~0_combout\ & !\u1|u5|u1|u2|u3|co~1_combout\)))) ) ) ) # ( !\u1|u3|u1|u3|u1|sum~combout\ & ( 
-- \v4|m[3]~2_combout\ & ( !\u1|u4|p\(12) $ (!\v3|m[11]~10_combout\ $ (((\u1|u5|u1|u2|u3|co~1_combout\) # (\u1|u5|u1|u2|u3|co~0_combout\)))) ) ) ) # ( \u1|u3|u1|u3|u1|sum~combout\ & ( !\v4|m[3]~2_combout\ & ( !\u1|u4|p\(12) $ 
-- (((\u1|u5|u1|u2|u3|co~1_combout\) # (\u1|u5|u1|u2|u3|co~0_combout\))) ) ) ) # ( !\u1|u3|u1|u3|u1|sum~combout\ & ( !\v4|m[3]~2_combout\ & ( !\u1|u4|p\(12) $ (((!\u1|u5|u1|u2|u3|co~0_combout\ & !\u1|u5|u1|u2|u3|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101010100110010101010101101001101001011001011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(12),
	datab => \u1|u5|u1|u2|u3|ALT_INV_co~0_combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u1|u5|u1|u2|u3|ALT_INV_co~1_combout\,
	datae => \u1|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[3]~2_combout\,
	combout => \u1|u7|u1|u2|u3|sum~0_combout\);

-- Location: MLABCELL_X65_Y6_N42
\u5|u0|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u2|sum~combout\ = ( \u1|u7|u1|u2|u3|sum~0_combout\ & ( \u1|u7|u1|u2|u2|sum~combout\ & ( !\u1|u7|u1|u2|u2|co~combout\ $ (!\u2|u7|u1|u1|u3|sum~combout\ $ (((!\u2|u7|u1|u1|u2|sum~combout\ & !\u5|u0|u3|u0|co~combout\)))) ) ) ) # ( 
-- !\u1|u7|u1|u2|u3|sum~0_combout\ & ( \u1|u7|u1|u2|u2|sum~combout\ & ( !\u1|u7|u1|u2|u2|co~combout\ $ (!\u2|u7|u1|u1|u3|sum~combout\ $ (((\u5|u0|u3|u0|co~combout\) # (\u2|u7|u1|u1|u2|sum~combout\)))) ) ) ) # ( \u1|u7|u1|u2|u3|sum~0_combout\ & ( 
-- !\u1|u7|u1|u2|u2|sum~combout\ & ( !\u1|u7|u1|u2|u2|co~combout\ $ (!\u2|u7|u1|u1|u3|sum~combout\ $ (((!\u2|u7|u1|u1|u2|sum~combout\) # (!\u5|u0|u3|u0|co~combout\)))) ) ) ) # ( !\u1|u7|u1|u2|u3|sum~0_combout\ & ( !\u1|u7|u1|u2|u2|sum~combout\ & ( 
-- !\u1|u7|u1|u2|u2|co~combout\ $ (!\u2|u7|u1|u1|u3|sum~combout\ $ (((\u2|u7|u1|u1|u2|sum~combout\ & \u5|u0|u3|u0|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001110000111001011001101001110000111001011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u1|u2|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \u2|u7|u1|u1|u3|ALT_INV_sum~combout\,
	datad => \u5|u0|u3|u0|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u2|u3|ALT_INV_sum~0_combout\,
	dataf => \u1|u7|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u5|u0|u3|u2|sum~combout\);

-- Location: LABCELL_X63_Y2_N42
\u7|u0|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u2|sum~combout\ = ( \u5|u0|u3|u1|sum~combout\ & ( !\u6|u0|u3|u2|sum~combout\ $ (!\u5|u0|u3|u2|sum~combout\ $ (((\u6|u0|u3|u1|sum~combout\) # (\u7|u0|u3|u0|co~combout\)))) ) ) # ( !\u5|u0|u3|u1|sum~combout\ & ( !\u6|u0|u3|u2|sum~combout\ $ 
-- (!\u5|u0|u3|u2|sum~combout\ $ (((\u7|u0|u3|u0|co~combout\ & \u6|u0|u3|u1|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u0|ALT_INV_co~combout\,
	datab => \u6|u0|u3|u1|ALT_INV_sum~combout\,
	datac => \u6|u0|u3|u2|ALT_INV_sum~combout\,
	datad => \u5|u0|u3|u2|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|u1|ALT_INV_sum~combout\,
	combout => \u7|u0|u3|u2|sum~combout\);

-- Location: LABCELL_X63_Y2_N48
\v7|m[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[14]~12_combout\ = ( \u7|u0|u3|u2|sum~combout\ & ( (!\comb~0_combout\) # ((\v5|u0|u3|u0|co~0_combout\ & !\u7|u0|u3|u1|sum~combout\)) ) ) # ( !\u7|u0|u3|u2|sum~combout\ & ( (\comb~0_combout\ & ((!\v5|u0|u3|u0|co~0_combout\) # 
-- (\u7|u0|u3|u1|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001111011101110011001101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u0|u3|u0|ALT_INV_co~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \u7|u0|u3|u1|ALT_INV_sum~combout\,
	dataf => \u7|u0|u3|u2|ALT_INV_sum~combout\,
	combout => \v7|m[14]~12_combout\);

-- Location: LABCELL_X62_Y4_N24
\v4|m~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v4|m~14_combout\ = ( !\b[11]~input_o\ & ( \v2|u2|u2|co~0_combout\ & ( (!\b[14]~input_o\ & (!\b[13]~input_o\ & (!\b[12]~input_o\ & \b[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[14]~input_o\,
	datab => \ALT_INV_b[13]~input_o\,
	datac => \ALT_INV_b[12]~input_o\,
	datad => \ALT_INV_b[15]~input_o\,
	datae => \ALT_INV_b[11]~input_o\,
	dataf => \v2|u2|u2|ALT_INV_co~0_combout\,
	combout => \v4|m~14_combout\);

-- Location: LABCELL_X61_Y5_N36
\u4|u3|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u0|u2|sum~combout\ = ( \a[0]~input_o\ & ( \v4|m[13]~12_combout\ & ( !\v3|m[2]~1_combout\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[3]~2_combout\ $ (\v3|m[1]~0_combout\)))) ) ) ) # ( !\a[0]~input_o\ & ( \v4|m[13]~12_combout\ & ( 
-- (!\v4|m[12]~11_combout\ & (((\v3|m[2]~1_combout\)))) # (\v4|m[12]~11_combout\ & (!\v3|m[3]~2_combout\ $ (((!\v3|m[2]~1_combout\) # (\v3|m[1]~0_combout\))))) ) ) ) # ( \a[0]~input_o\ & ( !\v4|m[13]~12_combout\ & ( (\v3|m[3]~2_combout\ & 
-- \v4|m[12]~11_combout\) ) ) ) # ( !\a[0]~input_o\ & ( !\v4|m[13]~12_combout\ & ( (\v3|m[3]~2_combout\ & \v4|m[12]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011001010011001101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[3]~2_combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X61_Y5_N12
\u4|u4|p[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(1) = (\v3|m[1]~0_combout\ & \v4|m[14]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	combout => \u4|u4|p\(1));

-- Location: LABCELL_X61_Y5_N0
\u4|u5|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u0|co~0_combout\ = ( \a[0]~input_o\ & ( \v4|m[13]~12_combout\ & ( (\v4|m[14]~13_combout\ & ((!\v4|m[12]~11_combout\ & ((\v3|m[1]~0_combout\))) # (\v4|m[12]~11_combout\ & (\v3|m[2]~1_combout\)))) ) ) ) # ( \a[0]~input_o\ & ( 
-- !\v4|m[13]~12_combout\ & ( (\v4|m[14]~13_combout\ & (\v3|m[2]~1_combout\ & \v4|m[12]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000000000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u5|u1|u0|u0|co~0_combout\);

-- Location: LABCELL_X62_Y5_N0
\u4|u5|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u1|sum~combout\ = ( \u4|u4|p\(1) & ( \u4|u5|u1|u0|u0|co~0_combout\ & ( \u4|u3|u1|u0|u2|sum~combout\ ) ) ) # ( !\u4|u4|p\(1) & ( \u4|u5|u1|u0|u0|co~0_combout\ & ( !\u4|u3|u1|u0|u2|sum~combout\ ) ) ) # ( \u4|u4|p\(1) & ( 
-- !\u4|u5|u1|u0|u0|co~0_combout\ & ( !\u4|u3|u1|u0|u2|sum~combout\ ) ) ) # ( !\u4|u4|p\(1) & ( !\u4|u5|u1|u0|u0|co~0_combout\ & ( \u4|u3|u1|u0|u2|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datae => \u4|u4|ALT_INV_p\(1),
	dataf => \u4|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u4|u5|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X63_Y3_N33
\u4|u7|u1|u0|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u0|sum~0_combout\ = ( \u4|u5|u1|u0|u1|sum~combout\ & ( (!\v4|m~14_combout\) # (!\a[0]~input_o\) ) ) # ( !\u4|u5|u1|u0|u1|sum~combout\ & ( (\v4|m~14_combout\ & \a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \ALT_INV_a[0]~input_o\,
	dataf => \u4|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u0|u0|sum~0_combout\);

-- Location: LABCELL_X63_Y2_N6
\u3|u7|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u0|u3|co~combout\ = ( \u3|u5|u1|u1|u0|sum~0_combout\ & ( \u3|u5|u1|u0|u3|co~combout\ & ( (\u3|u6|p\(3) & ((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & \u3|u7|u1|u0|u1|co~combout\)) # (\u3|u5|u1|u0|u3|sum~combout\ & 
-- ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2)))))) ) ) ) # ( !\u3|u5|u1|u1|u0|sum~0_combout\ & ( \u3|u5|u1|u0|u3|co~combout\ & ( ((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & \u3|u7|u1|u0|u1|co~combout\)) # (\u3|u5|u1|u0|u3|sum~combout\ & 
-- ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2))))) # (\u3|u6|p\(3)) ) ) ) # ( \u3|u5|u1|u1|u0|sum~0_combout\ & ( !\u3|u5|u1|u0|u3|co~combout\ & ( ((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & \u3|u7|u1|u0|u1|co~combout\)) # 
-- (\u3|u5|u1|u0|u3|sum~combout\ & ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2))))) # (\u3|u6|p\(3)) ) ) ) # ( !\u3|u5|u1|u1|u0|sum~0_combout\ & ( !\u3|u5|u1|u0|u3|co~combout\ & ( (\u3|u6|p\(3) & ((!\u3|u5|u1|u0|u3|sum~combout\ & (\u3|u6|p\(2) & 
-- \u3|u7|u1|u0|u1|co~combout\)) # (\u3|u5|u1|u0|u3|sum~combout\ & ((\u3|u7|u1|u0|u1|co~combout\) # (\u3|u6|p\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100110111011111110000000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u3|u6|ALT_INV_p\(3),
	datac => \u3|u6|ALT_INV_p\(2),
	datad => \u3|u7|u1|u0|u1|ALT_INV_co~combout\,
	datae => \u3|u5|u1|u1|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u5|u1|u0|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u0|u3|co~combout\);

-- Location: MLABCELL_X65_Y3_N54
\u3|u5|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u0|co~combout\ = ( \u3|u4|p\(4) & ( \u3|u3|u1|u1|u1|sum~0_combout\ & ( (!\u3|u3|u1|u1|u0|co~combout\) # ((!\u3|u4|p\(3) & (\u3|u3|u1|u1|u0|sum~combout\ & \u3|u5|u1|u0|u2|co~combout\)) # (\u3|u4|p\(3) & ((\u3|u5|u1|u0|u2|co~combout\) # 
-- (\u3|u3|u1|u1|u0|sum~combout\)))) ) ) ) # ( !\u3|u4|p\(4) & ( \u3|u3|u1|u1|u1|sum~0_combout\ & ( (!\u3|u3|u1|u1|u0|co~combout\ & ((!\u3|u4|p\(3) & (\u3|u3|u1|u1|u0|sum~combout\ & \u3|u5|u1|u0|u2|co~combout\)) # (\u3|u4|p\(3) & 
-- ((\u3|u5|u1|u0|u2|co~combout\) # (\u3|u3|u1|u1|u0|sum~combout\))))) ) ) ) # ( \u3|u4|p\(4) & ( !\u3|u3|u1|u1|u1|sum~0_combout\ & ( ((!\u3|u4|p\(3) & (\u3|u3|u1|u1|u0|sum~combout\ & \u3|u5|u1|u0|u2|co~combout\)) # (\u3|u4|p\(3) & 
-- ((\u3|u5|u1|u0|u2|co~combout\) # (\u3|u3|u1|u1|u0|sum~combout\)))) # (\u3|u3|u1|u1|u0|co~combout\) ) ) ) # ( !\u3|u4|p\(4) & ( !\u3|u3|u1|u1|u1|sum~0_combout\ & ( (\u3|u3|u1|u1|u0|co~combout\ & ((!\u3|u4|p\(3) & (\u3|u3|u1|u1|u0|sum~combout\ & 
-- \u3|u5|u1|u0|u2|co~combout\)) # (\u3|u4|p\(3) & ((\u3|u5|u1|u0|u2|co~combout\) # (\u3|u3|u1|u1|u0|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100010111000000001111111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_p\(3),
	datab => \u3|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datac => \u3|u5|u1|u0|u2|ALT_INV_co~combout\,
	datad => \u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	datae => \u3|u4|ALT_INV_p\(4),
	dataf => \u3|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u3|u5|u1|u1|u0|co~combout\);

-- Location: MLABCELL_X65_Y3_N36
\u3|u4|p[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(5) = ( \v4|m[10]~9_combout\ & ( \v3|m[5]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(5));

-- Location: MLABCELL_X65_Y3_N30
\u3|u3|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u2|sum~combout\ = ( \v3|m[5]~4_combout\ & ( \u3|u3|u1|u1|u0|co~combout\ & ( (!\v4|m[8]~6_combout\ & (((\v4|m[9]~8_combout\ & !\v3|m[6]~5_combout\)))) # (\v4|m[8]~6_combout\ & (!\v3|m[7]~6_combout\ $ (!\v4|m[9]~8_combout\ $ 
-- (\v3|m[6]~5_combout\)))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \u3|u3|u1|u1|u0|co~combout\ & ( (!\v3|m[6]~5_combout\ & (\v3|m[7]~6_combout\ & ((\v4|m[8]~6_combout\)))) # (\v3|m[6]~5_combout\ & (!\v4|m[9]~8_combout\ $ (((!\v4|m[8]~6_combout\) # 
-- (\v3|m[7]~6_combout\))))) ) ) ) # ( \v3|m[5]~4_combout\ & ( !\u3|u3|u1|u1|u0|co~combout\ & ( (!\v4|m[8]~6_combout\ & (((\v4|m[9]~8_combout\ & \v3|m[6]~5_combout\)))) # (\v4|m[8]~6_combout\ & (\v3|m[7]~6_combout\)) ) ) ) # ( !\v3|m[5]~4_combout\ & ( 
-- !\u3|u3|u1|u1|u0|co~combout\ & ( (!\v3|m[7]~6_combout\ & (\v4|m[9]~8_combout\ & (\v3|m[6]~5_combout\))) # (\v3|m[7]~6_combout\ & (!\v4|m[8]~6_combout\ $ (((!\v4|m[9]~8_combout\) # (!\v3|m[6]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000110101010100000011010110010011000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[9]~8_combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u1|u2|sum~combout\);

-- Location: MLABCELL_X65_Y3_N42
\u3|u7|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u0|sum~0_combout\ = ( \u3|u3|u1|u1|u2|sum~combout\ & ( !\u3|u5|u1|u1|u0|co~combout\ $ (!\u3|u4|p\(5) $ (((!\v4|m[11]~10_combout\) # (!\v3|m[4]~3_combout\)))) ) ) # ( !\u3|u3|u1|u1|u2|sum~combout\ & ( !\u3|u5|u1|u1|u0|co~combout\ $ 
-- (!\u3|u4|p\(5) $ (((\v4|m[11]~10_combout\ & \v3|m[4]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000111100001000111101110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \u3|u5|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u3|u4|ALT_INV_p\(5),
	dataf => \u3|u3|u1|u1|u2|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u1|u0|sum~0_combout\);

-- Location: LABCELL_X63_Y2_N12
\u6|u0|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u3|sum~combout\ = ( \u6|u0|u3|u1|co~combout\ & ( \u3|u7|u1|u1|u0|sum~0_combout\ & ( !\u4|u7|u1|u0|u0|sum~0_combout\ $ (!\u3|u7|u1|u0|u3|co~combout\ $ (((!\u3|u7|u1|u0|u3|sum~combout\ & !\u4|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( 
-- !\u6|u0|u3|u1|co~combout\ & ( \u3|u7|u1|u1|u0|sum~0_combout\ & ( !\u4|u7|u1|u0|u0|sum~0_combout\ $ (!\u3|u7|u1|u0|u3|co~combout\ $ (((!\u3|u7|u1|u0|u3|sum~combout\) # (!\u4|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( \u6|u0|u3|u1|co~combout\ & ( 
-- !\u3|u7|u1|u1|u0|sum~0_combout\ & ( !\u4|u7|u1|u0|u0|sum~0_combout\ $ (!\u3|u7|u1|u0|u3|co~combout\ $ (((\u4|u5|u1|u0|u0|sum~0_combout\) # (\u3|u7|u1|u0|u3|sum~combout\)))) ) ) ) # ( !\u6|u0|u3|u1|co~combout\ & ( !\u3|u7|u1|u1|u0|sum~0_combout\ & ( 
-- !\u4|u7|u1|u0|u0|sum~0_combout\ $ (!\u3|u7|u1|u0|u3|co~combout\ $ (((\u3|u7|u1|u0|u3|sum~combout\ & \u4|u5|u1|u0|u0|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011010011001100110011001100101101001011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	datab => \u3|u7|u1|u0|u3|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u4|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	datae => \u6|u0|u3|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u6|u0|u3|u3|sum~combout\);

-- Location: LABCELL_X63_Y2_N3
\u7|u0|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u2|co~combout\ = ( \u7|u0|u3|u0|co~combout\ & ( (!\u5|u0|u3|u2|sum~combout\ & (\u6|u0|u3|u2|sum~combout\ & ((\u6|u0|u3|u1|sum~combout\) # (\u5|u0|u3|u1|sum~combout\)))) # (\u5|u0|u3|u2|sum~combout\ & (((\u6|u0|u3|u2|sum~combout\) # 
-- (\u6|u0|u3|u1|sum~combout\)) # (\u5|u0|u3|u1|sum~combout\))) ) ) # ( !\u7|u0|u3|u0|co~combout\ & ( (!\u5|u0|u3|u2|sum~combout\ & (\u5|u0|u3|u1|sum~combout\ & (\u6|u0|u3|u1|sum~combout\ & \u6|u0|u3|u2|sum~combout\))) # (\u5|u0|u3|u2|sum~combout\ & 
-- (((\u5|u0|u3|u1|sum~combout\ & \u6|u0|u3|u1|sum~combout\)) # (\u6|u0|u3|u2|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u3|u1|ALT_INV_sum~combout\,
	datab => \u5|u0|u3|u2|ALT_INV_sum~combout\,
	datac => \u6|u0|u3|u1|ALT_INV_sum~combout\,
	datad => \u6|u0|u3|u2|ALT_INV_sum~combout\,
	dataf => \u7|u0|u3|u0|ALT_INV_co~combout\,
	combout => \u7|u0|u3|u2|co~combout\);

-- Location: MLABCELL_X65_Y6_N54
\u2|u7|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u1|u3|co~combout\ = ( \v3|m[6]~5_combout\ & ( \u2|u5|u1|u1|u3|sum~combout\ & ( (!\u2|u5|u1|u2|u0|sum~combout\ & (((\v4|m[7]~5_combout\ & \v3|m[7]~6_combout\)))) # (\u2|u5|u1|u2|u0|sum~combout\ & (((\v4|m[7]~5_combout\)) # 
-- (\u2|u7|u1|u1|u1|co~combout\))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( \u2|u5|u1|u1|u3|sum~combout\ & ( (!\u2|u5|u1|u2|u0|sum~combout\ & (\u2|u7|u1|u1|u1|co~combout\ & (\v4|m[7]~5_combout\ & \v3|m[7]~6_combout\))) # (\u2|u5|u1|u2|u0|sum~combout\ & 
-- (((\v4|m[7]~5_combout\ & \v3|m[7]~6_combout\)) # (\u2|u7|u1|u1|u1|co~combout\))) ) ) ) # ( \v3|m[6]~5_combout\ & ( !\u2|u5|u1|u1|u3|sum~combout\ & ( (\v4|m[7]~5_combout\ & ((!\u2|u5|u1|u2|u0|sum~combout\ & (\u2|u7|u1|u1|u1|co~combout\ & 
-- \v3|m[7]~6_combout\)) # (\u2|u5|u1|u2|u0|sum~combout\ & ((\v3|m[7]~6_combout\) # (\u2|u7|u1|u1|u1|co~combout\))))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( !\u2|u5|u1|u1|u3|sum~combout\ & ( (\u2|u5|u1|u2|u0|sum~combout\ & (\v4|m[7]~5_combout\ & 
-- \v3|m[7]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010000011100010001000101110001010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u2|u7|u1|u1|u1|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \v3|ALT_INV_m[7]~6_combout\,
	datae => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u2|u5|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u1|u3|co~combout\);

-- Location: MLABCELL_X65_Y5_N0
\u2|u3|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u1|co~combout\ = ( \v3|m[10]~9_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( (!\v4|m[4]~3_combout\ & (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\ & \v3|m[8]~7_combout\))) # (\v4|m[4]~3_combout\ & (((\v4|m[5]~4_combout\ & \v3|m[8]~7_combout\)) # 
-- (\v3|m[9]~8_combout\))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u2|u3|u1|u1|u3|co~combout\ & ( (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\ & ((\v3|m[8]~7_combout\) # (\v4|m[4]~3_combout\)))) ) ) ) # ( \v3|m[10]~9_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( 
-- (\v4|m[4]~3_combout\ & (\v3|m[9]~8_combout\ & \v4|m[5]~4_combout\)) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u2|u3|u1|u1|u3|co~combout\ & ( (\v4|m[4]~3_combout\ & (\v3|m[9]~8_combout\ & (\v4|m[5]~4_combout\ & \v3|m[8]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000100000001000000110001000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[4]~3_combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u2|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u2|u1|co~combout\);

-- Location: LABCELL_X64_Y5_N0
\u2|u3|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u2|sum~combout\ = ( \v3|m[10]~9_combout\ & ( !\u2|u3|u1|u2|u1|co~combout\ $ (!\v4|m[5]~4_combout\ $ (((\v3|m[11]~10_combout\ & \v4|m[4]~3_combout\)))) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u2|u3|u1|u2|u1|co~combout\ $ (((!\v3|m[11]~10_combout\) 
-- # (!\v4|m[4]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010110100110100101010101011001100101101001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[11]~10_combout\,
	datac => \v4|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	combout => \u2|u3|u1|u2|u2|sum~combout\);

-- Location: LABCELL_X66_Y3_N48
\u2|u5|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u0|co~combout\ = ( \v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( (!\u2|u3|u1|u2|u1|sum~combout\ & (\v4|m[6]~7_combout\ & (\v3|m[8]~7_combout\))) # (\u2|u3|u1|u2|u1|sum~combout\ & (((\u2|u3|u1|u2|u0|sum~combout\)) # 
-- (\v4|m[6]~7_combout\))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u2|u5|u1|u1|u2|co~combout\ & ( (!\u2|u3|u1|u2|u1|sum~combout\ & (\v4|m[6]~7_combout\ & (\v3|m[8]~7_combout\ & \u2|u3|u1|u2|u0|sum~combout\))) # (\u2|u3|u1|u2|u1|sum~combout\ & 
-- (((\v4|m[6]~7_combout\ & \v3|m[8]~7_combout\)) # (\u2|u3|u1|u2|u0|sum~combout\))) ) ) ) # ( \v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( (\v4|m[6]~7_combout\ & ((!\u2|u3|u1|u2|u1|sum~combout\ & (\v3|m[8]~7_combout\ & 
-- \u2|u3|u1|u2|u0|sum~combout\)) # (\u2|u3|u1|u2|u1|sum~combout\ & ((\u2|u3|u1|u2|u0|sum~combout\) # (\v3|m[8]~7_combout\))))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u2|u5|u1|u1|u2|co~combout\ & ( (\u2|u3|u1|u2|u1|sum~combout\ & (\v4|m[6]~7_combout\ & 
-- \v3|m[8]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010001001100000001010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datab => \v4|ALT_INV_m[6]~7_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u2|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u2|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u0|co~combout\);

-- Location: MLABCELL_X65_Y5_N36
\u2|u5|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u1|sum~combout\ = ( \u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u2|sum~combout\ $ (((\v3|m[9]~8_combout\ & \v4|m[6]~7_combout\))) ) ) # ( !\u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u2|sum~combout\ $ (((!\v3|m[9]~8_combout\) # 
-- (!\v4|m[6]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \u2|u5|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u1|sum~combout\);

-- Location: MLABCELL_X65_Y4_N39
\u2|u7|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u0|sum~combout\ = ( \v3|m[8]~7_combout\ & ( !\v4|m[7]~5_combout\ $ (!\u2|u7|u1|u1|u3|co~combout\ $ (\u2|u5|u1|u2|u1|sum~combout\)) ) ) # ( !\v3|m[8]~7_combout\ & ( !\u2|u7|u1|u1|u3|co~combout\ $ (!\u2|u5|u1|u2|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datac => \u2|u7|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u2|u5|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \v3|ALT_INV_m[8]~7_combout\,
	combout => \u2|u7|u1|u2|u0|sum~combout\);

-- Location: MLABCELL_X65_Y6_N48
\u5|u0|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u2|co~combout\ = ( \u1|u7|u1|u2|u3|sum~0_combout\ & ( \u1|u7|u1|u2|u2|sum~combout\ & ( (!\u1|u7|u1|u2|u2|co~combout\ & (((\u5|u0|u3|u0|co~combout\) # (\u2|u7|u1|u1|u3|sum~combout\)) # (\u2|u7|u1|u1|u2|sum~combout\))) # 
-- (\u1|u7|u1|u2|u2|co~combout\ & (\u2|u7|u1|u1|u3|sum~combout\ & ((\u5|u0|u3|u0|co~combout\) # (\u2|u7|u1|u1|u2|sum~combout\)))) ) ) ) # ( !\u1|u7|u1|u2|u3|sum~0_combout\ & ( \u1|u7|u1|u2|u2|sum~combout\ & ( (!\u1|u7|u1|u2|u2|co~combout\ & 
-- (\u2|u7|u1|u1|u3|sum~combout\ & ((\u5|u0|u3|u0|co~combout\) # (\u2|u7|u1|u1|u2|sum~combout\)))) # (\u1|u7|u1|u2|u2|co~combout\ & (((\u5|u0|u3|u0|co~combout\) # (\u2|u7|u1|u1|u3|sum~combout\)) # (\u2|u7|u1|u1|u2|sum~combout\))) ) ) ) # ( 
-- \u1|u7|u1|u2|u3|sum~0_combout\ & ( !\u1|u7|u1|u2|u2|sum~combout\ & ( (!\u1|u7|u1|u2|u2|co~combout\ & (((\u2|u7|u1|u1|u2|sum~combout\ & \u5|u0|u3|u0|co~combout\)) # (\u2|u7|u1|u1|u3|sum~combout\))) # (\u1|u7|u1|u2|u2|co~combout\ & 
-- (\u2|u7|u1|u1|u2|sum~combout\ & (\u2|u7|u1|u1|u3|sum~combout\ & \u5|u0|u3|u0|co~combout\))) ) ) ) # ( !\u1|u7|u1|u2|u3|sum~0_combout\ & ( !\u1|u7|u1|u2|u2|sum~combout\ & ( (!\u1|u7|u1|u2|u2|co~combout\ & (\u2|u7|u1|u1|u2|sum~combout\ & 
-- (\u2|u7|u1|u1|u3|sum~combout\ & \u5|u0|u3|u0|co~combout\))) # (\u1|u7|u1|u2|u2|co~combout\ & (((\u2|u7|u1|u1|u2|sum~combout\ & \u5|u0|u3|u0|co~combout\)) # (\u2|u7|u1|u1|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000011000100110100010111001111110100110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u1|u2|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \u2|u7|u1|u1|u3|ALT_INV_sum~combout\,
	datad => \u5|u0|u3|u0|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u2|u3|ALT_INV_sum~0_combout\,
	dataf => \u1|u7|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u5|u0|u3|u2|co~combout\);

-- Location: MLABCELL_X59_Y5_N27
\u1|u4|p[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(13) = ( \v3|m[13]~12_combout\ & ( \v4|m[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \v4|ALT_INV_m[2]~1_combout\,
	combout => \u1|u4|p\(13));

-- Location: LABCELL_X60_Y5_N24
\v3|m~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v3|m~14_combout\ = ( !\a[14]~input_o\ & ( \a[15]~input_o\ & ( \v1|u3|u1|co~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v1|u3|u1|ALT_INV_co~0_combout\,
	datae => \ALT_INV_a[14]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \v3|m~14_combout\);

-- Location: LABCELL_X60_Y5_N33
\u1|u3|u1|u3|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u2|sum~0_combout\ = ( \v4|m[1]~0_combout\ & ( \v3|m~14_combout\ & ( (\v3|m[14]~13_combout\) # (\b[0]~input_o\) ) ) ) # ( !\v4|m[1]~0_combout\ & ( \v3|m~14_combout\ & ( \b[0]~input_o\ ) ) ) # ( \v4|m[1]~0_combout\ & ( !\v3|m~14_combout\ & ( 
-- \v3|m[14]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[0]~input_o\,
	datad => \v3|ALT_INV_m[14]~13_combout\,
	datae => \v4|ALT_INV_m[1]~0_combout\,
	dataf => \v3|ALT_INV_m~14_combout\,
	combout => \u1|u3|u1|u3|u2|sum~0_combout\);

-- Location: LABCELL_X60_Y5_N39
\u1|u3|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u2|sum~combout\ = ( \u1|u1|p\(14) & ( !\u1|u3|u1|u3|u2|sum~0_combout\ $ (((!\u1|u2|p\(13) & \u1|u3|u1|u3|u0|co~combout\))) ) ) # ( !\u1|u1|p\(14) & ( !\u1|u3|u1|u3|u2|sum~0_combout\ $ (((!\u1|u2|p\(13)) # (\u1|u3|u1|u3|u0|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010110100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	datab => \u1|u2|ALT_INV_p\(13),
	datac => \u1|u3|u1|u3|u0|ALT_INV_co~combout\,
	dataf => \u1|u1|ALT_INV_p\(14),
	combout => \u1|u3|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X66_Y4_N42
\u1|u5|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u1|sum~combout\ = ( \u1|u3|u1|u3|u1|sum~combout\ & ( \u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u4|p\(13) $ (\u1|u3|u1|u3|u2|sum~combout\) ) ) ) # ( !\u1|u3|u1|u3|u1|sum~combout\ & ( \u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u4|p\(12) $ 
-- (!\u1|u4|p\(13) $ (\u1|u3|u1|u3|u2|sum~combout\)) ) ) ) # ( \u1|u3|u1|u3|u1|sum~combout\ & ( !\u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u4|p\(13) $ (!\u1|u3|u1|u3|u2|sum~combout\ $ (((\u1|u5|u1|u2|u3|co~0_combout\) # (\u1|u4|p\(12))))) ) ) ) # ( 
-- !\u1|u3|u1|u3|u1|sum~combout\ & ( !\u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u4|p\(13) $ (!\u1|u3|u1|u3|u2|sum~combout\ $ (((\u1|u4|p\(12) & \u1|u5|u1|u2|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(12),
	datab => \u1|u5|u1|u2|u3|ALT_INV_co~0_combout\,
	datac => \u1|u4|ALT_INV_p\(13),
	datad => \u1|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datae => \u1|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u1|u5|u1|u2|u3|ALT_INV_co~1_combout\,
	combout => \u1|u5|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X66_Y4_N6
\u1|u5|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u0|sum~combout\ = ( \u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u4|p\(12) $ (\u1|u3|u1|u3|u1|sum~combout\) ) ) # ( !\u1|u5|u1|u2|u3|co~1_combout\ & ( !\u1|u5|u1|u2|u3|co~0_combout\ $ (!\u1|u4|p\(12) $ (\u1|u3|u1|u3|u1|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u5|u1|u2|u3|ALT_INV_co~0_combout\,
	datac => \u1|u4|ALT_INV_p\(12),
	datad => \u1|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u1|u5|u1|u2|u3|ALT_INV_co~1_combout\,
	combout => \u1|u5|u1|u3|u0|sum~combout\);

-- Location: LABCELL_X66_Y4_N48
\u1|u7|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u0|sum~combout\ = ( \v3|m[12]~11_combout\ & ( \u1|u5|u1|u3|u0|sum~combout\ & ( !\u1|u5|u1|u3|u1|sum~combout\ $ (((!\v4|m[3]~2_combout\ & (!\u1|u7|u1|u2|u2|co~combout\)) # (\v4|m[3]~2_combout\ & ((\v3|m[11]~10_combout\) # 
-- (\u1|u7|u1|u2|u2|co~combout\))))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \u1|u5|u1|u3|u0|sum~combout\ & ( !\u1|u5|u1|u3|u1|sum~combout\ $ (((!\u1|u7|u1|u2|u2|co~combout\ & ((!\v4|m[3]~2_combout\) # (!\v3|m[11]~10_combout\))))) ) ) ) # ( 
-- \v3|m[12]~11_combout\ & ( !\u1|u5|u1|u3|u0|sum~combout\ & ( !\u1|u5|u1|u3|u1|sum~combout\ $ (((!\v4|m[3]~2_combout\) # ((\u1|u7|u1|u2|u2|co~combout\ & \v3|m[11]~10_combout\)))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( !\u1|u5|u1|u3|u0|sum~combout\ & ( 
-- !\u1|u5|u1|u3|u1|sum~combout\ $ (((!\v4|m[3]~2_combout\) # ((!\u1|u7|u1|u2|u2|co~combout\) # (!\v3|m[11]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110010101001010101100110111110010000110001010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~2_combout\,
	datab => \u1|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u1|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \u1|u5|u1|u3|u0|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u3|u0|sum~combout\);

-- Location: LABCELL_X68_Y4_N33
\u5|u0|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|u3|sum~combout\ = ( \u1|u7|u1|u3|u0|sum~combout\ & ( !\u2|u7|u1|u2|u0|sum~combout\ $ (\u5|u0|u3|u2|co~combout\) ) ) # ( !\u1|u7|u1|u3|u0|sum~combout\ & ( !\u2|u7|u1|u2|u0|sum~combout\ $ (!\u5|u0|u3|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datad => \u5|u0|u3|u2|ALT_INV_co~combout\,
	dataf => \u1|u7|u1|u3|u0|ALT_INV_sum~combout\,
	combout => \u5|u0|u3|u3|sum~combout\);

-- Location: LABCELL_X62_Y2_N18
\u7|u0|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|u3|sum~combout\ = ( \u5|u0|u3|u3|sum~combout\ & ( !\u6|u0|u3|u3|sum~combout\ $ (\u7|u0|u3|u2|co~combout\) ) ) # ( !\u5|u0|u3|u3|sum~combout\ & ( !\u6|u0|u3|u3|sum~combout\ $ (!\u7|u0|u3|u2|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u6|u0|u3|u3|ALT_INV_sum~combout\,
	datac => \u7|u0|u3|u2|ALT_INV_co~combout\,
	dataf => \u5|u0|u3|u3|ALT_INV_sum~combout\,
	combout => \u7|u0|u3|u3|sum~combout\);

-- Location: LABCELL_X63_Y2_N18
\v5|u0|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u0|u3|u2|co~0_combout\ = ( \v5|u0|u3|u0|co~0_combout\ & ( \u5|u0|u3|u1|sum~combout\ & ( (!\u6|u0|u3|u2|sum~combout\ & (\u5|u0|u3|u2|sum~combout\ & (!\u6|u0|u3|u1|sum~combout\ $ (!\u7|u0|u3|u0|co~combout\)))) # (\u6|u0|u3|u2|sum~combout\ & 
-- (!\u5|u0|u3|u2|sum~combout\ & (!\u6|u0|u3|u1|sum~combout\ $ (!\u7|u0|u3|u0|co~combout\)))) ) ) ) # ( \v5|u0|u3|u0|co~0_combout\ & ( !\u5|u0|u3|u1|sum~combout\ & ( (!\u6|u0|u3|u1|sum~combout\ & (!\u7|u0|u3|u0|co~combout\ & (!\u6|u0|u3|u2|sum~combout\ $ 
-- (\u5|u0|u3|u2|sum~combout\)))) # (\u6|u0|u3|u1|sum~combout\ & (\u7|u0|u3|u0|co~combout\ & (!\u6|u0|u3|u2|sum~combout\ $ (!\u5|u0|u3|u2|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000010100001000000000000000000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u0|u3|u2|ALT_INV_sum~combout\,
	datab => \u6|u0|u3|u1|ALT_INV_sum~combout\,
	datac => \u7|u0|u3|u0|ALT_INV_co~combout\,
	datad => \u5|u0|u3|u2|ALT_INV_sum~combout\,
	datae => \v5|u0|u3|u0|ALT_INV_co~0_combout\,
	dataf => \u5|u0|u3|u1|ALT_INV_sum~combout\,
	combout => \v5|u0|u3|u2|co~0_combout\);

-- Location: LABCELL_X62_Y2_N33
\v7|m[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v7|m[15]~13_combout\ = !\u7|u0|u3|u3|sum~combout\ $ (((!\comb~0_combout\) # (\v5|u0|u3|u2|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u3|ALT_INV_sum~combout\,
	datac => \v5|u0|u3|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	combout => \v7|m[15]~13_combout\);

-- Location: LABCELL_X62_Y5_N39
\u4|u5|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u1|co~combout\ = ( \u4|u4|p\(1) & ( \u4|u5|u1|u0|u0|co~0_combout\ ) ) # ( !\u4|u4|p\(1) & ( \u4|u5|u1|u0|u0|co~0_combout\ & ( \u4|u3|u1|u0|u2|sum~combout\ ) ) ) # ( \u4|u4|p\(1) & ( !\u4|u5|u1|u0|u0|co~0_combout\ & ( 
-- \u4|u3|u1|u0|u2|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datae => \u4|u4|ALT_INV_p\(1),
	dataf => \u4|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \u4|u5|u1|u0|u1|co~combout\);

-- Location: LABCELL_X61_Y5_N18
\u4|u3|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u0|u2|co~combout\ = ( \a[0]~input_o\ & ( \v4|m[13]~12_combout\ & ( (\v4|m[12]~11_combout\ & ((!\v3|m[3]~2_combout\ & (\v3|m[2]~1_combout\ & \v3|m[1]~0_combout\)) # (\v3|m[3]~2_combout\ & ((\v3|m[1]~0_combout\) # (\v3|m[2]~1_combout\))))) ) ) ) # 
-- ( !\a[0]~input_o\ & ( \v4|m[13]~12_combout\ & ( (\v3|m[2]~1_combout\ & (\v4|m[12]~11_combout\ & ((\v3|m[1]~0_combout\) # (\v3|m[3]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[3]~2_combout\,
	datab => \v3|ALT_INV_m[2]~1_combout\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u0|u2|co~combout\);

-- Location: LABCELL_X61_Y5_N24
\u4|u3|u1|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u0|u3|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( !\v3|m[3]~2_combout\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[4]~3_combout\))) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v4|m[12]~11_combout\ & \v3|m[4]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u0|u3|sum~0_combout\);

-- Location: LABCELL_X61_Y5_N27
\u4|u4|p[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(2) = (\v4|m[14]~13_combout\ & \v3|m[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[2]~1_combout\,
	combout => \u4|u4|p\(2));

-- Location: LABCELL_X61_Y5_N30
\u4|u5|u1|u0|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u2|sum~0_combout\ = !\u4|u3|u1|u0|u2|co~combout\ $ (!\u4|u3|u1|u0|u3|sum~0_combout\ $ (\u4|u4|p\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u3|u1|u0|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datad => \u4|u4|ALT_INV_p\(2),
	combout => \u4|u5|u1|u0|u2|sum~0_combout\);

-- Location: LABCELL_X63_Y3_N36
\u4|u7|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u1|sum~combout\ = ( \u4|u5|u1|u0|u2|sum~0_combout\ & ( \u4|u5|u1|u0|u1|sum~combout\ & ( !\u4|u5|u1|u0|u1|co~combout\ $ (((\v4|m~14_combout\ & (!\a[0]~input_o\ $ (!\v3|m[1]~0_combout\))))) ) ) ) # ( !\u4|u5|u1|u0|u2|sum~0_combout\ & ( 
-- \u4|u5|u1|u0|u1|sum~combout\ & ( !\u4|u5|u1|u0|u1|co~combout\ $ (((!\v4|m~14_combout\) # (!\a[0]~input_o\ $ (\v3|m[1]~0_combout\)))) ) ) ) # ( \u4|u5|u1|u0|u2|sum~0_combout\ & ( !\u4|u5|u1|u0|u1|sum~combout\ & ( !\u4|u5|u1|u0|u1|co~combout\ $ 
-- (((\v3|m[1]~0_combout\ & \v4|m~14_combout\))) ) ) ) # ( !\u4|u5|u1|u0|u2|sum~0_combout\ & ( !\u4|u5|u1|u0|u1|sum~combout\ & ( !\u4|u5|u1|u0|u1|co~combout\ $ (((!\v3|m[1]~0_combout\) # (!\v4|m~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010101010101011010011010101010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u0|u1|ALT_INV_co~combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	datae => \u4|u5|u1|u0|u2|ALT_INV_sum~0_combout\,
	dataf => \u4|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X63_Y2_N54
\u6|u0|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u3|u3|co~combout\ = ( \u6|u0|u3|u1|co~combout\ & ( \u3|u7|u1|u1|u0|sum~0_combout\ & ( (!\u4|u7|u1|u0|u0|sum~0_combout\ & (!\u3|u7|u1|u0|u3|co~combout\ & ((\u4|u5|u1|u0|u0|sum~0_combout\) # (\u3|u7|u1|u0|u3|sum~combout\)))) # 
-- (\u4|u7|u1|u0|u0|sum~0_combout\ & ((!\u3|u7|u1|u0|u3|co~combout\) # ((\u4|u5|u1|u0|u0|sum~0_combout\) # (\u3|u7|u1|u0|u3|sum~combout\)))) ) ) ) # ( !\u6|u0|u3|u1|co~combout\ & ( \u3|u7|u1|u1|u0|sum~0_combout\ & ( (!\u4|u7|u1|u0|u0|sum~0_combout\ & 
-- (!\u3|u7|u1|u0|u3|co~combout\ & (\u3|u7|u1|u0|u3|sum~combout\ & \u4|u5|u1|u0|u0|sum~0_combout\))) # (\u4|u7|u1|u0|u0|sum~0_combout\ & ((!\u3|u7|u1|u0|u3|co~combout\) # ((\u3|u7|u1|u0|u3|sum~combout\ & \u4|u5|u1|u0|u0|sum~0_combout\)))) ) ) ) # ( 
-- \u6|u0|u3|u1|co~combout\ & ( !\u3|u7|u1|u1|u0|sum~0_combout\ & ( (!\u4|u7|u1|u0|u0|sum~0_combout\ & (\u3|u7|u1|u0|u3|co~combout\ & ((\u4|u5|u1|u0|u0|sum~0_combout\) # (\u3|u7|u1|u0|u3|sum~combout\)))) # (\u4|u7|u1|u0|u0|sum~0_combout\ & 
-- (((\u4|u5|u1|u0|u0|sum~0_combout\) # (\u3|u7|u1|u0|u3|sum~combout\)) # (\u3|u7|u1|u0|u3|co~combout\))) ) ) ) # ( !\u6|u0|u3|u1|co~combout\ & ( !\u3|u7|u1|u1|u0|sum~0_combout\ & ( (!\u4|u7|u1|u0|u0|sum~0_combout\ & (\u3|u7|u1|u0|u3|co~combout\ & 
-- (\u3|u7|u1|u0|u3|sum~combout\ & \u4|u5|u1|u0|u0|sum~0_combout\))) # (\u4|u7|u1|u0|u0|sum~0_combout\ & (((\u3|u7|u1|u0|u3|sum~combout\ & \u4|u5|u1|u0|u0|sum~0_combout\)) # (\u3|u7|u1|u0|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011101000100010011010100110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u0|ALT_INV_sum~0_combout\,
	datab => \u3|u7|u1|u0|u3|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u4|u5|u1|u0|u0|ALT_INV_sum~0_combout\,
	datae => \u6|u0|u3|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u6|u0|u3|u3|co~combout\);

-- Location: MLABCELL_X65_Y3_N51
\u3|u4|p[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(6) = ( \v4|m[10]~9_combout\ & ( \v3|m[6]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(6));

-- Location: MLABCELL_X65_Y3_N6
\u3|u3|u1|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u3|sum~0_combout\ = (!\v4|m[9]~8_combout\ & (\v4|m[8]~6_combout\ & ((\v3|m[8]~7_combout\)))) # (\v4|m[9]~8_combout\ & (!\v3|m[7]~6_combout\ $ (((!\v4|m[8]~6_combout\) # (!\v3|m[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000001010011011000000101001101100000010100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[9]~8_combout\,
	datab => \v4|ALT_INV_m[8]~6_combout\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datad => \v3|ALT_INV_m[8]~7_combout\,
	combout => \u3|u3|u1|u1|u3|sum~0_combout\);

-- Location: MLABCELL_X65_Y3_N12
\u3|u3|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u2|co~combout\ = ( \v3|m[5]~4_combout\ & ( \u3|u3|u1|u1|u0|co~combout\ & ( (!\v4|m[9]~8_combout\ & (\v3|m[7]~6_combout\ & (\v3|m[6]~5_combout\ & \v4|m[8]~6_combout\))) # (\v4|m[9]~8_combout\ & (((\v3|m[7]~6_combout\ & \v4|m[8]~6_combout\)) # 
-- (\v3|m[6]~5_combout\))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \u3|u3|u1|u1|u0|co~combout\ & ( (\v3|m[6]~5_combout\ & (\v4|m[8]~6_combout\ & ((\v4|m[9]~8_combout\) # (\v3|m[7]~6_combout\)))) ) ) ) # ( \v3|m[5]~4_combout\ & ( !\u3|u3|u1|u1|u0|co~combout\ & ( 
-- (\v4|m[9]~8_combout\ & (\v3|m[6]~5_combout\ & \v4|m[8]~6_combout\)) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\u3|u3|u1|u1|u0|co~combout\ & ( (\v3|m[7]~6_combout\ & (\v4|m[9]~8_combout\ & (\v3|m[6]~5_combout\ & \v4|m[8]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000001100000000000001110000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v4|ALT_INV_m[9]~8_combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v4|ALT_INV_m[8]~6_combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \u3|u3|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u1|u2|co~combout\);

-- Location: MLABCELL_X65_Y3_N18
\u3|u5|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u2|sum~combout\ = ( \u3|u4|p\(5) & ( \u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u4|p\(6) $ (!\u3|u3|u1|u1|u3|sum~0_combout\ $ (((!\u3|u5|u1|u1|u0|co~combout\ & !\u3|u3|u1|u1|u2|sum~combout\)))) ) ) ) # ( !\u3|u4|p\(5) & ( 
-- \u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u4|p\(6) $ (!\u3|u3|u1|u1|u3|sum~0_combout\ $ (((!\u3|u5|u1|u1|u0|co~combout\) # (!\u3|u3|u1|u1|u2|sum~combout\)))) ) ) ) # ( \u3|u4|p\(5) & ( !\u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u4|p\(6) $ 
-- (!\u3|u3|u1|u1|u3|sum~0_combout\ $ (((\u3|u3|u1|u1|u2|sum~combout\) # (\u3|u5|u1|u1|u0|co~combout\)))) ) ) ) # ( !\u3|u4|p\(5) & ( !\u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u4|p\(6) $ (!\u3|u3|u1|u1|u3|sum~0_combout\ $ (((\u3|u5|u1|u1|u0|co~combout\ & 
-- \u3|u3|u1|u1|u2|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011111100001000111101000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \u3|u4|ALT_INV_p\(6),
	datad => \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	datae => \u3|u4|ALT_INV_p\(5),
	dataf => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u1|u2|sum~combout\);

-- Location: MLABCELL_X65_Y3_N39
\u3|u5|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u1|sum~combout\ = !\u3|u4|p\(5) $ (!\u3|u3|u1|u1|u2|sum~combout\ $ (\u3|u5|u1|u1|u0|co~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_p\(5),
	datac => \u3|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u3|u5|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X62_Y3_N0
\u3|u7|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u1|sum~combout\ = ( \v3|m[5]~4_combout\ & ( \u3|u5|u1|u1|u1|sum~combout\ & ( !\u3|u5|u1|u1|u2|sum~combout\ $ (((!\v4|m[11]~10_combout\ & (!\u3|u7|u1|u0|u3|co~combout\)) # (\v4|m[11]~10_combout\ & ((\v3|m[4]~3_combout\) # 
-- (\u3|u7|u1|u0|u3|co~combout\))))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \u3|u5|u1|u1|u1|sum~combout\ & ( !\u3|u5|u1|u1|u2|sum~combout\ $ (((!\u3|u7|u1|u0|u3|co~combout\ & ((!\v4|m[11]~10_combout\) # (!\v3|m[4]~3_combout\))))) ) ) ) # ( \v3|m[5]~4_combout\ & 
-- ( !\u3|u5|u1|u1|u1|sum~combout\ & ( !\u3|u5|u1|u1|u2|sum~combout\ $ (((!\v4|m[11]~10_combout\) # ((\u3|u7|u1|u0|u3|co~combout\ & \v3|m[4]~3_combout\)))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\u3|u5|u1|u1|u1|sum~combout\ & ( !\u3|u5|u1|u1|u2|sum~combout\ $ 
-- (((!\v4|m[11]~10_combout\) # ((!\u3|u7|u1|u0|u3|co~combout\) # (!\v3|m[4]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110010101001010101100110111110010000110001010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \u3|u7|u1|u0|u3|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[4]~3_combout\,
	datad => \u3|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \u3|u5|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X63_Y3_N45
\u6|u1|u0|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u0|sum~combout\ = ( \u3|u7|u1|u1|u1|sum~combout\ & ( !\u4|u7|u1|u0|u1|sum~combout\ $ (\u6|u0|u3|u3|co~combout\) ) ) # ( !\u3|u7|u1|u1|u1|sum~combout\ & ( !\u4|u7|u1|u0|u1|sum~combout\ $ (!\u6|u0|u3|u3|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datad => \u6|u0|u3|u3|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u0|sum~combout\);

-- Location: LABCELL_X66_Y4_N24
\u1|u7|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u0|co~combout\ = ( \v3|m[12]~11_combout\ & ( \u1|u5|u1|u3|u0|sum~combout\ & ( (!\v4|m[3]~2_combout\ & (\u1|u7|u1|u2|u2|co~combout\ & ((\u1|u5|u1|u3|u1|sum~combout\)))) # (\v4|m[3]~2_combout\ & (((\u1|u5|u1|u3|u1|sum~combout\) # 
-- (\v3|m[11]~10_combout\)) # (\u1|u7|u1|u2|u2|co~combout\))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \u1|u5|u1|u3|u0|sum~combout\ & ( (\u1|u5|u1|u3|u1|sum~combout\ & (((\v4|m[3]~2_combout\ & \v3|m[11]~10_combout\)) # (\u1|u7|u1|u2|u2|co~combout\))) ) ) ) # ( 
-- \v3|m[12]~11_combout\ & ( !\u1|u5|u1|u3|u0|sum~combout\ & ( (\v4|m[3]~2_combout\ & (((\u1|u7|u1|u2|u2|co~combout\ & \v3|m[11]~10_combout\)) # (\u1|u5|u1|u3|u1|sum~combout\))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( !\u1|u5|u1|u3|u0|sum~combout\ & ( 
-- (\v4|m[3]~2_combout\ & (\u1|u7|u1|u2|u2|co~combout\ & (\v3|m[11]~10_combout\ & \u1|u5|u1|u3|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010101010100000000001101110001010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~2_combout\,
	datab => \u1|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u1|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \u1|u5|u1|u3|u0|ALT_INV_sum~combout\,
	combout => \u1|u7|u1|u3|u0|co~combout\);

-- Location: LABCELL_X60_Y5_N42
\u1|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u1|co~combout\ = ( \u1|u1|p\(14) & ( (!\u1|u3|u1|u3|u0|co~combout\) # (\u1|u2|p\(13)) ) ) # ( !\u1|u1|p\(14) & ( (!\u1|u3|u1|u3|u0|co~combout\ & \u1|u2|p\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u3|u1|u3|u0|ALT_INV_co~combout\,
	datad => \u1|u2|ALT_INV_p\(13),
	dataf => \u1|u1|ALT_INV_p\(14),
	combout => \u1|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X60_Y5_N18
\u1|u3|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|u1|u3|u3|sum~combout\ = ( \u1|u3|u1|u3|u2|sum~0_combout\ & ( ((\v4|m[1]~0_combout\ & \v3|m~14_combout\)) # (\u1|u3|u1|u3|u1|co~combout\) ) ) # ( !\u1|u3|u1|u3|u2|sum~0_combout\ & ( (\v4|m[1]~0_combout\ & \v3|m~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datab => \u1|u3|u1|u3|u1|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m~14_combout\,
	dataf => \u1|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	combout => \u1|u3|u1|u3|u3|sum~combout\);

-- Location: MLABCELL_X65_Y4_N15
\u1|u6|p[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(13) = (\v4|m[3]~2_combout\ & \v3|m[13]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[3]~2_combout\,
	datad => \v3|ALT_INV_m[13]~12_combout\,
	combout => \u1|u6|p\(13));

-- Location: LABCELL_X64_Y6_N48
\u1|u4|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|p\(14) = (\v4|m[2]~1_combout\ & \v3|m[14]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[2]~1_combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	combout => \u1|u4|p\(14));

-- Location: LABCELL_X66_Y4_N30
\u1|u5|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u1|co~combout\ = ( \u1|u3|u1|u3|u1|sum~combout\ & ( \u1|u5|u1|u2|u3|co~1_combout\ & ( (!\u1|u4|p\(13) & !\u1|u3|u1|u3|u2|sum~combout\) ) ) ) # ( !\u1|u3|u1|u3|u1|sum~combout\ & ( \u1|u5|u1|u2|u3|co~1_combout\ & ( (!\u1|u4|p\(12) & 
-- ((!\u1|u4|p\(13)) # (!\u1|u3|u1|u3|u2|sum~combout\))) # (\u1|u4|p\(12) & (!\u1|u4|p\(13) & !\u1|u3|u1|u3|u2|sum~combout\)) ) ) ) # ( \u1|u3|u1|u3|u1|sum~combout\ & ( !\u1|u5|u1|u2|u3|co~1_combout\ & ( (!\u1|u4|p\(13) & ((!\u1|u3|u1|u3|u2|sum~combout\) # 
-- ((!\u1|u4|p\(12) & !\u1|u5|u1|u2|u3|co~0_combout\)))) # (\u1|u4|p\(13) & (!\u1|u4|p\(12) & (!\u1|u5|u1|u2|u3|co~0_combout\ & !\u1|u3|u1|u3|u2|sum~combout\))) ) ) ) # ( !\u1|u3|u1|u3|u1|sum~combout\ & ( !\u1|u5|u1|u2|u3|co~1_combout\ & ( (!\u1|u4|p\(13) & 
-- ((!\u1|u4|p\(12)) # ((!\u1|u5|u1|u2|u3|co~0_combout\) # (!\u1|u3|u1|u3|u2|sum~combout\)))) # (\u1|u4|p\(13) & (!\u1|u3|u1|u3|u2|sum~combout\ & ((!\u1|u4|p\(12)) # (!\u1|u5|u1|u2|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111110001000000011111010101000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_p\(12),
	datab => \u1|u5|u1|u2|u3|ALT_INV_co~0_combout\,
	datac => \u1|u4|ALT_INV_p\(13),
	datad => \u1|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datae => \u1|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u1|u5|u1|u2|u3|ALT_INV_co~1_combout\,
	combout => \u1|u5|u1|u3|u1|co~combout\);

-- Location: LABCELL_X66_Y4_N9
\u1|u7|u1|u3|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u1|sum~0_combout\ = ( \u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u3|u1|u3|u3|sum~combout\ $ (!\u1|u6|p\(13) $ (\u1|u4|p\(14))) ) ) # ( !\u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u3|u1|u3|u3|sum~combout\ $ (!\u1|u6|p\(13) $ (!\u1|u4|p\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datac => \u1|u6|ALT_INV_p\(13),
	datad => \u1|u4|ALT_INV_p\(14),
	dataf => \u1|u5|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u1|sum~0_combout\);

-- Location: LABCELL_X64_Y5_N36
\u2|u3|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u3|sum~combout\ = ( \u2|u3|u1|u2|u1|co~combout\ & ( \v3|m[11]~10_combout\ & ( (!\v4|m[4]~3_combout\ & (\v4|m[5]~4_combout\ & (!\v3|m[10]~9_combout\))) # (\v4|m[4]~3_combout\ & (!\v4|m[5]~4_combout\ $ (((\v3|m[12]~11_combout\))))) ) ) ) # ( 
-- !\u2|u3|u1|u2|u1|co~combout\ & ( \v3|m[11]~10_combout\ & ( (!\v4|m[4]~3_combout\ & (\v4|m[5]~4_combout\)) # (\v4|m[4]~3_combout\ & (!\v3|m[12]~11_combout\ $ (((!\v4|m[5]~4_combout\) # (\v3|m[10]~9_combout\))))) ) ) ) # ( \u2|u3|u1|u2|u1|co~combout\ & ( 
-- !\v3|m[11]~10_combout\ & ( (!\v4|m[5]~4_combout\ & (((\v3|m[12]~11_combout\ & \v4|m[4]~3_combout\)))) # (\v4|m[5]~4_combout\ & (!\v3|m[10]~9_combout\ $ (((!\v3|m[12]~11_combout\) # (!\v4|m[4]~3_combout\))))) ) ) ) # ( !\u2|u3|u1|u2|u1|co~combout\ & ( 
-- !\v3|m[11]~10_combout\ & ( (\v3|m[12]~11_combout\ & \v4|m[4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000100010001111001010101010010110100010010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[12]~11_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \u2|u3|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[11]~10_combout\,
	combout => \u2|u3|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X65_Y5_N42
\u2|u5|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u2|sum~combout\ = ( \v3|m[10]~9_combout\ & ( \u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u3|sum~combout\ $ (((!\v4|m[6]~7_combout\ & ((!\u2|u3|u1|u2|u2|sum~combout\))) # (\v4|m[6]~7_combout\ & ((\u2|u3|u1|u2|u2|sum~combout\) # 
-- (\v3|m[9]~8_combout\))))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u3|sum~combout\ $ (((!\u2|u3|u1|u2|u2|sum~combout\ & ((!\v3|m[9]~8_combout\) # (!\v4|m[6]~7_combout\))))) ) ) ) # ( \v3|m[10]~9_combout\ & ( 
-- !\u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u3|sum~combout\ $ (((!\v4|m[6]~7_combout\) # ((\v3|m[9]~8_combout\ & \u2|u3|u1|u2|u2|sum~combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u2|u5|u1|u2|u0|co~combout\ & ( !\u2|u3|u1|u2|u3|sum~combout\ $ 
-- (((!\v3|m[9]~8_combout\) # ((!\v4|m[6]~7_combout\) # (!\u2|u3|u1|u2|u2|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010110100101100101010110101010100101100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u2|u5|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X65_Y4_N48
\u2|u7|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u1|sum~combout\ = ( \u2|u7|u1|u1|u3|co~combout\ & ( \v4|m[7]~5_combout\ & ( !\v3|m[9]~8_combout\ $ (!\u2|u5|u1|u2|u2|sum~combout\ $ (((\v3|m[8]~7_combout\) # (\u2|u5|u1|u2|u1|sum~combout\)))) ) ) ) # ( !\u2|u7|u1|u1|u3|co~combout\ & ( 
-- \v4|m[7]~5_combout\ & ( !\v3|m[9]~8_combout\ $ (!\u2|u5|u1|u2|u2|sum~combout\ $ (((\u2|u5|u1|u2|u1|sum~combout\ & \v3|m[8]~7_combout\)))) ) ) ) # ( \u2|u7|u1|u1|u3|co~combout\ & ( !\v4|m[7]~5_combout\ & ( !\u2|u5|u1|u2|u1|sum~combout\ $ 
-- (!\u2|u5|u1|u2|u2|sum~combout\) ) ) ) # ( !\u2|u7|u1|u1|u3|co~combout\ & ( !\v4|m[7]~5_combout\ & ( \u2|u5|u1|u2|u2|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101011010101000110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u2|u1|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u2|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \u2|u7|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u7|u1|u2|u1|sum~combout\);

-- Location: MLABCELL_X65_Y4_N54
\u5|u1|u0|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u0|sum~combout\ = ( \u1|u7|u1|u3|u1|sum~0_combout\ & ( \u2|u7|u1|u2|u1|sum~combout\ & ( !\u1|u7|u1|u3|u0|co~combout\ $ (((!\u2|u7|u1|u2|u0|sum~combout\ & ((!\u1|u7|u1|u3|u0|sum~combout\) # (!\u5|u0|u3|u2|co~combout\))) # 
-- (\u2|u7|u1|u2|u0|sum~combout\ & (!\u1|u7|u1|u3|u0|sum~combout\ & !\u5|u0|u3|u2|co~combout\)))) ) ) ) # ( !\u1|u7|u1|u3|u1|sum~0_combout\ & ( \u2|u7|u1|u2|u1|sum~combout\ & ( !\u1|u7|u1|u3|u0|co~combout\ $ (((!\u2|u7|u1|u2|u0|sum~combout\ & 
-- (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # (\u2|u7|u1|u2|u0|sum~combout\ & ((\u5|u0|u3|u2|co~combout\) # (\u1|u7|u1|u3|u0|sum~combout\))))) ) ) ) # ( \u1|u7|u1|u3|u1|sum~0_combout\ & ( !\u2|u7|u1|u2|u1|sum~combout\ & ( 
-- !\u1|u7|u1|u3|u0|co~combout\ $ (((!\u2|u7|u1|u2|u0|sum~combout\ & (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # (\u2|u7|u1|u2|u0|sum~combout\ & ((\u5|u0|u3|u2|co~combout\) # (\u1|u7|u1|u3|u0|sum~combout\))))) ) ) ) # ( 
-- !\u1|u7|u1|u3|u1|sum~0_combout\ & ( !\u2|u7|u1|u2|u1|sum~combout\ & ( !\u1|u7|u1|u3|u0|co~combout\ $ (((!\u2|u7|u1|u2|u0|sum~combout\ & ((!\u1|u7|u1|u3|u0|sum~combout\) # (!\u5|u0|u3|u2|co~combout\))) # (\u2|u7|u1|u2|u0|sum~combout\ & 
-- (!\u1|u7|u1|u3|u0|sum~combout\ & !\u5|u0|u3|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011111101000000101110001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u5|u0|u3|u2|ALT_INV_co~combout\,
	datad => \u1|u7|u1|u3|u0|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u3|u1|ALT_INV_sum~0_combout\,
	dataf => \u2|u7|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u5|u1|u0|u0|sum~combout\);

-- Location: LABCELL_X62_Y2_N57
\u7|u1|u0|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u0|u0|sum~combout\ = ( \u5|u0|u3|u3|sum~combout\ & ( !\u6|u1|u0|u0|sum~combout\ $ (!\u5|u1|u0|u0|sum~combout\ $ (((\u6|u0|u3|u3|sum~combout\) # (\u7|u0|u3|u2|co~combout\)))) ) ) # ( !\u5|u0|u3|u3|sum~combout\ & ( !\u6|u1|u0|u0|sum~combout\ $ 
-- (!\u5|u1|u0|u0|sum~combout\ $ (((\u7|u0|u3|u2|co~combout\ & \u6|u0|u3|u3|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u2|ALT_INV_co~combout\,
	datab => \u6|u0|u3|u3|ALT_INV_sum~combout\,
	datac => \u6|u1|u0|u0|ALT_INV_sum~combout\,
	datad => \u5|u1|u0|u0|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|u3|ALT_INV_sum~combout\,
	combout => \u7|u1|u0|u0|sum~combout\);

-- Location: LABCELL_X62_Y2_N21
\v6|m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[0]~0_combout\ = ( \v5|u0|u3|u2|co~0_combout\ & ( !\u7|u1|u0|u0|sum~combout\ $ (((!\u7|u0|u3|u3|sum~combout\) # (!\comb~0_combout\))) ) ) # ( !\v5|u0|u3|u2|co~0_combout\ & ( !\u7|u1|u0|u0|sum~combout\ $ (!\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u3|ALT_INV_sum~combout\,
	datac => \u7|u1|u0|u0|ALT_INV_sum~combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \v5|u0|u3|u2|ALT_INV_co~0_combout\,
	combout => \v6|m[0]~0_combout\);

-- Location: LABCELL_X64_Y5_N42
\u2|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u2|u3|co~combout\ = ( \u2|u3|u1|u2|u1|co~combout\ & ( \v3|m[11]~10_combout\ & ( (!\v4|m[5]~4_combout\ & (((\v3|m[12]~11_combout\ & \v4|m[4]~3_combout\)))) # (\v4|m[5]~4_combout\ & (((\v4|m[4]~3_combout\)) # (\v3|m[10]~9_combout\))) ) ) ) # ( 
-- !\u2|u3|u1|u2|u1|co~combout\ & ( \v3|m[11]~10_combout\ & ( (\v4|m[5]~4_combout\ & (\v4|m[4]~3_combout\ & ((\v3|m[12]~11_combout\) # (\v3|m[10]~9_combout\)))) ) ) ) # ( \u2|u3|u1|u2|u1|co~combout\ & ( !\v3|m[11]~10_combout\ & ( (\v4|m[5]~4_combout\ & 
-- (\v3|m[10]~9_combout\ & (\v3|m[12]~11_combout\ & \v4|m[4]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000101010001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[12]~11_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \u2|u3|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[11]~10_combout\,
	combout => \u2|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X64_Y5_N51
\u2|u3|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u0|sum~combout\ = ( \v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( !\v3|m[12]~11_combout\ $ (((\v3|m[13]~12_combout\ & \v4|m[4]~3_combout\))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( (!\v3|m[13]~12_combout\) 
-- # (!\v4|m[4]~3_combout\) ) ) ) # ( \v4|m[5]~4_combout\ & ( !\u2|u3|u1|u2|u3|co~combout\ & ( !\v3|m[12]~11_combout\ $ (((!\v3|m[13]~12_combout\) # (!\v4|m[4]~3_combout\))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( !\u2|u3|u1|u2|u3|co~combout\ & ( 
-- (\v3|m[13]~12_combout\ & \v4|m[4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111101011111010111110101111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[13]~12_combout\,
	datac => \v4|ALT_INV_m[4]~3_combout\,
	datad => \v3|ALT_INV_m[12]~11_combout\,
	datae => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u3|u0|sum~combout\);

-- Location: MLABCELL_X65_Y5_N18
\u2|u5|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u2|co~combout\ = ( \v3|m[10]~9_combout\ & ( \u2|u5|u1|u2|u0|co~combout\ & ( (!\u2|u3|u1|u2|u3|sum~combout\ & (\v4|m[6]~7_combout\ & ((\u2|u3|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\)))) # (\u2|u3|u1|u2|u3|sum~combout\ & 
-- (((\u2|u3|u1|u2|u2|sum~combout\) # (\v4|m[6]~7_combout\)))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \u2|u5|u1|u2|u0|co~combout\ & ( (\u2|u3|u1|u2|u3|sum~combout\ & (((\v3|m[9]~8_combout\ & \v4|m[6]~7_combout\)) # (\u2|u3|u1|u2|u2|sum~combout\))) ) ) ) # ( 
-- \v3|m[10]~9_combout\ & ( !\u2|u5|u1|u2|u0|co~combout\ & ( (\v4|m[6]~7_combout\ & (((\v3|m[9]~8_combout\ & \u2|u3|u1|u2|u2|sum~combout\)) # (\u2|u3|u1|u2|u3|sum~combout\))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\u2|u5|u1|u2|u0|co~combout\ & ( 
-- (\u2|u3|u1|u2|u3|sum~combout\ & (\v3|m[9]~8_combout\ & (\v4|m[6]~7_combout\ & \u2|u3|u1|u2|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000001010000011100000001010101010000011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	datad => \u2|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \u2|u5|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u2|co~combout\);

-- Location: LABCELL_X64_Y5_N57
\u2|u5|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u2|u3|sum~combout\ = ( \u2|u5|u1|u2|u2|co~combout\ & ( !\u2|u3|u1|u3|u0|sum~combout\ $ (((\v4|m[6]~7_combout\ & \v3|m[11]~10_combout\))) ) ) # ( !\u2|u5|u1|u2|u2|co~combout\ & ( !\u2|u3|u1|u3|u0|sum~combout\ $ (((!\v4|m[6]~7_combout\) # 
-- (!\v3|m[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[6]~7_combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u2|u3|u1|u3|u0|ALT_INV_sum~combout\,
	dataf => \u2|u5|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X65_Y4_N42
\u2|u7|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u1|co~combout\ = ( \u2|u7|u1|u1|u3|co~combout\ & ( \v4|m[7]~5_combout\ & ( (!\v3|m[9]~8_combout\ & (\u2|u5|u1|u2|u2|sum~combout\ & ((\v3|m[8]~7_combout\) # (\u2|u5|u1|u2|u1|sum~combout\)))) # (\v3|m[9]~8_combout\ & 
-- (((\u2|u5|u1|u2|u2|sum~combout\) # (\v3|m[8]~7_combout\)) # (\u2|u5|u1|u2|u1|sum~combout\))) ) ) ) # ( !\u2|u7|u1|u1|u3|co~combout\ & ( \v4|m[7]~5_combout\ & ( (!\v3|m[9]~8_combout\ & (\u2|u5|u1|u2|u1|sum~combout\ & (\v3|m[8]~7_combout\ & 
-- \u2|u5|u1|u2|u2|sum~combout\))) # (\v3|m[9]~8_combout\ & (((\u2|u5|u1|u2|u1|sum~combout\ & \v3|m[8]~7_combout\)) # (\u2|u5|u1|u2|u2|sum~combout\))) ) ) ) # ( \u2|u7|u1|u1|u3|co~combout\ & ( !\v4|m[7]~5_combout\ & ( (\u2|u5|u1|u2|u1|sum~combout\ & 
-- \u2|u5|u1|u2|u2|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000001001101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u2|u1|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u2|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \u2|u7|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u7|u1|u2|u1|co~combout\);

-- Location: MLABCELL_X65_Y4_N36
\u2|u7|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u2|sum~combout\ = ( \u2|u7|u1|u2|u1|co~combout\ & ( !\u2|u5|u1|u2|u3|sum~combout\ $ (((\v4|m[7]~5_combout\ & \v3|m[10]~9_combout\))) ) ) # ( !\u2|u7|u1|u2|u1|co~combout\ & ( !\u2|u5|u1|u2|u3|sum~combout\ $ (((!\v4|m[7]~5_combout\) # 
-- (!\v3|m[10]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datad => \u2|u5|u1|u2|u3|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u2|u7|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X65_Y4_N6
\u1|u6|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u6|p\(14) = ( \v3|m[14]~13_combout\ & ( \v4|m[3]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \v4|ALT_INV_m[3]~2_combout\,
	dataf => \v3|ALT_INV_m[14]~13_combout\,
	combout => \u1|u6|p\(14));

-- Location: LABCELL_X60_Y5_N21
\u1|u5|u1|u3|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u3|sum~0_combout\ = ( \u1|u3|u1|u3|u2|sum~0_combout\ & ( (\v3|m~14_combout\ & (\v4|m[2]~1_combout\ & ((!\v4|m[1]~0_combout\) # (!\u1|u3|u1|u3|u1|co~combout\)))) ) ) # ( !\u1|u3|u1|u3|u2|sum~0_combout\ & ( (\v3|m~14_combout\ & 
-- \v4|m[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011100000000000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[1]~0_combout\,
	datab => \u1|u3|u1|u3|u1|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m~14_combout\,
	datad => \v4|ALT_INV_m[2]~1_combout\,
	dataf => \u1|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	combout => \u1|u5|u1|u3|u3|sum~0_combout\);

-- Location: LABCELL_X66_Y4_N12
\u1|u5|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u3|sum~combout\ = ( \u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u5|u1|u3|u3|sum~0_combout\ $ (((!\u1|u3|u1|u3|u3|sum~combout\) # (!\u1|u4|p\(14)))) ) ) # ( !\u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u5|u1|u3|u3|sum~0_combout\ $ 
-- (((!\u1|u3|u1|u3|u3|sum~combout\ & !\u1|u4|p\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011001100011001101100110000110011011001100011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datab => \u1|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u1|u4|ALT_INV_p\(14),
	dataf => \u1|u5|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u5|u1|u3|u3|sum~combout\);

-- Location: LABCELL_X66_Y4_N36
\u1|u5|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u2|sum~combout\ = ( \u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u3|u1|u3|u3|sum~combout\ $ (!\u1|u4|p\(14)) ) ) # ( !\u1|u5|u1|u3|u1|co~combout\ & ( !\u1|u3|u1|u3|u3|sum~combout\ $ (\u1|u4|p\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \u1|u4|ALT_INV_p\(14),
	dataf => \u1|u5|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u5|u1|u3|u2|sum~combout\);

-- Location: MLABCELL_X65_Y4_N9
\u1|u7|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u2|sum~combout\ = ( \u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u6|p\(14) $ (!\u1|u5|u1|u3|u3|sum~combout\ $ (((\u1|u5|u1|u3|u2|sum~combout\) # (\u1|u6|p\(13))))) ) ) # ( !\u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u6|p\(14) $ 
-- (!\u1|u5|u1|u3|u3|sum~combout\ $ (((\u1|u6|p\(13) & \u1|u5|u1|u3|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(14),
	datab => \u1|u6|ALT_INV_p\(13),
	datac => \u1|u5|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u1|u7|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u2|sum~combout\);

-- Location: MLABCELL_X65_Y4_N0
\u5|u1|u0|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u0|co~combout\ = ( \u1|u7|u1|u3|u1|sum~0_combout\ & ( \u2|u7|u1|u2|u1|sum~combout\ & ( (!\u1|u7|u1|u3|u0|co~combout\) # ((!\u2|u7|u1|u2|u0|sum~combout\ & (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # (\u2|u7|u1|u2|u0|sum~combout\ 
-- & ((\u5|u0|u3|u2|co~combout\) # (\u1|u7|u1|u3|u0|sum~combout\)))) ) ) ) # ( !\u1|u7|u1|u3|u1|sum~0_combout\ & ( \u2|u7|u1|u2|u1|sum~combout\ & ( ((!\u2|u7|u1|u2|u0|sum~combout\ & (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # 
-- (\u2|u7|u1|u2|u0|sum~combout\ & ((\u5|u0|u3|u2|co~combout\) # (\u1|u7|u1|u3|u0|sum~combout\)))) # (\u1|u7|u1|u3|u0|co~combout\) ) ) ) # ( \u1|u7|u1|u3|u1|sum~0_combout\ & ( !\u2|u7|u1|u2|u1|sum~combout\ & ( (!\u1|u7|u1|u3|u0|co~combout\ & 
-- ((!\u2|u7|u1|u2|u0|sum~combout\ & (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # (\u2|u7|u1|u2|u0|sum~combout\ & ((\u5|u0|u3|u2|co~combout\) # (\u1|u7|u1|u3|u0|sum~combout\))))) ) ) ) # ( !\u1|u7|u1|u3|u1|sum~0_combout\ & ( 
-- !\u2|u7|u1|u2|u1|sum~combout\ & ( (\u1|u7|u1|u3|u0|co~combout\ & ((!\u2|u7|u1|u2|u0|sum~combout\ & (\u1|u7|u1|u3|u0|sum~combout\ & \u5|u0|u3|u2|co~combout\)) # (\u2|u7|u1|u2|u0|sum~combout\ & ((\u5|u0|u3|u2|co~combout\) # 
-- (\u1|u7|u1|u3|u0|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101110000000000010111111111111111111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u5|u0|u3|u2|ALT_INV_co~combout\,
	datad => \u1|u7|u1|u3|u0|ALT_INV_co~combout\,
	datae => \u1|u7|u1|u3|u1|ALT_INV_sum~0_combout\,
	dataf => \u2|u7|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u5|u1|u0|u0|co~combout\);

-- Location: LABCELL_X62_Y2_N3
\u5|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u1|sum~combout\ = ( \u5|u1|u0|u0|co~combout\ & ( !\u2|u7|u1|u2|u2|sum~combout\ $ (\u1|u7|u1|u3|u2|sum~combout\) ) ) # ( !\u5|u1|u0|u0|co~combout\ & ( !\u2|u7|u1|u2|u2|sum~combout\ $ (!\u1|u7|u1|u3|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u2|ALT_INV_sum~combout\,
	datac => \u1|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u0|ALT_INV_co~combout\,
	combout => \u5|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X64_Y3_N33
\u3|u2|p[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|p\(8) = (\v3|m[8]~7_combout\ & \v4|m[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \v4|ALT_INV_m[9]~8_combout\,
	combout => \u3|u2|p\(8));

-- Location: LABCELL_X64_Y3_N39
\u3|u1|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|p\(9) = ( \v4|m[8]~6_combout\ & ( \v3|m[9]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u1|p\(9));

-- Location: LABCELL_X64_Y3_N30
\u3|u3|u1|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u1|u3|co~0_combout\ = ( \v4|m[8]~6_combout\ & ( (\v3|m[8]~7_combout\ & (\v4|m[9]~8_combout\ & \v3|m[7]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \v4|ALT_INV_m[9]~8_combout\,
	datad => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u3|u1|u1|u3|co~0_combout\);

-- Location: LABCELL_X64_Y3_N12
\u3|u3|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u0|sum~combout\ = ( \u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u2|p\(8) $ (!\u3|u1|p\(9) $ (((\u3|u3|u1|u1|u3|sum~0_combout\) # (\u3|u3|u1|u1|u3|co~0_combout\)))) ) ) # ( !\u3|u3|u1|u1|u2|co~combout\ & ( !\u3|u2|p\(8) $ (!\u3|u1|p\(9) $ 
-- (\u3|u3|u1|u1|u3|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|ALT_INV_p\(8),
	datab => \u3|u1|ALT_INV_p\(9),
	datac => \u3|u3|u1|u1|u3|ALT_INV_co~0_combout\,
	datad => \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	dataf => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u2|u0|sum~combout\);

-- Location: MLABCELL_X65_Y3_N24
\u3|u5|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u2|co~combout\ = ( \u3|u4|p\(5) & ( \u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u4|p\(6) & (!\u3|u3|u1|u1|u3|sum~0_combout\ & ((\u3|u3|u1|u1|u2|sum~combout\) # (\u3|u5|u1|u1|u0|co~combout\)))) # (\u3|u4|p\(6) & (((!\u3|u3|u1|u1|u3|sum~0_combout\) # 
-- (\u3|u3|u1|u1|u2|sum~combout\)) # (\u3|u5|u1|u1|u0|co~combout\))) ) ) ) # ( !\u3|u4|p\(5) & ( \u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u4|p\(6) & (\u3|u5|u1|u1|u0|co~combout\ & (\u3|u3|u1|u1|u2|sum~combout\ & !\u3|u3|u1|u1|u3|sum~0_combout\))) # 
-- (\u3|u4|p\(6) & ((!\u3|u3|u1|u1|u3|sum~0_combout\) # ((\u3|u5|u1|u1|u0|co~combout\ & \u3|u3|u1|u1|u2|sum~combout\)))) ) ) ) # ( \u3|u4|p\(5) & ( !\u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u4|p\(6) & (\u3|u3|u1|u1|u3|sum~0_combout\ & 
-- ((\u3|u3|u1|u1|u2|sum~combout\) # (\u3|u5|u1|u1|u0|co~combout\)))) # (\u3|u4|p\(6) & (((\u3|u3|u1|u1|u3|sum~0_combout\) # (\u3|u3|u1|u1|u2|sum~combout\)) # (\u3|u5|u1|u1|u0|co~combout\))) ) ) ) # ( !\u3|u4|p\(5) & ( !\u3|u3|u1|u1|u2|co~combout\ & ( 
-- (!\u3|u4|p\(6) & (\u3|u5|u1|u1|u0|co~combout\ & (\u3|u3|u1|u1|u2|sum~combout\ & \u3|u3|u1|u1|u3|sum~0_combout\))) # (\u3|u4|p\(6) & (((\u3|u5|u1|u1|u0|co~combout\ & \u3|u3|u1|u1|u2|sum~combout\)) # (\u3|u3|u1|u1|u3|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001110111111100011111000000010111111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u1|u0|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \u3|u4|ALT_INV_p\(6),
	datad => \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	datae => \u3|u4|ALT_INV_p\(5),
	dataf => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u1|u2|co~combout\);

-- Location: LABCELL_X66_Y3_N54
\u3|u7|u1|u1|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u2|sum~0_combout\ = ( \v3|m[6]~5_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( !\v4|m[11]~10_combout\ $ (!\u3|u3|u1|u2|u0|sum~combout\ $ (((!\v4|m[10]~9_combout\) # (!\v3|m[7]~6_combout\)))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( 
-- \u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u0|sum~combout\ $ (((\v4|m[10]~9_combout\ & \v3|m[7]~6_combout\))) ) ) ) # ( \v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( !\v4|m[11]~10_combout\ $ (!\u3|u3|u1|u2|u0|sum~combout\ $ 
-- (((\v4|m[10]~9_combout\ & \v3|m[7]~6_combout\)))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u0|sum~combout\ $ (((!\v4|m[10]~9_combout\) # (!\v3|m[7]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000111101110000111101110000100011110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~9_combout\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datac => \v4|ALT_INV_m[11]~10_combout\,
	datad => \u3|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u3|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u1|u2|sum~0_combout\);

-- Location: LABCELL_X62_Y3_N6
\u3|u7|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u1|co~combout\ = ( \v3|m[5]~4_combout\ & ( \u3|u5|u1|u1|u1|sum~combout\ & ( (!\v4|m[11]~10_combout\ & (\u3|u7|u1|u0|u3|co~combout\ & ((\u3|u5|u1|u1|u2|sum~combout\)))) # (\v4|m[11]~10_combout\ & (((\u3|u5|u1|u1|u2|sum~combout\) # 
-- (\v3|m[4]~3_combout\)) # (\u3|u7|u1|u0|u3|co~combout\))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \u3|u5|u1|u1|u1|sum~combout\ & ( (\u3|u5|u1|u1|u2|sum~combout\ & (((\v4|m[11]~10_combout\ & \v3|m[4]~3_combout\)) # (\u3|u7|u1|u0|u3|co~combout\))) ) ) ) # ( 
-- \v3|m[5]~4_combout\ & ( !\u3|u5|u1|u1|u1|sum~combout\ & ( (\v4|m[11]~10_combout\ & (((\u3|u7|u1|u0|u3|co~combout\ & \v3|m[4]~3_combout\)) # (\u3|u5|u1|u1|u2|sum~combout\))) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\u3|u5|u1|u1|u1|sum~combout\ & ( 
-- (\v4|m[11]~10_combout\ & (\u3|u7|u1|u0|u3|co~combout\ & (\v3|m[4]~3_combout\ & \u3|u5|u1|u1|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010101010100000000001101110001010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \u3|u7|u1|u0|u3|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[4]~3_combout\,
	datad => \u3|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \u3|u5|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u1|u1|co~combout\);

-- Location: LABCELL_X61_Y5_N42
\u4|u3|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u0|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( !\v3|m[4]~3_combout\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[5]~4_combout\))) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v4|m[12]~11_combout\ & \v3|m[5]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[4]~3_combout\,
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u1|u0|sum~0_combout\);

-- Location: LABCELL_X61_Y5_N33
\u4|u3|u1|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u0|u3|co~0_combout\ = ( \v4|m[13]~12_combout\ & ( (\v3|m[3]~2_combout\ & (\v4|m[12]~11_combout\ & \v3|m[4]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[3]~2_combout\,
	datac => \v4|ALT_INV_m[12]~11_combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u0|u3|co~0_combout\);

-- Location: LABCELL_X61_Y5_N51
\u4|u3|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u0|sum~combout\ = ( \u4|u3|u1|u0|u3|co~0_combout\ & ( !\u4|u3|u1|u1|u0|sum~0_combout\ ) ) # ( !\u4|u3|u1|u0|u3|co~0_combout\ & ( !\u4|u3|u1|u1|u0|sum~0_combout\ $ (((!\u4|u3|u1|u0|u3|sum~0_combout\) # (!\u4|u3|u1|u0|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datab => \u4|u3|u1|u0|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	dataf => \u4|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	combout => \u4|u3|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X61_Y5_N6
\u4|u5|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u2|co~combout\ = ( \u4|u5|u1|u0|u0|co~0_combout\ & ( \u4|u3|u1|u0|u3|sum~0_combout\ & ( (!\u4|u3|u1|u0|u2|co~combout\ & (((\u4|u4|p\(1)) # (\u4|u4|p\(2))) # (\u4|u3|u1|u0|u2|sum~combout\))) # (\u4|u3|u1|u0|u2|co~combout\ & (\u4|u4|p\(2) & 
-- ((\u4|u4|p\(1)) # (\u4|u3|u1|u0|u2|sum~combout\)))) ) ) ) # ( !\u4|u5|u1|u0|u0|co~0_combout\ & ( \u4|u3|u1|u0|u3|sum~0_combout\ & ( (!\u4|u3|u1|u0|u2|co~combout\ & (((\u4|u3|u1|u0|u2|sum~combout\ & \u4|u4|p\(1))) # (\u4|u4|p\(2)))) # 
-- (\u4|u3|u1|u0|u2|co~combout\ & (\u4|u3|u1|u0|u2|sum~combout\ & (\u4|u4|p\(2) & \u4|u4|p\(1)))) ) ) ) # ( \u4|u5|u1|u0|u0|co~0_combout\ & ( !\u4|u3|u1|u0|u3|sum~0_combout\ & ( (!\u4|u3|u1|u0|u2|co~combout\ & (\u4|u4|p\(2) & ((\u4|u4|p\(1)) # 
-- (\u4|u3|u1|u0|u2|sum~combout\)))) # (\u4|u3|u1|u0|u2|co~combout\ & (((\u4|u4|p\(1)) # (\u4|u4|p\(2))) # (\u4|u3|u1|u0|u2|sum~combout\))) ) ) ) # ( !\u4|u5|u1|u0|u0|co~0_combout\ & ( !\u4|u3|u1|u0|u3|sum~0_combout\ & ( (!\u4|u3|u1|u0|u2|co~combout\ & 
-- (\u4|u3|u1|u0|u2|sum~combout\ & (\u4|u4|p\(2) & \u4|u4|p\(1)))) # (\u4|u3|u1|u0|u2|co~combout\ & (((\u4|u3|u1|u0|u2|sum~combout\ & \u4|u4|p\(1))) # (\u4|u4|p\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000101110011111100001100010011010100110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \u4|u3|u1|u0|u2|ALT_INV_co~combout\,
	datac => \u4|u4|ALT_INV_p\(2),
	datad => \u4|u4|ALT_INV_p\(1),
	datae => \u4|u5|u1|u0|u0|ALT_INV_co~0_combout\,
	dataf => \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	combout => \u4|u5|u1|u0|u2|co~combout\);

-- Location: LABCELL_X61_Y6_N24
\u4|u5|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u0|u3|sum~combout\ = ( \u4|u5|u1|u0|u2|co~combout\ & ( !\u4|u3|u1|u1|u0|sum~combout\ $ (((\v3|m[3]~2_combout\ & \v4|m[14]~13_combout\))) ) ) # ( !\u4|u5|u1|u0|u2|co~combout\ & ( !\u4|u3|u1|u1|u0|sum~combout\ $ (((!\v3|m[3]~2_combout\) # 
-- (!\v4|m[14]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u3|u1|u1|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	dataf => \u4|u5|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u4|u5|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X63_Y3_N48
\u4|u7|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u1|co~combout\ = ( \u4|u5|u1|u0|u2|sum~0_combout\ & ( \u4|u5|u1|u0|u1|sum~combout\ & ( (\v4|m~14_combout\ & ((!\u4|u5|u1|u0|u1|co~combout\ & ((\v3|m[1]~0_combout\) # (\a[0]~input_o\))) # (\u4|u5|u1|u0|u1|co~combout\ & (\a[0]~input_o\ & 
-- \v3|m[1]~0_combout\)))) ) ) ) # ( !\u4|u5|u1|u0|u2|sum~0_combout\ & ( \u4|u5|u1|u0|u1|sum~combout\ & ( (\v4|m~14_combout\ & ((!\u4|u5|u1|u0|u1|co~combout\ & (\a[0]~input_o\ & \v3|m[1]~0_combout\)) # (\u4|u5|u1|u0|u1|co~combout\ & ((\v3|m[1]~0_combout\) # 
-- (\a[0]~input_o\))))) ) ) ) # ( \u4|u5|u1|u0|u2|sum~0_combout\ & ( !\u4|u5|u1|u0|u1|sum~combout\ & ( (!\u4|u5|u1|u0|u1|co~combout\ & (\v3|m[1]~0_combout\ & \v4|m~14_combout\)) ) ) ) # ( !\u4|u5|u1|u0|u2|sum~0_combout\ & ( !\u4|u5|u1|u0|u1|sum~combout\ & ( 
-- (\u4|u5|u1|u0|u1|co~combout\ & (\v3|m[1]~0_combout\ & \v4|m~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000101000000000000101110000000000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u0|u1|ALT_INV_co~combout\,
	datab => \ALT_INV_a[0]~input_o\,
	datac => \v3|ALT_INV_m[1]~0_combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	datae => \u4|u5|u1|u0|u2|ALT_INV_sum~0_combout\,
	dataf => \u4|u5|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u0|u1|co~combout\);

-- Location: LABCELL_X63_Y3_N24
\u4|u7|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u2|sum~combout\ = ( \u4|u7|u1|u0|u1|co~combout\ & ( !\u4|u5|u1|u0|u3|sum~combout\ $ (((\v4|m~14_combout\ & \v3|m[2]~1_combout\))) ) ) # ( !\u4|u7|u1|u0|u1|co~combout\ & ( !\u4|u5|u1|u0|u3|sum~combout\ $ (((!\v4|m~14_combout\) # 
-- (!\v3|m[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \u4|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \u4|u7|u1|u0|u1|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X63_Y3_N0
\u6|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u1|sum~combout\ = ( \u3|u7|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u0|u2|sum~combout\ & ( !\u3|u7|u1|u1|u2|sum~0_combout\ $ (((!\u4|u7|u1|u0|u1|sum~combout\ & ((!\u3|u7|u1|u1|u1|sum~combout\) # (!\u6|u0|u3|u3|co~combout\))) # 
-- (\u4|u7|u1|u0|u1|sum~combout\ & (!\u3|u7|u1|u1|u1|sum~combout\ & !\u6|u0|u3|u3|co~combout\)))) ) ) ) # ( !\u3|u7|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u0|u2|sum~combout\ & ( !\u3|u7|u1|u1|u2|sum~0_combout\ $ (((!\u4|u7|u1|u0|u1|sum~combout\ & 
-- (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # (\u4|u7|u1|u0|u1|sum~combout\ & ((\u6|u0|u3|u3|co~combout\) # (\u3|u7|u1|u1|u1|sum~combout\))))) ) ) ) # ( \u3|u7|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u0|u2|sum~combout\ & ( 
-- !\u3|u7|u1|u1|u2|sum~0_combout\ $ (((!\u4|u7|u1|u0|u1|sum~combout\ & (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # (\u4|u7|u1|u0|u1|sum~combout\ & ((\u6|u0|u3|u3|co~combout\) # (\u3|u7|u1|u1|u1|sum~combout\))))) ) ) ) # ( 
-- !\u3|u7|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u0|u2|sum~combout\ & ( !\u3|u7|u1|u1|u2|sum~0_combout\ $ (((!\u4|u7|u1|u0|u1|sum~combout\ & ((!\u3|u7|u1|u1|u1|sum~combout\) # (!\u6|u0|u3|u3|co~combout\))) # (\u4|u7|u1|u0|u1|sum~combout\ & 
-- (!\u3|u7|u1|u1|u1|sum~combout\ & !\u6|u0|u3|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011111101000000101110001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datac => \u6|u0|u3|u3|ALT_INV_co~combout\,
	datad => \u3|u7|u1|u1|u2|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u7|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X62_Y2_N54
\u7|u1|u0|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u0|u0|co~combout\ = ( \u5|u0|u3|u3|sum~combout\ & ( (!\u5|u1|u0|u0|sum~combout\ & (\u6|u1|u0|u0|sum~combout\ & ((\u6|u0|u3|u3|sum~combout\) # (\u7|u0|u3|u2|co~combout\)))) # (\u5|u1|u0|u0|sum~combout\ & (((\u6|u1|u0|u0|sum~combout\) # 
-- (\u6|u0|u3|u3|sum~combout\)) # (\u7|u0|u3|u2|co~combout\))) ) ) # ( !\u5|u0|u3|u3|sum~combout\ & ( (!\u5|u1|u0|u0|sum~combout\ & (\u7|u0|u3|u2|co~combout\ & (\u6|u0|u3|u3|sum~combout\ & \u6|u1|u0|u0|sum~combout\))) # (\u5|u1|u0|u0|sum~combout\ & 
-- (((\u7|u0|u3|u2|co~combout\ & \u6|u0|u3|u3|sum~combout\)) # (\u6|u1|u0|u0|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|u2|ALT_INV_co~combout\,
	datab => \u6|u0|u3|u3|ALT_INV_sum~combout\,
	datac => \u5|u1|u0|u0|ALT_INV_sum~combout\,
	datad => \u6|u1|u0|u0|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|u3|ALT_INV_sum~combout\,
	combout => \u7|u1|u0|u0|co~combout\);

-- Location: LABCELL_X62_Y2_N6
\v5|u1|u0|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u0|u0|co~0_combout\ = ( \u7|u0|u3|u2|co~combout\ & ( \u5|u0|u3|u3|sum~combout\ & ( (\v5|u0|u3|u2|co~0_combout\ & (!\u6|u0|u3|u3|sum~combout\ & (!\u5|u1|u0|u0|sum~combout\ $ (!\u6|u1|u0|u0|sum~combout\)))) ) ) ) # ( !\u7|u0|u3|u2|co~combout\ & ( 
-- \u5|u0|u3|u3|sum~combout\ & ( (\v5|u0|u3|u2|co~0_combout\ & (\u6|u0|u3|u3|sum~combout\ & (!\u5|u1|u0|u0|sum~combout\ $ (!\u6|u1|u0|u0|sum~combout\)))) ) ) ) # ( \u7|u0|u3|u2|co~combout\ & ( !\u5|u0|u3|u3|sum~combout\ & ( (\v5|u0|u3|u2|co~0_combout\ & 
-- (\u6|u0|u3|u3|sum~combout\ & (!\u5|u1|u0|u0|sum~combout\ $ (!\u6|u1|u0|u0|sum~combout\)))) ) ) ) # ( !\u7|u0|u3|u2|co~combout\ & ( !\u5|u0|u3|u3|sum~combout\ & ( (\v5|u0|u3|u2|co~0_combout\ & (!\u6|u0|u3|u3|sum~combout\ & (!\u5|u1|u0|u0|sum~combout\ $ 
-- (\u6|u1|u0|u0|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000000000000001001000000000000100100001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u0|u0|ALT_INV_sum~combout\,
	datab => \v5|u0|u3|u2|ALT_INV_co~0_combout\,
	datac => \u6|u1|u0|u0|ALT_INV_sum~combout\,
	datad => \u6|u0|u3|u3|ALT_INV_sum~combout\,
	datae => \u7|u0|u3|u2|ALT_INV_co~combout\,
	dataf => \u5|u0|u3|u3|ALT_INV_sum~combout\,
	combout => \v5|u1|u0|u0|co~0_combout\);

-- Location: LABCELL_X62_Y2_N42
\v6|m[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[1]~1_combout\ = ( \v5|u1|u0|u0|co~0_combout\ & ( !\u5|u1|u0|u1|sum~combout\ $ (!\u6|u1|u0|u1|sum~combout\ $ (\u7|u1|u0|u0|co~combout\)) ) ) # ( !\v5|u1|u0|u0|co~0_combout\ & ( !\u5|u1|u0|u1|sum~combout\ $ (!\u6|u1|u0|u1|sum~combout\ $ 
-- (!\u7|u1|u0|u0|co~combout\ $ (!\comb~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u0|u1|ALT_INV_sum~combout\,
	datab => \u6|u1|u0|u1|ALT_INV_sum~combout\,
	datac => \u7|u1|u0|u0|ALT_INV_co~combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \v5|u1|u0|u0|ALT_INV_co~0_combout\,
	combout => \v6|m[1]~1_combout\);

-- Location: LABCELL_X63_Y3_N6
\u6|u1|u0|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u1|co~combout\ = ( \u3|u7|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u0|u2|sum~combout\ & ( (!\u3|u7|u1|u1|u2|sum~0_combout\) # ((!\u4|u7|u1|u0|u1|sum~combout\ & (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # (\u4|u7|u1|u0|u1|sum~combout\ 
-- & ((\u6|u0|u3|u3|co~combout\) # (\u3|u7|u1|u1|u1|sum~combout\)))) ) ) ) # ( !\u3|u7|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u0|u2|sum~combout\ & ( ((!\u4|u7|u1|u0|u1|sum~combout\ & (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # 
-- (\u4|u7|u1|u0|u1|sum~combout\ & ((\u6|u0|u3|u3|co~combout\) # (\u3|u7|u1|u1|u1|sum~combout\)))) # (\u3|u7|u1|u1|u2|sum~0_combout\) ) ) ) # ( \u3|u7|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u0|u2|sum~combout\ & ( (!\u3|u7|u1|u1|u2|sum~0_combout\ & 
-- ((!\u4|u7|u1|u0|u1|sum~combout\ & (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # (\u4|u7|u1|u0|u1|sum~combout\ & ((\u6|u0|u3|u3|co~combout\) # (\u3|u7|u1|u1|u1|sum~combout\))))) ) ) ) # ( !\u3|u7|u1|u1|u1|co~combout\ & ( 
-- !\u4|u7|u1|u0|u2|sum~combout\ & ( (\u3|u7|u1|u1|u2|sum~0_combout\ & ((!\u4|u7|u1|u0|u1|sum~combout\ & (\u3|u7|u1|u1|u1|sum~combout\ & \u6|u0|u3|u3|co~combout\)) # (\u4|u7|u1|u0|u1|sum~combout\ & ((\u6|u0|u3|u3|co~combout\) # 
-- (\u3|u7|u1|u1|u1|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101110000000000010111111111111111111100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u1|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datac => \u6|u0|u3|u3|ALT_INV_co~combout\,
	datad => \u3|u7|u1|u1|u2|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u7|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u1|co~combout\);

-- Location: LABCELL_X61_Y5_N45
\u4|u3|u1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u0|co~0_combout\ = ( \v4|m[13]~12_combout\ & ( (\v3|m[4]~3_combout\ & (\v4|m[12]~11_combout\ & \v3|m[5]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v4|ALT_INV_m[12]~11_combout\,
	datad => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u1|u0|co~0_combout\);

-- Location: LABCELL_X62_Y6_N30
\u4|u3|u1|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u1|sum~0_combout\ = ( \v3|m[5]~4_combout\ & ( \v4|m[13]~12_combout\ & ( (!\v3|m[6]~5_combout\) # (!\v4|m[12]~11_combout\) ) ) ) # ( !\v3|m[5]~4_combout\ & ( \v4|m[13]~12_combout\ & ( (\v3|m[6]~5_combout\ & \v4|m[12]~11_combout\) ) ) ) # ( 
-- \v3|m[5]~4_combout\ & ( !\v4|m[13]~12_combout\ & ( (\v3|m[6]~5_combout\ & \v4|m[12]~11_combout\) ) ) ) # ( !\v3|m[5]~4_combout\ & ( !\v4|m[13]~12_combout\ & ( (\v3|m[6]~5_combout\ & \v4|m[12]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	datae => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u1|u1|sum~0_combout\);

-- Location: LABCELL_X61_Y5_N54
\u4|u3|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u1|sum~combout\ = ( !\u4|u3|u1|u1|u0|co~0_combout\ & ( \u4|u3|u1|u1|u1|sum~0_combout\ & ( (!\u4|u3|u1|u1|u0|sum~0_combout\) # ((!\u4|u3|u1|u0|u3|co~0_combout\ & ((!\u4|u3|u1|u0|u3|sum~0_combout\) # (!\u4|u3|u1|u0|u2|co~combout\)))) ) ) ) # ( 
-- \u4|u3|u1|u1|u0|co~0_combout\ & ( !\u4|u3|u1|u1|u1|sum~0_combout\ ) ) # ( !\u4|u3|u1|u1|u0|co~0_combout\ & ( !\u4|u3|u1|u1|u1|sum~0_combout\ & ( (\u4|u3|u1|u1|u0|sum~0_combout\ & (((\u4|u3|u1|u0|u3|sum~0_combout\ & \u4|u3|u1|u0|u2|co~combout\)) # 
-- (\u4|u3|u1|u0|u3|co~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111111111111111111111111111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datab => \u4|u3|u1|u0|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u4|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	datae => \u4|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u4|u3|u1|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u4|u3|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X61_Y6_N0
\u4|u5|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u0|sum~combout\ = ( \u4|u3|u1|u1|u0|sum~combout\ & ( \v4|m[14]~13_combout\ & ( !\u4|u3|u1|u1|u1|sum~combout\ $ (!\v3|m[4]~3_combout\ $ (((\u4|u5|u1|u0|u2|co~combout\) # (\v3|m[3]~2_combout\)))) ) ) ) # ( !\u4|u3|u1|u1|u0|sum~combout\ & ( 
-- \v4|m[14]~13_combout\ & ( !\u4|u3|u1|u1|u1|sum~combout\ $ (!\v3|m[4]~3_combout\ $ (((\v3|m[3]~2_combout\ & \u4|u5|u1|u0|u2|co~combout\)))) ) ) ) # ( \u4|u3|u1|u1|u0|sum~combout\ & ( !\v4|m[14]~13_combout\ & ( !\u4|u3|u1|u1|u1|sum~combout\ $ 
-- (!\u4|u5|u1|u0|u2|co~combout\) ) ) ) # ( !\u4|u3|u1|u1|u0|sum~combout\ & ( !\v4|m[14]~13_combout\ & ( \u4|u3|u1|u1|u1|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010101001100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \u4|u5|u1|u0|u2|ALT_INV_co~combout\,
	datae => \u4|u3|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[14]~13_combout\,
	combout => \u4|u5|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X63_Y3_N12
\u4|u7|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u3|sum~combout\ = ( \v3|m[2]~1_combout\ & ( \v3|m[3]~2_combout\ & ( !\u4|u5|u1|u1|u0|sum~combout\ $ (((!\u4|u5|u1|u0|u3|sum~combout\ & ((!\v4|m~14_combout\) # (\u4|u7|u1|u0|u1|co~combout\))) # (\u4|u5|u1|u0|u3|sum~combout\ & 
-- ((!\u4|u7|u1|u0|u1|co~combout\) # (\v4|m~14_combout\))))) ) ) ) # ( !\v3|m[2]~1_combout\ & ( \v3|m[3]~2_combout\ & ( !\u4|u5|u1|u1|u0|sum~combout\ $ (!\v4|m~14_combout\ $ (((\u4|u5|u1|u0|u3|sum~combout\ & \u4|u7|u1|u0|u1|co~combout\)))) ) ) ) # ( 
-- \v3|m[2]~1_combout\ & ( !\v3|m[3]~2_combout\ & ( !\u4|u5|u1|u1|u0|sum~combout\ $ (((!\u4|u5|u1|u0|u3|sum~combout\ & ((!\u4|u7|u1|u0|u1|co~combout\) # (!\v4|m~14_combout\))) # (\u4|u5|u1|u0|u3|sum~combout\ & (!\u4|u7|u1|u0|u1|co~combout\ & 
-- !\v4|m~14_combout\)))) ) ) ) # ( !\v3|m[2]~1_combout\ & ( !\v3|m[3]~2_combout\ & ( !\u4|u5|u1|u1|u0|sum~combout\ $ (((!\u4|u5|u1|u0|u3|sum~combout\) # (!\u4|u7|u1|u0|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100110101001010110101010010101011010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u0|ALT_INV_sum~combout\,
	datab => \u4|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u0|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	datae => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u4|u7|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X64_Y3_N18
\u3|u2|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|p\(9) = ( \v4|m[9]~8_combout\ & ( \v3|m[9]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[9]~8_combout\,
	combout => \u3|u2|p\(9));

-- Location: LABCELL_X64_Y3_N21
\u3|u1|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|p\(10) = ( \v4|m[8]~6_combout\ & ( \v3|m[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u1|p\(10));

-- Location: LABCELL_X64_Y3_N36
\u3|u3|u1|u2|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|sum~0_combout\ = !\u3|u2|p\(9) $ (!\u3|u1|p\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|ALT_INV_p\(9),
	datad => \u3|u1|ALT_INV_p\(10),
	combout => \u3|u3|u1|u2|u1|sum~0_combout\);

-- Location: LABCELL_X64_Y3_N54
\u3|u3|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|sum~combout\ = ( \u3|u3|u1|u2|u1|sum~0_combout\ & ( \u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & ((!\u3|u2|p\(8)) # ((!\u3|u3|u1|u1|u3|sum~0_combout\ & !\u3|u3|u1|u1|u3|co~0_combout\)))) # (\u3|u1|p\(9) & 
-- (!\u3|u3|u1|u1|u3|sum~0_combout\ & (!\u3|u2|p\(8) & !\u3|u3|u1|u1|u3|co~0_combout\))) ) ) ) # ( !\u3|u3|u1|u2|u1|sum~0_combout\ & ( \u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & (\u3|u2|p\(8) & ((\u3|u3|u1|u1|u3|co~0_combout\) # 
-- (\u3|u3|u1|u1|u3|sum~0_combout\)))) # (\u3|u1|p\(9) & (((\u3|u3|u1|u1|u3|co~0_combout\) # (\u3|u2|p\(8))) # (\u3|u3|u1|u1|u3|sum~0_combout\))) ) ) ) # ( \u3|u3|u1|u2|u1|sum~0_combout\ & ( !\u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & ((!\u3|u2|p\(8)) 
-- # (!\u3|u3|u1|u1|u3|co~0_combout\))) # (\u3|u1|p\(9) & (!\u3|u2|p\(8) & !\u3|u3|u1|u1|u3|co~0_combout\)) ) ) ) # ( !\u3|u3|u1|u2|u1|sum~0_combout\ & ( !\u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & (\u3|u2|p\(8) & \u3|u3|u1|u1|u3|co~0_combout\)) # 
-- (\u3|u1|p\(9) & ((\u3|u3|u1|u1|u3|co~0_combout\) # (\u3|u2|p\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111111111001100000000010111001111111110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	datab => \u3|u1|ALT_INV_p\(9),
	datac => \u3|u2|ALT_INV_p\(8),
	datad => \u3|u3|u1|u1|u3|ALT_INV_co~0_combout\,
	datae => \u3|u3|u1|u2|u1|ALT_INV_sum~0_combout\,
	dataf => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X66_Y3_N6
\u3|u5|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u0|sum~combout\ = ( \v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[10]~9_combout\ & ((!\u3|u3|u1|u2|u0|sum~combout\))) # (\v4|m[10]~9_combout\ & (\v3|m[8]~7_combout\)))) ) ) ) # ( 
-- !\v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u1|sum~combout\ $ (!\u3|u3|u1|u2|u0|sum~combout\ $ (((\v4|m[10]~9_combout\ & \v3|m[8]~7_combout\)))) ) ) ) # ( \v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( 
-- !\u3|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[10]~9_combout\) # (!\v3|m[8]~7_combout\ $ (\u3|u3|u1|u2|u0|sum~combout\)))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u1|sum~combout\ $ (((!\v4|m[10]~9_combout\) # 
-- (!\v3|m[8]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100110001100110110110010010110001111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~9_combout\,
	datab => \u3|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u3|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X66_Y3_N30
\u3|u5|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u1|u3|sum~combout\ = ( \v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u0|sum~combout\ $ (\v4|m[10]~9_combout\) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u0|sum~combout\ ) ) ) # ( 
-- \v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( !\u3|u3|u1|u2|u0|sum~combout\ $ (!\v4|m[10]~9_combout\) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( \u3|u3|u1|u2|u0|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111000011110011001100110011001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[10]~9_combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X66_Y3_N42
\u3|u7|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u3|sum~combout\ = ( \v3|m[6]~5_combout\ & ( \u3|u5|u1|u1|u3|sum~combout\ & ( !\u3|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[11]~10_combout\ & ((!\u3|u7|u1|u1|u1|co~combout\))) # (\v4|m[11]~10_combout\ & (\v3|m[7]~6_combout\)))) ) ) ) # ( 
-- !\v3|m[6]~5_combout\ & ( \u3|u5|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u1|u1|co~combout\ $ (!\u3|u5|u1|u2|u0|sum~combout\ $ (((\v4|m[11]~10_combout\ & \v3|m[7]~6_combout\)))) ) ) ) # ( \v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u3|sum~combout\ & ( 
-- !\u3|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[11]~10_combout\) # (!\v3|m[7]~6_combout\ $ (\u3|u7|u1|u1|u1|co~combout\)))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u3|sum~combout\ & ( !\u3|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m[11]~10_combout\) # 
-- (!\v3|m[7]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000101001110101100011110111000010100111010110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datac => \u3|u7|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u3|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u3|u5|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X62_Y3_N45
\u6|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u2|sum~combout\ = ( \u3|u7|u1|u1|u3|sum~combout\ & ( !\u6|u1|u0|u1|co~combout\ $ (\u4|u7|u1|u0|u3|sum~combout\) ) ) # ( !\u3|u7|u1|u1|u3|sum~combout\ & ( !\u6|u1|u0|u1|co~combout\ $ (!\u4|u7|u1|u0|u3|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u0|u1|ALT_INV_co~combout\,
	datad => \u4|u7|u1|u0|u3|ALT_INV_sum~combout\,
	dataf => \u3|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X66_Y4_N18
\u1|u7|u1|u3|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u3|sum~0_combout\ = ( \v3|m~14_combout\ & ( \u1|u5|u1|u3|u1|co~combout\ & ( !\v4|m[3]~2_combout\ $ (((!\u1|u5|u1|u3|u3|sum~0_combout\) # ((!\u1|u3|u1|u3|u3|sum~combout\) # (!\u1|u4|p\(14))))) ) ) ) # ( !\v3|m~14_combout\ & ( 
-- \u1|u5|u1|u3|u1|co~combout\ & ( (\u1|u5|u1|u3|u3|sum~0_combout\ & (\u1|u3|u1|u3|u3|sum~combout\ & \u1|u4|p\(14))) ) ) ) # ( \v3|m~14_combout\ & ( !\u1|u5|u1|u3|u1|co~combout\ & ( !\v4|m[3]~2_combout\ $ (((!\u1|u5|u1|u3|u3|sum~0_combout\) # 
-- ((!\u1|u3|u1|u3|u3|sum~combout\ & !\u1|u4|p\(14))))) ) ) ) # ( !\v3|m~14_combout\ & ( !\u1|u5|u1|u3|u1|co~combout\ & ( (\u1|u5|u1|u3|u3|sum~0_combout\ & ((\u1|u4|p\(14)) # (\u1|u3|u1|u3|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011010101100110011000000000000000110101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[3]~2_combout\,
	datab => \u1|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datac => \u1|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \u1|u4|ALT_INV_p\(14),
	datae => \v3|ALT_INV_m~14_combout\,
	dataf => \u1|u5|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u3|sum~0_combout\);

-- Location: LABCELL_X66_Y4_N54
\u1|u7|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u3|sum~combout\ = ( \u1|u6|p\(14) & ( \u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u7|u1|u3|u3|sum~0_combout\ $ (((!\u1|u5|u1|u3|u2|sum~combout\ & (!\u1|u6|p\(13) & !\u1|u5|u1|u3|u3|sum~combout\)))) ) ) ) # ( !\u1|u6|p\(14) & ( 
-- \u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u7|u1|u3|u3|sum~0_combout\ $ (((!\u1|u5|u1|u3|u3|sum~combout\) # ((!\u1|u5|u1|u3|u2|sum~combout\ & !\u1|u6|p\(13))))) ) ) ) # ( \u1|u6|p\(14) & ( !\u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u7|u1|u3|u3|sum~0_combout\ $ 
-- (((!\u1|u5|u1|u3|u3|sum~combout\ & ((!\u1|u5|u1|u3|u2|sum~combout\) # (!\u1|u6|p\(13)))))) ) ) ) # ( !\u1|u6|p\(14) & ( !\u1|u7|u1|u3|u0|co~combout\ & ( !\u1|u7|u1|u3|u3|sum~0_combout\ $ (((!\u1|u5|u1|u3|u2|sum~combout\) # ((!\u1|u6|p\(13)) # 
-- (!\u1|u5|u1|u3|u3|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000111101111000000001111011110000111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \u1|u6|ALT_INV_p\(13),
	datac => \u1|u7|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u1|u5|u1|u3|u3|ALT_INV_sum~combout\,
	datae => \u1|u6|ALT_INV_p\(14),
	dataf => \u1|u7|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u3|sum~combout\);

-- Location: LABCELL_X64_Y5_N30
\u2|u3|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u1|sum~combout\ = ( \v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[4]~3_combout\ & (!\v3|m[12]~11_combout\ $ (((!\v3|m[13]~12_combout\))))) # (\v4|m[4]~3_combout\ & (!\v3|m[14]~13_combout\ $ (((!\v3|m[12]~11_combout\) # 
-- (\v3|m[13]~12_combout\))))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( (\v4|m[4]~3_combout\ & (!\v3|m[14]~13_combout\ $ (!\v3|m[13]~12_combout\))) ) ) ) # ( \v4|m[5]~4_combout\ & ( !\u2|u3|u1|u2|u3|co~combout\ & ( 
-- (!\v4|m[4]~3_combout\ & (((\v3|m[13]~12_combout\)))) # (\v4|m[4]~3_combout\ & (!\v3|m[14]~13_combout\ $ (((!\v3|m[13]~12_combout\) # (\v3|m[12]~11_combout\))))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( !\u2|u3|u1|u2|u3|co~combout\ & ( (\v3|m[14]~13_combout\ & 
-- \v4|m[4]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011100100000000001111000101101001100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v3|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X64_Y5_N6
\u2|u5|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u0|sum~combout\ = ( \v4|m[6]~7_combout\ & ( \u2|u5|u1|u2|u2|co~combout\ & ( !\v3|m[12]~11_combout\ $ (!\u2|u3|u1|u3|u1|sum~combout\ $ (((\u2|u3|u1|u3|u0|sum~combout\) # (\v3|m[11]~10_combout\)))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( 
-- \u2|u5|u1|u2|u2|co~combout\ & ( !\u2|u3|u1|u3|u0|sum~combout\ $ (!\u2|u3|u1|u3|u1|sum~combout\) ) ) ) # ( \v4|m[6]~7_combout\ & ( !\u2|u5|u1|u2|u2|co~combout\ & ( !\v3|m[12]~11_combout\ $ (!\u2|u3|u1|u3|u1|sum~combout\ $ (((\v3|m[11]~10_combout\ & 
-- \u2|u3|u1|u3|u0|sum~combout\)))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u2|u5|u1|u2|u2|co~combout\ & ( \u2|u3|u1|u3|u1|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101101010100100001111111100000110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v3|ALT_INV_m[11]~10_combout\,
	datac => \u2|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datad => \u2|u3|u1|u3|u1|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u5|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u3|u0|sum~combout\);

-- Location: MLABCELL_X65_Y4_N18
\u2|u7|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u3|sum~combout\ = ( \u2|u5|u1|u3|u0|sum~combout\ & ( \u2|u7|u1|u2|u1|co~combout\ & ( (!\v4|m[7]~5_combout\ & (((!\u2|u5|u1|u2|u3|sum~combout\)))) # (\v4|m[7]~5_combout\ & (!\v3|m[11]~10_combout\ $ (((\v3|m[10]~9_combout\) # 
-- (\u2|u5|u1|u2|u3|sum~combout\))))) ) ) ) # ( !\u2|u5|u1|u3|u0|sum~combout\ & ( \u2|u7|u1|u2|u1|co~combout\ & ( (!\v4|m[7]~5_combout\ & (((\u2|u5|u1|u2|u3|sum~combout\)))) # (\v4|m[7]~5_combout\ & (!\v3|m[11]~10_combout\ $ (((!\u2|u5|u1|u2|u3|sum~combout\ 
-- & !\v3|m[10]~9_combout\))))) ) ) ) # ( \u2|u5|u1|u3|u0|sum~combout\ & ( !\u2|u7|u1|u2|u1|co~combout\ & ( (!\v4|m[7]~5_combout\) # (!\v3|m[11]~10_combout\ $ (((\u2|u5|u1|u2|u3|sum~combout\ & \v3|m[10]~9_combout\)))) ) ) ) # ( !\u2|u5|u1|u3|u0|sum~combout\ 
-- & ( !\u2|u7|u1|u2|u1|co~combout\ & ( (\v4|m[7]~5_combout\ & (!\v3|m[11]~10_combout\ $ (((!\u2|u5|u1|u2|u3|sum~combout\) # (!\v3|m[10]~9_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010100111011101110101100011110010011101110000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datab => \v3|ALT_INV_m[11]~10_combout\,
	datac => \u2|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[10]~9_combout\,
	datae => \u2|u5|u1|u3|u0|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u2|u7|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X65_Y4_N27
\u5|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u2|sum~combout\ = ( \u2|u7|u1|u2|u3|sum~combout\ & ( !\u1|u7|u1|u3|u3|sum~combout\ $ (((!\u2|u7|u1|u2|u2|sum~combout\ & (\u1|u7|u1|u3|u2|sum~combout\ & \u5|u1|u0|u0|co~combout\)) # (\u2|u7|u1|u2|u2|sum~combout\ & ((\u5|u1|u0|u0|co~combout\) # 
-- (\u1|u7|u1|u3|u2|sum~combout\))))) ) ) # ( !\u2|u7|u1|u2|u3|sum~combout\ & ( !\u1|u7|u1|u3|u3|sum~combout\ $ (((!\u2|u7|u1|u2|u2|sum~combout\ & ((!\u1|u7|u1|u3|u2|sum~combout\) # (!\u5|u1|u0|u0|co~combout\))) # (\u2|u7|u1|u2|u2|sum~combout\ & 
-- (!\u1|u7|u1|u3|u2|sum~combout\ & !\u5|u1|u0|u0|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u2|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u3|u2|ALT_INV_sum~combout\,
	datac => \u1|u7|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \u5|u1|u0|u0|ALT_INV_co~combout\,
	dataf => \u2|u7|u1|u2|u3|ALT_INV_sum~combout\,
	combout => \u5|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X62_Y2_N0
\u7|u1|u0|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u0|u2|sum~0_combout\ = ( \u5|u1|u0|u2|sum~combout\ & ( !\u6|u1|u0|u2|sum~combout\ ) ) # ( !\u5|u1|u0|u2|sum~combout\ & ( \u6|u1|u0|u2|sum~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u6|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u7|u1|u0|u2|sum~0_combout\);

-- Location: LABCELL_X62_Y2_N48
\v6|m[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[2]~2_combout\ = ( \comb~0_combout\ & ( \u6|u1|u0|u1|sum~combout\ & ( !\u7|u1|u0|u2|sum~0_combout\ $ (((!\u7|u1|u0|u0|co~combout\ & (!\v5|u1|u0|u0|co~0_combout\ & \u5|u1|u0|u1|sum~combout\)) # (\u7|u1|u0|u0|co~combout\ & 
-- ((!\v5|u1|u0|u0|co~0_combout\) # (\u5|u1|u0|u1|sum~combout\))))) ) ) ) # ( !\comb~0_combout\ & ( \u6|u1|u0|u1|sum~combout\ & ( !\u7|u1|u0|u2|sum~0_combout\ $ (((!\u7|u1|u0|u0|co~combout\ & !\u5|u1|u0|u1|sum~combout\))) ) ) ) # ( \comb~0_combout\ & ( 
-- !\u6|u1|u0|u1|sum~combout\ & ( !\u7|u1|u0|u2|sum~0_combout\ $ (((!\u7|u1|u0|u0|co~combout\ & (\v5|u1|u0|u0|co~0_combout\ & !\u5|u1|u0|u1|sum~combout\)) # (\u7|u1|u0|u0|co~combout\ & (!\v5|u1|u0|u0|co~0_combout\ & \u5|u1|u0|u1|sum~combout\)))) ) ) ) # ( 
-- !\comb~0_combout\ & ( !\u6|u1|u0|u1|sum~combout\ & ( !\u7|u1|u0|u2|sum~0_combout\ $ (((!\u7|u1|u0|u0|co~combout\) # (!\u5|u1|u0|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010110110110010010001011111101000001011001001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|u0|ALT_INV_co~combout\,
	datab => \v5|u1|u0|u0|ALT_INV_co~0_combout\,
	datac => \u5|u1|u0|u1|ALT_INV_sum~combout\,
	datad => \u7|u1|u0|u2|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \u6|u1|u0|u1|ALT_INV_sum~combout\,
	combout => \v6|m[2]~2_combout\);

-- Location: LABCELL_X62_Y2_N45
\u7|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u0|u2|co~combout\ = ( \u5|u1|u0|u2|sum~combout\ & ( ((!\u5|u1|u0|u1|sum~combout\ & (\u6|u1|u0|u1|sum~combout\ & \u7|u1|u0|u0|co~combout\)) # (\u5|u1|u0|u1|sum~combout\ & ((\u7|u1|u0|u0|co~combout\) # (\u6|u1|u0|u1|sum~combout\)))) # 
-- (\u6|u1|u0|u2|sum~combout\) ) ) # ( !\u5|u1|u0|u2|sum~combout\ & ( (\u6|u1|u0|u2|sum~combout\ & ((!\u5|u1|u0|u1|sum~combout\ & (\u6|u1|u0|u1|sum~combout\ & \u7|u1|u0|u0|co~combout\)) # (\u5|u1|u0|u1|sum~combout\ & ((\u7|u1|u0|u0|co~combout\) # 
-- (\u6|u1|u0|u1|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u0|u1|ALT_INV_sum~combout\,
	datab => \u6|u1|u0|u1|ALT_INV_sum~combout\,
	datac => \u7|u1|u0|u0|ALT_INV_co~combout\,
	datad => \u6|u1|u0|u2|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \u7|u1|u0|u2|co~combout\);

-- Location: LABCELL_X66_Y4_N15
\u1|u5|u1|u3|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u5|u1|u3|u3|co~0_combout\ = ( \u1|u5|u1|u3|u1|co~combout\ & ( (\u1|u3|u1|u3|u3|sum~combout\ & (\u1|u5|u1|u3|u3|sum~0_combout\ & \u1|u4|p\(14))) ) ) # ( !\u1|u5|u1|u3|u1|co~combout\ & ( (\u1|u5|u1|u3|u3|sum~0_combout\ & ((\u1|u4|p\(14)) # 
-- (\u1|u3|u1|u3|u3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datac => \u1|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u1|u4|ALT_INV_p\(14),
	dataf => \u1|u5|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u1|u5|u1|u3|u3|co~0_combout\);

-- Location: LABCELL_X66_Y4_N39
\u1|u7|u1|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u2|co~combout\ = ( \u1|u7|u1|u3|u0|co~combout\ & ( (!\u1|u6|p\(14) & (\u1|u5|u1|u3|u3|sum~combout\ & ((\u1|u5|u1|u3|u2|sum~combout\) # (\u1|u6|p\(13))))) # (\u1|u6|p\(14) & (((\u1|u5|u1|u3|u2|sum~combout\) # (\u1|u5|u1|u3|u3|sum~combout\)) # 
-- (\u1|u6|p\(13)))) ) ) # ( !\u1|u7|u1|u3|u0|co~combout\ & ( (!\u1|u6|p\(14) & (\u1|u6|p\(13) & (\u1|u5|u1|u3|u3|sum~combout\ & \u1|u5|u1|u3|u2|sum~combout\))) # (\u1|u6|p\(14) & (((\u1|u6|p\(13) & \u1|u5|u1|u3|u2|sum~combout\)) # 
-- (\u1|u5|u1|u3|u3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100010111010111110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u6|ALT_INV_p\(14),
	datab => \u1|u6|ALT_INV_p\(13),
	datac => \u1|u5|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \u1|u5|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u1|u7|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u2|co~combout\);

-- Location: MLABCELL_X65_Y4_N12
\u1|u7|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u7|u1|u3|u3|co~combout\ = ( \u1|u7|u1|u3|u2|co~combout\ & ( ((\v4|m[3]~2_combout\ & \v3|m~14_combout\)) # (\u1|u5|u1|u3|u3|co~0_combout\) ) ) # ( !\u1|u7|u1|u3|u2|co~combout\ & ( (\v4|m[3]~2_combout\ & (\v3|m~14_combout\ & 
-- \u1|u5|u1|u3|u3|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[3]~2_combout\,
	datac => \v3|ALT_INV_m~14_combout\,
	datad => \u1|u5|u1|u3|u3|ALT_INV_co~0_combout\,
	dataf => \u1|u7|u1|u3|u2|ALT_INV_co~combout\,
	combout => \u1|u7|u1|u3|u3|co~combout\);

-- Location: LABCELL_X63_Y5_N30
\u2|u7|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u2|u3|co~combout\ = ( \u2|u5|u1|u3|u0|sum~combout\ & ( \u2|u7|u1|u2|u1|co~combout\ & ( ((\v4|m[7]~5_combout\ & ((\v3|m[11]~10_combout\) # (\v3|m[10]~9_combout\)))) # (\u2|u5|u1|u2|u3|sum~combout\) ) ) ) # ( !\u2|u5|u1|u3|u0|sum~combout\ & ( 
-- \u2|u7|u1|u2|u1|co~combout\ & ( (\v4|m[7]~5_combout\ & (\v3|m[11]~10_combout\ & ((\u2|u5|u1|u2|u3|sum~combout\) # (\v3|m[10]~9_combout\)))) ) ) ) # ( \u2|u5|u1|u3|u0|sum~combout\ & ( !\u2|u7|u1|u2|u1|co~combout\ & ( (\v4|m[7]~5_combout\ & 
-- (((\v3|m[10]~9_combout\ & \u2|u5|u1|u2|u3|sum~combout\)) # (\v3|m[11]~10_combout\))) ) ) ) # ( !\u2|u5|u1|u3|u0|sum~combout\ & ( !\u2|u7|u1|u2|u1|co~combout\ & ( (\v4|m[7]~5_combout\ & (\v3|m[10]~9_combout\ & (\u2|u5|u1|u2|u3|sum~combout\ & 
-- \v3|m[11]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010101010100000000000101010001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[7]~5_combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \u2|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[11]~10_combout\,
	datae => \u2|u5|u1|u3|u0|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u2|u7|u1|u2|u3|co~combout\);

-- Location: LABCELL_X64_Y5_N18
\u2|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u1|co~combout\ = ( \v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( (!\v3|m[12]~11_combout\ & (((\v3|m[13]~12_combout\ & \v4|m[4]~3_combout\)))) # (\v3|m[12]~11_combout\ & (((\v3|m[14]~13_combout\ & \v4|m[4]~3_combout\)) # 
-- (\v3|m[13]~12_combout\))) ) ) ) # ( !\v4|m[5]~4_combout\ & ( \u2|u3|u1|u2|u3|co~combout\ & ( (\v3|m[14]~13_combout\ & (\v3|m[13]~12_combout\ & \v4|m[4]~3_combout\)) ) ) ) # ( \v4|m[5]~4_combout\ & ( !\u2|u3|u1|u2|u3|co~combout\ & ( (\v3|m[13]~12_combout\ 
-- & (\v4|m[4]~3_combout\ & ((\v3|m[14]~13_combout\) # (\v3|m[12]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000011100000000000000110000010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v3|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \u2|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X63_Y5_N39
\u2|u3|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u2|sum~combout\ = ( \v4|m[4]~3_combout\ & ( !\u2|u3|u1|u3|u1|co~combout\ $ (((!\v3|m~14_combout\ & ((!\v4|m[5]~4_combout\) # (!\v3|m[14]~13_combout\))))) ) ) # ( !\v4|m[4]~3_combout\ & ( !\u2|u3|u1|u3|u1|co~combout\ $ (((!\v4|m[5]~4_combout\) 
-- # (!\v3|m[14]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101000111100011110000011110001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datab => \v3|ALT_INV_m~14_combout\,
	datac => \u2|u3|u1|u3|u1|ALT_INV_co~combout\,
	datad => \v3|ALT_INV_m[14]~13_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u3|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X64_Y5_N12
\u2|u5|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u0|co~combout\ = ( \v4|m[6]~7_combout\ & ( \u2|u5|u1|u2|u2|co~combout\ & ( (!\v3|m[12]~11_combout\ & (\u2|u3|u1|u3|u1|sum~combout\ & ((\u2|u3|u1|u3|u0|sum~combout\) # (\v3|m[11]~10_combout\)))) # (\v3|m[12]~11_combout\ & 
-- (((\u2|u3|u1|u3|u1|sum~combout\) # (\u2|u3|u1|u3|u0|sum~combout\)) # (\v3|m[11]~10_combout\))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( \u2|u5|u1|u2|u2|co~combout\ & ( (\u2|u3|u1|u3|u0|sum~combout\ & \u2|u3|u1|u3|u1|sum~combout\) ) ) ) # ( \v4|m[6]~7_combout\ & 
-- ( !\u2|u5|u1|u2|u2|co~combout\ & ( (!\v3|m[12]~11_combout\ & (\v3|m[11]~10_combout\ & (\u2|u3|u1|u3|u0|sum~combout\ & \u2|u3|u1|u3|u1|sum~combout\))) # (\v3|m[12]~11_combout\ & (((\v3|m[11]~10_combout\ & \u2|u3|u1|u3|u0|sum~combout\)) # 
-- (\u2|u3|u1|u3|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101011100000000000011110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v3|ALT_INV_m[11]~10_combout\,
	datac => \u2|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datad => \u2|u3|u1|u3|u1|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u5|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u3|u0|co~combout\);

-- Location: LABCELL_X63_Y5_N15
\u2|u5|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u1|sum~combout\ = ( \u2|u5|u1|u3|u0|co~combout\ & ( !\u2|u3|u1|u3|u2|sum~combout\ $ (((\v3|m[13]~12_combout\ & \v4|m[6]~7_combout\))) ) ) # ( !\u2|u5|u1|u3|u0|co~combout\ & ( !\u2|u3|u1|u3|u2|sum~combout\ $ (((!\v3|m[13]~12_combout\) # 
-- (!\v4|m[6]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[13]~12_combout\,
	datab => \u2|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u5|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X62_Y4_N45
\u2|u7|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u3|u0|sum~combout\ = ( \u2|u5|u1|u3|u1|sum~combout\ & ( !\u2|u7|u1|u2|u3|co~combout\ $ (((\v4|m[7]~5_combout\ & \v3|m[12]~11_combout\))) ) ) # ( !\u2|u5|u1|u3|u1|sum~combout\ & ( !\u2|u7|u1|u2|u3|co~combout\ $ (((!\v4|m[7]~5_combout\) # 
-- (!\v3|m[12]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[7]~5_combout\,
	datac => \u2|u7|u1|u2|u3|ALT_INV_co~combout\,
	datad => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \u2|u5|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \u2|u7|u1|u3|u0|sum~combout\);

-- Location: MLABCELL_X65_Y4_N24
\u5|u1|u0|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u2|co~combout\ = ( \u2|u7|u1|u2|u3|sum~combout\ & ( ((!\u2|u7|u1|u2|u2|sum~combout\ & (\u1|u7|u1|u3|u2|sum~combout\ & \u5|u1|u0|u0|co~combout\)) # (\u2|u7|u1|u2|u2|sum~combout\ & ((\u5|u1|u0|u0|co~combout\) # (\u1|u7|u1|u3|u2|sum~combout\)))) # 
-- (\u1|u7|u1|u3|u3|sum~combout\) ) ) # ( !\u2|u7|u1|u2|u3|sum~combout\ & ( (\u1|u7|u1|u3|u3|sum~combout\ & ((!\u2|u7|u1|u2|u2|sum~combout\ & (\u1|u7|u1|u3|u2|sum~combout\ & \u5|u1|u0|u0|co~combout\)) # (\u2|u7|u1|u2|u2|sum~combout\ & 
-- ((\u5|u1|u0|u0|co~combout\) # (\u1|u7|u1|u3|u2|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u2|u2|ALT_INV_sum~combout\,
	datab => \u1|u7|u1|u3|u2|ALT_INV_sum~combout\,
	datac => \u5|u1|u0|u0|ALT_INV_co~combout\,
	datad => \u1|u7|u1|u3|u3|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u2|u3|ALT_INV_sum~combout\,
	combout => \u5|u1|u0|u2|co~combout\);

-- Location: LABCELL_X61_Y2_N30
\u5|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u3|sum~combout\ = ( \u5|u1|u0|u2|co~combout\ & ( !\u1|u7|u1|u3|u3|co~combout\ $ (\u2|u7|u1|u3|u0|sum~combout\) ) ) # ( !\u5|u1|u0|u2|co~combout\ & ( !\u1|u7|u1|u3|u3|co~combout\ $ (!\u2|u7|u1|u3|u0|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u2|u7|u1|u3|u0|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u5|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X62_Y2_N24
\v5|u1|u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u0|u2|co~0_combout\ = ( \u5|u1|u0|u1|sum~combout\ & ( \u5|u1|u0|u2|sum~combout\ & ( (!\u6|u1|u0|u2|sum~combout\ & (\v5|u1|u0|u0|co~0_combout\ & (!\u7|u1|u0|u0|co~combout\ $ (!\u6|u1|u0|u1|sum~combout\)))) ) ) ) # ( !\u5|u1|u0|u1|sum~combout\ & ( 
-- \u5|u1|u0|u2|sum~combout\ & ( (\v5|u1|u0|u0|co~0_combout\ & ((!\u6|u1|u0|u2|sum~combout\ & (\u7|u1|u0|u0|co~combout\ & \u6|u1|u0|u1|sum~combout\)) # (\u6|u1|u0|u2|sum~combout\ & (!\u7|u1|u0|u0|co~combout\ & !\u6|u1|u0|u1|sum~combout\)))) ) ) ) # ( 
-- \u5|u1|u0|u1|sum~combout\ & ( !\u5|u1|u0|u2|sum~combout\ & ( (\u6|u1|u0|u2|sum~combout\ & (\v5|u1|u0|u0|co~0_combout\ & (!\u7|u1|u0|u0|co~combout\ $ (!\u6|u1|u0|u1|sum~combout\)))) ) ) ) # ( !\u5|u1|u0|u1|sum~combout\ & ( !\u5|u1|u0|u2|sum~combout\ & ( 
-- (\v5|u1|u0|u0|co~0_combout\ & ((!\u6|u1|u0|u2|sum~combout\ & (!\u7|u1|u0|u0|co~combout\ & !\u6|u1|u0|u1|sum~combout\)) # (\u6|u1|u0|u2|sum~combout\ & (\u7|u1|u0|u0|co~combout\ & \u6|u1|u0|u1|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000001000000010001000000010000000000100000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \v5|u1|u0|u0|ALT_INV_co~0_combout\,
	datac => \u7|u1|u0|u0|ALT_INV_co~combout\,
	datad => \u6|u1|u0|u1|ALT_INV_sum~combout\,
	datae => \u5|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_sum~combout\,
	combout => \v5|u1|u0|u2|co~0_combout\);

-- Location: LABCELL_X61_Y5_N48
\u4|u3|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u0|co~combout\ = ( \u4|u3|u1|u1|u0|sum~0_combout\ & ( (!\u4|u3|u1|u0|u3|co~0_combout\ & (!\u4|u3|u1|u1|u0|co~0_combout\ & ((!\u4|u3|u1|u0|u3|sum~0_combout\) # (!\u4|u3|u1|u0|u2|co~combout\)))) ) ) # ( !\u4|u3|u1|u1|u0|sum~0_combout\ & ( 
-- !\u4|u3|u1|u1|u0|co~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u0|u3|ALT_INV_sum~0_combout\,
	datab => \u4|u3|u1|u0|u2|ALT_INV_co~combout\,
	datac => \u4|u3|u1|u0|u3|ALT_INV_co~0_combout\,
	datad => \u4|u3|u1|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u4|u3|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \u4|u3|u1|u1|u0|co~combout\);

-- Location: LABCELL_X61_Y5_N15
\u4|u3|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u1|co~combout\ = ( \v4|m[13]~12_combout\ & ( (!\u4|u3|u1|u1|u0|co~combout\ & (((\v3|m[6]~5_combout\ & \v4|m[12]~11_combout\)) # (\v3|m[5]~4_combout\))) # (\u4|u3|u1|u1|u0|co~combout\ & (\v3|m[6]~5_combout\ & (\v4|m[12]~11_combout\ & 
-- \v3|m[5]~4_combout\))) ) ) # ( !\v4|m[13]~12_combout\ & ( (!\u4|u3|u1|u1|u0|co~combout\ & (\v3|m[6]~5_combout\ & \v4|m[12]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010101010110000001010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u0|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[6]~5_combout\,
	datac => \v4|ALT_INV_m[12]~11_combout\,
	datad => \v3|ALT_INV_m[5]~4_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u1|u1|co~combout\);

-- Location: LABCELL_X61_Y6_N27
\u4|u3|u1|u1|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u2|sum~0_combout\ = ( \v3|m[6]~5_combout\ & ( !\v4|m[13]~12_combout\ $ (((!\v3|m[7]~6_combout\) # (!\v4|m[12]~11_combout\))) ) ) # ( !\v3|m[6]~5_combout\ & ( (\v3|m[7]~6_combout\ & \v4|m[12]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~12_combout\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	dataf => \v3|ALT_INV_m[6]~5_combout\,
	combout => \u4|u3|u1|u1|u2|sum~0_combout\);

-- Location: LABCELL_X61_Y6_N36
\u4|u5|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u0|co~combout\ = ( \u4|u3|u1|u1|u0|sum~combout\ & ( \v4|m[14]~13_combout\ & ( (!\u4|u3|u1|u1|u1|sum~combout\ & (\v3|m[4]~3_combout\ & ((\u4|u5|u1|u0|u2|co~combout\) # (\v3|m[3]~2_combout\)))) # (\u4|u3|u1|u1|u1|sum~combout\ & 
-- (((\u4|u5|u1|u0|u2|co~combout\) # (\v3|m[3]~2_combout\)) # (\v3|m[4]~3_combout\))) ) ) ) # ( !\u4|u3|u1|u1|u0|sum~combout\ & ( \v4|m[14]~13_combout\ & ( (!\u4|u3|u1|u1|u1|sum~combout\ & (\v3|m[4]~3_combout\ & (\v3|m[3]~2_combout\ & 
-- \u4|u5|u1|u0|u2|co~combout\))) # (\u4|u3|u1|u1|u1|sum~combout\ & (((\v3|m[3]~2_combout\ & \u4|u5|u1|u0|u2|co~combout\)) # (\v3|m[4]~3_combout\))) ) ) ) # ( \u4|u3|u1|u1|u0|sum~combout\ & ( !\v4|m[14]~13_combout\ & ( (\u4|u3|u1|u1|u1|sum~combout\ & 
-- \u4|u5|u1|u0|u2|co~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[4]~3_combout\,
	datac => \v3|ALT_INV_m[3]~2_combout\,
	datad => \u4|u5|u1|u0|u2|ALT_INV_co~combout\,
	datae => \u4|u3|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[14]~13_combout\,
	combout => \u4|u5|u1|u1|u0|co~combout\);

-- Location: LABCELL_X61_Y6_N45
\u4|u5|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u1|sum~combout\ = ( \v3|m[5]~4_combout\ & ( !\u4|u3|u1|u1|u1|co~combout\ $ (!\u4|u3|u1|u1|u2|sum~0_combout\ $ (!\v4|m[14]~13_combout\ $ (!\u4|u5|u1|u1|u0|co~combout\))) ) ) # ( !\v3|m[5]~4_combout\ & ( !\u4|u3|u1|u1|u1|co~combout\ $ 
-- (!\u4|u3|u1|u1|u2|sum~0_combout\ $ (\u4|u5|u1|u1|u0|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	datac => \v4|ALT_INV_m[14]~13_combout\,
	datad => \u4|u5|u1|u1|u0|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[5]~4_combout\,
	combout => \u4|u5|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X63_Y3_N18
\u4|u7|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u0|u3|co~combout\ = ( \v3|m[2]~1_combout\ & ( \v3|m[3]~2_combout\ & ( (!\u4|u5|u1|u1|u0|sum~combout\ & (\v4|m~14_combout\ & ((\u4|u7|u1|u0|u1|co~combout\) # (\u4|u5|u1|u0|u3|sum~combout\)))) # (\u4|u5|u1|u1|u0|sum~combout\ & 
-- (((\u4|u5|u1|u0|u3|sum~combout\ & \u4|u7|u1|u0|u1|co~combout\)) # (\v4|m~14_combout\))) ) ) ) # ( !\v3|m[2]~1_combout\ & ( \v3|m[3]~2_combout\ & ( (!\u4|u5|u1|u1|u0|sum~combout\ & (\u4|u5|u1|u0|u3|sum~combout\ & (\u4|u7|u1|u0|u1|co~combout\ & 
-- \v4|m~14_combout\))) # (\u4|u5|u1|u1|u0|sum~combout\ & (((\u4|u5|u1|u0|u3|sum~combout\ & \u4|u7|u1|u0|u1|co~combout\)) # (\v4|m~14_combout\))) ) ) ) # ( \v3|m[2]~1_combout\ & ( !\v3|m[3]~2_combout\ & ( (\u4|u5|u1|u1|u0|sum~combout\ & 
-- ((!\u4|u5|u1|u0|u3|sum~combout\ & (\u4|u7|u1|u0|u1|co~combout\ & \v4|m~14_combout\)) # (\u4|u5|u1|u0|u3|sum~combout\ & ((\v4|m~14_combout\) # (\u4|u7|u1|u0|u1|co~combout\))))) ) ) ) # ( !\v3|m[2]~1_combout\ & ( !\v3|m[3]~2_combout\ & ( 
-- (\u4|u5|u1|u1|u0|sum~combout\ & (\u4|u5|u1|u0|u3|sum~combout\ & \u4|u7|u1|u0|u1|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010001010100000001010101110000000101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u0|ALT_INV_sum~combout\,
	datab => \u4|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u0|u1|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	datae => \v3|ALT_INV_m[2]~1_combout\,
	dataf => \v3|ALT_INV_m[3]~2_combout\,
	combout => \u4|u7|u1|u0|u3|co~combout\);

-- Location: LABCELL_X63_Y3_N27
\u4|u7|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u0|sum~combout\ = ( \u4|u7|u1|u0|u3|co~combout\ & ( !\u4|u5|u1|u1|u1|sum~combout\ $ (((\v4|m~14_combout\ & \v3|m[4]~3_combout\))) ) ) # ( !\u4|u7|u1|u0|u3|co~combout\ & ( !\u4|u5|u1|u1|u1|sum~combout\ $ (((!\v4|m~14_combout\) # 
-- (!\v3|m[4]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \u4|u5|u1|u1|u1|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \u4|u7|u1|u0|u3|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X66_Y3_N24
\u3|u5|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u0|co~combout\ = ( \v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( (!\v4|m[10]~9_combout\ & (\u3|u3|u1|u2|u1|sum~combout\ & ((\u3|u3|u1|u2|u0|sum~combout\)))) # (\v4|m[10]~9_combout\ & (((\v3|m[8]~7_combout\)) # 
-- (\u3|u3|u1|u2|u1|sum~combout\))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u3|u5|u1|u1|u2|co~combout\ & ( (!\u3|u3|u1|u2|u1|sum~combout\ & (\v4|m[10]~9_combout\ & (\v3|m[8]~7_combout\ & \u3|u3|u1|u2|u0|sum~combout\))) # (\u3|u3|u1|u2|u1|sum~combout\ & 
-- (((\v4|m[10]~9_combout\ & \v3|m[8]~7_combout\)) # (\u3|u3|u1|u2|u0|sum~combout\))) ) ) ) # ( \v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( (\v4|m[10]~9_combout\ & ((!\u3|u3|u1|u2|u1|sum~combout\ & (\v3|m[8]~7_combout\ & 
-- \u3|u3|u1|u2|u0|sum~combout\)) # (\u3|u3|u1|u2|u1|sum~combout\ & ((\u3|u3|u1|u2|u0|sum~combout\) # (\v3|m[8]~7_combout\))))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u3|u5|u1|u1|u2|co~combout\ & ( (\v4|m[10]~9_combout\ & (\u3|u3|u1|u2|u1|sum~combout\ & 
-- \v3|m[8]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010001010100000001001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~9_combout\,
	datab => \u3|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u3|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u3|u5|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u2|u0|co~combout\);

-- Location: LABCELL_X64_Y3_N45
\u3|u1|p[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|p\(11) = ( \v4|m[8]~6_combout\ & ( \v3|m[11]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[11]~10_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u1|p\(11));

-- Location: LABCELL_X64_Y3_N3
\u3|u3|u1|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|co~0_combout\ = (\u3|u2|p\(9) & \u3|u1|p\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|ALT_INV_p\(9),
	datad => \u3|u1|ALT_INV_p\(10),
	combout => \u3|u3|u1|u2|u1|co~0_combout\);

-- Location: LABCELL_X64_Y3_N15
\u3|u2|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|p\(10) = ( \v4|m[9]~8_combout\ & ( \v3|m[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[9]~8_combout\,
	combout => \u3|u2|p\(10));

-- Location: LABCELL_X64_Y3_N6
\u3|u3|u1|u2|u1|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u1|co~1_combout\ = ( \u3|u3|u1|u2|u1|sum~0_combout\ & ( \u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & (\u3|u2|p\(8) & ((\u3|u3|u1|u1|u3|co~0_combout\) # (\u3|u3|u1|u1|u3|sum~0_combout\)))) # (\u3|u1|p\(9) & 
-- (((\u3|u3|u1|u1|u3|co~0_combout\) # (\u3|u2|p\(8))) # (\u3|u3|u1|u1|u3|sum~0_combout\))) ) ) ) # ( \u3|u3|u1|u2|u1|sum~0_combout\ & ( !\u3|u3|u1|u1|u2|co~combout\ & ( (!\u3|u1|p\(9) & (\u3|u2|p\(8) & \u3|u3|u1|u1|u3|co~0_combout\)) # (\u3|u1|p\(9) & 
-- ((\u3|u3|u1|u1|u3|co~0_combout\) # (\u3|u2|p\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u1|u3|ALT_INV_sum~0_combout\,
	datab => \u3|u1|ALT_INV_p\(9),
	datac => \u3|u2|ALT_INV_p\(8),
	datad => \u3|u3|u1|u1|u3|ALT_INV_co~0_combout\,
	datae => \u3|u3|u1|u2|u1|ALT_INV_sum~0_combout\,
	dataf => \u3|u3|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u2|u1|co~1_combout\);

-- Location: LABCELL_X64_Y3_N42
\u3|u3|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u2|sum~combout\ = ( \u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u1|p\(11) $ (\u3|u2|p\(10)) ) ) # ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u1|p\(11) $ (!\u3|u3|u1|u2|u1|co~0_combout\ $ (\u3|u2|p\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|ALT_INV_p\(11),
	datac => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datad => \u3|u2|ALT_INV_p\(10),
	dataf => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u3|u1|u2|u2|sum~combout\);

-- Location: LABCELL_X62_Y3_N18
\u3|u7|u1|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u0|sum~0_combout\ = ( \v3|m[9]~8_combout\ & ( \u3|u3|u1|u2|u2|sum~combout\ & ( !\v4|m[10]~9_combout\ $ (!\u3|u5|u1|u2|u0|co~combout\ $ (((!\v4|m[11]~10_combout\) # (!\v3|m[8]~7_combout\)))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( 
-- \u3|u3|u1|u2|u2|sum~combout\ & ( !\u3|u5|u1|u2|u0|co~combout\ $ (((\v4|m[11]~10_combout\ & \v3|m[8]~7_combout\))) ) ) ) # ( \v3|m[9]~8_combout\ & ( !\u3|u3|u1|u2|u2|sum~combout\ & ( !\v4|m[10]~9_combout\ $ (!\u3|u5|u1|u2|u0|co~combout\ $ 
-- (((\v4|m[11]~10_combout\ & \v3|m[8]~7_combout\)))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( !\u3|u3|u1|u2|u2|sum~combout\ & ( !\u3|u5|u1|u2|u0|co~combout\ $ (((!\v4|m[11]~10_combout\) # (!\v3|m[8]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010001101101100100111111010000001011100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \v4|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u3|u5|u1|u2|u0|ALT_INV_co~combout\,
	datae => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \u3|u3|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u2|u0|sum~0_combout\);

-- Location: LABCELL_X66_Y3_N18
\u3|u7|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u1|u3|co~combout\ = ( \v3|m[6]~5_combout\ & ( \u3|u5|u1|u1|u3|sum~combout\ & ( (!\v4|m[11]~10_combout\ & (((\u3|u7|u1|u1|u1|co~combout\ & \u3|u5|u1|u2|u0|sum~combout\)))) # (\v4|m[11]~10_combout\ & (((\u3|u5|u1|u2|u0|sum~combout\)) # 
-- (\v3|m[7]~6_combout\))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( \u3|u5|u1|u1|u3|sum~combout\ & ( (!\u3|u7|u1|u1|u1|co~combout\ & (\v4|m[11]~10_combout\ & (\v3|m[7]~6_combout\ & \u3|u5|u1|u2|u0|sum~combout\))) # (\u3|u7|u1|u1|u1|co~combout\ & 
-- (((\v4|m[11]~10_combout\ & \v3|m[7]~6_combout\)) # (\u3|u5|u1|u2|u0|sum~combout\))) ) ) ) # ( \v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u3|sum~combout\ & ( (\v4|m[11]~10_combout\ & ((!\v3|m[7]~6_combout\ & (\u3|u7|u1|u1|u1|co~combout\ & 
-- \u3|u5|u1|u2|u0|sum~combout\)) # (\v3|m[7]~6_combout\ & ((\u3|u5|u1|u2|u0|sum~combout\) # (\u3|u7|u1|u1|u1|co~combout\))))) ) ) ) # ( !\v3|m[6]~5_combout\ & ( !\u3|u5|u1|u1|u3|sum~combout\ & ( (\v4|m[11]~10_combout\ & (\v3|m[7]~6_combout\ & 
-- \u3|u5|u1|u2|u0|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000010001010100000001000111110001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datac => \u3|u7|u1|u1|u1|ALT_INV_co~combout\,
	datad => \u3|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u3|u5|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u3|u7|u1|u1|u3|co~combout\);

-- Location: LABCELL_X62_Y3_N54
\u6|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u3|sum~combout\ = ( \u6|u1|u0|u1|co~combout\ & ( \u3|u7|u1|u1|u3|sum~combout\ & ( !\u4|u7|u1|u1|u0|sum~combout\ $ (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\)) ) ) ) # ( !\u6|u1|u0|u1|co~combout\ & ( 
-- \u3|u7|u1|u1|u3|sum~combout\ & ( !\u4|u7|u1|u0|u3|sum~combout\ $ (!\u4|u7|u1|u1|u0|sum~combout\ $ (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\))) ) ) ) # ( \u6|u1|u0|u1|co~combout\ & ( !\u3|u7|u1|u1|u3|sum~combout\ & ( 
-- !\u4|u7|u1|u0|u3|sum~combout\ $ (!\u4|u7|u1|u1|u0|sum~combout\ $ (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\))) ) ) ) # ( !\u6|u1|u0|u1|co~combout\ & ( !\u3|u7|u1|u1|u3|sum~combout\ & ( !\u4|u7|u1|u1|u0|sum~combout\ $ 
-- (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (\u3|u7|u1|u1|u3|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011011010011001011001101001100101101100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datac => \u3|u7|u1|u2|u0|ALT_INV_sum~0_combout\,
	datad => \u3|u7|u1|u1|u3|ALT_INV_co~combout\,
	datae => \u6|u1|u0|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X61_Y2_N9
\v6|m[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[3]~3_combout\ = ( \u6|u1|u0|u3|sum~combout\ & ( !\u7|u1|u0|u2|co~combout\ $ (!\u5|u1|u0|u3|sum~combout\ $ (((!\comb~0_combout\) # (\v5|u1|u0|u2|co~0_combout\)))) ) ) # ( !\u6|u1|u0|u3|sum~combout\ & ( !\u7|u1|u0|u2|co~combout\ $ 
-- (!\u5|u1|u0|u3|sum~combout\ $ (((!\v5|u1|u0|u2|co~0_combout\ & \comb~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010010110011001101001011010011001011010011001100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u5|u1|u0|u3|ALT_INV_sum~combout\,
	datac => \v5|u1|u0|u2|ALT_INV_co~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \u6|u1|u0|u3|ALT_INV_sum~combout\,
	combout => \v6|m[3]~3_combout\);

-- Location: LABCELL_X64_Y5_N24
\u2|u3|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|u1|u3|u3|sum~combout\ = ( \v4|m[5]~4_combout\ & ( \u2|u3|u1|u3|u1|co~combout\ & ( (\v3|m~14_combout\) # (\v3|m[14]~13_combout\) ) ) ) # ( !\v4|m[5]~4_combout\ & ( \u2|u3|u1|u3|u1|co~combout\ & ( (\v3|m~14_combout\ & \v4|m[4]~3_combout\) ) ) ) # ( 
-- \v4|m[5]~4_combout\ & ( !\u2|u3|u1|u3|u1|co~combout\ & ( \v3|m~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m~14_combout\,
	datad => \v4|ALT_INV_m[4]~3_combout\,
	datae => \v4|ALT_INV_m[5]~4_combout\,
	dataf => \u2|u3|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u2|u3|u1|u3|u3|sum~combout\);

-- Location: LABCELL_X63_Y5_N18
\u2|u5|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u2|sum~combout\ = ( \v4|m[6]~7_combout\ & ( \u2|u5|u1|u3|u0|co~combout\ & ( !\v3|m[14]~13_combout\ $ (!\u2|u3|u1|u3|u3|sum~combout\ $ (((\u2|u3|u1|u3|u2|sum~combout\) # (\v3|m[13]~12_combout\)))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( 
-- \u2|u5|u1|u3|u0|co~combout\ & ( !\u2|u3|u1|u3|u3|sum~combout\ $ (!\u2|u3|u1|u3|u2|sum~combout\) ) ) ) # ( \v4|m[6]~7_combout\ & ( !\u2|u5|u1|u3|u0|co~combout\ & ( !\v3|m[14]~13_combout\ $ (!\u2|u3|u1|u3|u3|sum~combout\ $ (((\v3|m[13]~12_combout\ & 
-- \u2|u3|u1|u3|u2|sum~combout\)))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( !\u2|u5|u1|u3|u0|co~combout\ & ( \u2|u3|u1|u3|u3|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011001100110100100110011110011000110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[14]~13_combout\,
	datab => \u2|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \u2|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u5|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X63_Y5_N54
\u2|u7|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u3|u1|sum~combout\ = ( \v3|m[12]~11_combout\ & ( \v3|m[13]~12_combout\ & ( !\u2|u5|u1|u3|u2|sum~combout\ $ (((!\u2|u5|u1|u3|u1|sum~combout\ & ((!\v4|m[7]~5_combout\) # (\u2|u7|u1|u2|u3|co~combout\))) # (\u2|u5|u1|u3|u1|sum~combout\ & 
-- ((!\u2|u7|u1|u2|u3|co~combout\) # (\v4|m[7]~5_combout\))))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v3|m[13]~12_combout\ & ( !\u2|u5|u1|u3|u2|sum~combout\ $ (!\v4|m[7]~5_combout\ $ (((\u2|u5|u1|u3|u1|sum~combout\ & \u2|u7|u1|u2|u3|co~combout\)))) ) ) ) # ( 
-- \v3|m[12]~11_combout\ & ( !\v3|m[13]~12_combout\ & ( !\u2|u5|u1|u3|u2|sum~combout\ $ (((!\u2|u5|u1|u3|u1|sum~combout\ & ((!\v4|m[7]~5_combout\) # (!\u2|u7|u1|u2|u3|co~combout\))) # (\u2|u5|u1|u3|u1|sum~combout\ & (!\v4|m[7]~5_combout\ & 
-- !\u2|u7|u1|u2|u3|co~combout\)))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( !\v3|m[13]~12_combout\ & ( !\u2|u5|u1|u3|u2|sum~combout\ $ (((!\u2|u5|u1|u3|u1|sum~combout\) # (!\u2|u7|u1|u2|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101100110101001011010011010010101100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \u2|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \u2|u7|u1|u2|u3|ALT_INV_co~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v3|ALT_INV_m[13]~12_combout\,
	combout => \u2|u7|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X61_Y2_N15
\u5|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u1|u0|sum~combout\ = ( \u5|u1|u0|u2|co~combout\ & ( !\u2|u7|u1|u3|u1|sum~combout\ $ (((!\u2|u7|u1|u3|u0|sum~combout\ & !\u1|u7|u1|u3|u3|co~combout\))) ) ) # ( !\u5|u1|u0|u2|co~combout\ & ( !\u2|u7|u1|u3|u1|sum~combout\ $ 
-- (((!\u2|u7|u1|u3|u0|sum~combout\) # (!\u1|u7|u1|u3|u3|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u2|u7|u1|u3|u1|ALT_INV_sum~combout\,
	datad => \u1|u7|u1|u3|u3|ALT_INV_co~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u5|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X62_Y3_N30
\u6|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|u3|co~combout\ = ( \u6|u1|u0|u1|co~combout\ & ( \u3|u7|u1|u1|u3|sum~combout\ & ( (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\)) # (\u4|u7|u1|u1|u0|sum~combout\) ) ) ) # ( !\u6|u1|u0|u1|co~combout\ & ( 
-- \u3|u7|u1|u1|u3|sum~combout\ & ( (!\u4|u7|u1|u0|u3|sum~combout\ & (\u4|u7|u1|u1|u0|sum~combout\ & (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\)))) # (\u4|u7|u1|u0|u3|sum~combout\ & ((!\u3|u7|u1|u2|u0|sum~0_combout\ $ 
-- (!\u3|u7|u1|u1|u3|co~combout\)) # (\u4|u7|u1|u1|u0|sum~combout\))) ) ) ) # ( \u6|u1|u0|u1|co~combout\ & ( !\u3|u7|u1|u1|u3|sum~combout\ & ( (!\u4|u7|u1|u0|u3|sum~combout\ & (\u4|u7|u1|u1|u0|sum~combout\ & (!\u3|u7|u1|u2|u0|sum~0_combout\ $ 
-- (!\u3|u7|u1|u1|u3|co~combout\)))) # (\u4|u7|u1|u0|u3|sum~combout\ & ((!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\)) # (\u4|u7|u1|u1|u0|sum~combout\))) ) ) ) # ( !\u6|u1|u0|u1|co~combout\ & ( !\u3|u7|u1|u1|u3|sum~combout\ & ( 
-- (\u4|u7|u1|u1|u0|sum~combout\ & (!\u3|u7|u1|u2|u0|sum~0_combout\ $ (!\u3|u7|u1|u1|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000101110111000100010111011100010011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u0|u3|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u1|u0|ALT_INV_sum~combout\,
	datac => \u3|u7|u1|u2|u0|ALT_INV_sum~0_combout\,
	datad => \u3|u7|u1|u1|u3|ALT_INV_co~combout\,
	datae => \u6|u1|u0|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|u3|co~combout\);

-- Location: LABCELL_X61_Y3_N3
\u3|u5|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u1|sum~combout\ = ( \v3|m[9]~8_combout\ & ( !\v4|m[10]~9_combout\ $ (!\u3|u3|u1|u2|u2|sum~combout\ $ (\u3|u5|u1|u2|u0|co~combout\)) ) ) # ( !\v3|m[9]~8_combout\ & ( !\u3|u3|u1|u2|u2|sum~combout\ $ (!\u3|u5|u1|u2|u0|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~9_combout\,
	datac => \u3|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datad => \u3|u5|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[9]~8_combout\,
	combout => \u3|u5|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X61_Y3_N9
\u3|u2|p[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|p\(11) = ( \v3|m[11]~10_combout\ & ( \v4|m[9]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \v3|ALT_INV_m[11]~10_combout\,
	combout => \u3|u2|p\(11));

-- Location: LABCELL_X64_Y3_N0
\u3|u1|p[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|p\(12) = ( \v4|m[8]~6_combout\ & ( \v3|m[12]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[8]~6_combout\,
	combout => \u3|u1|p\(12));

-- Location: LABCELL_X64_Y3_N48
\u3|u3|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u3|sum~combout\ = ( \u3|u2|p\(10) & ( \u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u2|p\(11) $ (\u3|u1|p\(12)) ) ) ) # ( !\u3|u2|p\(10) & ( \u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u2|p\(11) $ (!\u3|u1|p\(12) $ (\u3|u1|p\(11))) ) ) ) # ( 
-- \u3|u2|p\(10) & ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u2|p\(11) $ (!\u3|u1|p\(12) $ (((\u3|u1|p\(11)) # (\u3|u3|u1|u2|u1|co~0_combout\)))) ) ) ) # ( !\u3|u2|p\(10) & ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( !\u3|u2|p\(11) $ (!\u3|u1|p\(12) $ 
-- (((\u3|u3|u1|u2|u1|co~0_combout\ & \u3|u1|p\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001011010011100001100111100110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \u3|u2|ALT_INV_p\(11),
	datac => \u3|u1|ALT_INV_p\(12),
	datad => \u3|u1|ALT_INV_p\(11),
	datae => \u3|u2|ALT_INV_p\(10),
	dataf => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u3|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X61_Y3_N42
\u3|u5|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u2|sum~combout\ = ( \u3|u5|u1|u2|u0|co~combout\ & ( \v4|m[10]~9_combout\ & ( !\u3|u3|u1|u2|u3|sum~combout\ $ (!\v3|m[10]~9_combout\ $ (((\u3|u3|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\)))) ) ) ) # ( !\u3|u5|u1|u2|u0|co~combout\ & ( 
-- \v4|m[10]~9_combout\ & ( !\u3|u3|u1|u2|u3|sum~combout\ $ (!\v3|m[10]~9_combout\ $ (((\v3|m[9]~8_combout\ & \u3|u3|u1|u2|u2|sum~combout\)))) ) ) ) # ( \u3|u5|u1|u2|u0|co~combout\ & ( !\v4|m[10]~9_combout\ & ( !\u3|u3|u1|u2|u3|sum~combout\ $ 
-- (!\u3|u3|u1|u2|u2|sum~combout\) ) ) ) # ( !\u3|u5|u1|u2|u0|co~combout\ & ( !\v4|m[10]~9_combout\ & ( \u3|u3|u1|u2|u3|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010101001100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datad => \u3|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \u3|u5|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u5|u1|u2|u2|sum~combout\);

-- Location: LABCELL_X62_Y3_N36
\u3|u7|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u1|sum~combout\ = ( \v4|m[11]~10_combout\ & ( \u3|u7|u1|u1|u3|co~combout\ & ( !\v3|m[9]~8_combout\ $ (!\u3|u5|u1|u2|u2|sum~combout\ $ (((\u3|u5|u1|u2|u1|sum~combout\) # (\v3|m[8]~7_combout\)))) ) ) ) # ( !\v4|m[11]~10_combout\ & ( 
-- \u3|u7|u1|u1|u3|co~combout\ & ( !\u3|u5|u1|u2|u1|sum~combout\ $ (!\u3|u5|u1|u2|u2|sum~combout\) ) ) ) # ( \v4|m[11]~10_combout\ & ( !\u3|u7|u1|u1|u3|co~combout\ & ( !\v3|m[9]~8_combout\ $ (!\u3|u5|u1|u2|u2|sum~combout\ $ (((\v3|m[8]~7_combout\ & 
-- \u3|u5|u1|u2|u1|sum~combout\)))) ) ) ) # ( !\v4|m[11]~10_combout\ & ( !\u3|u7|u1|u1|u3|co~combout\ & ( \u3|u5|u1|u2|u2|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111101110000100110011110011000111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \u3|u5|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datad => \u3|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u7|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X61_Y6_N42
\u4|u5|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u1|co~combout\ = ( \v3|m[5]~4_combout\ & ( (!\u4|u5|u1|u1|u0|co~combout\ & (\v4|m[14]~13_combout\ & (!\u4|u3|u1|u1|u1|co~combout\ $ (!\u4|u3|u1|u1|u2|sum~0_combout\)))) # (\u4|u5|u1|u1|u0|co~combout\ & ((!\u4|u3|u1|u1|u1|co~combout\ $ 
-- (!\u4|u3|u1|u1|u2|sum~0_combout\)) # (\v4|m[14]~13_combout\))) ) ) # ( !\v3|m[5]~4_combout\ & ( (\u4|u5|u1|u1|u0|co~combout\ & (!\u4|u3|u1|u1|u1|co~combout\ $ (!\u4|u3|u1|u1|u2|sum~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110011011110000011001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	datac => \u4|u5|u1|u1|u0|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	dataf => \v3|ALT_INV_m[5]~4_combout\,
	combout => \u4|u5|u1|u1|u1|co~combout\);

-- Location: LABCELL_X61_Y6_N51
\u4|u2|p[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|p\(7) = (\v4|m[13]~12_combout\ & \v3|m[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~12_combout\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	combout => \u4|u2|p\(7));

-- Location: LABCELL_X61_Y6_N48
\u4|u3|u1|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u2|co~0_combout\ = ( \v3|m[6]~5_combout\ & ( (\v4|m[13]~12_combout\ & (\v3|m[7]~6_combout\ & \v4|m[12]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[13]~12_combout\,
	datab => \v3|ALT_INV_m[7]~6_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	dataf => \v3|ALT_INV_m[6]~5_combout\,
	combout => \u4|u3|u1|u1|u2|co~0_combout\);

-- Location: LABCELL_X57_Y6_N33
\u4|u1|p[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|p\(8) = ( \v4|m[12]~11_combout\ & ( \v3|m[8]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \v4|ALT_INV_m[12]~11_combout\,
	combout => \u4|u1|p\(8));

-- Location: LABCELL_X62_Y6_N9
\u4|u3|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u3|sum~combout\ = ( \u4|u3|u1|u1|u2|sum~0_combout\ & ( \u4|u1|p\(8) & ( !\u4|u2|p\(7) $ (((\u4|u3|u1|u1|u1|co~combout\) # (\u4|u3|u1|u1|u2|co~0_combout\))) ) ) ) # ( !\u4|u3|u1|u1|u2|sum~0_combout\ & ( \u4|u1|p\(8) & ( !\u4|u2|p\(7) $ 
-- (\u4|u3|u1|u1|u2|co~0_combout\) ) ) ) # ( \u4|u3|u1|u1|u2|sum~0_combout\ & ( !\u4|u1|p\(8) & ( !\u4|u2|p\(7) $ (((!\u4|u3|u1|u1|u2|co~0_combout\ & !\u4|u3|u1|u1|u1|co~combout\))) ) ) ) # ( !\u4|u3|u1|u1|u2|sum~0_combout\ & ( !\u4|u1|p\(8) & ( 
-- !\u4|u2|p\(7) $ (!\u4|u3|u1|u1|u2|co~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010101010100101101001011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|ALT_INV_p\(7),
	datac => \u4|u3|u1|u1|u2|ALT_INV_co~0_combout\,
	datad => \u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datae => \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	dataf => \u4|u1|ALT_INV_p\(8),
	combout => \u4|u3|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X63_Y6_N0
\u4|u5|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u2|sum~combout\ = ( \u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u5|u1|u1|u1|co~combout\ $ (((\v4|m[14]~13_combout\ & \v3|m[6]~5_combout\))) ) ) # ( !\u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u5|u1|u1|u1|co~combout\ $ (((!\v4|m[14]~13_combout\) # 
-- (!\v3|m[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000110000111111000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[14]~13_combout\,
	datac => \u4|u5|u1|u1|u1|ALT_INV_co~combout\,
	datad => \v3|ALT_INV_m[6]~5_combout\,
	dataf => \u4|u3|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X63_Y3_N42
\u4|u7|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u0|co~combout\ = ( \u4|u5|u1|u1|u1|sum~combout\ & ( ((\v4|m~14_combout\ & \v3|m[4]~3_combout\)) # (\u4|u7|u1|u0|u3|co~combout\) ) ) # ( !\u4|u5|u1|u1|u1|sum~combout\ & ( (\v4|m~14_combout\ & (\u4|u7|u1|u0|u3|co~combout\ & 
-- \v3|m[4]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \u4|u7|u1|u0|u3|ALT_INV_co~combout\,
	datad => \v3|ALT_INV_m[4]~3_combout\,
	dataf => \u4|u5|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u1|u0|co~combout\);

-- Location: LABCELL_X63_Y6_N3
\u4|u7|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u1|sum~combout\ = ( \u4|u7|u1|u1|u0|co~combout\ & ( !\u4|u5|u1|u1|u2|sum~combout\ $ (((\v3|m[5]~4_combout\ & \v4|m~14_combout\))) ) ) # ( !\u4|u7|u1|u1|u0|co~combout\ & ( !\u4|u5|u1|u1|u2|sum~combout\ $ (((!\v3|m[5]~4_combout\) # 
-- (!\v4|m~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010101010101001011010101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[5]~4_combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	dataf => \u4|u7|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X62_Y3_N42
\u6|u1|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u0|sum~combout\ = ( \u4|u7|u1|u1|u1|sum~combout\ & ( !\u6|u1|u0|u3|co~combout\ $ (\u3|u7|u1|u2|u1|sum~combout\) ) ) # ( !\u4|u7|u1|u1|u1|sum~combout\ & ( !\u6|u1|u0|u3|co~combout\ $ (!\u3|u7|u1|u2|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u6|u1|u0|u3|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \u6|u1|u1|u0|sum~combout\);

-- Location: LABCELL_X61_Y2_N12
\u7|u1|u1|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u0|sum~0_combout\ = ( \u6|u1|u1|u0|sum~combout\ & ( !\u5|u1|u1|u0|sum~combout\ ) ) # ( !\u6|u1|u1|u0|sum~combout\ & ( \u5|u1|u1|u0|sum~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u5|u1|u1|u0|ALT_INV_sum~combout\,
	dataf => \u6|u1|u1|u0|ALT_INV_sum~combout\,
	combout => \u7|u1|u1|u0|sum~0_combout\);

-- Location: LABCELL_X61_Y2_N48
\v6|m[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[4]~4_combout\ = ( \comb~0_combout\ & ( \u7|u1|u1|u0|sum~0_combout\ & ( (!\u7|u1|u0|u2|co~combout\ & ((!\v5|u1|u0|u2|co~0_combout\ & (\u6|u1|u0|u3|sum~combout\ & \u5|u1|u0|u3|sum~combout\)) # (\v5|u1|u0|u2|co~0_combout\ & (!\u6|u1|u0|u3|sum~combout\ 
-- & !\u5|u1|u0|u3|sum~combout\)))) # (\u7|u1|u0|u2|co~combout\ & ((!\v5|u1|u0|u2|co~0_combout\ & ((\u5|u1|u0|u3|sum~combout\) # (\u6|u1|u0|u3|sum~combout\))) # (\v5|u1|u0|u2|co~0_combout\ & (\u6|u1|u0|u3|sum~combout\ & \u5|u1|u0|u3|sum~combout\)))) ) ) ) # 
-- ( !\comb~0_combout\ & ( \u7|u1|u1|u0|sum~0_combout\ & ( (!\u7|u1|u0|u2|co~combout\ & ((!\u6|u1|u0|u3|sum~combout\) # (!\u5|u1|u0|u3|sum~combout\))) # (\u7|u1|u0|u2|co~combout\ & (!\u6|u1|u0|u3|sum~combout\ & !\u5|u1|u0|u3|sum~combout\)) ) ) ) # ( 
-- \comb~0_combout\ & ( !\u7|u1|u1|u0|sum~0_combout\ & ( (!\u7|u1|u0|u2|co~combout\ & ((!\v5|u1|u0|u2|co~0_combout\ & ((!\u6|u1|u0|u3|sum~combout\) # (!\u5|u1|u0|u3|sum~combout\))) # (\v5|u1|u0|u2|co~0_combout\ & ((\u5|u1|u0|u3|sum~combout\) # 
-- (\u6|u1|u0|u3|sum~combout\))))) # (\u7|u1|u0|u2|co~combout\ & ((!\v5|u1|u0|u2|co~0_combout\ & (!\u6|u1|u0|u3|sum~combout\ & !\u5|u1|u0|u3|sum~combout\)) # (\v5|u1|u0|u2|co~0_combout\ & ((!\u6|u1|u0|u3|sum~combout\) # (!\u5|u1|u0|u3|sum~combout\))))) ) ) ) 
-- # ( !\comb~0_combout\ & ( !\u7|u1|u1|u0|sum~0_combout\ & ( (!\u7|u1|u0|u2|co~combout\ & (\u6|u1|u0|u3|sum~combout\ & \u5|u1|u0|u3|sum~combout\)) # (\u7|u1|u0|u2|co~combout\ & ((\u5|u1|u0|u3|sum~combout\) # (\u6|u1|u0|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111110110111011001011111010101000000010010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \v5|u1|u0|u2|ALT_INV_co~0_combout\,
	datac => \u6|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u5|u1|u0|u3|ALT_INV_sum~combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \u7|u1|u1|u0|ALT_INV_sum~0_combout\,
	combout => \v6|m[4]~4_combout\);

-- Location: LABCELL_X62_Y3_N12
\u3|u7|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u1|co~combout\ = ( \v4|m[11]~10_combout\ & ( \u3|u7|u1|u1|u3|co~combout\ & ( (!\v3|m[9]~8_combout\ & (\u3|u5|u1|u2|u2|sum~combout\ & ((\u3|u5|u1|u2|u1|sum~combout\) # (\v3|m[8]~7_combout\)))) # (\v3|m[9]~8_combout\ & 
-- (((\u3|u5|u1|u2|u2|sum~combout\) # (\u3|u5|u1|u2|u1|sum~combout\)) # (\v3|m[8]~7_combout\))) ) ) ) # ( !\v4|m[11]~10_combout\ & ( \u3|u7|u1|u1|u3|co~combout\ & ( (\u3|u5|u1|u2|u1|sum~combout\ & \u3|u5|u1|u2|u2|sum~combout\) ) ) ) # ( \v4|m[11]~10_combout\ 
-- & ( !\u3|u7|u1|u1|u3|co~combout\ & ( (!\v3|m[9]~8_combout\ & (\v3|m[8]~7_combout\ & (\u3|u5|u1|u2|u1|sum~combout\ & \u3|u5|u1|u2|u2|sum~combout\))) # (\v3|m[9]~8_combout\ & (((\v3|m[8]~7_combout\ & \u3|u5|u1|u2|u1|sum~combout\)) # 
-- (\u3|u5|u1|u2|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001111100000000001100110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \u3|u5|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datad => \u3|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u7|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u2|u1|co~combout\);

-- Location: LABCELL_X62_Y6_N42
\u4|u1|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|p\(9) = ( \v3|m[9]~8_combout\ & ( \v4|m[12]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[12]~11_combout\,
	combout => \u4|u1|p\(9));

-- Location: LABCELL_X62_Y6_N18
\u4|u2|p[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|p\(8) = ( \v3|m[8]~7_combout\ & ( \v4|m[13]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u2|p\(8));

-- Location: LABCELL_X63_Y6_N36
\u4|u3|u1|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u0|sum~0_combout\ = ( \u4|u2|p\(8) & ( !\u4|u1|p\(9) ) ) # ( !\u4|u2|p\(8) & ( \u4|u1|p\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u1|ALT_INV_p\(9),
	dataf => \u4|u2|ALT_INV_p\(8),
	combout => \u4|u3|u1|u2|u0|sum~0_combout\);

-- Location: LABCELL_X61_Y6_N54
\u4|u3|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u0|sum~combout\ = ( \u4|u2|p\(7) & ( \u4|u3|u1|u1|u2|co~0_combout\ & ( !\u4|u3|u1|u2|u0|sum~0_combout\ ) ) ) # ( !\u4|u2|p\(7) & ( \u4|u3|u1|u1|u2|co~0_combout\ & ( !\u4|u1|p\(8) $ (!\u4|u3|u1|u2|u0|sum~0_combout\) ) ) ) # ( \u4|u2|p\(7) & ( 
-- !\u4|u3|u1|u1|u2|co~0_combout\ & ( !\u4|u3|u1|u2|u0|sum~0_combout\ $ (((!\u4|u1|p\(8) & ((!\u4|u3|u1|u1|u1|co~combout\) # (!\u4|u3|u1|u1|u2|sum~0_combout\))))) ) ) ) # ( !\u4|u2|p\(7) & ( !\u4|u3|u1|u1|u2|co~0_combout\ & ( !\u4|u3|u1|u2|u0|sum~0_combout\ 
-- $ (((!\u4|u3|u1|u1|u1|co~combout\) # ((!\u4|u3|u1|u1|u2|sum~0_combout\) # (!\u4|u1|p\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000111111110000000001111111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	datac => \u4|u1|ALT_INV_p\(8),
	datad => \u4|u3|u1|u2|u0|ALT_INV_sum~0_combout\,
	datae => \u4|u2|ALT_INV_p\(7),
	dataf => \u4|u3|u1|u1|u2|ALT_INV_co~0_combout\,
	combout => \u4|u3|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X63_Y6_N42
\u4|u5|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u3|sum~combout\ = ( \v3|m[7]~6_combout\ & ( \u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u3|u1|u2|u0|sum~combout\ $ (((!\u4|u5|u1|u1|u1|co~combout\ & ((!\v4|m[14]~13_combout\) # (\v3|m[6]~5_combout\))) # (\u4|u5|u1|u1|u1|co~combout\ & 
-- ((\v4|m[14]~13_combout\))))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u3|u1|u2|u0|sum~combout\ $ (((!\u4|u5|u1|u1|u1|co~combout\ & ((!\v3|m[6]~5_combout\) # (!\v4|m[14]~13_combout\))))) ) ) ) # ( \v3|m[7]~6_combout\ & ( 
-- !\u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u3|u1|u2|u0|sum~combout\ $ (((!\v4|m[14]~13_combout\) # ((\u4|u5|u1|u1|u1|co~combout\ & \v3|m[6]~5_combout\)))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u4|u3|u1|u1|u3|sum~combout\ & ( !\u4|u3|u1|u2|u0|sum~combout\ $ 
-- (((!\u4|u5|u1|u1|u1|co~combout\) # ((!\v3|m[6]~5_combout\) # (!\v4|m[14]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100111100100101100110011011000110011010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X63_Y6_N18
\u4|u7|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u2|sum~combout\ = ( \u4|u5|u1|u1|u2|sum~combout\ & ( \u4|u7|u1|u1|u0|co~combout\ & ( !\u4|u5|u1|u1|u3|sum~combout\ $ (((\v4|m~14_combout\ & \v3|m[6]~5_combout\))) ) ) ) # ( !\u4|u5|u1|u1|u2|sum~combout\ & ( \u4|u7|u1|u1|u0|co~combout\ & ( 
-- !\u4|u5|u1|u1|u3|sum~combout\ $ (((!\v4|m~14_combout\) # (!\v3|m[5]~4_combout\ $ (\v3|m[6]~5_combout\)))) ) ) ) # ( \u4|u5|u1|u1|u2|sum~combout\ & ( !\u4|u7|u1|u1|u0|co~combout\ & ( !\u4|u5|u1|u1|u3|sum~combout\ $ (((!\v4|m~14_combout\) # 
-- (!\v3|m[5]~4_combout\ $ (\v3|m[6]~5_combout\)))) ) ) ) # ( !\u4|u5|u1|u1|u2|sum~combout\ & ( !\u4|u7|u1|u1|u0|co~combout\ & ( !\u4|u5|u1|u1|u3|sum~combout\ $ (((!\v4|m~14_combout\) # (!\v3|m[6]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000101001110101100010100111010111111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m~14_combout\,
	datab => \v3|ALT_INV_m[5]~4_combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \u4|u5|u1|u1|u3|ALT_INV_sum~combout\,
	datae => \u4|u5|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X61_Y3_N18
\u3|u5|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u2|co~combout\ = ( \u3|u5|u1|u2|u0|co~combout\ & ( \v4|m[10]~9_combout\ & ( (!\u3|u3|u1|u2|u3|sum~combout\ & (\v3|m[10]~9_combout\ & ((\u3|u3|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\)))) # (\u3|u3|u1|u2|u3|sum~combout\ & 
-- (((\u3|u3|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\)) # (\v3|m[10]~9_combout\))) ) ) ) # ( !\u3|u5|u1|u2|u0|co~combout\ & ( \v4|m[10]~9_combout\ & ( (!\u3|u3|u1|u2|u3|sum~combout\ & (\v3|m[10]~9_combout\ & (\v3|m[9]~8_combout\ & 
-- \u3|u3|u1|u2|u2|sum~combout\))) # (\u3|u3|u1|u2|u3|sum~combout\ & (((\v3|m[9]~8_combout\ & \u3|u3|u1|u2|u2|sum~combout\)) # (\v3|m[10]~9_combout\))) ) ) ) # ( \u3|u5|u1|u2|u0|co~combout\ & ( !\v4|m[10]~9_combout\ & ( (\u3|u3|u1|u2|u3|sum~combout\ & 
-- \u3|u3|u1|u2|u2|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100010001000101110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[10]~9_combout\,
	datac => \v3|ALT_INV_m[9]~8_combout\,
	datad => \u3|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \u3|u5|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u5|u1|u2|u2|co~combout\);

-- Location: LABCELL_X64_Y3_N24
\u3|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u2|u3|co~combout\ = ( \u3|u2|p\(10) & ( \u3|u3|u1|u2|u1|co~1_combout\ & ( (!\u3|u2|p\(11) & !\u3|u1|p\(12)) ) ) ) # ( !\u3|u2|p\(10) & ( \u3|u3|u1|u2|u1|co~1_combout\ & ( (!\u3|u2|p\(11) & ((!\u3|u1|p\(12)) # (!\u3|u1|p\(11)))) # (\u3|u2|p\(11) 
-- & (!\u3|u1|p\(12) & !\u3|u1|p\(11))) ) ) ) # ( \u3|u2|p\(10) & ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( (!\u3|u2|p\(11) & ((!\u3|u1|p\(12)) # ((!\u3|u3|u1|u2|u1|co~0_combout\ & !\u3|u1|p\(11))))) # (\u3|u2|p\(11) & (!\u3|u3|u1|u2|u1|co~0_combout\ & 
-- (!\u3|u1|p\(12) & !\u3|u1|p\(11)))) ) ) ) # ( !\u3|u2|p\(10) & ( !\u3|u3|u1|u2|u1|co~1_combout\ & ( (!\u3|u2|p\(11) & ((!\u3|u3|u1|u2|u1|co~0_combout\) # ((!\u3|u1|p\(12)) # (!\u3|u1|p\(11))))) # (\u3|u2|p\(11) & (!\u3|u1|p\(12) & 
-- ((!\u3|u3|u1|u2|u1|co~0_combout\) # (!\u3|u1|p\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111010001100000011111100110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u2|u1|ALT_INV_co~0_combout\,
	datab => \u3|u2|ALT_INV_p\(11),
	datac => \u3|u1|ALT_INV_p\(12),
	datad => \u3|u1|ALT_INV_p\(11),
	datae => \u3|u2|ALT_INV_p\(10),
	dataf => \u3|u3|u1|u2|u1|ALT_INV_co~1_combout\,
	combout => \u3|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X61_Y3_N6
\u3|u3|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u0|sum~combout\ = ( \u3|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~6_combout\ & (\v4|m[9]~8_combout\ & ((\v3|m[12]~11_combout\)))) # (\v4|m[8]~6_combout\ & (!\v3|m[13]~12_combout\ $ (((!\v4|m[9]~8_combout\) # (!\v3|m[12]~11_combout\))))) ) ) # ( 
-- !\u3|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~6_combout\ & ((!\v4|m[9]~8_combout\) # ((!\v3|m[12]~11_combout\)))) # (\v4|m[8]~6_combout\ & (!\v3|m[13]~12_combout\ $ (((\v4|m[9]~8_combout\ & \v3|m[12]~11_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001001111110101100100100000101001101100000010100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~6_combout\,
	datab => \v4|ALT_INV_m[9]~8_combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u3|u0|sum~combout\);

-- Location: LABCELL_X61_Y3_N24
\u3|u7|u1|u2|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u2|sum~0_combout\ = ( \v3|m[10]~9_combout\ & ( \v4|m[10]~9_combout\ & ( !\u3|u5|u1|u2|u2|co~combout\ $ (!\u3|u3|u1|u3|u0|sum~combout\ $ (!\v3|m[11]~10_combout\ $ (!\v4|m[11]~10_combout\))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( 
-- \v4|m[10]~9_combout\ & ( !\u3|u5|u1|u2|u2|co~combout\ $ (!\u3|u3|u1|u3|u0|sum~combout\ $ (\v3|m[11]~10_combout\)) ) ) ) # ( \v3|m[10]~9_combout\ & ( !\v4|m[10]~9_combout\ & ( !\u3|u5|u1|u2|u2|co~combout\ $ (!\u3|u3|u1|u3|u0|sum~combout\ $ 
-- (\v4|m[11]~10_combout\)) ) ) ) # ( !\v3|m[10]~9_combout\ & ( !\v4|m[10]~9_combout\ & ( !\u3|u5|u1|u2|u2|co~combout\ $ (!\u3|u3|u1|u3|u0|sum~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001101001100101101001011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u7|u1|u2|u2|sum~0_combout\);

-- Location: LABCELL_X62_Y3_N48
\u6|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u1|sum~combout\ = ( \u3|u7|u1|u2|u1|sum~combout\ & ( \u3|u7|u1|u2|u2|sum~0_combout\ & ( !\u3|u7|u1|u2|u1|co~combout\ $ (!\u4|u7|u1|u1|u2|sum~combout\ $ (((!\u4|u7|u1|u1|u1|sum~combout\ & !\u6|u1|u0|u3|co~combout\)))) ) ) ) # ( 
-- !\u3|u7|u1|u2|u1|sum~combout\ & ( \u3|u7|u1|u2|u2|sum~0_combout\ & ( !\u3|u7|u1|u2|u1|co~combout\ $ (!\u4|u7|u1|u1|u2|sum~combout\ $ (((!\u4|u7|u1|u1|u1|sum~combout\) # (!\u6|u1|u0|u3|co~combout\)))) ) ) ) # ( \u3|u7|u1|u2|u1|sum~combout\ & ( 
-- !\u3|u7|u1|u2|u2|sum~0_combout\ & ( !\u3|u7|u1|u2|u1|co~combout\ $ (!\u4|u7|u1|u1|u2|sum~combout\ $ (((\u6|u1|u0|u3|co~combout\) # (\u4|u7|u1|u1|u1|sum~combout\)))) ) ) ) # ( !\u3|u7|u1|u2|u1|sum~combout\ & ( !\u3|u7|u1|u2|u2|sum~0_combout\ & ( 
-- !\u3|u7|u1|u2|u1|co~combout\ $ (!\u4|u7|u1|u1|u2|sum~combout\ $ (((\u4|u7|u1|u1|u1|sum~combout\ & \u6|u1|u0|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001011010011100001111000011100101101001011000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u4|u7|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u6|u1|u0|u3|ALT_INV_co~combout\,
	datae => \u3|u7|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u3|u7|u1|u2|u2|ALT_INV_sum~0_combout\,
	combout => \u6|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X61_Y2_N6
\u7|u1|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u0|co~combout\ = ( \u5|u1|u1|u0|sum~combout\ & ( ((!\u7|u1|u0|u2|co~combout\ & (\u5|u1|u0|u3|sum~combout\ & \u6|u1|u0|u3|sum~combout\)) # (\u7|u1|u0|u2|co~combout\ & ((\u6|u1|u0|u3|sum~combout\) # (\u5|u1|u0|u3|sum~combout\)))) # 
-- (\u6|u1|u1|u0|sum~combout\) ) ) # ( !\u5|u1|u1|u0|sum~combout\ & ( (\u6|u1|u1|u0|sum~combout\ & ((!\u7|u1|u0|u2|co~combout\ & (\u5|u1|u0|u3|sum~combout\ & \u6|u1|u0|u3|sum~combout\)) # (\u7|u1|u0|u2|co~combout\ & ((\u6|u1|u0|u3|sum~combout\) # 
-- (\u5|u1|u0|u3|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|u2|ALT_INV_co~combout\,
	datab => \u5|u1|u0|u3|ALT_INV_sum~combout\,
	datac => \u6|u1|u1|u0|ALT_INV_sum~combout\,
	datad => \u6|u1|u0|u3|ALT_INV_sum~combout\,
	dataf => \u5|u1|u1|u0|ALT_INV_sum~combout\,
	combout => \u7|u1|u1|u0|co~combout\);

-- Location: LABCELL_X63_Y5_N0
\u2|u7|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u3|u1|co~combout\ = ( \v3|m[12]~11_combout\ & ( \v3|m[13]~12_combout\ & ( (!\u2|u5|u1|u3|u2|sum~combout\ & (\v4|m[7]~5_combout\ & ((\u2|u7|u1|u2|u3|co~combout\) # (\u2|u5|u1|u3|u1|sum~combout\)))) # (\u2|u5|u1|u3|u2|sum~combout\ & 
-- (((\u2|u5|u1|u3|u1|sum~combout\ & \u2|u7|u1|u2|u3|co~combout\)) # (\v4|m[7]~5_combout\))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v3|m[13]~12_combout\ & ( (!\u2|u5|u1|u3|u2|sum~combout\ & (\u2|u5|u1|u3|u1|sum~combout\ & (\v4|m[7]~5_combout\ & 
-- \u2|u7|u1|u2|u3|co~combout\))) # (\u2|u5|u1|u3|u2|sum~combout\ & (((\u2|u5|u1|u3|u1|sum~combout\ & \u2|u7|u1|u2|u3|co~combout\)) # (\v4|m[7]~5_combout\))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\v3|m[13]~12_combout\ & ( (\u2|u5|u1|u3|u2|sum~combout\ & 
-- ((!\u2|u5|u1|u3|u1|sum~combout\ & (\v4|m[7]~5_combout\ & \u2|u7|u1|u2|u3|co~combout\)) # (\u2|u5|u1|u3|u1|sum~combout\ & ((\u2|u7|u1|u2|u3|co~combout\) # (\v4|m[7]~5_combout\))))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( !\v3|m[13]~12_combout\ & ( 
-- (\u2|u5|u1|u3|u2|sum~combout\ & (\u2|u5|u1|u3|u1|sum~combout\ & \u2|u7|u1|u2|u3|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000010001010100000101000101110000011100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \u2|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datac => \v4|ALT_INV_m[7]~5_combout\,
	datad => \u2|u7|u1|u2|u3|ALT_INV_co~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v3|ALT_INV_m[13]~12_combout\,
	combout => \u2|u7|u1|u3|u1|co~combout\);

-- Location: LABCELL_X63_Y5_N42
\u2|u5|u1|u3|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u3|sum~0_combout\ = ( \v3|m~14_combout\ & ( \v4|m[4]~3_combout\ & ( (\v4|m[6]~7_combout\ & ((!\v4|m[5]~4_combout\) # (!\u2|u3|u1|u3|u1|co~combout\))) ) ) ) # ( \v3|m~14_combout\ & ( !\v4|m[4]~3_combout\ & ( (\v4|m[6]~7_combout\ & 
-- ((!\v4|m[5]~4_combout\) # ((!\v3|m[14]~13_combout\) # (!\u2|u3|u1|u3|u1|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001000000000000000000011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[5]~4_combout\,
	datab => \v4|ALT_INV_m[6]~7_combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \u2|u3|u1|u3|u1|ALT_INV_co~combout\,
	datae => \v3|ALT_INV_m~14_combout\,
	dataf => \v4|ALT_INV_m[4]~3_combout\,
	combout => \u2|u5|u1|u3|u3|sum~0_combout\);

-- Location: LABCELL_X63_Y5_N12
\u2|u6|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u6|p\(14) = ( \v4|m[7]~5_combout\ & ( \v3|m[14]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[14]~13_combout\,
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u6|p\(14));

-- Location: LABCELL_X63_Y5_N6
\u2|u5|u1|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u1|u3|u2|co~combout\ = ( \v4|m[6]~7_combout\ & ( \u2|u5|u1|u3|u0|co~combout\ & ( (!\v3|m[14]~13_combout\ & (\u2|u3|u1|u3|u3|sum~combout\ & ((\u2|u3|u1|u3|u2|sum~combout\) # (\v3|m[13]~12_combout\)))) # (\v3|m[14]~13_combout\ & 
-- (((\u2|u3|u1|u3|u2|sum~combout\) # (\v3|m[13]~12_combout\)) # (\u2|u3|u1|u3|u3|sum~combout\))) ) ) ) # ( !\v4|m[6]~7_combout\ & ( \u2|u5|u1|u3|u0|co~combout\ & ( (\u2|u3|u1|u3|u3|sum~combout\ & \u2|u3|u1|u3|u2|sum~combout\) ) ) ) # ( \v4|m[6]~7_combout\ & 
-- ( !\u2|u5|u1|u3|u0|co~combout\ & ( (!\v3|m[14]~13_combout\ & (\u2|u3|u1|u3|u3|sum~combout\ & (\v3|m[13]~12_combout\ & \u2|u3|u1|u3|u2|sum~combout\))) # (\v3|m[14]~13_combout\ & (((\v3|m[13]~12_combout\ & \u2|u3|u1|u3|u2|sum~combout\)) # 
-- (\u2|u3|u1|u3|u3|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001011100000000001100110001011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[14]~13_combout\,
	datab => \u2|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \u2|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[6]~7_combout\,
	dataf => \u2|u5|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u2|u5|u1|u3|u2|co~combout\);

-- Location: LABCELL_X63_Y5_N51
\u2|u7|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u3|u2|sum~combout\ = ( \u2|u5|u1|u3|u2|co~combout\ & ( !\u2|u7|u1|u3|u1|co~combout\ $ (!\u2|u5|u1|u3|u3|sum~0_combout\ $ (!\u2|u6|p\(14))) ) ) # ( !\u2|u5|u1|u3|u2|co~combout\ & ( !\u2|u7|u1|u3|u1|co~combout\ $ (!\u2|u5|u1|u3|u3|sum~0_combout\ $ 
-- (\u2|u6|p\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u3|u1|ALT_INV_co~combout\,
	datac => \u2|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u2|u6|ALT_INV_p\(14),
	dataf => \u2|u5|u1|u3|u2|ALT_INV_co~combout\,
	combout => \u2|u7|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X61_Y2_N33
\u5|u1|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u0|u3|co~combout\ = ( \u5|u1|u0|u2|co~combout\ & ( (\u2|u7|u1|u3|u0|sum~combout\) # (\u1|u7|u1|u3|u3|co~combout\) ) ) # ( !\u5|u1|u0|u2|co~combout\ & ( (\u1|u7|u1|u3|u3|co~combout\ & \u2|u7|u1|u3|u0|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u7|u1|u3|u3|ALT_INV_co~combout\,
	datab => \u2|u7|u1|u3|u0|ALT_INV_sum~combout\,
	dataf => \u5|u1|u0|u2|ALT_INV_co~combout\,
	combout => \u5|u1|u0|u3|co~combout\);

-- Location: LABCELL_X61_Y2_N57
\u5|u1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u1|u0|co~0_combout\ = ( \u2|u7|u1|u3|u1|sum~combout\ & ( \u5|u1|u0|u3|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u0|u3|ALT_INV_co~combout\,
	dataf => \u2|u7|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \u5|u1|u1|u0|co~0_combout\);

-- Location: LABCELL_X61_Y2_N3
\u7|u1|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u1|sum~combout\ = ( \u5|u1|u1|u0|co~0_combout\ & ( !\u6|u1|u1|u1|sum~combout\ $ (!\u7|u1|u1|u0|co~combout\ $ (!\u2|u7|u1|u3|u2|sum~combout\)) ) ) # ( !\u5|u1|u1|u0|co~0_combout\ & ( !\u6|u1|u1|u1|sum~combout\ $ (!\u7|u1|u1|u0|co~combout\ $ 
-- (\u2|u7|u1|u3|u2|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u7|u1|u1|u0|ALT_INV_co~combout\,
	datad => \u2|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u5|u1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u7|u1|u1|u1|sum~combout\);

-- Location: LABCELL_X61_Y2_N36
\v5|u1|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u1|u0|co~0_combout\ = ( \u7|u1|u0|u2|co~combout\ & ( \u5|u1|u0|u3|sum~combout\ & ( (\v5|u1|u0|u2|co~0_combout\ & (!\u6|u1|u0|u3|sum~combout\ & (!\u6|u1|u1|u0|sum~combout\ $ (!\u5|u1|u1|u0|sum~combout\)))) ) ) ) # ( !\u7|u1|u0|u2|co~combout\ & ( 
-- \u5|u1|u0|u3|sum~combout\ & ( (\v5|u1|u0|u2|co~0_combout\ & (\u6|u1|u0|u3|sum~combout\ & (!\u6|u1|u1|u0|sum~combout\ $ (!\u5|u1|u1|u0|sum~combout\)))) ) ) ) # ( \u7|u1|u0|u2|co~combout\ & ( !\u5|u1|u0|u3|sum~combout\ & ( (\v5|u1|u0|u2|co~0_combout\ & 
-- (\u6|u1|u0|u3|sum~combout\ & (!\u6|u1|u1|u0|sum~combout\ $ (!\u5|u1|u1|u0|sum~combout\)))) ) ) ) # ( !\u7|u1|u0|u2|co~combout\ & ( !\u5|u1|u0|u3|sum~combout\ & ( (\v5|u1|u0|u2|co~0_combout\ & (!\u6|u1|u0|u3|sum~combout\ & (!\u6|u1|u1|u0|sum~combout\ $ 
-- (\u5|u1|u1|u0|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000000000010000001000000001000000100001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u1|u0|ALT_INV_sum~combout\,
	datab => \v5|u1|u0|u2|ALT_INV_co~0_combout\,
	datac => \u6|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u5|u1|u1|u0|ALT_INV_sum~combout\,
	datae => \u7|u1|u0|u2|ALT_INV_co~combout\,
	dataf => \u5|u1|u0|u3|ALT_INV_sum~combout\,
	combout => \v5|u1|u1|u0|co~0_combout\);

-- Location: LABCELL_X61_Y2_N45
\v6|m[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[5]~5_combout\ = !\u7|u1|u1|u1|sum~combout\ $ (((!\comb~0_combout\) # (\v5|u1|u1|u0|co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001010101011001100101010101100110010101010110011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \v5|u1|u1|u0|ALT_INV_co~0_combout\,
	combout => \v6|m[5]~5_combout\);

-- Location: LABCELL_X61_Y3_N30
\u3|u3|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u1|sum~combout\ = ( \v3|m[13]~12_combout\ & ( \u3|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~6_combout\ & (((\v4|m[9]~8_combout\)))) # (\v4|m[8]~6_combout\ & (!\v3|m[14]~13_combout\ $ (((!\v4|m[9]~8_combout\) # (\v3|m[12]~11_combout\))))) ) ) ) # 
-- ( !\v3|m[13]~12_combout\ & ( \u3|u3|u1|u2|u3|co~combout\ & ( (\v4|m[8]~6_combout\ & \v3|m[14]~13_combout\) ) ) ) # ( \v3|m[13]~12_combout\ & ( !\u3|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~6_combout\ & (!\v3|m[12]~11_combout\ & ((\v4|m[9]~8_combout\)))) # 
-- (\v4|m[8]~6_combout\ & ((!\v3|m[14]~13_combout\ $ (\v4|m[9]~8_combout\)))) ) ) ) # ( !\v3|m[13]~12_combout\ & ( !\u3|u3|u1|u2|u3|co~combout\ & ( (!\v4|m[8]~6_combout\ & (\v3|m[12]~11_combout\ & ((\v4|m[9]~8_combout\)))) # (\v4|m[8]~6_combout\ & 
-- (!\v3|m[14]~13_combout\ $ (((!\v3|m[12]~11_combout\) # (!\v4|m[9]~8_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110010100001000110100000101000001010000010111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~6_combout\,
	datab => \v3|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	datae => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X61_Y3_N36
\u3|u5|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u0|sum~combout\ = ( \v3|m[12]~11_combout\ & ( \v4|m[10]~9_combout\ & ( !\u3|u3|u1|u3|u1|sum~combout\ $ (((!\u3|u5|u1|u2|u2|co~combout\ & (\u3|u3|u1|u3|u0|sum~combout\ & \v3|m[11]~10_combout\)) # (\u3|u5|u1|u2|u2|co~combout\ & 
-- ((\v3|m[11]~10_combout\) # (\u3|u3|u1|u3|u0|sum~combout\))))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v4|m[10]~9_combout\ & ( !\u3|u3|u1|u3|u1|sum~combout\ $ (((!\u3|u5|u1|u2|u2|co~combout\ & ((!\u3|u3|u1|u3|u0|sum~combout\) # (!\v3|m[11]~10_combout\))) # 
-- (\u3|u5|u1|u2|u2|co~combout\ & (!\u3|u3|u1|u3|u0|sum~combout\ & !\v3|m[11]~10_combout\)))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\v4|m[10]~9_combout\ & ( !\u3|u3|u1|u3|u1|sum~combout\ $ (((!\u3|u5|u1|u2|u2|co~combout\) # (!\u3|u3|u1|u3|u0|sum~combout\))) ) 
-- ) ) # ( !\v3|m[12]~11_combout\ & ( !\v4|m[10]~9_combout\ & ( !\u3|u3|u1|u3|u1|sum~combout\ $ (((!\u3|u5|u1|u2|u2|co~combout\) # (!\u3|u3|u1|u3|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u2|u2|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u3|u3|u1|u3|u1|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u5|u1|u3|u0|sum~combout\);

-- Location: LABCELL_X61_Y3_N0
\u3|u5|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u2|u3|sum~combout\ = ( \u3|u5|u1|u2|u2|co~combout\ & ( !\u3|u3|u1|u3|u0|sum~combout\ $ (((\v4|m[10]~9_combout\ & \v3|m[11]~10_combout\))) ) ) # ( !\u3|u5|u1|u2|u2|co~combout\ & ( !\u3|u3|u1|u3|u0|sum~combout\ $ (((!\v4|m[10]~9_combout\) # 
-- (!\v3|m[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[10]~9_combout\,
	datab => \u3|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u5|u1|u2|u2|ALT_INV_co~combout\,
	combout => \u3|u5|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X61_Y3_N12
\u3|u7|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u3|sum~combout\ = ( \u3|u5|u1|u2|u3|sum~combout\ & ( \v4|m[11]~10_combout\ & ( !\u3|u5|u1|u3|u0|sum~combout\ $ (!\v3|m[11]~10_combout\ $ (((\v3|m[10]~9_combout\) # (\u3|u7|u1|u2|u1|co~combout\)))) ) ) ) # ( !\u3|u5|u1|u2|u3|sum~combout\ & ( 
-- \v4|m[11]~10_combout\ & ( !\u3|u5|u1|u3|u0|sum~combout\ $ (!\v3|m[11]~10_combout\ $ (((\u3|u7|u1|u2|u1|co~combout\ & \v3|m[10]~9_combout\)))) ) ) ) # ( \u3|u5|u1|u2|u3|sum~combout\ & ( !\v4|m[11]~10_combout\ & ( !\u3|u5|u1|u3|u0|sum~combout\ $ 
-- (!\u3|u7|u1|u2|u1|co~combout\) ) ) ) # ( !\u3|u5|u1|u2|u3|sum~combout\ & ( !\v4|m[11]~10_combout\ & ( \u3|u5|u1|u3|u0|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011001100110011001011010011010010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u0|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u2|u1|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \v3|ALT_INV_m[10]~9_combout\,
	datae => \u3|u5|u1|u2|u3|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[11]~10_combout\,
	combout => \u3|u7|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X62_Y3_N24
\u6|u1|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u1|co~combout\ = ( \u3|u7|u1|u2|u1|sum~combout\ & ( \u3|u7|u1|u2|u2|sum~0_combout\ & ( (!\u3|u7|u1|u2|u1|co~combout\ & (((\u6|u1|u0|u3|co~combout\) # (\u4|u7|u1|u1|u2|sum~combout\)) # (\u4|u7|u1|u1|u1|sum~combout\))) # 
-- (\u3|u7|u1|u2|u1|co~combout\ & (\u4|u7|u1|u1|u2|sum~combout\ & ((\u6|u1|u0|u3|co~combout\) # (\u4|u7|u1|u1|u1|sum~combout\)))) ) ) ) # ( !\u3|u7|u1|u2|u1|sum~combout\ & ( \u3|u7|u1|u2|u2|sum~0_combout\ & ( (!\u3|u7|u1|u2|u1|co~combout\ & 
-- (((\u4|u7|u1|u1|u1|sum~combout\ & \u6|u1|u0|u3|co~combout\)) # (\u4|u7|u1|u1|u2|sum~combout\))) # (\u3|u7|u1|u2|u1|co~combout\ & (\u4|u7|u1|u1|u1|sum~combout\ & (\u4|u7|u1|u1|u2|sum~combout\ & \u6|u1|u0|u3|co~combout\))) ) ) ) # ( 
-- \u3|u7|u1|u2|u1|sum~combout\ & ( !\u3|u7|u1|u2|u2|sum~0_combout\ & ( (!\u3|u7|u1|u2|u1|co~combout\ & (\u4|u7|u1|u1|u2|sum~combout\ & ((\u6|u1|u0|u3|co~combout\) # (\u4|u7|u1|u1|u1|sum~combout\)))) # (\u3|u7|u1|u2|u1|co~combout\ & 
-- (((\u6|u1|u0|u3|co~combout\) # (\u4|u7|u1|u1|u2|sum~combout\)) # (\u4|u7|u1|u1|u1|sum~combout\))) ) ) ) # ( !\u3|u7|u1|u2|u1|sum~combout\ & ( !\u3|u7|u1|u2|u2|sum~0_combout\ & ( (!\u3|u7|u1|u2|u1|co~combout\ & (\u4|u7|u1|u1|u1|sum~combout\ & 
-- (\u4|u7|u1|u1|u2|sum~combout\ & \u6|u1|u0|u3|co~combout\))) # (\u3|u7|u1|u2|u1|co~combout\ & (((\u4|u7|u1|u1|u1|sum~combout\ & \u6|u1|u0|u3|co~combout\)) # (\u4|u7|u1|u1|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000101110011111100001100010011010100110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u4|u7|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \u6|u1|u0|u3|ALT_INV_co~combout\,
	datae => \u3|u7|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u3|u7|u1|u2|u2|ALT_INV_sum~0_combout\,
	combout => \u6|u1|u1|u1|co~combout\);

-- Location: LABCELL_X63_Y6_N30
\u4|u5|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u1|u3|co~combout\ = ( \v3|m[7]~6_combout\ & ( \u4|u3|u1|u1|u3|sum~combout\ & ( (!\u4|u5|u1|u1|u1|co~combout\ & (\v4|m[14]~13_combout\ & ((\v3|m[6]~5_combout\) # (\u4|u3|u1|u2|u0|sum~combout\)))) # (\u4|u5|u1|u1|u1|co~combout\ & 
-- (((\v4|m[14]~13_combout\)) # (\u4|u3|u1|u2|u0|sum~combout\))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( \u4|u3|u1|u1|u3|sum~combout\ & ( (\u4|u3|u1|u2|u0|sum~combout\ & (((\v3|m[6]~5_combout\ & \v4|m[14]~13_combout\)) # (\u4|u5|u1|u1|u1|co~combout\))) ) ) ) # ( 
-- \v3|m[7]~6_combout\ & ( !\u4|u3|u1|u1|u3|sum~combout\ & ( (\v4|m[14]~13_combout\ & (((\u4|u5|u1|u1|u1|co~combout\ & \v3|m[6]~5_combout\)) # (\u4|u3|u1|u2|u0|sum~combout\))) ) ) ) # ( !\v3|m[7]~6_combout\ & ( !\u4|u3|u1|u1|u3|sum~combout\ & ( 
-- (\u4|u5|u1|u1|u1|co~combout\ & (\u4|u3|u1|u2|u0|sum~combout\ & (\v3|m[6]~5_combout\ & \v4|m[14]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000011011100010001000100110001000101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u2|u0|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	datae => \v3|ALT_INV_m[7]~6_combout\,
	dataf => \u4|u3|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u1|u3|co~combout\);

-- Location: LABCELL_X62_Y6_N36
\u4|u2|p[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|p\(9) = ( \v3|m[9]~8_combout\ & ( \v4|m[13]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u2|p\(9));

-- Location: LABCELL_X62_Y6_N24
\u4|u3|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u1|u3|co~combout\ = ( \u4|u3|u1|u1|u2|sum~0_combout\ & ( \u4|u1|p\(8) & ( (!\u4|u3|u1|u1|u1|co~combout\ & (!\u4|u3|u1|u1|u2|co~0_combout\ & !\u4|u2|p\(7))) ) ) ) # ( !\u4|u3|u1|u1|u2|sum~0_combout\ & ( \u4|u1|p\(8) & ( 
-- (!\u4|u3|u1|u1|u2|co~0_combout\ & !\u4|u2|p\(7)) ) ) ) # ( \u4|u3|u1|u1|u2|sum~0_combout\ & ( !\u4|u1|p\(8) & ( (!\u4|u2|p\(7)) # ((!\u4|u3|u1|u1|u1|co~combout\ & !\u4|u3|u1|u1|u2|co~0_combout\)) ) ) ) # ( !\u4|u3|u1|u1|u2|sum~0_combout\ & ( !\u4|u1|p\(8) 
-- & ( (!\u4|u3|u1|u1|u2|co~0_combout\) # (!\u4|u2|p\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111110001111100011000000110000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u1|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u1|u2|ALT_INV_co~0_combout\,
	datac => \u4|u2|ALT_INV_p\(7),
	datae => \u4|u3|u1|u1|u2|ALT_INV_sum~0_combout\,
	dataf => \u4|u1|ALT_INV_p\(8),
	combout => \u4|u3|u1|u1|u3|co~combout\);

-- Location: LABCELL_X62_Y6_N3
\u4|u1|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|p\(10) = ( \v4|m[12]~11_combout\ & ( \v3|m[10]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m[12]~11_combout\,
	combout => \u4|u1|p\(10));

-- Location: LABCELL_X63_Y6_N9
\u4|u3|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u1|sum~combout\ = ( \u4|u1|p\(10) & ( !\u4|u2|p\(9) $ (((!\u4|u2|p\(8) & (!\u4|u3|u1|u1|u3|co~combout\ & \u4|u1|p\(9))) # (\u4|u2|p\(8) & ((!\u4|u3|u1|u1|u3|co~combout\) # (\u4|u1|p\(9)))))) ) ) # ( !\u4|u1|p\(10) & ( !\u4|u2|p\(9) $ 
-- (((!\u4|u2|p\(8) & ((!\u4|u1|p\(9)) # (\u4|u3|u1|u1|u3|co~combout\))) # (\u4|u2|p\(8) & (\u4|u3|u1|u1|u3|co~combout\ & !\u4|u1|p\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010110100110011001011010011010011010010110011001101001011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|ALT_INV_p\(9),
	datab => \u4|u2|ALT_INV_p\(8),
	datac => \u4|u3|u1|u1|u3|ALT_INV_co~combout\,
	datad => \u4|u1|ALT_INV_p\(9),
	dataf => \u4|u1|ALT_INV_p\(10),
	combout => \u4|u3|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X63_Y6_N39
\u4|u5|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u0|sum~combout\ = ( \u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u5|u1|u1|u3|co~combout\ $ (((\v4|m[14]~13_combout\ & \v3|m[8]~7_combout\))) ) ) # ( !\u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u5|u1|u1|u3|co~combout\ $ (((!\v4|m[14]~13_combout\) # 
-- (!\v3|m[8]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010101001101010011010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u1|u3|ALT_INV_co~combout\,
	datab => \v4|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	dataf => \u4|u3|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X63_Y6_N54
\u4|u7|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u2|co~combout\ = ( \u4|u5|u1|u1|u2|sum~combout\ & ( \u4|u7|u1|u1|u0|co~combout\ & ( ((\v4|m~14_combout\ & \v3|m[6]~5_combout\)) # (\u4|u5|u1|u1|u3|sum~combout\) ) ) ) # ( !\u4|u5|u1|u1|u2|sum~combout\ & ( \u4|u7|u1|u1|u0|co~combout\ & ( 
-- (\v4|m~14_combout\ & ((!\v3|m[5]~4_combout\ & (\v3|m[6]~5_combout\ & \u4|u5|u1|u1|u3|sum~combout\)) # (\v3|m[5]~4_combout\ & ((\u4|u5|u1|u1|u3|sum~combout\) # (\v3|m[6]~5_combout\))))) ) ) ) # ( \u4|u5|u1|u1|u2|sum~combout\ & ( 
-- !\u4|u7|u1|u1|u0|co~combout\ & ( (\v4|m~14_combout\ & ((!\v3|m[5]~4_combout\ & (\v3|m[6]~5_combout\ & \u4|u5|u1|u1|u3|sum~combout\)) # (\v3|m[5]~4_combout\ & ((\u4|u5|u1|u1|u3|sum~combout\) # (\v3|m[6]~5_combout\))))) ) ) ) # ( 
-- !\u4|u5|u1|u1|u2|sum~combout\ & ( !\u4|u7|u1|u1|u0|co~combout\ & ( (\v4|m~14_combout\ & (\v3|m[6]~5_combout\ & \u4|u5|u1|u1|u3|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000010001010100000001000101010000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m~14_combout\,
	datab => \v3|ALT_INV_m[5]~4_combout\,
	datac => \v3|ALT_INV_m[6]~5_combout\,
	datad => \u4|u5|u1|u1|u3|ALT_INV_sum~combout\,
	datae => \u4|u5|u1|u1|u2|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u1|u0|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u1|u2|co~combout\);

-- Location: LABCELL_X63_Y3_N30
\u4|u7|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u1|u3|sum~combout\ = ( \u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u0|sum~combout\ $ (((\v4|m~14_combout\ & \v3|m[7]~6_combout\))) ) ) # ( !\u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u0|sum~combout\ $ (((!\v4|m~14_combout\) # 
-- (!\v3|m[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datad => \u4|u5|u1|u2|u0|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u1|u3|sum~combout\);

-- Location: MLABCELL_X59_Y3_N3
\u6|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u2|sum~combout\ = ( \u4|u7|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u2|u3|sum~combout\ $ (\u6|u1|u1|u1|co~combout\) ) ) # ( !\u4|u7|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u2|u3|sum~combout\ $ (!\u6|u1|u1|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u6|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X63_Y5_N36
\u2|u6|p[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u6|p\(15) = ( \v4|m[7]~5_combout\ & ( \v3|m~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v3|ALT_INV_m~14_combout\,
	dataf => \v4|ALT_INV_m[7]~5_combout\,
	combout => \u2|u6|p\(15));

-- Location: LABCELL_X63_Y5_N48
\u2|u7|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u7|u1|u3|u3|sum~combout\ = ( \u2|u5|u1|u3|u3|sum~0_combout\ & ( !\u2|u6|p\(15) $ (((!\u2|u7|u1|u3|u1|co~combout\ & (!\u2|u5|u1|u3|u2|co~combout\ & !\u2|u6|p\(14))) # (\u2|u7|u1|u3|u1|co~combout\ & (\u2|u5|u1|u3|u2|co~combout\ & \u2|u6|p\(14))))) ) ) # 
-- ( !\u2|u5|u1|u3|u3|sum~0_combout\ & ( !\u2|u6|p\(15) $ (((!\u2|u7|u1|u3|u1|co~combout\ & ((!\u2|u5|u1|u3|u2|co~combout\) # (!\u2|u6|p\(14)))) # (\u2|u7|u1|u3|u1|co~combout\ & (!\u2|u5|u1|u3|u2|co~combout\ & !\u2|u6|p\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100001111000111000010111100011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u2|u5|u1|u3|u2|ALT_INV_co~combout\,
	datac => \u2|u6|ALT_INV_p\(15),
	datad => \u2|u6|ALT_INV_p\(14),
	dataf => \u2|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	combout => \u2|u7|u1|u3|u3|sum~combout\);

-- Location: LABCELL_X61_Y2_N54
\u7|u1|u1|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u2|sum~0_combout\ = ( \u2|u7|u1|u3|u1|sum~combout\ & ( !\u6|u1|u1|u2|sum~combout\ $ (!\u2|u7|u1|u3|u3|sum~combout\ $ (((\u5|u1|u0|u3|co~combout\ & \u2|u7|u1|u3|u2|sum~combout\)))) ) ) # ( !\u2|u7|u1|u3|u1|sum~combout\ & ( 
-- !\u6|u1|u1|u2|sum~combout\ $ (!\u2|u7|u1|u3|u3|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110110110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u0|u3|ALT_INV_co~combout\,
	datab => \u6|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \u2|u7|u1|u3|u2|ALT_INV_sum~combout\,
	datad => \u2|u7|u1|u3|u3|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \u7|u1|u1|u2|sum~0_combout\);

-- Location: LABCELL_X61_Y2_N0
\u7|u1|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u2|sum~combout\ = ( \u5|u1|u1|u0|co~0_combout\ & ( !\u7|u1|u1|u2|sum~0_combout\ $ (((!\u6|u1|u1|u1|sum~combout\ & ((!\u7|u1|u1|u0|co~combout\) # (\u2|u7|u1|u3|u2|sum~combout\))) # (\u6|u1|u1|u1|sum~combout\ & (!\u7|u1|u1|u0|co~combout\ & 
-- \u2|u7|u1|u3|u2|sum~combout\)))) ) ) # ( !\u5|u1|u1|u0|co~0_combout\ & ( !\u7|u1|u1|u2|sum~0_combout\ $ (((!\u6|u1|u1|u1|sum~combout\ & ((!\u7|u1|u1|u0|co~combout\) # (!\u2|u7|u1|u3|u2|sum~combout\))) # (\u6|u1|u1|u1|sum~combout\ & 
-- (!\u7|u1|u1|u0|co~combout\ & !\u2|u7|u1|u3|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100001111000000111100111100000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u7|u1|u1|u0|ALT_INV_co~combout\,
	datac => \u7|u1|u1|u2|ALT_INV_sum~0_combout\,
	datad => \u2|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u5|u1|u1|u0|ALT_INV_co~0_combout\,
	combout => \u7|u1|u1|u2|sum~combout\);

-- Location: LABCELL_X61_Y2_N42
\v6|m[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[6]~6_combout\ = !\u7|u1|u1|u2|sum~combout\ $ (((!\comb~0_combout\) # ((!\u7|u1|u1|u1|sum~combout\ & \v5|u1|u1|u0|co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000011110001111000001111000111100000111100011110000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \u7|u1|u1|u2|ALT_INV_sum~combout\,
	datad => \v5|u1|u1|u0|ALT_INV_co~0_combout\,
	combout => \v6|m[6]~6_combout\);

-- Location: LABCELL_X63_Y5_N24
\u5|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u1|u3|sum~combout\ = ( \u5|u1|u1|u0|co~0_combout\ & ( \u2|u5|u1|u3|u2|co~combout\ & ( ((!\u2|u7|u1|u3|u1|co~combout\ & (\u2|u6|p\(14) & \u2|u5|u1|u3|u3|sum~0_combout\)) # (\u2|u7|u1|u3|u1|co~combout\ & ((\u2|u5|u1|u3|u3|sum~0_combout\) # 
-- (\u2|u6|p\(14))))) # (\u2|u6|p\(15)) ) ) ) # ( !\u5|u1|u1|u0|co~0_combout\ & ( \u2|u5|u1|u3|u2|co~combout\ & ( (!\u2|u7|u1|u3|u1|co~combout\ & (\u2|u6|p\(15) & ((\u2|u5|u1|u3|u3|sum~0_combout\) # (\u2|u6|p\(14))))) # (\u2|u7|u1|u3|u1|co~combout\ & 
-- (((\u2|u6|p\(14) & \u2|u5|u1|u3|u3|sum~0_combout\)) # (\u2|u6|p\(15)))) ) ) ) # ( \u5|u1|u1|u0|co~0_combout\ & ( !\u2|u5|u1|u3|u2|co~combout\ & ( (!\u2|u7|u1|u3|u1|co~combout\ & (\u2|u6|p\(15) & ((\u2|u5|u1|u3|u3|sum~0_combout\) # (\u2|u6|p\(14))))) # 
-- (\u2|u7|u1|u3|u1|co~combout\ & (((\u2|u6|p\(14) & \u2|u5|u1|u3|u3|sum~0_combout\)) # (\u2|u6|p\(15)))) ) ) ) # ( !\u5|u1|u1|u0|co~0_combout\ & ( !\u2|u5|u1|u3|u2|co~combout\ & ( (\u2|u6|p\(15) & ((!\u2|u7|u1|u3|u1|co~combout\ & (\u2|u6|p\(14) & 
-- \u2|u5|u1|u3|u3|sum~0_combout\)) # (\u2|u7|u1|u3|u1|co~combout\ & ((\u2|u5|u1|u3|u3|sum~0_combout\) # (\u2|u6|p\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000001110001111100000111000111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u7|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u2|u6|ALT_INV_p\(14),
	datac => \u2|u6|ALT_INV_p\(15),
	datad => \u2|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datae => \u5|u1|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u2|u5|u1|u3|u2|ALT_INV_co~combout\,
	combout => \u5|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X61_Y2_N24
\v5|u1|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u1|u2|co~0_combout\ = ( \u2|u7|u1|u3|u2|sum~combout\ & ( \u6|u1|u1|u1|sum~combout\ & ( (\v5|u1|u1|u0|co~0_combout\ & (\u7|u1|u1|u2|sum~0_combout\ & (!\u7|u1|u1|u0|co~combout\ $ (\u5|u1|u1|u0|co~0_combout\)))) ) ) ) # ( !\u2|u7|u1|u3|u2|sum~combout\ 
-- & ( \u6|u1|u1|u1|sum~combout\ & ( (\v5|u1|u1|u0|co~0_combout\ & (\u7|u1|u1|u2|sum~0_combout\ & (!\u7|u1|u1|u0|co~combout\ $ (!\u5|u1|u1|u0|co~0_combout\)))) ) ) ) # ( \u2|u7|u1|u3|u2|sum~combout\ & ( !\u6|u1|u1|u1|sum~combout\ & ( 
-- (\v5|u1|u1|u0|co~0_combout\ & ((!\u7|u1|u1|u0|co~combout\ & (!\u7|u1|u1|u2|sum~0_combout\ & \u5|u1|u1|u0|co~0_combout\)) # (\u7|u1|u1|u0|co~combout\ & (\u7|u1|u1|u2|sum~0_combout\ & !\u5|u1|u1|u0|co~0_combout\)))) ) ) ) # ( !\u2|u7|u1|u3|u2|sum~combout\ & 
-- ( !\u6|u1|u1|u1|sum~combout\ & ( (\v5|u1|u1|u0|co~0_combout\ & ((!\u7|u1|u1|u0|co~combout\ & (!\u7|u1|u1|u2|sum~0_combout\ & !\u5|u1|u1|u0|co~0_combout\)) # (\u7|u1|u1|u0|co~combout\ & (\u7|u1|u1|u2|sum~0_combout\ & \u5|u1|u1|u0|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000001000000010100000000000001000001000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u1|u1|u0|ALT_INV_co~0_combout\,
	datab => \u7|u1|u1|u0|ALT_INV_co~combout\,
	datac => \u7|u1|u1|u2|ALT_INV_sum~0_combout\,
	datad => \u5|u1|u1|u0|ALT_INV_co~0_combout\,
	datae => \u2|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u6|u1|u1|u1|ALT_INV_sum~combout\,
	combout => \v5|u1|u1|u2|co~0_combout\);

-- Location: LABCELL_X61_Y2_N18
\u7|u1|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|u2|co~combout\ = ( \u2|u7|u1|u3|u3|sum~combout\ & ( \u2|u7|u1|u3|u2|sum~combout\ & ( (!\u6|u1|u1|u1|sum~combout\ & (!\u5|u1|u1|u0|co~0_combout\ & ((\u7|u1|u1|u0|co~combout\) # (\u6|u1|u1|u2|sum~combout\)))) # (\u6|u1|u1|u1|sum~combout\ & 
-- ((!\u5|u1|u1|u0|co~0_combout\) # ((\u6|u1|u1|u2|sum~combout\ & \u7|u1|u1|u0|co~combout\)))) ) ) ) # ( !\u2|u7|u1|u3|u3|sum~combout\ & ( \u2|u7|u1|u3|u2|sum~combout\ & ( (!\u6|u1|u1|u1|sum~combout\ & (\u6|u1|u1|u2|sum~combout\ & ((\u7|u1|u1|u0|co~combout\) 
-- # (\u5|u1|u1|u0|co~0_combout\)))) # (\u6|u1|u1|u1|sum~combout\ & (((\u5|u1|u1|u0|co~0_combout\ & \u7|u1|u1|u0|co~combout\)) # (\u6|u1|u1|u2|sum~combout\))) ) ) ) # ( \u2|u7|u1|u3|u3|sum~combout\ & ( !\u2|u7|u1|u3|u2|sum~combout\ & ( 
-- ((!\u6|u1|u1|u1|sum~combout\ & (\u5|u1|u1|u0|co~0_combout\ & \u7|u1|u1|u0|co~combout\)) # (\u6|u1|u1|u1|sum~combout\ & ((\u7|u1|u1|u0|co~combout\) # (\u5|u1|u1|u0|co~0_combout\)))) # (\u6|u1|u1|u2|sum~combout\) ) ) ) # ( !\u2|u7|u1|u3|u3|sum~combout\ & ( 
-- !\u2|u7|u1|u3|u2|sum~combout\ & ( (\u6|u1|u1|u2|sum~combout\ & ((!\u6|u1|u1|u1|sum~combout\ & (\u5|u1|u1|u0|co~0_combout\ & \u7|u1|u1|u0|co~combout\)) # (\u6|u1|u1|u1|sum~combout\ & ((\u7|u1|u1|u0|co~combout\) # (\u5|u1|u1|u0|co~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111100010011001101110111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u1|u1|ALT_INV_sum~combout\,
	datab => \u6|u1|u1|u2|ALT_INV_sum~combout\,
	datac => \u5|u1|u1|u0|ALT_INV_co~0_combout\,
	datad => \u7|u1|u1|u0|ALT_INV_co~combout\,
	datae => \u2|u7|u1|u3|u3|ALT_INV_sum~combout\,
	dataf => \u2|u7|u1|u3|u2|ALT_INV_sum~combout\,
	combout => \u7|u1|u1|u2|co~combout\);

-- Location: LABCELL_X61_Y3_N48
\u3|u7|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u2|u3|co~combout\ = ( \u3|u5|u1|u2|u3|sum~combout\ & ( \v4|m[11]~10_combout\ & ( (!\u3|u5|u1|u3|u0|sum~combout\ & (\v3|m[11]~10_combout\ & ((\v3|m[10]~9_combout\) # (\u3|u7|u1|u2|u1|co~combout\)))) # (\u3|u5|u1|u3|u0|sum~combout\ & 
-- (((\v3|m[10]~9_combout\) # (\v3|m[11]~10_combout\)) # (\u3|u7|u1|u2|u1|co~combout\))) ) ) ) # ( !\u3|u5|u1|u2|u3|sum~combout\ & ( \v4|m[11]~10_combout\ & ( (!\u3|u5|u1|u3|u0|sum~combout\ & (\u3|u7|u1|u2|u1|co~combout\ & (\v3|m[11]~10_combout\ & 
-- \v3|m[10]~9_combout\))) # (\u3|u5|u1|u3|u0|sum~combout\ & (((\u3|u7|u1|u2|u1|co~combout\ & \v3|m[10]~9_combout\)) # (\v3|m[11]~10_combout\))) ) ) ) # ( \u3|u5|u1|u2|u3|sum~combout\ & ( !\v4|m[11]~10_combout\ & ( (\u3|u5|u1|u3|u0|sum~combout\ & 
-- \u3|u7|u1|u2|u1|co~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u0|ALT_INV_sum~combout\,
	datab => \u3|u7|u1|u2|u1|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \v3|ALT_INV_m[10]~9_combout\,
	datae => \u3|u5|u1|u2|u3|ALT_INV_sum~combout\,
	dataf => \v4|ALT_INV_m[11]~10_combout\,
	combout => \u3|u7|u1|u2|u3|co~combout\);

-- Location: MLABCELL_X59_Y6_N33
\u4|u3|u1|u2|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u2|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( !\v3|m[10]~9_combout\ $ (((!\v3|m[11]~10_combout\) # (!\v4|m[12]~11_combout\))) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v3|m[11]~10_combout\ & \v4|m[12]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[11]~10_combout\,
	datac => \v3|ALT_INV_m[10]~9_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u2|u2|sum~0_combout\);

-- Location: LABCELL_X63_Y6_N12
\u4|u3|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u2|sum~combout\ = ( \u4|u1|p\(9) & ( \u4|u2|p\(8) & ( !\u4|u3|u1|u2|u2|sum~0_combout\ $ (((!\u4|u1|p\(10) & !\u4|u2|p\(9)))) ) ) ) # ( !\u4|u1|p\(9) & ( \u4|u2|p\(8) & ( !\u4|u3|u1|u2|u2|sum~0_combout\ $ (((!\u4|u1|p\(10) & ((!\u4|u2|p\(9)) # 
-- (\u4|u3|u1|u1|u3|co~combout\))) # (\u4|u1|p\(10) & (!\u4|u2|p\(9) & \u4|u3|u1|u1|u3|co~combout\)))) ) ) ) # ( \u4|u1|p\(9) & ( !\u4|u2|p\(8) & ( !\u4|u3|u1|u2|u2|sum~0_combout\ $ (((!\u4|u1|p\(10) & ((!\u4|u2|p\(9)) # (\u4|u3|u1|u1|u3|co~combout\))) # 
-- (\u4|u1|p\(10) & (!\u4|u2|p\(9) & \u4|u3|u1|u1|u3|co~combout\)))) ) ) ) # ( !\u4|u1|p\(9) & ( !\u4|u2|p\(8) & ( !\u4|u3|u1|u2|u2|sum~0_combout\ $ (((!\u4|u1|p\(10)) # (!\u4|u2|p\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110011010100101011001101010010101100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u2|u2|ALT_INV_sum~0_combout\,
	datab => \u4|u1|ALT_INV_p\(10),
	datac => \u4|u2|ALT_INV_p\(9),
	datad => \u4|u3|u1|u1|u3|ALT_INV_co~combout\,
	datae => \u4|u1|ALT_INV_p\(9),
	dataf => \u4|u2|ALT_INV_p\(8),
	combout => \u4|u3|u1|u2|u2|sum~combout\);

-- Location: LABCELL_X63_Y6_N48
\u4|u5|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u1|sum~combout\ = ( \v3|m[9]~8_combout\ & ( \u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u3|u1|u2|u2|sum~combout\ $ (((!\u4|u5|u1|u1|u3|co~combout\ & ((!\v4|m[14]~13_combout\) # (\v3|m[8]~7_combout\))) # (\u4|u5|u1|u1|u3|co~combout\ & 
-- ((\v4|m[14]~13_combout\))))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( \u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u3|u1|u2|u2|sum~combout\ $ (((!\u4|u5|u1|u1|u3|co~combout\ & ((!\v3|m[8]~7_combout\) # (!\v4|m[14]~13_combout\))))) ) ) ) # ( \v3|m[9]~8_combout\ & ( 
-- !\u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u3|u1|u2|u2|sum~combout\ $ (((!\v4|m[14]~13_combout\) # ((\v3|m[8]~7_combout\ & \u4|u5|u1|u1|u3|co~combout\)))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( !\u4|u3|u1|u2|u1|sum~combout\ & ( !\u4|u3|u1|u2|u2|sum~combout\ $ 
-- (((!\v3|m[8]~7_combout\) # ((!\u4|u5|u1|u1|u3|co~combout\) # (!\v4|m[14]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110110001100111100100100111100011011000011110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \u4|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datac => \u4|u5|u1|u1|u3|ALT_INV_co~combout\,
	datad => \v4|ALT_INV_m[14]~13_combout\,
	datae => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \u4|u3|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u2|u1|sum~combout\);

-- Location: LABCELL_X63_Y3_N54
\u4|u7|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u0|sum~combout\ = ( \u4|u5|u1|u2|u0|sum~combout\ & ( \u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u1|sum~combout\ $ (((\v3|m[8]~7_combout\ & \v4|m~14_combout\))) ) ) ) # ( !\u4|u5|u1|u2|u0|sum~combout\ & ( \u4|u7|u1|u1|u2|co~combout\ & ( 
-- !\u4|u5|u1|u2|u1|sum~combout\ $ (((!\v4|m~14_combout\) # (!\v3|m[8]~7_combout\ $ (\v3|m[7]~6_combout\)))) ) ) ) # ( \u4|u5|u1|u2|u0|sum~combout\ & ( !\u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u1|sum~combout\ $ (((!\v4|m~14_combout\) # 
-- (!\v3|m[8]~7_combout\ $ (\v3|m[7]~6_combout\)))) ) ) ) # ( !\u4|u5|u1|u2|u0|sum~combout\ & ( !\u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u1|sum~combout\ $ (((!\v3|m[8]~7_combout\) # (!\v4|m~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100101110110100010010111011011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[8]~7_combout\,
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \v3|ALT_INV_m[7]~6_combout\,
	datad => \u4|u5|u1|u2|u1|ALT_INV_sum~combout\,
	datae => \u4|u5|u1|u2|u0|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u1|u2|ALT_INV_co~combout\,
	combout => \u4|u7|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X60_Y3_N0
\u3|u5|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u0|co~combout\ = ( \v3|m[12]~11_combout\ & ( \v4|m[10]~9_combout\ & ( ((!\u3|u3|u1|u3|u0|sum~combout\ & (\u3|u5|u1|u2|u2|co~combout\ & \v3|m[11]~10_combout\)) # (\u3|u3|u1|u3|u0|sum~combout\ & ((\v3|m[11]~10_combout\) # 
-- (\u3|u5|u1|u2|u2|co~combout\)))) # (\u3|u3|u1|u3|u1|sum~combout\) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v4|m[10]~9_combout\ & ( (\u3|u3|u1|u3|u1|sum~combout\ & ((!\u3|u3|u1|u3|u0|sum~combout\ & (\u3|u5|u1|u2|u2|co~combout\ & \v3|m[11]~10_combout\)) # 
-- (\u3|u3|u1|u3|u0|sum~combout\ & ((\v3|m[11]~10_combout\) # (\u3|u5|u1|u2|u2|co~combout\))))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\v4|m[10]~9_combout\ & ( (\u3|u3|u1|u3|u0|sum~combout\ & (\u3|u5|u1|u2|u2|co~combout\ & \u3|u3|u1|u3|u1|sum~combout\)) ) ) ) 
-- # ( !\v3|m[12]~11_combout\ & ( !\v4|m[10]~9_combout\ & ( (\u3|u3|u1|u3|u0|sum~combout\ & (\u3|u5|u1|u2|u2|co~combout\ & \u3|u3|u1|u3|u1|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000001110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|u1|u3|u0|ALT_INV_sum~combout\,
	datab => \u3|u5|u1|u2|u2|ALT_INV_co~combout\,
	datac => \u3|u3|u1|u3|u1|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[11]~10_combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u5|u1|u3|u0|co~combout\);

-- Location: LABCELL_X60_Y3_N9
\u3|u4|p[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(13) = ( \v4|m[10]~9_combout\ & ( \v3|m[13]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(13));

-- Location: LABCELL_X61_Y3_N54
\u3|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u1|co~combout\ = ( \v3|m[13]~12_combout\ & ( \u3|u3|u1|u2|u3|co~combout\ & ( (\v4|m[8]~6_combout\ & (\v4|m[9]~8_combout\ & ((\v3|m[14]~13_combout\) # (\v3|m[12]~11_combout\)))) ) ) ) # ( \v3|m[13]~12_combout\ & ( !\u3|u3|u1|u2|u3|co~combout\ 
-- & ( (!\v4|m[8]~6_combout\ & (\v3|m[12]~11_combout\ & ((\v4|m[9]~8_combout\)))) # (\v4|m[8]~6_combout\ & (((\v4|m[9]~8_combout\) # (\v3|m[14]~13_combout\)))) ) ) ) # ( !\v3|m[13]~12_combout\ & ( !\u3|u3|u1|u2|u3|co~combout\ & ( (\v4|m[8]~6_combout\ & 
-- (\v3|m[12]~11_combout\ & (\v3|m[14]~13_combout\ & \v4|m[9]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000001010111011100000000000000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[8]~6_combout\,
	datab => \v3|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	datae => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \u3|u3|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X60_Y3_N6
\u3|u3|u1|u3|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u2|sum~0_combout\ = (!\v3|m~14_combout\ & (((\v4|m[9]~8_combout\ & \v3|m[14]~13_combout\)))) # (\v3|m~14_combout\ & (((\v4|m[9]~8_combout\ & \v3|m[14]~13_combout\)) # (\v4|m[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m~14_combout\,
	datab => \v4|ALT_INV_m[8]~6_combout\,
	datac => \v4|ALT_INV_m[9]~8_combout\,
	datad => \v3|ALT_INV_m[14]~13_combout\,
	combout => \u3|u3|u1|u3|u2|sum~0_combout\);

-- Location: LABCELL_X60_Y3_N12
\u3|u5|u1|u3|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u1|sum~0_combout\ = ( \u3|u3|u1|u3|u2|sum~0_combout\ & ( !\u3|u4|p\(13) $ (\u3|u3|u1|u3|u1|co~combout\) ) ) # ( !\u3|u3|u1|u3|u2|sum~0_combout\ & ( !\u3|u4|p\(13) $ (!\u3|u3|u1|u3|u1|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u4|ALT_INV_p\(13),
	datad => \u3|u3|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	combout => \u3|u5|u1|u3|u1|sum~0_combout\);

-- Location: LABCELL_X60_Y3_N21
\u3|u7|u1|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u0|sum~0_combout\ = ( \v4|m[11]~10_combout\ & ( !\u3|u5|u1|u3|u0|co~combout\ $ (!\u3|u5|u1|u3|u1|sum~0_combout\ $ (\v3|m[12]~11_combout\)) ) ) # ( !\v4|m[11]~10_combout\ & ( !\u3|u5|u1|u3|u0|co~combout\ $ (!\u3|u5|u1|u3|u1|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u0|ALT_INV_co~combout\,
	datab => \u3|u5|u1|u3|u1|ALT_INV_sum~0_combout\,
	datac => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[11]~10_combout\,
	combout => \u3|u7|u1|u3|u0|sum~0_combout\);

-- Location: MLABCELL_X59_Y3_N6
\u6|u1|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u3|sum~combout\ = ( \u6|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u2|u3|co~combout\ $ (!\u4|u7|u1|u2|u0|sum~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\)) ) ) ) # ( !\u6|u1|u1|u1|co~combout\ & ( 
-- \u4|u7|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u2|u3|sum~combout\ $ (!\u4|u7|u1|u2|u0|sum~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\))) ) ) ) # ( \u6|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u1|u3|sum~combout\ & ( 
-- !\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u2|u3|sum~combout\ $ (!\u4|u7|u1|u2|u0|sum~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\))) ) ) ) # ( !\u6|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u1|u3|sum~combout\ & ( !\u3|u7|u1|u2|u3|co~combout\ $ 
-- (!\u4|u7|u1|u2|u0|sum~combout\ $ (\u3|u7|u1|u3|u0|sum~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001101001100101101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u7|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u3|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datad => \u3|u7|u1|u3|u0|ALT_INV_sum~0_combout\,
	datae => \u6|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u1|u3|sum~combout\);

-- Location: LABCELL_X60_Y2_N54
\v6|m[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[7]~16_combout\ = ( \u6|u1|u1|u3|sum~combout\ & ( \b[15]~input_o\ & ( !\u5|u1|u1|u3|sum~combout\ $ (!\u7|u1|u1|u2|co~combout\ $ (((\a[15]~input_o\) # (\v5|u1|u1|u2|co~0_combout\)))) ) ) ) # ( !\u6|u1|u1|u3|sum~combout\ & ( \b[15]~input_o\ & ( 
-- !\u5|u1|u1|u3|sum~combout\ $ (!\u7|u1|u1|u2|co~combout\ $ (((!\v5|u1|u1|u2|co~0_combout\ & !\a[15]~input_o\)))) ) ) ) # ( \u6|u1|u1|u3|sum~combout\ & ( !\b[15]~input_o\ & ( !\u5|u1|u1|u3|sum~combout\ $ (!\u7|u1|u1|u2|co~combout\ $ (((!\a[15]~input_o\) # 
-- (\v5|u1|u1|u2|co~0_combout\)))) ) ) ) # ( !\u6|u1|u1|u3|sum~combout\ & ( !\b[15]~input_o\ & ( !\u5|u1|u1|u3|sum~combout\ $ (!\u7|u1|u1|u2|co~combout\ $ (((!\v5|u1|u1|u2|co~0_combout\ & \a[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110101001100101100110010101011010100110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u1|u3|ALT_INV_sum~combout\,
	datab => \v5|u1|u1|u2|ALT_INV_co~0_combout\,
	datac => \ALT_INV_a[15]~input_o\,
	datad => \u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \u6|u1|u1|u3|ALT_INV_sum~combout\,
	dataf => \ALT_INV_b[15]~input_o\,
	combout => \v6|m[7]~16_combout\);

-- Location: MLABCELL_X59_Y3_N42
\u6|u1|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|u3|co~combout\ = ( \u6|u1|u1|u1|co~combout\ & ( \u4|u7|u1|u1|u3|sum~combout\ & ( (!\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\)) # (\u4|u7|u1|u2|u0|sum~combout\) ) ) ) # ( !\u6|u1|u1|u1|co~combout\ & ( 
-- \u4|u7|u1|u1|u3|sum~combout\ & ( (!\u3|u7|u1|u2|u3|sum~combout\ & (\u4|u7|u1|u2|u0|sum~combout\ & (!\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\)))) # (\u3|u7|u1|u2|u3|sum~combout\ & ((!\u3|u7|u1|u2|u3|co~combout\ $ 
-- (!\u3|u7|u1|u3|u0|sum~0_combout\)) # (\u4|u7|u1|u2|u0|sum~combout\))) ) ) ) # ( \u6|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u1|u3|sum~combout\ & ( (!\u3|u7|u1|u2|u3|sum~combout\ & (\u4|u7|u1|u2|u0|sum~combout\ & (!\u3|u7|u1|u2|u3|co~combout\ $ 
-- (!\u3|u7|u1|u3|u0|sum~0_combout\)))) # (\u3|u7|u1|u2|u3|sum~combout\ & ((!\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\)) # (\u4|u7|u1|u2|u0|sum~combout\))) ) ) ) # ( !\u6|u1|u1|u1|co~combout\ & ( !\u4|u7|u1|u1|u3|sum~combout\ & ( 
-- (\u4|u7|u1|u2|u0|sum~combout\ & (!\u3|u7|u1|u2|u3|co~combout\ $ (!\u3|u7|u1|u3|u0|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000101110010101100010111001010110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u7|u1|u2|u3|ALT_INV_co~combout\,
	datab => \u3|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u2|u0|ALT_INV_sum~combout\,
	datad => \u3|u7|u1|u3|u0|ALT_INV_sum~0_combout\,
	datae => \u6|u1|u1|u1|ALT_INV_co~combout\,
	dataf => \u4|u7|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u1|u3|co~combout\);

-- Location: LABCELL_X60_Y3_N27
\u3|u4|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|p\(14) = ( \v4|m[10]~9_combout\ & ( \v3|m[14]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[14]~13_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u4|p\(14));

-- Location: LABCELL_X60_Y3_N24
\u3|u2|p[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|p[15]~0_combout\ = (\v3|m~14_combout\ & \v4|m[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m~14_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	combout => \u3|u2|p[15]~0_combout\);

-- Location: LABCELL_X60_Y3_N30
\u3|u5|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u2|sum~combout\ = ( \u3|u3|u1|u3|u1|co~combout\ & ( \u3|u2|p[15]~0_combout\ & ( !\u3|u4|p\(14) $ (((!\u3|u3|u1|u3|u2|sum~0_combout\ & ((\u3|u4|p\(13)) # (\u3|u5|u1|u3|u0|co~combout\))) # (\u3|u3|u1|u3|u2|sum~0_combout\ & 
-- (\u3|u5|u1|u3|u0|co~combout\ & \u3|u4|p\(13))))) ) ) ) # ( !\u3|u3|u1|u3|u1|co~combout\ & ( \u3|u2|p[15]~0_combout\ & ( !\u3|u4|p\(14) $ (((!\u3|u3|u1|u3|u2|sum~0_combout\ & (\u3|u5|u1|u3|u0|co~combout\ & \u3|u4|p\(13))) # (\u3|u3|u1|u3|u2|sum~0_combout\ 
-- & ((\u3|u4|p\(13)) # (\u3|u5|u1|u3|u0|co~combout\))))) ) ) ) # ( \u3|u3|u1|u3|u1|co~combout\ & ( !\u3|u2|p[15]~0_combout\ & ( !\u3|u4|p\(14) $ (((!\u3|u3|u1|u3|u2|sum~0_combout\ & (!\u3|u5|u1|u3|u0|co~combout\ & !\u3|u4|p\(13))) # 
-- (\u3|u3|u1|u3|u2|sum~0_combout\ & (\u3|u5|u1|u3|u0|co~combout\ & \u3|u4|p\(13))))) ) ) ) # ( !\u3|u3|u1|u3|u1|co~combout\ & ( !\u3|u2|p[15]~0_combout\ & ( !\u3|u4|p\(14) $ (((!\u3|u3|u1|u3|u2|sum~0_combout\ & ((!\u3|u5|u1|u3|u0|co~combout\) # 
-- (!\u3|u4|p\(13)))) # (\u3|u3|u1|u3|u2|sum~0_combout\ & (!\u3|u5|u1|u3|u0|co~combout\ & !\u3|u4|p\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010011010101010100110101001100101011010011001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_p\(14),
	datab => \u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	datac => \u3|u5|u1|u3|u0|ALT_INV_co~combout\,
	datad => \u3|u4|ALT_INV_p\(13),
	datae => \u3|u3|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \u3|u2|ALT_INV_p[15]~0_combout\,
	combout => \u3|u5|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X60_Y3_N18
\u3|u5|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u1|sum~combout\ = !\u3|u5|u1|u3|u0|co~combout\ $ (!\u3|u5|u1|u3|u1|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u0|ALT_INV_co~combout\,
	datab => \u3|u5|u1|u3|u1|ALT_INV_sum~0_combout\,
	combout => \u3|u5|u1|u3|u1|sum~combout\);

-- Location: MLABCELL_X59_Y3_N18
\u3|u7|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u1|sum~combout\ = ( \v3|m[12]~11_combout\ & ( \u3|u7|u1|u2|u3|co~combout\ & ( !\u3|u5|u1|u3|u2|sum~combout\ $ (((!\v4|m[11]~10_combout\ & ((!\u3|u5|u1|u3|u1|sum~combout\))) # (\v4|m[11]~10_combout\ & (\v3|m[13]~12_combout\)))) ) ) ) # ( 
-- !\v3|m[12]~11_combout\ & ( \u3|u7|u1|u2|u3|co~combout\ & ( !\u3|u5|u1|u3|u2|sum~combout\ $ (!\u3|u5|u1|u3|u1|sum~combout\ $ (((\v3|m[13]~12_combout\ & \v4|m[11]~10_combout\)))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\u3|u7|u1|u2|u3|co~combout\ & ( 
-- !\u3|u5|u1|u3|u2|sum~combout\ $ (((!\v4|m[11]~10_combout\) # (!\v3|m[13]~12_combout\ $ (\u3|u5|u1|u3|u1|sum~combout\)))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( !\u3|u7|u1|u2|u3|co~combout\ & ( !\u3|u5|u1|u3|u2|sum~combout\ $ (((!\v3|m[13]~12_combout\) # 
-- (!\v4|m[11]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110100101011010011010010101101010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[13]~12_combout\,
	datac => \u3|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \u3|u7|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X63_Y6_N24
\u4|u7|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u0|co~combout\ = ( \u4|u7|u1|u1|u2|co~combout\ & ( \u4|u5|u1|u2|u1|sum~combout\ & ( ((\v4|m~14_combout\ & ((\v3|m[8]~7_combout\) # (\v3|m[7]~6_combout\)))) # (\u4|u5|u1|u2|u0|sum~combout\) ) ) ) # ( !\u4|u7|u1|u1|u2|co~combout\ & ( 
-- \u4|u5|u1|u2|u1|sum~combout\ & ( (\v4|m~14_combout\ & (((\v3|m[7]~6_combout\ & \u4|u5|u1|u2|u0|sum~combout\)) # (\v3|m[8]~7_combout\))) ) ) ) # ( \u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u1|sum~combout\ & ( (\v3|m[8]~7_combout\ & (\v4|m~14_combout\ & 
-- ((\u4|u5|u1|u2|u0|sum~combout\) # (\v3|m[7]~6_combout\)))) ) ) ) # ( !\u4|u7|u1|u1|u2|co~combout\ & ( !\u4|u5|u1|u2|u1|sum~combout\ & ( (\v3|m[7]~6_combout\ & (\v3|m[8]~7_combout\ & (\v4|m~14_combout\ & \u4|u5|u1|u2|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000001100000011000001110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[7]~6_combout\,
	datab => \v3|ALT_INV_m[8]~7_combout\,
	datac => \v4|ALT_INV_m~14_combout\,
	datad => \u4|u5|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \u4|u7|u1|u1|u2|ALT_INV_co~combout\,
	dataf => \u4|u5|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u2|u0|co~combout\);

-- Location: LABCELL_X60_Y6_N0
\u4|u5|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u1|co~combout\ = ( \v3|m[9]~8_combout\ & ( \u4|u5|u1|u1|u3|co~combout\ & ( (!\v4|m[14]~13_combout\ & (\u4|u3|u1|u2|u2|sum~combout\ & ((\u4|u3|u1|u2|u1|sum~combout\)))) # (\v4|m[14]~13_combout\ & (((\u4|u3|u1|u2|u1|sum~combout\) # 
-- (\v3|m[8]~7_combout\)) # (\u4|u3|u1|u2|u2|sum~combout\))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( \u4|u5|u1|u1|u3|co~combout\ & ( (\u4|u3|u1|u2|u2|sum~combout\ & (((\v4|m[14]~13_combout\ & \v3|m[8]~7_combout\)) # (\u4|u3|u1|u2|u1|sum~combout\))) ) ) ) # ( 
-- \v3|m[9]~8_combout\ & ( !\u4|u5|u1|u1|u3|co~combout\ & ( (\v4|m[14]~13_combout\ & (((\v3|m[8]~7_combout\ & \u4|u3|u1|u2|u1|sum~combout\)) # (\u4|u3|u1|u2|u2|sum~combout\))) ) ) ) # ( !\v3|m[9]~8_combout\ & ( !\u4|u5|u1|u1|u3|co~combout\ & ( 
-- (\v4|m[14]~13_combout\ & (\u4|u3|u1|u2|u2|sum~combout\ & (\v3|m[8]~7_combout\ & \u4|u3|u1|u2|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000100010001010100000001001100110001010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datab => \u4|u3|u1|u2|u2|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[8]~7_combout\,
	datad => \u4|u3|u1|u2|u1|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[9]~8_combout\,
	dataf => \u4|u5|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u4|u5|u1|u2|u1|co~combout\);

-- Location: LABCELL_X60_Y6_N45
\u4|u4|p[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(10) = (\v4|m[14]~13_combout\ & \v3|m[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datad => \v3|ALT_INV_m[10]~9_combout\,
	combout => \u4|u4|p\(10));

-- Location: LABCELL_X63_Y6_N6
\u4|u3|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u1|co~combout\ = ( \u4|u3|u1|u1|u3|co~combout\ & ( (!\u4|u2|p\(9) & (\u4|u2|p\(8) & (\u4|u1|p\(10) & \u4|u1|p\(9)))) # (\u4|u2|p\(9) & (((\u4|u2|p\(8) & \u4|u1|p\(9))) # (\u4|u1|p\(10)))) ) ) # ( !\u4|u3|u1|u1|u3|co~combout\ & ( 
-- (!\u4|u2|p\(9) & (\u4|u1|p\(10) & ((\u4|u1|p\(9)) # (\u4|u2|p\(8))))) # (\u4|u2|p\(9) & (((\u4|u1|p\(9)) # (\u4|u1|p\(10))) # (\u4|u2|p\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101011111000101110101111100000101000101110000010100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u2|ALT_INV_p\(9),
	datab => \u4|u2|ALT_INV_p\(8),
	datac => \u4|u1|ALT_INV_p\(10),
	datad => \u4|u1|ALT_INV_p\(9),
	dataf => \u4|u3|u1|u1|u3|ALT_INV_co~combout\,
	combout => \u4|u3|u1|u2|u1|co~combout\);

-- Location: LABCELL_X60_Y6_N36
\u4|u3|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u3|sum~combout\ = ( \v4|m[13]~12_combout\ & ( \u4|u3|u1|u2|u1|co~combout\ & ( (!\v4|m[12]~11_combout\ & ((!\v3|m[10]~9_combout\ $ (!\v3|m[11]~10_combout\)))) # (\v4|m[12]~11_combout\ & (!\v3|m[12]~11_combout\ $ (((!\v3|m[10]~9_combout\) # 
-- (\v3|m[11]~10_combout\))))) ) ) ) # ( !\v4|m[13]~12_combout\ & ( \u4|u3|u1|u2|u1|co~combout\ & ( (\v4|m[12]~11_combout\ & (!\v3|m[12]~11_combout\ $ (!\v3|m[11]~10_combout\))) ) ) ) # ( \v4|m[13]~12_combout\ & ( !\u4|u3|u1|u2|u1|co~combout\ & ( 
-- (!\v4|m[12]~11_combout\ & (((\v3|m[11]~10_combout\)))) # (\v4|m[12]~11_combout\ & (!\v3|m[12]~11_combout\ $ (((!\v3|m[11]~10_combout\) # (\v3|m[10]~9_combout\))))) ) ) ) # ( !\v4|m[13]~12_combout\ & ( !\u4|u3|u1|u2|u1|co~combout\ & ( 
-- (\v3|m[12]~11_combout\ & \v4|m[12]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011110110100010001001000100001111011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[10]~9_combout\,
	datad => \v3|ALT_INV_m[11]~10_combout\,
	datae => \v4|ALT_INV_m[13]~12_combout\,
	dataf => \u4|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|u3|u1|u2|u3|sum~combout\);

-- Location: LABCELL_X60_Y6_N51
\u4|u5|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u2|sum~combout\ = !\u4|u5|u1|u2|u1|co~combout\ $ (!\u4|u4|p\(10) $ (\u4|u3|u1|u2|u3|sum~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u2|u1|ALT_INV_co~combout\,
	datac => \u4|u4|ALT_INV_p\(10),
	datad => \u4|u3|u1|u2|u3|ALT_INV_sum~combout\,
	combout => \u4|u5|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X59_Y3_N24
\u4|u7|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u1|sum~combout\ = ( \v3|m[9]~8_combout\ & ( !\v4|m~14_combout\ $ (!\u4|u7|u1|u2|u0|co~combout\ $ (\u4|u5|u1|u2|u2|sum~combout\)) ) ) # ( !\v3|m[9]~8_combout\ & ( !\u4|u7|u1|u2|u0|co~combout\ $ (!\u4|u5|u1|u2|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m~14_combout\,
	datac => \u4|u7|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u4|u5|u1|u2|u2|ALT_INV_sum~combout\,
	dataf => \v3|ALT_INV_m[9]~8_combout\,
	combout => \u4|u7|u1|u2|u1|sum~combout\);

-- Location: MLABCELL_X59_Y3_N30
\u6|u1|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u0|sum~combout\ = ( \u4|u7|u1|u2|u1|sum~combout\ & ( !\u6|u1|u1|u3|co~combout\ $ (\u3|u7|u1|u3|u1|sum~combout\) ) ) # ( !\u4|u7|u1|u2|u1|sum~combout\ & ( !\u6|u1|u1|u3|co~combout\ $ (!\u3|u7|u1|u3|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u6|u1|u1|u3|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u2|u1|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u0|sum~combout\);

-- Location: LABCELL_X60_Y2_N48
\v6|m[8]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[8]~15_combout\ = ( \comb~0_combout\ & ( \v5|u1|u1|u2|co~0_combout\ & ( !\u6|u1|u2|u0|sum~combout\ $ (((!\u5|u1|u1|u3|sum~combout\ & (!\u6|u1|u1|u3|sum~combout\ & !\u7|u1|u1|u2|co~combout\)) # (\u5|u1|u1|u3|sum~combout\ & (\u6|u1|u1|u3|sum~combout\ & 
-- \u7|u1|u1|u2|co~combout\)))) ) ) ) # ( !\comb~0_combout\ & ( \v5|u1|u1|u2|co~0_combout\ & ( !\u6|u1|u2|u0|sum~combout\ $ (((!\u5|u1|u1|u3|sum~combout\ & ((!\u6|u1|u1|u3|sum~combout\) # (!\u7|u1|u1|u2|co~combout\))) # (\u5|u1|u1|u3|sum~combout\ & 
-- (!\u6|u1|u1|u3|sum~combout\ & !\u7|u1|u1|u2|co~combout\)))) ) ) ) # ( \comb~0_combout\ & ( !\v5|u1|u1|u2|co~0_combout\ & ( !\u6|u1|u2|u0|sum~combout\ $ (((!\u5|u1|u1|u3|sum~combout\ & (\u6|u1|u1|u3|sum~combout\ & \u7|u1|u1|u2|co~combout\)) # 
-- (\u5|u1|u1|u3|sum~combout\ & ((\u7|u1|u1|u2|co~combout\) # (\u6|u1|u1|u3|sum~combout\))))) ) ) ) # ( !\comb~0_combout\ & ( !\v5|u1|u1|u2|co~0_combout\ & ( !\u6|u1|u2|u0|sum~combout\ $ (((!\u5|u1|u1|u3|sum~combout\ & ((!\u6|u1|u1|u3|sum~combout\) # 
-- (!\u7|u1|u1|u2|co~combout\))) # (\u5|u1|u1|u3|sum~combout\ & (!\u6|u1|u1|u3|sum~combout\ & !\u7|u1|u1|u2|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000111000011000011100011110011110000111100011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u1|u3|ALT_INV_sum~combout\,
	datab => \u6|u1|u1|u3|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|u0|ALT_INV_sum~combout\,
	datad => \u7|u1|u1|u2|ALT_INV_co~combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \v5|u1|u1|u2|ALT_INV_co~0_combout\,
	combout => \v6|m[8]~15_combout\);

-- Location: LABCELL_X60_Y2_N39
\v5|u1|u2|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u2|u0|co~0_combout\ = ( \u6|u1|u1|u3|sum~combout\ & ( (\u6|u1|u2|u0|sum~combout\ & (\v5|u1|u1|u2|co~0_combout\ & (!\u7|u1|u1|u2|co~combout\ $ (!\u5|u1|u1|u3|sum~combout\)))) ) ) # ( !\u6|u1|u1|u3|sum~combout\ & ( (\v5|u1|u1|u2|co~0_combout\ & 
-- ((!\u6|u1|u2|u0|sum~combout\ & (!\u7|u1|u1|u2|co~combout\ & !\u5|u1|u1|u3|sum~combout\)) # (\u6|u1|u2|u0|sum~combout\ & (\u7|u1|u1|u2|co~combout\ & \u5|u1|u1|u3|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001000000010000010000001000000000010000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u2|u0|ALT_INV_sum~combout\,
	datab => \u7|u1|u1|u2|ALT_INV_co~combout\,
	datac => \v5|u1|u1|u2|ALT_INV_co~0_combout\,
	datad => \u5|u1|u1|u3|ALT_INV_sum~combout\,
	datae => \u6|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \v5|u1|u2|u0|co~0_combout\);

-- Location: LABCELL_X60_Y2_N30
\u7|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u2|u0|co~combout\ = ( \u6|u1|u1|u3|sum~combout\ & ( (\u6|u1|u2|u0|sum~combout\ & ((\u7|u1|u1|u2|co~combout\) # (\u5|u1|u1|u3|sum~combout\))) ) ) # ( !\u6|u1|u1|u3|sum~combout\ & ( (\u5|u1|u1|u3|sum~combout\ & (\u7|u1|u1|u2|co~combout\ & 
-- \u6|u1|u2|u0|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001110000011100000001000000010000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u1|u3|ALT_INV_sum~combout\,
	datab => \u7|u1|u1|u2|ALT_INV_co~combout\,
	datac => \u6|u1|u2|u0|ALT_INV_sum~combout\,
	datae => \u6|u1|u1|u3|ALT_INV_sum~combout\,
	combout => \u7|u1|u2|u0|co~combout\);

-- Location: MLABCELL_X59_Y3_N27
\u6|u1|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u0|co~combout\ = ( \u3|u7|u1|u3|u1|sum~combout\ & ( (\u6|u1|u1|u3|co~combout\) # (\u4|u7|u1|u2|u1|sum~combout\) ) ) # ( !\u3|u7|u1|u3|u1|sum~combout\ & ( (\u4|u7|u1|u2|u1|sum~combout\ & \u6|u1|u1|u3|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \u6|u1|u1|u3|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u0|co~combout\);

-- Location: LABCELL_X60_Y3_N36
\u3|u5|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u1|co~combout\ = ( \u3|u4|p\(13) & ( (!\u3|u3|u1|u3|u2|sum~0_combout\ $ (!\u3|u3|u1|u3|u1|co~combout\)) # (\u3|u5|u1|u3|u0|co~combout\) ) ) # ( !\u3|u4|p\(13) & ( (\u3|u5|u1|u3|u0|co~combout\ & (!\u3|u3|u1|u3|u2|sum~0_combout\ $ 
-- (!\u3|u3|u1|u3|u1|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	datac => \u3|u5|u1|u3|u0|ALT_INV_co~combout\,
	datad => \u3|u3|u1|u3|u1|ALT_INV_co~combout\,
	dataf => \u3|u4|ALT_INV_p\(13),
	combout => \u3|u5|u1|u3|u1|co~combout\);

-- Location: LABCELL_X60_Y3_N39
\u3|u3|u1|u3|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|u1|u3|u2|co~0_combout\ = (\u3|u3|u1|u3|u2|sum~0_combout\ & \u3|u3|u1|u3|u1|co~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	datac => \u3|u3|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u3|u1|u3|u2|co~0_combout\);

-- Location: LABCELL_X60_Y3_N15
\u3|u5|u1|u3|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u3|sum~0_combout\ = ( \v4|m[10]~9_combout\ & ( (\v3|m~14_combout\ & ((!\u3|u3|u1|u3|u2|co~0_combout\) # (!\v4|m[9]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m~14_combout\,
	datac => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datad => \v4|ALT_INV_m[9]~8_combout\,
	dataf => \v4|ALT_INV_m[10]~9_combout\,
	combout => \u3|u5|u1|u3|u3|sum~0_combout\);

-- Location: LABCELL_X60_Y3_N45
\u3|u5|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u3|sum~combout\ = ( \u3|u2|p[15]~0_combout\ & ( !\u3|u5|u1|u3|u3|sum~0_combout\ $ (((!\u3|u5|u1|u3|u1|co~combout\ & !\u3|u4|p\(14)))) ) ) # ( !\u3|u2|p[15]~0_combout\ & ( !\u3|u5|u1|u3|u3|sum~0_combout\ $ (((!\u3|u5|u1|u3|u1|co~combout\ & 
-- ((!\u3|u3|u1|u3|u2|co~0_combout\) # (!\u3|u4|p\(14)))) # (\u3|u5|u1|u3|u1|co~combout\ & (!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u4|p\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u3|u4|ALT_INV_p\(14),
	dataf => \u3|u2|ALT_INV_p[15]~0_combout\,
	combout => \u3|u5|u1|u3|u3|sum~combout\);

-- Location: MLABCELL_X59_Y3_N33
\u3|u7|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u0|co~combout\ = ( \u3|u7|u1|u2|u3|co~combout\ & ( ((\v3|m[12]~11_combout\ & \v4|m[11]~10_combout\)) # (\u3|u5|u1|u3|u1|sum~combout\) ) ) # ( !\u3|u7|u1|u2|u3|co~combout\ & ( (\u3|u5|u1|u3|u1|sum~combout\ & (\v3|m[12]~11_combout\ & 
-- \v4|m[11]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[12]~11_combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	dataf => \u3|u7|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u3|u0|co~combout\);

-- Location: MLABCELL_X59_Y3_N36
\u3|u7|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u2|sum~combout\ = ( \v3|m[14]~13_combout\ & ( \u3|u7|u1|u3|u0|co~combout\ & ( !\u3|u5|u1|u3|u3|sum~combout\ $ (((!\u3|u5|u1|u3|u2|sum~combout\ & ((!\v4|m[11]~10_combout\) # (\v3|m[13]~12_combout\))) # (\u3|u5|u1|u3|u2|sum~combout\ & 
-- ((\v4|m[11]~10_combout\))))) ) ) ) # ( !\v3|m[14]~13_combout\ & ( \u3|u7|u1|u3|u0|co~combout\ & ( !\u3|u5|u1|u3|u3|sum~combout\ $ (((!\u3|u5|u1|u3|u2|sum~combout\ & ((!\v3|m[13]~12_combout\) # (!\v4|m[11]~10_combout\))))) ) ) ) # ( \v3|m[14]~13_combout\ & 
-- ( !\u3|u7|u1|u3|u0|co~combout\ & ( !\u3|u5|u1|u3|u3|sum~combout\ $ (((!\v4|m[11]~10_combout\) # ((\u3|u5|u1|u3|u2|sum~combout\ & \v3|m[13]~12_combout\)))) ) ) ) # ( !\v3|m[14]~13_combout\ & ( !\u3|u7|u1|u3|u0|co~combout\ & ( !\u3|u5|u1|u3|u3|sum~combout\ 
-- $ (((!\u3|u5|u1|u3|u2|sum~combout\) # ((!\v3|m[13]~12_combout\) # (!\v4|m[11]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000011111110000101011010011110000101101010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[13]~12_combout\,
	datac => \u3|u5|u1|u3|u3|ALT_INV_sum~combout\,
	datad => \v4|ALT_INV_m[11]~10_combout\,
	datae => \v3|ALT_INV_m[14]~13_combout\,
	dataf => \u3|u7|u1|u3|u0|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X60_Y6_N42
\u4|u4|p[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(11) = (\v4|m[14]~13_combout\ & \v3|m[11]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	combout => \u4|u4|p\(11));

-- Location: LABCELL_X60_Y6_N54
\u4|u3|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u2|u3|co~combout\ = ( \v4|m[13]~12_combout\ & ( \u4|u3|u1|u2|u1|co~combout\ & ( (!\v4|m[12]~11_combout\ & (((\v3|m[10]~9_combout\ & \v3|m[11]~10_combout\)))) # (\v4|m[12]~11_combout\ & (((\v3|m[12]~11_combout\ & \v3|m[10]~9_combout\)) # 
-- (\v3|m[11]~10_combout\))) ) ) ) # ( !\v4|m[13]~12_combout\ & ( \u4|u3|u1|u2|u1|co~combout\ & ( (\v3|m[12]~11_combout\ & (\v4|m[12]~11_combout\ & \v3|m[11]~10_combout\)) ) ) ) # ( \v4|m[13]~12_combout\ & ( !\u4|u3|u1|u2|u1|co~combout\ & ( 
-- (\v4|m[12]~11_combout\ & (\v3|m[11]~10_combout\ & ((\v3|m[10]~9_combout\) # (\v3|m[12]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001100000000000100010000000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[12]~11_combout\,
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[10]~9_combout\,
	datad => \v3|ALT_INV_m[11]~10_combout\,
	datae => \v4|ALT_INV_m[13]~12_combout\,
	dataf => \u4|u3|u1|u2|u1|ALT_INV_co~combout\,
	combout => \u4|u3|u1|u2|u3|co~combout\);

-- Location: LABCELL_X60_Y6_N48
\u4|u3|u1|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u0|sum~0_combout\ = ( \v3|m[12]~11_combout\ & ( !\v4|m[13]~12_combout\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[13]~12_combout\))) ) ) # ( !\v3|m[12]~11_combout\ & ( (\v4|m[12]~11_combout\ & \v3|m[13]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \v4|ALT_INV_m[13]~12_combout\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u4|u3|u1|u3|u0|sum~0_combout\);

-- Location: LABCELL_X60_Y6_N30
\u4|u5|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u3|sum~combout\ = ( \u4|u3|u1|u2|u3|co~combout\ & ( \u4|u3|u1|u3|u0|sum~0_combout\ & ( !\u4|u4|p\(11) $ (((!\u4|u3|u1|u2|u3|sum~combout\ & ((!\u4|u4|p\(10)) # (!\u4|u5|u1|u2|u1|co~combout\))) # (\u4|u3|u1|u2|u3|sum~combout\ & (!\u4|u4|p\(10) 
-- & !\u4|u5|u1|u2|u1|co~combout\)))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( \u4|u3|u1|u3|u0|sum~0_combout\ & ( !\u4|u4|p\(11) $ (((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & \u4|u5|u1|u2|u1|co~combout\)) # (\u4|u3|u1|u2|u3|sum~combout\ & 
-- ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10)))))) ) ) ) # ( \u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u0|sum~0_combout\ & ( !\u4|u4|p\(11) $ (((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & \u4|u5|u1|u2|u1|co~combout\)) # 
-- (\u4|u3|u1|u2|u3|sum~combout\ & ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10)))))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u0|sum~0_combout\ & ( !\u4|u4|p\(11) $ (((!\u4|u3|u1|u2|u3|sum~combout\ & ((!\u4|u4|p\(10)) # 
-- (!\u4|u5|u1|u2|u1|co~combout\))) # (\u4|u3|u1|u2|u3|sum~combout\ & (!\u4|u4|p\(10) & !\u4|u5|u1|u2|u1|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011111101000000101110001011111101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \u4|u4|ALT_INV_p\(10),
	datac => \u4|u5|u1|u2|u1|ALT_INV_co~combout\,
	datad => \u4|u4|ALT_INV_p\(11),
	datae => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u4|u3|u1|u3|u0|ALT_INV_sum~0_combout\,
	combout => \u4|u5|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X59_Y3_N12
\u4|u7|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u2|sum~combout\ = ( \v3|m[10]~9_combout\ & ( \v4|m~14_combout\ & ( !\u4|u5|u1|u2|u3|sum~combout\ $ (((!\u4|u7|u1|u2|u0|co~combout\ & (\v3|m[9]~8_combout\ & \u4|u5|u1|u2|u2|sum~combout\)) # (\u4|u7|u1|u2|u0|co~combout\ & 
-- ((\u4|u5|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\))))) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \v4|m~14_combout\ & ( !\u4|u5|u1|u2|u3|sum~combout\ $ (((!\u4|u7|u1|u2|u0|co~combout\ & ((!\v3|m[9]~8_combout\) # (!\u4|u5|u1|u2|u2|sum~combout\))) # 
-- (\u4|u7|u1|u2|u0|co~combout\ & (!\v3|m[9]~8_combout\ & !\u4|u5|u1|u2|u2|sum~combout\)))) ) ) ) # ( \v3|m[10]~9_combout\ & ( !\v4|m~14_combout\ & ( !\u4|u5|u1|u2|u3|sum~combout\ $ (((!\u4|u7|u1|u2|u0|co~combout\) # (!\u4|u5|u1|u2|u2|sum~combout\))) ) ) ) # 
-- ( !\v3|m[10]~9_combout\ & ( !\v4|m~14_combout\ & ( !\u4|u5|u1|u2|u3|sum~combout\ $ (((!\u4|u7|u1|u2|u0|co~combout\) # (!\u4|u5|u1|u2|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101000011110011110001110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u2|u0|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \u4|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u4|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X59_Y3_N48
\u6|u1|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u1|sum~combout\ = ( \u4|u7|u1|u2|u2|sum~combout\ & ( !\u6|u1|u2|u0|co~combout\ $ (\u3|u7|u1|u3|u2|sum~combout\) ) ) # ( !\u4|u7|u1|u2|u2|sum~combout\ & ( !\u6|u1|u2|u0|co~combout\ $ (!\u3|u7|u1|u3|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u3|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u1|sum~combout\);

-- Location: MLABCELL_X59_Y2_N0
\v6|m[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[9]~7_combout\ = ( \u6|u1|u2|u1|sum~combout\ & ( \comb~0_combout\ & ( !\v5|u1|u2|u0|co~0_combout\ $ (!\u7|u1|u2|u0|co~combout\) ) ) ) # ( !\u6|u1|u2|u1|sum~combout\ & ( \comb~0_combout\ & ( !\v5|u1|u2|u0|co~0_combout\ $ (\u7|u1|u2|u0|co~combout\) ) ) 
-- ) # ( \u6|u1|u2|u1|sum~combout\ & ( !\comb~0_combout\ & ( !\u7|u1|u2|u0|co~combout\ ) ) ) # ( !\u6|u1|u2|u1|sum~combout\ & ( !\comb~0_combout\ & ( \u7|u1|u2|u0|co~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000010100101101001010101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u1|u2|u0|ALT_INV_co~0_combout\,
	datac => \u7|u1|u2|u0|ALT_INV_co~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v6|m[9]~7_combout\);

-- Location: MLABCELL_X59_Y3_N54
\u4|u7|u1|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u2|co~combout\ = ( \v3|m[10]~9_combout\ & ( \v4|m~14_combout\ & ( ((!\u4|u7|u1|u2|u0|co~combout\ & (\v3|m[9]~8_combout\ & \u4|u5|u1|u2|u2|sum~combout\)) # (\u4|u7|u1|u2|u0|co~combout\ & ((\u4|u5|u1|u2|u2|sum~combout\) # 
-- (\v3|m[9]~8_combout\)))) # (\u4|u5|u1|u2|u3|sum~combout\) ) ) ) # ( !\v3|m[10]~9_combout\ & ( \v4|m~14_combout\ & ( (\u4|u5|u1|u2|u3|sum~combout\ & ((!\u4|u7|u1|u2|u0|co~combout\ & (\v3|m[9]~8_combout\ & \u4|u5|u1|u2|u2|sum~combout\)) # 
-- (\u4|u7|u1|u2|u0|co~combout\ & ((\u4|u5|u1|u2|u2|sum~combout\) # (\v3|m[9]~8_combout\))))) ) ) ) # ( \v3|m[10]~9_combout\ & ( !\v4|m~14_combout\ & ( (\u4|u7|u1|u2|u0|co~combout\ & (\u4|u5|u1|u2|u3|sum~combout\ & \u4|u5|u1|u2|u2|sum~combout\)) ) ) ) # ( 
-- !\v3|m[10]~9_combout\ & ( !\v4|m~14_combout\ & ( (\u4|u7|u1|u2|u0|co~combout\ & (\u4|u5|u1|u2|u3|sum~combout\ & \u4|u5|u1|u2|u2|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000001000001110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u2|u0|ALT_INV_co~combout\,
	datab => \v3|ALT_INV_m[9]~8_combout\,
	datac => \u4|u5|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u4|u5|u1|u2|u2|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[10]~9_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u2|u2|co~combout\);

-- Location: LABCELL_X60_Y6_N21
\u4|u4|p[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(12) = ( \v3|m[12]~11_combout\ & ( \v4|m[14]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u4|u4|p\(12));

-- Location: LABCELL_X60_Y6_N12
\u4|u3|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u1|sum~combout\ = ( \u4|u3|u1|u2|u3|co~combout\ & ( \v3|m[12]~11_combout\ & ( (!\v4|m[12]~11_combout\ & (!\v3|m[13]~12_combout\ & (\v4|m[13]~12_combout\))) # (\v4|m[12]~11_combout\ & (!\v3|m[13]~12_combout\ $ (!\v4|m[13]~12_combout\ $ 
-- (\v3|m[14]~13_combout\)))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( \v3|m[12]~11_combout\ & ( (!\v4|m[12]~11_combout\ & (\v3|m[13]~12_combout\ & (\v4|m[13]~12_combout\))) # (\v4|m[12]~11_combout\ & (((\v3|m[14]~13_combout\)))) ) ) ) # ( 
-- \u4|u3|u1|u2|u3|co~combout\ & ( !\v3|m[12]~11_combout\ & ( (!\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & ((\v3|m[14]~13_combout\)))) # (\v3|m[13]~12_combout\ & (!\v4|m[13]~12_combout\ $ (((!\v4|m[12]~11_combout\) # (\v3|m[14]~13_combout\))))) ) ) ) # 
-- ( !\u4|u3|u1|u2|u3|co~combout\ & ( !\v3|m[12]~11_combout\ & ( (!\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & ((\v3|m[14]~13_combout\)))) # (\v3|m[13]~12_combout\ & (!\v4|m[13]~12_combout\ $ (((!\v4|m[12]~11_combout\) # (!\v3|m[14]~13_combout\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000101000010011100000100001101110001101000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[13]~12_combout\,
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v4|ALT_INV_m[13]~12_combout\,
	datad => \v3|ALT_INV_m[14]~13_combout\,
	datae => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u4|u3|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X60_Y6_N6
\u4|u5|u1|u2|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u2|u3|co~combout\ = ( \u4|u3|u1|u2|u3|co~combout\ & ( \u4|u3|u1|u3|u0|sum~0_combout\ & ( (\u4|u4|p\(11) & ((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & \u4|u5|u1|u2|u1|co~combout\)) # (\u4|u3|u1|u2|u3|sum~combout\ & 
-- ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10)))))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( \u4|u3|u1|u3|u0|sum~0_combout\ & ( ((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & \u4|u5|u1|u2|u1|co~combout\)) # (\u4|u3|u1|u2|u3|sum~combout\ & 
-- ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10))))) # (\u4|u4|p\(11)) ) ) ) # ( \u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u0|sum~0_combout\ & ( ((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & \u4|u5|u1|u2|u1|co~combout\)) # 
-- (\u4|u3|u1|u2|u3|sum~combout\ & ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10))))) # (\u4|u4|p\(11)) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u0|sum~0_combout\ & ( (\u4|u4|p\(11) & ((!\u4|u3|u1|u2|u3|sum~combout\ & (\u4|u4|p\(10) & 
-- \u4|u5|u1|u2|u1|co~combout\)) # (\u4|u3|u1|u2|u3|sum~combout\ & ((\u4|u5|u1|u2|u1|co~combout\) # (\u4|u4|p\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100010111111111110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u2|u3|ALT_INV_sum~combout\,
	datab => \u4|u4|ALT_INV_p\(10),
	datac => \u4|u5|u1|u2|u1|ALT_INV_co~combout\,
	datad => \u4|u4|ALT_INV_p\(11),
	datae => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \u4|u3|u1|u3|u0|ALT_INV_sum~0_combout\,
	combout => \u4|u5|u1|u2|u3|co~combout\);

-- Location: MLABCELL_X59_Y6_N6
\u4|u5|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u0|sum~combout\ = ( \u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u4|p\(12) $ (\u4|u3|u1|u3|u1|sum~combout\) ) ) # ( !\u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u4|p\(12) $ (!\u4|u3|u1|u3|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|ALT_INV_p\(12),
	datab => \u4|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u4|u5|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u5|u1|u3|u0|sum~combout\);

-- Location: MLABCELL_X59_Y6_N30
\u4|u7|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u2|u3|sum~combout\ = ( \u4|u5|u1|u3|u0|sum~combout\ & ( !\u4|u7|u1|u2|u2|co~combout\ $ (((\v3|m[11]~10_combout\ & \v4|m~14_combout\))) ) ) # ( !\u4|u5|u1|u3|u0|sum~combout\ & ( !\u4|u7|u1|u2|u2|co~combout\ $ (((!\v3|m[11]~10_combout\) # 
-- (!\v4|m~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011011001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[11]~10_combout\,
	datab => \u4|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \v4|ALT_INV_m~14_combout\,
	dataf => \u4|u5|u1|u3|u0|ALT_INV_sum~combout\,
	combout => \u4|u7|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X59_Y3_N51
\u6|u1|u2|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u1|co~combout\ = ( \u4|u7|u1|u2|u2|sum~combout\ & ( (\u3|u7|u1|u3|u2|sum~combout\) # (\u6|u1|u2|u0|co~combout\) ) ) # ( !\u4|u7|u1|u2|u2|sum~combout\ & ( (\u6|u1|u2|u0|co~combout\ & \u3|u7|u1|u3|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u3|u7|u1|u3|u2|ALT_INV_sum~combout\,
	dataf => \u4|u7|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u1|co~combout\);

-- Location: LABCELL_X60_Y3_N42
\u3|u5|u1|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u1|u3|u2|co~combout\ = ( \u3|u2|p[15]~0_combout\ & ( (!\u3|u5|u1|u3|u1|co~combout\ & !\u3|u4|p\(14)) ) ) # ( !\u3|u2|p[15]~0_combout\ & ( (!\u3|u5|u1|u3|u1|co~combout\ & ((!\u3|u3|u1|u3|u2|co~0_combout\) # (!\u3|u4|p\(14)))) # 
-- (\u3|u5|u1|u3|u1|co~combout\ & (!\u3|u3|u1|u3|u2|co~0_combout\ & !\u3|u4|p\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011101000111010001110100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u3|u3|u1|u3|u2|ALT_INV_co~0_combout\,
	datac => \u3|u4|ALT_INV_p\(14),
	dataf => \u3|u2|ALT_INV_p[15]~0_combout\,
	combout => \u3|u5|u1|u3|u2|co~combout\);

-- Location: MLABCELL_X59_Y3_N0
\u3|u7|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u1|co~combout\ = ( \v4|m[11]~10_combout\ & ( (!\u3|u5|u1|u3|u2|sum~combout\ & (\v3|m[13]~12_combout\ & \u3|u7|u1|u3|u0|co~combout\)) # (\u3|u5|u1|u3|u2|sum~combout\ & ((\u3|u7|u1|u3|u0|co~combout\) # (\v3|m[13]~12_combout\))) ) ) # ( 
-- !\v4|m[11]~10_combout\ & ( (\u3|u5|u1|u3|u2|sum~combout\ & \u3|u7|u1|u3|u0|co~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \v3|ALT_INV_m[13]~12_combout\,
	datac => \u3|u7|u1|u3|u0|ALT_INV_co~combout\,
	dataf => \v4|ALT_INV_m[11]~10_combout\,
	combout => \u3|u7|u1|u3|u1|co~combout\);

-- Location: LABCELL_X60_Y3_N48
\u3|u7|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u3|sum~combout\ = ( \v3|m~14_combout\ & ( \u3|u7|u1|u3|u1|co~combout\ & ( (!\v4|m[11]~10_combout\ & ((!\u3|u5|u1|u3|u2|co~combout\) # ((\u3|u5|u1|u3|u3|sum~0_combout\)))) # (\v4|m[11]~10_combout\ & ((!\u3|u5|u1|u3|u2|co~combout\ & 
-- (\v3|m[14]~13_combout\ & \u3|u5|u1|u3|u3|sum~0_combout\)) # (\u3|u5|u1|u3|u2|co~combout\ & (!\v3|m[14]~13_combout\ & !\u3|u5|u1|u3|u3|sum~0_combout\)))) ) ) ) # ( !\v3|m~14_combout\ & ( \u3|u7|u1|u3|u1|co~combout\ & ( (!\u3|u5|u1|u3|u2|co~combout\ & 
-- ((!\v4|m[11]~10_combout\) # ((!\v3|m[14]~13_combout\) # (!\u3|u5|u1|u3|u3|sum~0_combout\)))) # (\u3|u5|u1|u3|u2|co~combout\ & (((\v4|m[11]~10_combout\ & \v3|m[14]~13_combout\)) # (\u3|u5|u1|u3|u3|sum~0_combout\))) ) ) ) # ( \v3|m~14_combout\ & ( 
-- !\u3|u7|u1|u3|u1|co~combout\ & ( (!\v4|m[11]~10_combout\ & (!\u3|u5|u1|u3|u2|co~combout\ & ((\u3|u5|u1|u3|u3|sum~0_combout\)))) # (\v4|m[11]~10_combout\ & ((!\u3|u5|u1|u3|u2|co~combout\ & (!\v3|m[14]~13_combout\ & !\u3|u5|u1|u3|u3|sum~0_combout\)) # 
-- (\u3|u5|u1|u3|u2|co~combout\ & ((!\v3|m[14]~13_combout\) # (!\u3|u5|u1|u3|u3|sum~0_combout\))))) ) ) ) # ( !\v3|m~14_combout\ & ( !\u3|u7|u1|u3|u1|co~combout\ & ( (!\u3|u5|u1|u3|u2|co~combout\ & (((\v4|m[11]~10_combout\ & \v3|m[14]~13_combout\)) # 
-- (\u3|u5|u1|u3|u3|sum~0_combout\))) # (\u3|u5|u1|u3|u2|co~combout\ & (\v4|m[11]~10_combout\ & (\v3|m[14]~13_combout\ & \u3|u5|u1|u3|u3|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001101010100011001100011001101111110111001100010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \u3|u5|u1|u3|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \u3|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datae => \v3|ALT_INV_m~14_combout\,
	dataf => \u3|u7|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u3|u3|sum~combout\);

-- Location: MLABCELL_X59_Y2_N39
\u6|u1|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u2|sum~combout\ = ( \u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( \u4|u7|u1|u2|u3|sum~combout\ ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u2|u3|sum~combout\ ) ) ) # ( 
-- \u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u2|u3|sum~combout\ ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( \u4|u7|u1|u2|u3|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u3|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u2|sum~combout\);

-- Location: MLABCELL_X59_Y2_N45
\v6|m[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[10]~8_combout\ = ( \u6|u1|u2|u1|sum~combout\ & ( \comb~0_combout\ & ( !\u6|u1|u2|u2|sum~combout\ $ (((\u7|u1|u2|u0|co~combout\ & !\v5|u1|u2|u0|co~0_combout\))) ) ) ) # ( !\u6|u1|u2|u1|sum~combout\ & ( \comb~0_combout\ & ( !\u6|u1|u2|u2|sum~combout\ 
-- $ (((!\u7|u1|u2|u0|co~combout\ & \v5|u1|u2|u0|co~0_combout\))) ) ) ) # ( \u6|u1|u2|u1|sum~combout\ & ( !\comb~0_combout\ & ( !\u7|u1|u2|u0|co~combout\ $ (!\u6|u1|u2|u2|sum~combout\) ) ) ) # ( !\u6|u1|u2|u1|sum~combout\ & ( !\comb~0_combout\ & ( 
-- \u6|u1|u2|u2|sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010110100101101011110000010110101010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u2|u0|ALT_INV_co~combout\,
	datac => \u6|u1|u2|u2|ALT_INV_sum~combout\,
	datad => \v5|u1|u2|u0|ALT_INV_co~0_combout\,
	datae => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v6|m[10]~8_combout\);

-- Location: MLABCELL_X59_Y2_N54
\u7|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u2|u2|co~0_combout\ = ( \u6|u1|u2|u2|sum~combout\ & ( (\u7|u1|u2|u0|co~combout\ & \u6|u1|u2|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u7|u1|u2|u0|ALT_INV_co~combout\,
	datad => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u6|u1|u2|u2|ALT_INV_sum~combout\,
	combout => \u7|u1|u2|u2|co~0_combout\);

-- Location: MLABCELL_X59_Y2_N33
\v5|u1|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u2|u2|co~0_combout\ = ( \v5|u1|u2|u0|co~0_combout\ & ( (!\u6|u1|u2|u1|sum~combout\ & (!\u6|u1|u2|u2|sum~combout\ & !\u7|u1|u2|u0|co~combout\)) # (\u6|u1|u2|u1|sum~combout\ & (\u6|u1|u2|u2|sum~combout\ & \u7|u1|u2|u0|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|u2|ALT_INV_sum~combout\,
	datad => \u7|u1|u2|u0|ALT_INV_co~combout\,
	dataf => \v5|u1|u2|u0|ALT_INV_co~0_combout\,
	combout => \v5|u1|u2|u2|co~0_combout\);

-- Location: LABCELL_X60_Y6_N24
\u4|u3|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u1|co~combout\ = ( \u4|u3|u1|u2|u3|co~combout\ & ( \v3|m[12]~11_combout\ & ( (!\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & (\v4|m[13]~12_combout\ & \v3|m[14]~13_combout\))) # (\v3|m[13]~12_combout\ & (((\v4|m[12]~11_combout\ & 
-- \v3|m[14]~13_combout\)) # (\v4|m[13]~12_combout\))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( \v3|m[12]~11_combout\ & ( (\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & \v4|m[13]~12_combout\)) ) ) ) # ( \u4|u3|u1|u2|u3|co~combout\ & ( 
-- !\v3|m[12]~11_combout\ & ( (\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & ((\v3|m[14]~13_combout\) # (\v4|m[13]~12_combout\)))) ) ) ) # ( !\u4|u3|u1|u2|u3|co~combout\ & ( !\v3|m[12]~11_combout\ & ( (\v3|m[13]~12_combout\ & (\v4|m[12]~11_combout\ & 
-- (\v4|m[13]~12_combout\ & \v3|m[14]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001000100000001000000010000010100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[13]~12_combout\,
	datab => \v4|ALT_INV_m[12]~11_combout\,
	datac => \v4|ALT_INV_m[13]~12_combout\,
	datad => \v3|ALT_INV_m[14]~13_combout\,
	datae => \u4|u3|u1|u2|u3|ALT_INV_co~combout\,
	dataf => \v3|ALT_INV_m[12]~11_combout\,
	combout => \u4|u3|u1|u3|u1|co~combout\);

-- Location: LABCELL_X60_Y6_N18
\u4|u4|p[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|p\(13) = (\v4|m[14]~13_combout\ & \v3|m[13]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[14]~13_combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	combout => \u4|u4|p\(13));

-- Location: MLABCELL_X59_Y6_N45
\u4|u3|u1|u3|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u2|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( ((\v3|m~14_combout\ & \v4|m[12]~11_combout\)) # (\v3|m[14]~13_combout\) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v3|m~14_combout\ & \v4|m[12]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m~14_combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \v4|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u3|u2|sum~0_combout\);

-- Location: MLABCELL_X59_Y6_N18
\u4|u5|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u1|sum~combout\ = ( \u4|u3|u1|u3|u2|sum~0_combout\ & ( \u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u1|co~combout\ $ (!\u4|u4|p\(13) $ (((!\u4|u3|u1|u3|u1|sum~combout\ & !\u4|u4|p\(12))))) ) ) ) # ( !\u4|u3|u1|u3|u2|sum~0_combout\ & ( 
-- \u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u1|co~combout\ $ (!\u4|u4|p\(13) $ (((\u4|u4|p\(12)) # (\u4|u3|u1|u3|u1|sum~combout\)))) ) ) ) # ( \u4|u3|u1|u3|u2|sum~0_combout\ & ( !\u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u1|co~combout\ $ 
-- (!\u4|u4|p\(13) $ (((!\u4|u3|u1|u3|u1|sum~combout\) # (!\u4|u4|p\(12))))) ) ) ) # ( !\u4|u3|u1|u3|u2|sum~0_combout\ & ( !\u4|u5|u1|u2|u3|co~combout\ & ( !\u4|u3|u1|u3|u1|co~combout\ $ (!\u4|u4|p\(13) $ (((\u4|u3|u1|u3|u1|sum~combout\ & \u4|u4|p\(12))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001101010010101011001101010100101011001010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u3|u1|ALT_INV_sum~combout\,
	datac => \u4|u4|ALT_INV_p\(12),
	datad => \u4|u4|ALT_INV_p\(13),
	datae => \u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	dataf => \u4|u5|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u5|u1|u3|u1|sum~combout\);

-- Location: MLABCELL_X59_Y6_N24
\u4|u7|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u3|u0|sum~combout\ = ( \v3|m[12]~11_combout\ & ( \v4|m~14_combout\ & ( !\u4|u5|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u2|u2|co~combout\ & (\v3|m[11]~10_combout\ & \u4|u5|u1|u3|u0|sum~combout\)) # (\u4|u7|u1|u2|u2|co~combout\ & 
-- ((\u4|u5|u1|u3|u0|sum~combout\) # (\v3|m[11]~10_combout\))))) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v4|m~14_combout\ & ( !\u4|u5|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u2|u2|co~combout\ & ((!\v3|m[11]~10_combout\) # (!\u4|u5|u1|u3|u0|sum~combout\))) # 
-- (\u4|u7|u1|u2|u2|co~combout\ & (!\v3|m[11]~10_combout\ & !\u4|u5|u1|u3|u0|sum~combout\)))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\v4|m~14_combout\ & ( !\u4|u5|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u2|u2|co~combout\) # (!\u4|u5|u1|u3|u0|sum~combout\))) ) ) 
-- ) # ( !\v3|m[12]~11_combout\ & ( !\v4|m~14_combout\ & ( !\u4|u5|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u2|u2|co~combout\) # (!\u4|u5|u1|u3|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001010110011010101010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u4|u5|u1|u3|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u3|u0|sum~combout\);

-- Location: LABCELL_X60_Y3_N54
\u3|u7|u1|u3|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u1|u3|u3|co~combout\ = ( \v3|m~14_combout\ & ( \u3|u7|u1|u3|u1|co~combout\ & ( (\v4|m[11]~10_combout\ & ((!\u3|u5|u1|u3|u2|co~combout\) # ((\u3|u5|u1|u3|u3|sum~0_combout\) # (\v3|m[14]~13_combout\)))) ) ) ) # ( !\v3|m~14_combout\ & ( 
-- \u3|u7|u1|u3|u1|co~combout\ & ( (\v4|m[11]~10_combout\ & (!\u3|u5|u1|u3|u2|co~combout\ & (\v3|m[14]~13_combout\ & \u3|u5|u1|u3|u3|sum~0_combout\))) ) ) ) # ( \v3|m~14_combout\ & ( !\u3|u7|u1|u3|u1|co~combout\ & ( (\v4|m[11]~10_combout\ & 
-- ((!\u3|u5|u1|u3|u2|co~combout\ & ((\u3|u5|u1|u3|u3|sum~0_combout\) # (\v3|m[14]~13_combout\))) # (\u3|u5|u1|u3|u2|co~combout\ & (\v3|m[14]~13_combout\ & \u3|u5|u1|u3|u3|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100010100000000000001000100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v4|ALT_INV_m[11]~10_combout\,
	datab => \u3|u5|u1|u3|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \u3|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datae => \v3|ALT_INV_m~14_combout\,
	dataf => \u3|u7|u1|u3|u1|ALT_INV_co~combout\,
	combout => \u3|u7|u1|u3|u3|co~combout\);

-- Location: MLABCELL_X59_Y2_N48
\u6|u1|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|u3|sum~combout\ = ( \u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u0|sum~combout\ $ (\u3|u7|u1|u3|u3|co~combout\) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( 
-- !\u4|u7|u1|u3|u0|sum~combout\ $ (!\u4|u7|u1|u2|u3|sum~combout\ $ (\u3|u7|u1|u3|u3|co~combout\)) ) ) ) # ( \u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u0|sum~combout\ $ (!\u4|u7|u1|u2|u3|sum~combout\ $ 
-- (\u3|u7|u1|u3|u3|co~combout\)) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u0|sum~combout\ $ (!\u3|u7|u1|u3|u3|co~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001111001100001100111100110000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u3|u7|u1|u3|u3|ALT_INV_co~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u3|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|u3|sum~combout\);

-- Location: MLABCELL_X59_Y2_N30
\v6|m[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[11]~9_combout\ = ( \comb~0_combout\ & ( !\u7|u1|u2|u2|co~0_combout\ $ (!\v5|u1|u2|u2|co~0_combout\ $ (!\u6|u1|u2|u3|sum~combout\)) ) ) # ( !\comb~0_combout\ & ( !\u7|u1|u2|u2|co~0_combout\ $ (!\u6|u1|u2|u3|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u2|u2|ALT_INV_co~0_combout\,
	datac => \v5|u1|u2|u2|ALT_INV_co~0_combout\,
	datad => \u6|u1|u2|u3|ALT_INV_sum~combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v6|m[11]~9_combout\);

-- Location: MLABCELL_X59_Y6_N0
\u4|u7|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u3|u0|co~combout\ = ( \v3|m[12]~11_combout\ & ( \v4|m~14_combout\ & ( ((!\u4|u7|u1|u2|u2|co~combout\ & (\v3|m[11]~10_combout\ & \u4|u5|u1|u3|u0|sum~combout\)) # (\u4|u7|u1|u2|u2|co~combout\ & ((\u4|u5|u1|u3|u0|sum~combout\) # 
-- (\v3|m[11]~10_combout\)))) # (\u4|u5|u1|u3|u1|sum~combout\) ) ) ) # ( !\v3|m[12]~11_combout\ & ( \v4|m~14_combout\ & ( (\u4|u5|u1|u3|u1|sum~combout\ & ((!\u4|u7|u1|u2|u2|co~combout\ & (\v3|m[11]~10_combout\ & \u4|u5|u1|u3|u0|sum~combout\)) # 
-- (\u4|u7|u1|u2|u2|co~combout\ & ((\u4|u5|u1|u3|u0|sum~combout\) # (\v3|m[11]~10_combout\))))) ) ) ) # ( \v3|m[12]~11_combout\ & ( !\v4|m~14_combout\ & ( (\u4|u5|u1|u3|u1|sum~combout\ & (\u4|u7|u1|u2|u2|co~combout\ & \u4|u5|u1|u3|u0|sum~combout\)) ) ) ) # ( 
-- !\v3|m[12]~11_combout\ & ( !\v4|m~14_combout\ & ( (\u4|u5|u1|u3|u1|sum~combout\ & (\u4|u7|u1|u2|u2|co~combout\ & \u4|u5|u1|u3|u0|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000101010101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u3|u1|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u2|u2|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[11]~10_combout\,
	datad => \u4|u5|u1|u3|u0|ALT_INV_sum~combout\,
	datae => \v3|ALT_INV_m[12]~11_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u3|u0|co~combout\);

-- Location: MLABCELL_X59_Y6_N36
\u4|u3|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u2|sum~combout\ = !\u4|u3|u1|u3|u1|co~combout\ $ (!\u4|u3|u1|u3|u2|sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	combout => \u4|u3|u1|u3|u2|sum~combout\);

-- Location: MLABCELL_X59_Y6_N9
\u4|u5|u1|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u0|co~combout\ = ( \u4|u5|u1|u2|u3|co~combout\ & ( (\u4|u3|u1|u3|u1|sum~combout\) # (\u4|u4|p\(12)) ) ) # ( !\u4|u5|u1|u2|u3|co~combout\ & ( (\u4|u4|p\(12) & \u4|u3|u1|u3|u1|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|ALT_INV_p\(12),
	datab => \u4|u3|u1|u3|u1|ALT_INV_sum~combout\,
	dataf => \u4|u5|u1|u2|u3|ALT_INV_co~combout\,
	combout => \u4|u5|u1|u3|u0|co~combout\);

-- Location: MLABCELL_X59_Y6_N39
\u4|u3|u1|u3|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u1|u3|u3|sum~combout\ = ( \v4|m[13]~12_combout\ & ( ((\u4|u3|u1|u3|u1|co~combout\ & \u4|u3|u1|u3|u2|sum~0_combout\)) # (\v3|m~14_combout\) ) ) # ( !\v4|m[13]~12_combout\ & ( (\u4|u3|u1|u3|u1|co~combout\ & \u4|u3|u1|u3|u2|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datab => \u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	datad => \v3|ALT_INV_m~14_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u3|u1|u3|u3|sum~combout\);

-- Location: MLABCELL_X59_Y6_N12
\u4|u5|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u2|sum~combout\ = ( \v4|m[14]~13_combout\ & ( \v3|m[14]~13_combout\ & ( !\u4|u3|u1|u3|u3|sum~combout\ $ (((!\u4|u3|u1|u3|u2|sum~combout\ & (\u4|u5|u1|u3|u0|co~combout\ & \v3|m[13]~12_combout\)) # (\u4|u3|u1|u3|u2|sum~combout\ & 
-- ((\v3|m[13]~12_combout\) # (\u4|u5|u1|u3|u0|co~combout\))))) ) ) ) # ( !\v4|m[14]~13_combout\ & ( \v3|m[14]~13_combout\ & ( !\u4|u3|u1|u3|u3|sum~combout\ $ (((!\u4|u3|u1|u3|u2|sum~combout\) # (!\u4|u5|u1|u3|u0|co~combout\))) ) ) ) # ( 
-- \v4|m[14]~13_combout\ & ( !\v3|m[14]~13_combout\ & ( !\u4|u3|u1|u3|u3|sum~combout\ $ (((!\u4|u3|u1|u3|u2|sum~combout\ & ((!\u4|u5|u1|u3|u0|co~combout\) # (!\v3|m[13]~12_combout\))) # (\u4|u3|u1|u3|u2|sum~combout\ & (!\u4|u5|u1|u3|u0|co~combout\ & 
-- !\v3|m[13]~12_combout\)))) ) ) ) # ( !\v4|m[14]~13_combout\ & ( !\v3|m[14]~13_combout\ & ( !\u4|u3|u1|u3|u3|sum~combout\ $ (((!\u4|u3|u1|u3|u2|sum~combout\) # (!\u4|u5|u1|u3|u0|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000101111110100000010001111011101110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \u4|u5|u1|u3|u0|ALT_INV_co~combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	datad => \u4|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[14]~13_combout\,
	dataf => \v3|ALT_INV_m[14]~13_combout\,
	combout => \u4|u5|u1|u3|u2|sum~combout\);

-- Location: MLABCELL_X59_Y6_N51
\u4|u7|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u3|u1|sum~combout\ = ( \v4|m~14_combout\ & ( !\u4|u7|u1|u3|u0|co~combout\ $ (!\u4|u5|u1|u3|u2|sum~combout\ $ (\v3|m[13]~12_combout\)) ) ) # ( !\v4|m~14_combout\ & ( !\u4|u7|u1|u3|u0|co~combout\ $ (!\u4|u5|u1|u3|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u3|u0|ALT_INV_co~combout\,
	datac => \u4|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datad => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u3|u1|sum~combout\);

-- Location: MLABCELL_X59_Y2_N6
\u6|u1|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|u0|sum~combout\ = ( \u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u3|u0|sum~combout\ & !\u3|u7|u1|u3|u3|co~combout\))) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( 
-- \u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u3|u0|sum~combout\ & ((!\u4|u7|u1|u2|u3|sum~combout\) # (!\u3|u7|u1|u3|u3|co~combout\))) # (\u4|u7|u1|u3|u0|sum~combout\ & (!\u4|u7|u1|u2|u3|sum~combout\ & 
-- !\u3|u7|u1|u3|u3|co~combout\)))) ) ) ) # ( \u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u3|u0|sum~combout\ & ((!\u4|u7|u1|u2|u3|sum~combout\) # (!\u3|u7|u1|u3|u3|co~combout\))) # 
-- (\u4|u7|u1|u3|u0|sum~combout\ & (!\u4|u7|u1|u2|u3|sum~combout\ & !\u3|u7|u1|u3|u3|co~combout\)))) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( !\u4|u7|u1|u3|u1|sum~combout\ $ (((!\u4|u7|u1|u3|u0|sum~combout\) # 
-- (!\u3|u7|u1|u3|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101100110101001010110011010100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u3|u1|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u3|u7|u1|u3|u3|ALT_INV_co~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u3|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u3|u0|sum~combout\);

-- Location: MLABCELL_X59_Y2_N57
\v6|m[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[12]~10_combout\ = ( \comb~0_combout\ & ( !\u6|u1|u3|u0|sum~combout\ $ (((!\v5|u1|u2|u2|co~0_combout\ & (\u6|u1|u2|u3|sum~combout\ & \u7|u1|u2|u2|co~0_combout\)) # (\v5|u1|u2|u2|co~0_combout\ & (!\u6|u1|u2|u3|sum~combout\ & 
-- !\u7|u1|u2|u2|co~0_combout\)))) ) ) # ( !\comb~0_combout\ & ( !\u6|u1|u3|u0|sum~combout\ $ (((!\u6|u1|u2|u3|sum~combout\) # (!\u7|u1|u2|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110010110100110100101011010011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u1|u2|u2|ALT_INV_co~0_combout\,
	datab => \u6|u1|u2|u3|ALT_INV_sum~combout\,
	datac => \u6|u1|u3|u0|ALT_INV_sum~combout\,
	datad => \u7|u1|u2|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \v6|m[12]~10_combout\);

-- Location: MLABCELL_X59_Y2_N18
\u7|u1|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u3|u0|co~0_combout\ = ( \u6|u1|u2|u1|sum~combout\ & ( \u7|u1|u2|u0|co~combout\ & ( (\u6|u1|u2|u2|sum~combout\ & (\u6|u1|u2|u3|sum~combout\ & \u6|u1|u3|u0|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u6|u1|u2|u2|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u6|u1|u3|u0|ALT_INV_sum~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \u7|u1|u2|u0|ALT_INV_co~combout\,
	combout => \u7|u1|u3|u0|co~0_combout\);

-- Location: MLABCELL_X59_Y2_N24
\v5|u1|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \v5|u1|u3|u0|co~0_combout\ = ( \u6|u1|u2|u1|sum~combout\ & ( \v5|u1|u2|u0|co~0_combout\ & ( (\u7|u1|u2|u0|co~combout\ & (\u6|u1|u2|u2|sum~combout\ & (\u6|u1|u2|u3|sum~combout\ & \u6|u1|u3|u0|sum~combout\))) ) ) ) # ( !\u6|u1|u2|u1|sum~combout\ & ( 
-- \v5|u1|u2|u0|co~0_combout\ & ( (!\u7|u1|u2|u0|co~combout\ & (!\u6|u1|u2|u2|sum~combout\ & (!\u6|u1|u2|u3|sum~combout\ & !\u6|u1|u3|u0|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u2|u0|ALT_INV_co~combout\,
	datab => \u6|u1|u2|u2|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u6|u1|u3|u0|ALT_INV_sum~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_sum~combout\,
	dataf => \v5|u1|u2|u0|ALT_INV_co~0_combout\,
	combout => \v5|u1|u3|u0|co~0_combout\);

-- Location: MLABCELL_X59_Y6_N42
\u4|u5|u1|u3|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u3|sum~0_combout\ = ( \v4|m[13]~12_combout\ & ( (\v3|m~14_combout\ & (\v4|m[14]~13_combout\ & ((!\u4|u3|u1|u3|u1|co~combout\) # (!\u4|u3|u1|u3|u2|sum~0_combout\)))) ) ) # ( !\v4|m[13]~12_combout\ & ( (\v3|m~14_combout\ & 
-- \v4|m[14]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100000001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m~14_combout\,
	datab => \v4|ALT_INV_m[14]~13_combout\,
	datac => \u4|u3|u1|u3|u1|ALT_INV_co~combout\,
	datad => \u4|u3|u1|u3|u2|ALT_INV_sum~0_combout\,
	dataf => \v4|ALT_INV_m[13]~12_combout\,
	combout => \u4|u5|u1|u3|u3|sum~0_combout\);

-- Location: MLABCELL_X59_Y6_N48
\u4|u7|u1|u3|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u7|u1|u3|u1|co~combout\ = ( \v4|m~14_combout\ & ( (!\u4|u7|u1|u3|u0|co~combout\ & (\u4|u5|u1|u3|u2|sum~combout\ & \v3|m[13]~12_combout\)) # (\u4|u7|u1|u3|u0|co~combout\ & ((\v3|m[13]~12_combout\) # (\u4|u5|u1|u3|u2|sum~combout\))) ) ) # ( 
-- !\v4|m~14_combout\ & ( (\u4|u7|u1|u3|u0|co~combout\ & \u4|u5|u1|u3|u2|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u3|u0|ALT_INV_co~combout\,
	datab => \u4|u5|u1|u3|u2|ALT_INV_sum~combout\,
	datac => \v3|ALT_INV_m[13]~12_combout\,
	dataf => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u7|u1|u3|u1|co~combout\);

-- Location: MLABCELL_X59_Y2_N12
\u6|u1|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|u0|co~0_combout\ = ( \u6|u1|u2|u1|co~combout\ & ( \u3|u7|u1|u3|u3|sum~combout\ & ( (\u4|u7|u1|u3|u1|sum~combout\ & ((\u3|u7|u1|u3|u3|co~combout\) # (\u4|u7|u1|u3|u0|sum~combout\))) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( 
-- \u3|u7|u1|u3|u3|sum~combout\ & ( (\u4|u7|u1|u3|u1|sum~combout\ & ((!\u4|u7|u1|u3|u0|sum~combout\ & (\u4|u7|u1|u2|u3|sum~combout\ & \u3|u7|u1|u3|u3|co~combout\)) # (\u4|u7|u1|u3|u0|sum~combout\ & ((\u3|u7|u1|u3|u3|co~combout\) # 
-- (\u4|u7|u1|u2|u3|sum~combout\))))) ) ) ) # ( \u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( (\u4|u7|u1|u3|u1|sum~combout\ & ((!\u4|u7|u1|u3|u0|sum~combout\ & (\u4|u7|u1|u2|u3|sum~combout\ & \u3|u7|u1|u3|u3|co~combout\)) # 
-- (\u4|u7|u1|u3|u0|sum~combout\ & ((\u3|u7|u1|u3|u3|co~combout\) # (\u4|u7|u1|u2|u3|sum~combout\))))) ) ) ) # ( !\u6|u1|u2|u1|co~combout\ & ( !\u3|u7|u1|u3|u3|sum~combout\ & ( (\u4|u7|u1|u3|u1|sum~combout\ & (\u4|u7|u1|u3|u0|sum~combout\ & 
-- \u3|u7|u1|u3|u3|co~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000010001010100000001000101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u7|u1|u3|u1|ALT_INV_sum~combout\,
	datab => \u4|u7|u1|u3|u0|ALT_INV_sum~combout\,
	datac => \u4|u7|u1|u2|u3|ALT_INV_sum~combout\,
	datad => \u3|u7|u1|u3|u3|ALT_INV_co~combout\,
	datae => \u6|u1|u2|u1|ALT_INV_co~combout\,
	dataf => \u3|u7|u1|u3|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u3|u0|co~0_combout\);

-- Location: MLABCELL_X59_Y6_N54
\u4|u5|u1|u3|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u5|u1|u3|u2|co~combout\ = ( \v4|m[14]~13_combout\ & ( \v3|m[14]~13_combout\ & ( ((!\v3|m[13]~12_combout\ & (\u4|u5|u1|u3|u0|co~combout\ & \u4|u3|u1|u3|u2|sum~combout\)) # (\v3|m[13]~12_combout\ & ((\u4|u3|u1|u3|u2|sum~combout\) # 
-- (\u4|u5|u1|u3|u0|co~combout\)))) # (\u4|u3|u1|u3|u3|sum~combout\) ) ) ) # ( !\v4|m[14]~13_combout\ & ( \v3|m[14]~13_combout\ & ( (\u4|u5|u1|u3|u0|co~combout\ & (\u4|u3|u1|u3|u2|sum~combout\ & \u4|u3|u1|u3|u3|sum~combout\)) ) ) ) # ( \v4|m[14]~13_combout\ 
-- & ( !\v3|m[14]~13_combout\ & ( (\u4|u3|u1|u3|u3|sum~combout\ & ((!\v3|m[13]~12_combout\ & (\u4|u5|u1|u3|u0|co~combout\ & \u4|u3|u1|u3|u2|sum~combout\)) # (\v3|m[13]~12_combout\ & ((\u4|u3|u1|u3|u2|sum~combout\) # (\u4|u5|u1|u3|u0|co~combout\))))) ) ) ) # 
-- ( !\v4|m[14]~13_combout\ & ( !\v3|m[14]~13_combout\ & ( (\u4|u5|u1|u3|u0|co~combout\ & (\u4|u3|u1|u3|u2|sum~combout\ & \u4|u3|u1|u3|u3|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000001011100000000000000110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v3|ALT_INV_m[13]~12_combout\,
	datab => \u4|u5|u1|u3|u0|ALT_INV_co~combout\,
	datac => \u4|u3|u1|u3|u2|ALT_INV_sum~combout\,
	datad => \u4|u3|u1|u3|u3|ALT_INV_sum~combout\,
	datae => \v4|ALT_INV_m[14]~13_combout\,
	dataf => \v3|ALT_INV_m[14]~13_combout\,
	combout => \u4|u5|u1|u3|u2|co~combout\);

-- Location: LABCELL_X60_Y2_N15
\u4|u6|p[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u6|p\(14) = (\v3|m[14]~13_combout\ & \v4|m~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v3|ALT_INV_m[14]~13_combout\,
	datad => \v4|ALT_INV_m~14_combout\,
	combout => \u4|u6|p\(14));

-- Location: LABCELL_X60_Y2_N12
\u6|u1|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|u1|sum~combout\ = ( \u4|u6|p\(14) & ( !\u4|u5|u1|u3|u3|sum~0_combout\ $ (!\u4|u7|u1|u3|u1|co~combout\ $ (!\u6|u1|u3|u0|co~0_combout\ $ (\u4|u5|u1|u3|u2|co~combout\))) ) ) # ( !\u4|u6|p\(14) & ( !\u4|u5|u1|u3|u3|sum~0_combout\ $ 
-- (!\u4|u7|u1|u3|u1|co~combout\ $ (!\u6|u1|u3|u0|co~0_combout\ $ (!\u4|u5|u1|u3|u2|co~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datab => \u4|u7|u1|u3|u1|ALT_INV_co~combout\,
	datac => \u6|u1|u3|u0|ALT_INV_co~0_combout\,
	datad => \u4|u5|u1|u3|u2|ALT_INV_co~combout\,
	dataf => \u4|u6|ALT_INV_p\(14),
	combout => \u6|u1|u3|u1|sum~combout\);

-- Location: LABCELL_X60_Y2_N21
\v6|m[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[13]~11_combout\ = ( \comb~0_combout\ & ( \u6|u1|u3|u1|sum~combout\ & ( !\u7|u1|u3|u0|co~0_combout\ $ (!\v5|u1|u3|u0|co~0_combout\) ) ) ) # ( !\comb~0_combout\ & ( \u6|u1|u3|u1|sum~combout\ & ( !\u7|u1|u3|u0|co~0_combout\ ) ) ) # ( \comb~0_combout\ & 
-- ( !\u6|u1|u3|u1|sum~combout\ & ( !\u7|u1|u3|u0|co~0_combout\ $ (\v5|u1|u3|u0|co~0_combout\) ) ) ) # ( !\comb~0_combout\ & ( !\u6|u1|u3|u1|sum~combout\ & ( \u7|u1|u3|u0|co~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110000111100001111001100110011000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u7|u1|u3|u0|ALT_INV_co~0_combout\,
	datac => \v5|u1|u3|u0|ALT_INV_co~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \u6|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \v6|m[13]~11_combout\);

-- Location: LABCELL_X60_Y2_N24
\u4|u6|p[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u6|p\(15) = ( \v3|m~14_combout\ & ( \v4|m~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \v4|ALT_INV_m~14_combout\,
	dataf => \v3|ALT_INV_m~14_combout\,
	combout => \u4|u6|p\(15));

-- Location: LABCELL_X60_Y2_N0
\u6|u1|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|u2|sum~combout\ = ( \u6|u1|u3|u0|co~0_combout\ & ( \u4|u6|p\(15) & ( (!\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (!\u4|u5|u1|u3|u3|sum~0_combout\ & !\u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & 
-- (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14))))) # (\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # 
-- (\u4|u5|u1|u3|u3|sum~0_combout\))))) ) ) ) # ( !\u6|u1|u3|u0|co~0_combout\ & ( \u4|u6|p\(15) & ( (!\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & ((!\u4|u5|u1|u3|u3|sum~0_combout\) # (!\u4|u6|p\(14)))) # (\u4|u7|u1|u3|u1|co~combout\ & 
-- (!\u4|u5|u1|u3|u3|sum~0_combout\ & !\u4|u6|p\(14))))) # (\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (!\u4|u5|u1|u3|u3|sum~0_combout\ & !\u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & 
-- \u4|u6|p\(14))))) ) ) ) # ( \u6|u1|u3|u0|co~0_combout\ & ( !\u4|u6|p\(15) & ( (!\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # (\u4|u5|u1|u3|u3|sum~0_combout\))) # (\u4|u7|u1|u3|u1|co~combout\ & 
-- ((!\u4|u5|u1|u3|u3|sum~0_combout\) # (!\u4|u6|p\(14)))))) # (\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & ((!\u4|u5|u1|u3|u3|sum~0_combout\) # (!\u4|u6|p\(14)))) # (\u4|u7|u1|u3|u1|co~combout\ & (!\u4|u5|u1|u3|u3|sum~0_combout\ & 
-- !\u4|u6|p\(14))))) ) ) ) # ( !\u6|u1|u3|u0|co~0_combout\ & ( !\u4|u6|p\(15) & ( (!\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # 
-- (\u4|u5|u1|u3|u3|sum~0_combout\))))) # (\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # (\u4|u5|u1|u3|u3|sum~0_combout\))) # (\u4|u7|u1|u3|u1|co~combout\ & ((!\u4|u5|u1|u3|u3|sum~0_combout\) # (!\u4|u6|p\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111110011111101110100011101000100000011000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u3|u2|ALT_INV_co~combout\,
	datab => \u4|u7|u1|u3|u1|ALT_INV_co~combout\,
	datac => \u4|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u4|u6|ALT_INV_p\(14),
	datae => \u6|u1|u3|u0|ALT_INV_co~0_combout\,
	dataf => \u4|u6|ALT_INV_p\(15),
	combout => \u6|u1|u3|u2|sum~combout\);

-- Location: LABCELL_X60_Y2_N27
\v6|m[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[14]~12_combout\ = ( \u6|u1|u3|u1|sum~combout\ & ( !\u6|u1|u3|u2|sum~combout\ $ (((!\u7|u1|u3|u0|co~0_combout\ & ((!\comb~0_combout\))) # (\u7|u1|u3|u0|co~0_combout\ & (!\v5|u1|u3|u0|co~0_combout\ & \comb~0_combout\)))) ) ) # ( 
-- !\u6|u1|u3|u1|sum~combout\ & ( !\u6|u1|u3|u2|sum~combout\ $ (((!\comb~0_combout\) # ((!\u7|u1|u3|u0|co~0_combout\ & \v5|u1|u3|u0|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100110010101011010011001100110100110100110011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u3|u2|ALT_INV_sum~combout\,
	datab => \u7|u1|u3|u0|ALT_INV_co~0_combout\,
	datac => \v5|u1|u3|u0|ALT_INV_co~0_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \u6|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \v6|m[14]~12_combout\);

-- Location: LABCELL_X60_Y2_N6
\v6|m[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[15]~13_combout\ = ( \u6|u1|u3|u0|co~0_combout\ & ( \u4|u6|p\(15) & ( (((\u4|u6|p\(14)) # (\u4|u5|u1|u3|u3|sum~0_combout\)) # (\u4|u7|u1|u3|u1|co~combout\)) # (\u4|u5|u1|u3|u2|co~combout\) ) ) ) # ( !\u6|u1|u3|u0|co~0_combout\ & ( \u4|u6|p\(15) & ( 
-- (!\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # (\u4|u5|u1|u3|u3|sum~0_combout\))))) # (\u4|u5|u1|u3|u2|co~combout\ & (((\u4|u6|p\(14)) 
-- # (\u4|u5|u1|u3|u3|sum~0_combout\)) # (\u4|u7|u1|u3|u1|co~combout\))) ) ) ) # ( \u6|u1|u3|u0|co~0_combout\ & ( !\u4|u6|p\(15) & ( (!\u4|u5|u1|u3|u2|co~combout\ & (\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14)))) # 
-- (\u4|u5|u1|u3|u2|co~combout\ & ((!\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14))) # (\u4|u7|u1|u3|u1|co~combout\ & ((\u4|u6|p\(14)) # (\u4|u5|u1|u3|u3|sum~0_combout\))))) ) ) ) # ( !\u6|u1|u3|u0|co~0_combout\ & ( 
-- !\u4|u6|p\(15) & ( (\u4|u5|u1|u3|u2|co~combout\ & (\u4|u7|u1|u3|u1|co~combout\ & (\u4|u5|u1|u3|u3|sum~0_combout\ & \u4|u6|p\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001011100010111011111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u5|u1|u3|u2|ALT_INV_co~combout\,
	datab => \u4|u7|u1|u3|u1|ALT_INV_co~combout\,
	datac => \u4|u5|u1|u3|u3|ALT_INV_sum~0_combout\,
	datad => \u4|u6|ALT_INV_p\(14),
	datae => \u6|u1|u3|u0|ALT_INV_co~0_combout\,
	dataf => \u4|u6|ALT_INV_p\(15),
	combout => \v6|m[15]~13_combout\);

-- Location: LABCELL_X60_Y2_N42
\v6|m[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \v6|m[15]~14_combout\ = ( \comb~0_combout\ & ( \u6|u1|u3|u1|sum~combout\ & ( !\v6|m[15]~13_combout\ $ (((!\v5|u1|u3|u0|co~0_combout\ & (\u6|u1|u3|u2|sum~combout\ & \u7|u1|u3|u0|co~0_combout\)))) ) ) ) # ( !\comb~0_combout\ & ( \u6|u1|u3|u1|sum~combout\ & 
-- ( !\v6|m[15]~13_combout\ $ (((!\u6|u1|u3|u2|sum~combout\) # (!\u7|u1|u3|u0|co~0_combout\))) ) ) ) # ( \comb~0_combout\ & ( !\u6|u1|u3|u1|sum~combout\ & ( !\v6|m[15]~13_combout\ $ (((\v5|u1|u3|u0|co~0_combout\ & (!\u6|u1|u3|u2|sum~combout\ & 
-- !\u7|u1|u3|u0|co~0_combout\)))) ) ) ) # ( !\comb~0_combout\ & ( !\u6|u1|u3|u1|sum~combout\ & ( \v6|m[15]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011100111001100110000110011001111001100110011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \v5|u1|u3|u0|ALT_INV_co~0_combout\,
	datab => \v6|ALT_INV_m[15]~13_combout\,
	datac => \u6|u1|u3|u2|ALT_INV_sum~combout\,
	datad => \u7|u1|u3|u0|ALT_INV_co~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \u6|u1|u3|u1|ALT_INV_sum~combout\,
	combout => \v6|m[15]~14_combout\);

-- Location: LABCELL_X13_Y14_N0
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


