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

-- DATE "06/20/2026 13:18:33"

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

ENTITY 	binconv IS
    PORT (
	d0 : IN std_logic_vector(3 DOWNTO 0);
	d1 : IN std_logic_vector(3 DOWNTO 0);
	d2 : IN std_logic_vector(3 DOWNTO 0);
	d3 : IN std_logic_vector(3 DOWNTO 0);
	d4 : IN std_logic_vector(3 DOWNTO 0);
	sign : IN std_logic;
	bin : OUT std_logic_vector(15 DOWNTO 0)
	);
END binconv;

-- Design Ports Information
-- bin[0]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[3]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[7]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[8]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[9]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[10]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[12]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[13]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[14]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[15]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sign	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4[0]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[2]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4[1]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[3]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4[2]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3[3]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4[3]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF binconv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sign : std_logic;
SIGNAL ww_bin : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \d1[0]~input_o\ : std_logic;
SIGNAL \sign~input_o\ : std_logic;
SIGNAL \bin~0_combout\ : std_logic;
SIGNAL \u9|u0|u1|co~0_combout\ : std_logic;
SIGNAL \d1[1]~input_o\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \u5|u0|u2|sum~combout\ : std_logic;
SIGNAL \d2[0]~input_o\ : std_logic;
SIGNAL \bin~1_combout\ : std_logic;
SIGNAL \d2[1]~input_o\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \d1[2]~input_o\ : std_logic;
SIGNAL \u5|u0|u3|sum~combout\ : std_logic;
SIGNAL \u6|u0|u2|co~0_combout\ : std_logic;
SIGNAL \d3[0]~input_o\ : std_logic;
SIGNAL \u7|u0|u3|sum~0_combout\ : std_logic;
SIGNAL \bin~2_combout\ : std_logic;
SIGNAL \d3[1]~input_o\ : std_logic;
SIGNAL \u7|u0|u3|co~0_combout\ : std_logic;
SIGNAL \d2[2]~input_o\ : std_logic;
SIGNAL \u5|u0|u3|co~combout\ : std_logic;
SIGNAL \d1[3]~input_o\ : std_logic;
SIGNAL \u1|u1|u7|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|sum~combout\ : std_logic;
SIGNAL \u7|u1|u0|sum~combout\ : std_logic;
SIGNAL \u9|u0|u3|co~0_combout\ : std_logic;
SIGNAL \d4[0]~input_o\ : std_logic;
SIGNAL \bin~3_combout\ : std_logic;
SIGNAL \d3[2]~input_o\ : std_logic;
SIGNAL \u3|u5|u0|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \d2[3]~input_o\ : std_logic;
SIGNAL \u2|u5|u0|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u1|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u0|co~combout\ : std_logic;
SIGNAL \u7|u1|u1|sum~combout\ : std_logic;
SIGNAL \d4[1]~input_o\ : std_logic;
SIGNAL \bin~4_combout\ : std_logic;
SIGNAL \d4[2]~input_o\ : std_logic;
SIGNAL \u8|u1|u0|co~0_combout\ : std_logic;
SIGNAL \u8|u1|u1|co~combout\ : std_logic;
SIGNAL \u7|u1|u1|co~combout\ : std_logic;
SIGNAL \u5|u1|u1|sum~combout\ : std_logic;
SIGNAL \u5|u1|u2|sum~combout\ : std_logic;
SIGNAL \u2|u5|u0|u1|u2|sum~combout\ : std_logic;
SIGNAL \d3[3]~input_o\ : std_logic;
SIGNAL \u3|u5|u0|u1|u2|sum~combout\ : std_logic;
SIGNAL \u7|u1|u2|sum~0_combout\ : std_logic;
SIGNAL \u7|u1|u2|sum~combout\ : std_logic;
SIGNAL \u9|u1|u1|co~0_combout\ : std_logic;
SIGNAL \bin~5_combout\ : std_logic;
SIGNAL \u8|u1|u2|co~combout\ : std_logic;
SIGNAL \d4[3]~input_o\ : std_logic;
SIGNAL \u5|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u0|u1|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u3|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u3|sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|sum~combout\ : std_logic;
SIGNAL \u3|u5|u0|u1|u3|sum~combout\ : std_logic;
SIGNAL \u7|u1|u3|sum~combout\ : std_logic;
SIGNAL \u9|u1|u2|co~0_combout\ : std_logic;
SIGNAL \bin~6_combout\ : std_logic;
SIGNAL \u7|u1|u3|co~combout\ : std_logic;
SIGNAL \u6|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u3|co~1_combout\ : std_logic;
SIGNAL \u6|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u7|u2|u0|sum~0_combout\ : std_logic;
SIGNAL \u7|u2|u0|sum~combout\ : std_logic;
SIGNAL \u9|u1|u3|co~0_combout\ : std_logic;
SIGNAL \u8|u1|u3|co~combout\ : std_logic;
SIGNAL \bin~7_combout\ : std_logic;
SIGNAL \u2|u2|u5|u1|u0|u3|sum~combout\ : std_logic;
SIGNAL \u6|u2|u1|sum~combout\ : std_logic;
SIGNAL \u6|u2|u0|sum~combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u1|sum~combout\ : std_logic;
SIGNAL \u7|u2|u1|sum~combout\ : std_logic;
SIGNAL \u8|u2|u1|sum~0_combout\ : std_logic;
SIGNAL \bin~8_combout\ : std_logic;
SIGNAL \u9|u2|u1|co~0_combout\ : std_logic;
SIGNAL \u8|u2|u0|co~combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u2|sum~combout\ : std_logic;
SIGNAL \u2|u5|u0|u2|u2|sum~0_combout\ : std_logic;
SIGNAL \u7|u2|u2|sum~0_combout\ : std_logic;
SIGNAL \u7|u2|u2|sum~combout\ : std_logic;
SIGNAL \u8|u2|u2|sum~combout\ : std_logic;
SIGNAL \bin~9_combout\ : std_logic;
SIGNAL \u8|u2|u2|co~combout\ : std_logic;
SIGNAL \u4|u3|u5|u1|u0|u1|sum~combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u3|sum~combout\ : std_logic;
SIGNAL \u7|u2|u2|co~0_combout\ : std_logic;
SIGNAL \u7|u2|u2|co~1_combout\ : std_logic;
SIGNAL \u7|u2|u3|sum~combout\ : std_logic;
SIGNAL \bin~10_combout\ : std_logic;
SIGNAL \u4|u3|u5|u1|u0|u2|sum~combout\ : std_logic;
SIGNAL \u7|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u8|u3|u0|sum~0_combout\ : std_logic;
SIGNAL \u9|u2|u2|co~0_combout\ : std_logic;
SIGNAL \bin~11_combout\ : std_logic;
SIGNAL \u3|u7|u0|u3|u1|sum~0_combout\ : std_logic;
SIGNAL \u7|u3|u1|sum~combout\ : std_logic;
SIGNAL \u4|u6|u0|u3|u1|sum~0_combout\ : std_logic;
SIGNAL \u9|u3|u0|co~0_combout\ : std_logic;
SIGNAL \u7|u3|u0|sum~combout\ : std_logic;
SIGNAL \u8|u3|u0|co~combout\ : std_logic;
SIGNAL \bin~12_combout\ : std_logic;
SIGNAL \u4|u6|u0|u3|u2|sum~combout\ : std_logic;
SIGNAL \u8|u3|u2|sum~0_combout\ : std_logic;
SIGNAL \bin~13_combout\ : std_logic;
SIGNAL \bin~15_combout\ : std_logic;
SIGNAL \bin~16_combout\ : std_logic;
SIGNAL \u7|u3|u0|co~0_combout\ : std_logic;
SIGNAL \bin~14_combout\ : std_logic;
SIGNAL \bin~17_combout\ : std_logic;
SIGNAL \ALT_INV_d4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sign~input_o\ : std_logic;
SIGNAL \ALT_INV_d0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_bin~16_combout\ : std_logic;
SIGNAL \ALT_INV_bin~15_combout\ : std_logic;
SIGNAL \ALT_INV_bin~14_combout\ : std_logic;
SIGNAL \u7|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u8|u3|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u6|u0|u3|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u9|u3|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u3|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u7|u0|u3|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u8|u3|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u7|u3|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u8|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u7|u3|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u4|u3|u5|u1|u0|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u9|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u2|u2|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u7|u2|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u8|u2|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u9|u2|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u8|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u2|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u0|u2|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u8|u2|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u8|u2|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u7|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u2|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u2|u5|u1|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u9|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u2|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u3|ALT_INV_co~1_combout\ : std_logic;
SIGNAL \u6|u1|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u7|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u8|u1|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \ALT_INV_bin~6_combout\ : std_logic;
SIGNAL \u9|u1|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u5|u1|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u0|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u0|u1|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u8|u1|u2|ALT_INV_co~combout\ : std_logic;
SIGNAL \u9|u1|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u1|u2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u5|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u2|u5|u0|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u3|u5|u0|u1|u2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u8|u1|u1|ALT_INV_co~combout\ : std_logic;
SIGNAL \u8|u1|u0|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u6|u1|u0|ALT_INV_co~combout\ : std_logic;
SIGNAL \u3|u5|u0|u1|u1|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u9|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u1|u0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u5|u0|u3|ALT_INV_co~combout\ : std_logic;
SIGNAL \u1|u1|u7|u1|u0|u1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u7|u0|u3|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u7|u0|u3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \u5|u0|u3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \u6|u0|u2|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u9|u0|u1|ALT_INV_co~0_combout\ : std_logic;
SIGNAL \u5|u0|u2|ALT_INV_sum~combout\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_d4 <= d4;
ww_sign <= sign;
bin <= ww_bin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d4[3]~input_o\ <= NOT \d4[3]~input_o\;
\ALT_INV_d3[3]~input_o\ <= NOT \d3[3]~input_o\;
\ALT_INV_d4[2]~input_o\ <= NOT \d4[2]~input_o\;
\ALT_INV_d2[3]~input_o\ <= NOT \d2[3]~input_o\;
\ALT_INV_d3[2]~input_o\ <= NOT \d3[2]~input_o\;
\ALT_INV_d4[1]~input_o\ <= NOT \d4[1]~input_o\;
\ALT_INV_d1[3]~input_o\ <= NOT \d1[3]~input_o\;
\ALT_INV_d2[2]~input_o\ <= NOT \d2[2]~input_o\;
\ALT_INV_d3[1]~input_o\ <= NOT \d3[1]~input_o\;
\ALT_INV_d4[0]~input_o\ <= NOT \d4[0]~input_o\;
\ALT_INV_d1[2]~input_o\ <= NOT \d1[2]~input_o\;
\ALT_INV_d0[3]~input_o\ <= NOT \d0[3]~input_o\;
\ALT_INV_d2[1]~input_o\ <= NOT \d2[1]~input_o\;
\ALT_INV_d3[0]~input_o\ <= NOT \d3[0]~input_o\;
\ALT_INV_d1[1]~input_o\ <= NOT \d1[1]~input_o\;
\ALT_INV_d0[2]~input_o\ <= NOT \d0[2]~input_o\;
\ALT_INV_d2[0]~input_o\ <= NOT \d2[0]~input_o\;
\ALT_INV_d1[0]~input_o\ <= NOT \d1[0]~input_o\;
\ALT_INV_d0[1]~input_o\ <= NOT \d0[1]~input_o\;
\ALT_INV_sign~input_o\ <= NOT \sign~input_o\;
\ALT_INV_d0[0]~input_o\ <= NOT \d0[0]~input_o\;
\ALT_INV_bin~16_combout\ <= NOT \bin~16_combout\;
\ALT_INV_bin~15_combout\ <= NOT \bin~15_combout\;
\ALT_INV_bin~14_combout\ <= NOT \bin~14_combout\;
\u7|u3|u0|ALT_INV_co~0_combout\ <= NOT \u7|u3|u0|co~0_combout\;
\u8|u3|u2|ALT_INV_sum~0_combout\ <= NOT \u8|u3|u2|sum~0_combout\;
\u4|u6|u0|u3|u2|ALT_INV_sum~combout\ <= NOT \u4|u6|u0|u3|u2|sum~combout\;
\u9|u3|u0|ALT_INV_co~0_combout\ <= NOT \u9|u3|u0|co~0_combout\;
\u7|u3|u1|ALT_INV_sum~combout\ <= NOT \u7|u3|u1|sum~combout\;
\u3|u7|u0|u3|u1|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u0|u3|u1|sum~0_combout\;
\u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\ <= NOT \u4|u6|u0|u3|u1|sum~0_combout\;
\u8|u3|u0|ALT_INV_co~combout\ <= NOT \u8|u3|u0|co~combout\;
\u7|u3|u0|ALT_INV_sum~combout\ <= NOT \u7|u3|u0|sum~combout\;
\u8|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u8|u3|u0|sum~0_combout\;
\u7|u3|u0|ALT_INV_sum~0_combout\ <= NOT \u7|u3|u0|sum~0_combout\;
\u4|u3|u5|u1|u0|u2|ALT_INV_sum~combout\ <= NOT \u4|u3|u5|u1|u0|u2|sum~combout\;
\u9|u2|u2|ALT_INV_co~0_combout\ <= NOT \u9|u2|u2|co~0_combout\;
\u7|u2|u3|ALT_INV_sum~combout\ <= NOT \u7|u2|u3|sum~combout\;
\u7|u2|u2|ALT_INV_co~1_combout\ <= NOT \u7|u2|u2|co~1_combout\;
\u7|u2|u2|ALT_INV_co~0_combout\ <= NOT \u7|u2|u2|co~0_combout\;
\u3|u7|u0|u2|u3|ALT_INV_sum~combout\ <= NOT \u3|u7|u0|u2|u3|sum~combout\;
\u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u4|u3|u5|u1|u0|u1|sum~combout\;
\u8|u2|u2|ALT_INV_co~combout\ <= NOT \u8|u2|u2|co~combout\;
\u9|u2|u1|ALT_INV_co~0_combout\ <= NOT \u9|u2|u1|co~0_combout\;
\u8|u2|u2|ALT_INV_sum~combout\ <= NOT \u8|u2|u2|sum~combout\;
\u7|u2|u2|ALT_INV_sum~combout\ <= NOT \u7|u2|u2|sum~combout\;
\u7|u2|u2|ALT_INV_sum~0_combout\ <= NOT \u7|u2|u2|sum~0_combout\;
\u3|u7|u0|u2|u2|ALT_INV_sum~combout\ <= NOT \u3|u7|u0|u2|u2|sum~combout\;
\u2|u5|u0|u2|u2|ALT_INV_sum~0_combout\ <= NOT \u2|u5|u0|u2|u2|sum~0_combout\;
\u8|u2|u0|ALT_INV_co~combout\ <= NOT \u8|u2|u0|co~combout\;
\u8|u2|u1|ALT_INV_sum~0_combout\ <= NOT \u8|u2|u1|sum~0_combout\;
\u7|u2|u1|ALT_INV_sum~combout\ <= NOT \u7|u2|u1|sum~combout\;
\u3|u7|u0|u2|u1|ALT_INV_sum~combout\ <= NOT \u3|u7|u0|u2|u1|sum~combout\;
\u6|u2|u1|ALT_INV_sum~combout\ <= NOT \u6|u2|u1|sum~combout\;
\u2|u2|u5|u1|u0|u3|ALT_INV_sum~combout\ <= NOT \u2|u2|u5|u1|u0|u3|sum~combout\;
\u6|u2|u0|ALT_INV_sum~combout\ <= NOT \u6|u2|u0|sum~combout\;
\u9|u1|u3|ALT_INV_co~0_combout\ <= NOT \u9|u1|u3|co~0_combout\;
\u7|u2|u0|ALT_INV_sum~combout\ <= NOT \u7|u2|u0|sum~combout\;
\u7|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u7|u2|u0|sum~0_combout\;
\u6|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u6|u2|u0|sum~0_combout\;
\u6|u1|u3|ALT_INV_co~1_combout\ <= NOT \u6|u1|u3|co~1_combout\;
\u6|u1|u3|ALT_INV_co~0_combout\ <= NOT \u6|u1|u3|co~0_combout\;
\u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\ <= NOT \u3|u7|u0|u2|u0|sum~0_combout\;
\u7|u1|u3|ALT_INV_co~combout\ <= NOT \u7|u1|u3|co~combout\;
\u8|u1|u3|ALT_INV_co~combout\ <= NOT \u8|u1|u3|co~combout\;
\ALT_INV_bin~6_combout\ <= NOT \bin~6_combout\;
\u9|u1|u2|ALT_INV_co~0_combout\ <= NOT \u9|u1|u2|co~0_combout\;
\u7|u1|u3|ALT_INV_sum~combout\ <= NOT \u7|u1|u3|sum~combout\;
\u6|u1|u3|ALT_INV_sum~combout\ <= NOT \u6|u1|u3|sum~combout\;
\u6|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u6|u1|u3|sum~0_combout\;
\u5|u1|u3|ALT_INV_sum~0_combout\ <= NOT \u5|u1|u3|sum~0_combout\;
\u2|u5|u0|u1|u3|ALT_INV_sum~combout\ <= NOT \u2|u5|u0|u1|u3|sum~combout\;
\u3|u5|u0|u1|u3|ALT_INV_sum~combout\ <= NOT \u3|u5|u0|u1|u3|sum~combout\;
\u6|u1|u2|ALT_INV_sum~combout\ <= NOT \u6|u1|u2|sum~combout\;
\u8|u1|u2|ALT_INV_co~combout\ <= NOT \u8|u1|u2|co~combout\;
\u9|u1|u1|ALT_INV_co~0_combout\ <= NOT \u9|u1|u1|co~0_combout\;
\u7|u1|u2|ALT_INV_sum~combout\ <= NOT \u7|u1|u2|sum~combout\;
\u7|u1|u2|ALT_INV_sum~0_combout\ <= NOT \u7|u1|u2|sum~0_combout\;
\u5|u1|u2|ALT_INV_sum~combout\ <= NOT \u5|u1|u2|sum~combout\;
\u2|u5|u0|u1|u2|ALT_INV_sum~combout\ <= NOT \u2|u5|u0|u1|u2|sum~combout\;
\u3|u5|u0|u1|u2|ALT_INV_sum~combout\ <= NOT \u3|u5|u0|u1|u2|sum~combout\;
\u5|u1|u1|ALT_INV_sum~combout\ <= NOT \u5|u1|u1|sum~combout\;
\u7|u1|u1|ALT_INV_co~combout\ <= NOT \u7|u1|u1|co~combout\;
\u8|u1|u1|ALT_INV_co~combout\ <= NOT \u8|u1|u1|co~combout\;
\u8|u1|u0|ALT_INV_co~0_combout\ <= NOT \u8|u1|u0|co~0_combout\;
\u7|u1|u1|ALT_INV_sum~combout\ <= NOT \u7|u1|u1|sum~combout\;
\u6|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u6|u1|u1|sum~0_combout\;
\u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u2|u5|u0|u1|u1|sum~0_combout\;
\u6|u1|u0|ALT_INV_co~combout\ <= NOT \u6|u1|u0|co~combout\;
\u3|u5|u0|u1|u1|ALT_INV_sum~0_combout\ <= NOT \u3|u5|u0|u1|u1|sum~0_combout\;
\u9|u0|u3|ALT_INV_co~0_combout\ <= NOT \u9|u0|u3|co~0_combout\;
\u7|u1|u0|ALT_INV_sum~combout\ <= NOT \u7|u1|u0|sum~combout\;
\u6|u1|u0|ALT_INV_sum~combout\ <= NOT \u6|u1|u0|sum~combout\;
\u5|u0|u3|ALT_INV_co~combout\ <= NOT \u5|u0|u3|co~combout\;
\u1|u1|u7|u1|u0|u1|ALT_INV_sum~combout\ <= NOT \u1|u1|u7|u1|u0|u1|sum~combout\;
\u7|u0|u3|ALT_INV_co~0_combout\ <= NOT \u7|u0|u3|co~0_combout\;
\u7|u0|u3|ALT_INV_sum~0_combout\ <= NOT \u7|u0|u3|sum~0_combout\;
\u5|u0|u3|ALT_INV_sum~combout\ <= NOT \u5|u0|u3|sum~combout\;
\u6|u0|u2|ALT_INV_co~0_combout\ <= NOT \u6|u0|u2|co~0_combout\;
\u9|u0|u1|ALT_INV_co~0_combout\ <= NOT \u9|u0|u1|co~0_combout\;
\u5|u0|u2|ALT_INV_sum~combout\ <= NOT \u5|u0|u2|sum~combout\;

-- Location: IOOBUF_X36_Y0_N53
\bin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[0]~input_o\,
	devoe => ww_devoe,
	o => ww_bin(0));

-- Location: IOOBUF_X62_Y0_N2
\bin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~0_combout\,
	devoe => ww_devoe,
	o => ww_bin(1));

-- Location: IOOBUF_X62_Y0_N36
\bin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~1_combout\,
	devoe => ww_devoe,
	o => ww_bin(2));

-- Location: IOOBUF_X60_Y0_N36
\bin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~2_combout\,
	devoe => ww_devoe,
	o => ww_bin(3));

-- Location: IOOBUF_X52_Y0_N19
\bin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~3_combout\,
	devoe => ww_devoe,
	o => ww_bin(4));

-- Location: IOOBUF_X50_Y0_N59
\bin[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~4_combout\,
	devoe => ww_devoe,
	o => ww_bin(5));

-- Location: IOOBUF_X66_Y0_N76
\bin[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~5_combout\,
	devoe => ww_devoe,
	o => ww_bin(6));

-- Location: IOOBUF_X60_Y0_N2
\bin[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_bin~6_combout\,
	devoe => ww_devoe,
	o => ww_bin(7));

-- Location: IOOBUF_X60_Y0_N53
\bin[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~7_combout\,
	devoe => ww_devoe,
	o => ww_bin(8));

-- Location: IOOBUF_X66_Y0_N42
\bin[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~8_combout\,
	devoe => ww_devoe,
	o => ww_bin(9));

-- Location: IOOBUF_X52_Y0_N2
\bin[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~9_combout\,
	devoe => ww_devoe,
	o => ww_bin(10));

-- Location: IOOBUF_X50_Y0_N42
\bin[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~10_combout\,
	devoe => ww_devoe,
	o => ww_bin(11));

-- Location: IOOBUF_X64_Y0_N53
\bin[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~11_combout\,
	devoe => ww_devoe,
	o => ww_bin(12));

-- Location: IOOBUF_X58_Y0_N59
\bin[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~12_combout\,
	devoe => ww_devoe,
	o => ww_bin(13));

-- Location: IOOBUF_X58_Y0_N42
\bin[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~13_combout\,
	devoe => ww_devoe,
	o => ww_bin(14));

-- Location: IOOBUF_X56_Y0_N2
\bin[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bin~17_combout\,
	devoe => ww_devoe,
	o => ww_bin(15));

-- Location: IOIBUF_X40_Y0_N1
\d0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\d0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\d1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(0),
	o => \d1[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\sign~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sign,
	o => \sign~input_o\);

-- Location: LABCELL_X56_Y2_N0
\bin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~0_combout\ = ( \sign~input_o\ & ( !\d0[0]~input_o\ $ (!\d0[1]~input_o\ $ (\d1[0]~input_o\)) ) ) # ( !\sign~input_o\ & ( !\d0[1]~input_o\ $ (!\d1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[0]~input_o\,
	datab => \ALT_INV_d0[1]~input_o\,
	datac => \ALT_INV_d1[0]~input_o\,
	dataf => \ALT_INV_sign~input_o\,
	combout => \bin~0_combout\);

-- Location: LABCELL_X56_Y2_N3
\u9|u0|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u0|u1|co~0_combout\ = ( \d1[0]~input_o\ & ( (!\d0[0]~input_o\ & \d0[1]~input_o\) ) ) # ( !\d1[0]~input_o\ & ( (!\d0[0]~input_o\ & !\d0[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0[0]~input_o\,
	datab => \ALT_INV_d0[1]~input_o\,
	dataf => \ALT_INV_d1[0]~input_o\,
	combout => \u9|u0|u1|co~0_combout\);

-- Location: IOIBUF_X56_Y0_N18
\d1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(1),
	o => \d1[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\d0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: LABCELL_X56_Y2_N6
\u5|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u2|sum~combout\ = ( \d1[0]~input_o\ & ( !\d1[1]~input_o\ $ (!\d0[2]~input_o\ $ (\d0[1]~input_o\)) ) ) # ( !\d1[0]~input_o\ & ( !\d1[1]~input_o\ $ (!\d0[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d0[2]~input_o\,
	datad => \ALT_INV_d0[1]~input_o\,
	dataf => \ALT_INV_d1[0]~input_o\,
	combout => \u5|u0|u2|sum~combout\);

-- Location: IOIBUF_X54_Y0_N1
\d2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(0),
	o => \d2[0]~input_o\);

-- Location: MLABCELL_X59_Y2_N30
\bin~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~1_combout\ = ( \u5|u0|u2|sum~combout\ & ( \d2[0]~input_o\ & ( (!\u9|u0|u1|co~0_combout\ & \sign~input_o\) ) ) ) # ( !\u5|u0|u2|sum~combout\ & ( \d2[0]~input_o\ & ( (!\sign~input_o\) # (\u9|u0|u1|co~0_combout\) ) ) ) # ( \u5|u0|u2|sum~combout\ & ( 
-- !\d2[0]~input_o\ & ( (!\sign~input_o\) # (\u9|u0|u1|co~0_combout\) ) ) ) # ( !\u5|u0|u2|sum~combout\ & ( !\d2[0]~input_o\ & ( (!\u9|u0|u1|co~0_combout\ & \sign~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111101011111010111110101111101010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u9|u0|u1|ALT_INV_co~0_combout\,
	datac => \ALT_INV_sign~input_o\,
	datae => \u5|u0|u2|ALT_INV_sum~combout\,
	dataf => \ALT_INV_d2[0]~input_o\,
	combout => \bin~1_combout\);

-- Location: IOIBUF_X58_Y0_N75
\d2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(1),
	o => \d2[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\d0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\d1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(2),
	o => \d1[2]~input_o\);

-- Location: LABCELL_X56_Y2_N42
\u5|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|sum~combout\ = ( \d0[1]~input_o\ & ( \d1[2]~input_o\ & ( !\d0[3]~input_o\ $ (((!\d1[1]~input_o\ & (!\d0[2]~input_o\ & \d1[0]~input_o\)) # (\d1[1]~input_o\ & (\d0[2]~input_o\ & !\d1[0]~input_o\)))) ) ) ) # ( !\d0[1]~input_o\ & ( \d1[2]~input_o\ & 
-- ( !\d0[3]~input_o\ $ (!\d1[0]~input_o\ $ (((!\d1[1]~input_o\) # (!\d0[2]~input_o\)))) ) ) ) # ( \d0[1]~input_o\ & ( !\d1[2]~input_o\ & ( !\d0[3]~input_o\ $ (((!\d1[1]~input_o\ & ((!\d1[0]~input_o\) # (\d0[2]~input_o\))) # (\d1[1]~input_o\ & 
-- ((!\d0[2]~input_o\) # (\d1[0]~input_o\))))) ) ) ) # ( !\d0[1]~input_o\ & ( !\d1[2]~input_o\ & ( !\d0[3]~input_o\ $ (!\d1[0]~input_o\ $ (((\d1[1]~input_o\ & \d0[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101000011111100001000111101110000101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d0[2]~input_o\,
	datac => \ALT_INV_d0[3]~input_o\,
	datad => \ALT_INV_d1[0]~input_o\,
	datae => \ALT_INV_d0[1]~input_o\,
	dataf => \ALT_INV_d1[2]~input_o\,
	combout => \u5|u0|u3|sum~combout\);

-- Location: LABCELL_X56_Y2_N9
\u6|u0|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u0|u2|co~0_combout\ = ( \d1[0]~input_o\ & ( (\d2[0]~input_o\ & (!\d1[1]~input_o\ $ (!\d0[2]~input_o\ $ (\d0[1]~input_o\)))) ) ) # ( !\d1[0]~input_o\ & ( (\d2[0]~input_o\ & (!\d1[1]~input_o\ $ (!\d0[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d0[2]~input_o\,
	datac => \ALT_INV_d0[1]~input_o\,
	datad => \ALT_INV_d2[0]~input_o\,
	dataf => \ALT_INV_d1[0]~input_o\,
	combout => \u6|u0|u2|co~0_combout\);

-- Location: IOIBUF_X64_Y0_N18
\d3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(0),
	o => \d3[0]~input_o\);

-- Location: LABCELL_X56_Y2_N48
\u7|u0|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|sum~0_combout\ = ( \d3[0]~input_o\ & ( !\d2[1]~input_o\ $ (!\u5|u0|u3|sum~combout\ $ (!\u6|u0|u2|co~0_combout\)) ) ) # ( !\d3[0]~input_o\ & ( !\d2[1]~input_o\ $ (!\u5|u0|u3|sum~combout\ $ (\u6|u0|u2|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \u5|u0|u3|ALT_INV_sum~combout\,
	datac => \u6|u0|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_d3[0]~input_o\,
	combout => \u7|u0|u3|sum~0_combout\);

-- Location: MLABCELL_X59_Y2_N39
\bin~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~2_combout\ = ( \u9|u0|u1|co~0_combout\ & ( \d2[0]~input_o\ & ( !\u7|u0|u3|sum~0_combout\ $ (((!\sign~input_o\) # (\u5|u0|u2|sum~combout\))) ) ) ) # ( !\u9|u0|u1|co~0_combout\ & ( \d2[0]~input_o\ & ( !\sign~input_o\ $ (!\u7|u0|u3|sum~0_combout\) ) ) ) 
-- # ( \u9|u0|u1|co~0_combout\ & ( !\d2[0]~input_o\ & ( !\u7|u0|u3|sum~0_combout\ $ (((!\sign~input_o\) # (!\u5|u0|u2|sum~combout\))) ) ) ) # ( !\u9|u0|u1|co~0_combout\ & ( !\d2[0]~input_o\ & ( !\sign~input_o\ $ (!\u7|u0|u3|sum~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000011110101101001011010010110100101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sign~input_o\,
	datac => \u7|u0|u3|ALT_INV_sum~0_combout\,
	datad => \u5|u0|u2|ALT_INV_sum~combout\,
	datae => \u9|u0|u1|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_d2[0]~input_o\,
	combout => \bin~2_combout\);

-- Location: IOIBUF_X60_Y0_N18
\d3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(1),
	o => \d3[1]~input_o\);

-- Location: LABCELL_X56_Y2_N51
\u7|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u0|u3|co~0_combout\ = ( \d3[0]~input_o\ & ( !\d2[1]~input_o\ $ (!\u5|u0|u3|sum~combout\ $ (\u6|u0|u2|co~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \u5|u0|u3|ALT_INV_sum~combout\,
	datac => \u6|u0|u2|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_d3[0]~input_o\,
	combout => \u7|u0|u3|co~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\d2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(2),
	o => \d2[2]~input_o\);

-- Location: LABCELL_X56_Y2_N30
\u5|u0|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u0|u3|co~combout\ = ( \d0[1]~input_o\ & ( \d1[2]~input_o\ & ( (!\d1[1]~input_o\ & (\d0[3]~input_o\ & ((!\d1[0]~input_o\) # (\d0[2]~input_o\)))) # (\d1[1]~input_o\ & (((\d0[2]~input_o\ & !\d1[0]~input_o\)) # (\d0[3]~input_o\))) ) ) ) # ( 
-- !\d0[1]~input_o\ & ( \d1[2]~input_o\ & ( (!\d0[3]~input_o\ & (\d1[1]~input_o\ & (\d0[2]~input_o\ & !\d1[0]~input_o\))) # (\d0[3]~input_o\ & ((!\d1[0]~input_o\) # ((\d1[1]~input_o\ & \d0[2]~input_o\)))) ) ) ) # ( \d0[1]~input_o\ & ( !\d1[2]~input_o\ & ( 
-- (!\d1[1]~input_o\ & (\d1[0]~input_o\ & ((\d0[3]~input_o\) # (\d0[2]~input_o\)))) # (\d1[1]~input_o\ & (((\d0[2]~input_o\ & \d0[3]~input_o\)) # (\d1[0]~input_o\))) ) ) ) # ( !\d0[1]~input_o\ & ( !\d1[2]~input_o\ & ( (!\d0[3]~input_o\ & (\d1[1]~input_o\ & 
-- (\d0[2]~input_o\ & \d1[0]~input_o\))) # (\d0[3]~input_o\ & (((\d1[1]~input_o\ & \d0[2]~input_o\)) # (\d1[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010111111100011111000000010001111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d0[2]~input_o\,
	datac => \ALT_INV_d0[3]~input_o\,
	datad => \ALT_INV_d1[0]~input_o\,
	datae => \ALT_INV_d0[1]~input_o\,
	dataf => \ALT_INV_d1[2]~input_o\,
	combout => \u5|u0|u3|co~combout\);

-- Location: IOIBUF_X52_Y0_N52
\d1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1(3),
	o => \d1[3]~input_o\);

-- Location: LABCELL_X56_Y2_N54
\u1|u1|u7|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|u7|u1|u0|u1|sum~combout\ = ( \d1[2]~input_o\ & ( !\d1[1]~input_o\ $ (!\d1[0]~input_o\ $ (\d1[3]~input_o\)) ) ) # ( !\d1[2]~input_o\ & ( !\d1[1]~input_o\ $ (!\d1[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d1[0]~input_o\,
	datac => \ALT_INV_d1[3]~input_o\,
	dataf => \ALT_INV_d1[2]~input_o\,
	combout => \u1|u1|u7|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X56_Y2_N36
\u6|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|sum~combout\ = ( \u1|u1|u7|u1|u0|u1|sum~combout\ & ( \u5|u0|u3|sum~combout\ & ( !\d2[2]~input_o\ $ (!\u5|u0|u3|co~combout\ $ (((!\d2[1]~input_o\ & !\u6|u0|u2|co~0_combout\)))) ) ) ) # ( !\u1|u1|u7|u1|u0|u1|sum~combout\ & ( \u5|u0|u3|sum~combout\ 
-- & ( !\d2[2]~input_o\ $ (!\u5|u0|u3|co~combout\ $ (((\u6|u0|u2|co~0_combout\) # (\d2[1]~input_o\)))) ) ) ) # ( \u1|u1|u7|u1|u0|u1|sum~combout\ & ( !\u5|u0|u3|sum~combout\ & ( !\d2[2]~input_o\ $ (!\u5|u0|u3|co~combout\ $ (((!\d2[1]~input_o\) # 
-- (!\u6|u0|u2|co~0_combout\)))) ) ) ) # ( !\u1|u1|u7|u1|u0|u1|sum~combout\ & ( !\u5|u0|u3|sum~combout\ & ( !\d2[2]~input_o\ $ (!\u5|u0|u3|co~combout\ $ (((\d2[1]~input_o\ & \u6|u0|u2|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001111000010001111001111000100001111000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \u6|u0|u2|ALT_INV_co~0_combout\,
	datac => \ALT_INV_d2[2]~input_o\,
	datad => \u5|u0|u3|ALT_INV_co~combout\,
	datae => \u1|u1|u7|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|sum~combout\);

-- Location: LABCELL_X55_Y2_N0
\u7|u1|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u0|sum~combout\ = ( \u6|u1|u0|sum~combout\ & ( !\d3[1]~input_o\ $ (\u7|u0|u3|co~0_combout\) ) ) # ( !\u6|u1|u0|sum~combout\ & ( !\d3[1]~input_o\ $ (!\u7|u0|u3|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d3[1]~input_o\,
	datac => \u7|u0|u3|ALT_INV_co~0_combout\,
	datae => \u6|u1|u0|ALT_INV_sum~combout\,
	combout => \u7|u1|u0|sum~combout\);

-- Location: MLABCELL_X59_Y2_N42
\u9|u0|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u0|u3|co~0_combout\ = ( \d2[1]~input_o\ & ( \d3[0]~input_o\ & ( (\u9|u0|u1|co~0_combout\ & ((!\u5|u0|u2|sum~combout\ & (!\d2[0]~input_o\ & !\u5|u0|u3|sum~combout\)) # (\u5|u0|u2|sum~combout\ & (\d2[0]~input_o\ & \u5|u0|u3|sum~combout\)))) ) ) ) # ( 
-- !\d2[1]~input_o\ & ( \d3[0]~input_o\ & ( (\u9|u0|u1|co~0_combout\ & ((!\u5|u0|u2|sum~combout\ & (!\d2[0]~input_o\ & \u5|u0|u3|sum~combout\)) # (\u5|u0|u2|sum~combout\ & (\d2[0]~input_o\ & !\u5|u0|u3|sum~combout\)))) ) ) ) # ( \d2[1]~input_o\ & ( 
-- !\d3[0]~input_o\ & ( (\u9|u0|u1|co~0_combout\ & ((!\u5|u0|u2|sum~combout\ & (!\d2[0]~input_o\ & \u5|u0|u3|sum~combout\)) # (\u5|u0|u2|sum~combout\ & (\d2[0]~input_o\ & !\u5|u0|u3|sum~combout\)))) ) ) ) # ( !\d2[1]~input_o\ & ( !\d3[0]~input_o\ & ( 
-- (\u9|u0|u1|co~0_combout\ & ((!\u5|u0|u2|sum~combout\ & (!\d2[0]~input_o\ & !\u5|u0|u3|sum~combout\)) # (\u5|u0|u2|sum~combout\ & (\d2[0]~input_o\ & \u5|u0|u3|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000001000000010000100000000001000010000000100000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u0|u2|ALT_INV_sum~combout\,
	datab => \ALT_INV_d2[0]~input_o\,
	datac => \u9|u0|u1|ALT_INV_co~0_combout\,
	datad => \u5|u0|u3|ALT_INV_sum~combout\,
	datae => \ALT_INV_d2[1]~input_o\,
	dataf => \ALT_INV_d3[0]~input_o\,
	combout => \u9|u0|u3|co~0_combout\);

-- Location: IOIBUF_X54_Y0_N52
\d4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d4(0),
	o => \d4[0]~input_o\);

-- Location: LABCELL_X55_Y2_N9
\bin~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~3_combout\ = ( \sign~input_o\ & ( !\u7|u1|u0|sum~combout\ $ (!\u9|u0|u3|co~0_combout\ $ (!\d4[0]~input_o\)) ) ) # ( !\sign~input_o\ & ( !\u7|u1|u0|sum~combout\ $ (!\d4[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|ALT_INV_sum~combout\,
	datac => \u9|u0|u3|ALT_INV_co~0_combout\,
	datad => \ALT_INV_d4[0]~input_o\,
	dataf => \ALT_INV_sign~input_o\,
	combout => \bin~3_combout\);

-- Location: IOIBUF_X66_Y0_N92
\d3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(2),
	o => \d3[2]~input_o\);

-- Location: MLABCELL_X59_Y2_N48
\u3|u5|u0|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u0|u1|u1|sum~0_combout\ = ( \d3[2]~input_o\ & ( !\d3[0]~input_o\ ) ) # ( !\d3[2]~input_o\ & ( \d3[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d3[0]~input_o\,
	datae => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u5|u0|u1|u1|sum~0_combout\);

-- Location: IOIBUF_X54_Y0_N18
\d2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2(3),
	o => \d2[3]~input_o\);

-- Location: LABCELL_X57_Y2_N33
\u2|u5|u0|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u0|u1|u1|sum~0_combout\ = ( !\d2[0]~input_o\ & ( \d2[3]~input_o\ ) ) # ( \d2[0]~input_o\ & ( !\d2[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_d2[0]~input_o\,
	dataf => \ALT_INV_d2[3]~input_o\,
	combout => \u2|u5|u0|u1|u1|sum~0_combout\);

-- Location: LABCELL_X56_Y2_N18
\u6|u1|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u1|sum~0_combout\ = ( \d1[1]~input_o\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u5|u0|u3|co~combout\ & ((!\d1[3]~input_o\ & ((!\d1[2]~input_o\) # (\d1[0]~input_o\))) # (\d1[3]~input_o\ & ((\d1[2]~input_o\))))) # (\u5|u0|u3|co~combout\ & 
-- (\d1[2]~input_o\ & ((!\d1[0]~input_o\) # (!\d1[3]~input_o\)))) ) ) ) # ( !\d1[1]~input_o\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u5|u0|u3|co~combout\ & ((!\d1[2]~input_o\) # ((\d1[0]~input_o\ & \d1[3]~input_o\)))) # (\u5|u0|u3|co~combout\ & 
-- ((!\d1[3]~input_o\ & ((!\d1[2]~input_o\) # (\d1[0]~input_o\))) # (\d1[3]~input_o\ & ((\d1[2]~input_o\))))) ) ) ) # ( \d1[1]~input_o\ & ( !\u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u5|u0|u3|co~combout\ & ((!\d1[3]~input_o\ & (!\d1[0]~input_o\ & 
-- \d1[2]~input_o\)) # (\d1[3]~input_o\ & ((!\d1[2]~input_o\))))) # (\u5|u0|u3|co~combout\ & ((!\d1[2]~input_o\) # ((\d1[0]~input_o\ & \d1[3]~input_o\)))) ) ) ) # ( !\d1[1]~input_o\ & ( !\u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u5|u0|u3|co~combout\ & 
-- (\d1[2]~input_o\ & ((!\d1[0]~input_o\) # (!\d1[3]~input_o\)))) # (\u5|u0|u3|co~combout\ & ((!\d1[3]~input_o\ & (!\d1[0]~input_o\ & \d1[2]~input_o\)) # (\d1[3]~input_o\ & ((!\d1[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111101000001111111000000111111100000101111100000001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[0]~input_o\,
	datab => \u5|u0|u3|ALT_INV_co~combout\,
	datac => \ALT_INV_d1[3]~input_o\,
	datad => \ALT_INV_d1[2]~input_o\,
	datae => \ALT_INV_d1[1]~input_o\,
	dataf => \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u6|u1|u1|sum~0_combout\);

-- Location: LABCELL_X56_Y2_N12
\u6|u1|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u0|co~combout\ = ( \u1|u1|u7|u1|u0|u1|sum~combout\ & ( \u5|u0|u3|sum~combout\ & ( (!\d2[2]~input_o\ & (!\u5|u0|u3|co~combout\ & ((\u6|u0|u2|co~0_combout\) # (\d2[1]~input_o\)))) # (\d2[2]~input_o\ & (((!\u5|u0|u3|co~combout\) # 
-- (\u6|u0|u2|co~0_combout\)) # (\d2[1]~input_o\))) ) ) ) # ( !\u1|u1|u7|u1|u0|u1|sum~combout\ & ( \u5|u0|u3|sum~combout\ & ( (!\d2[2]~input_o\ & (\u5|u0|u3|co~combout\ & ((\u6|u0|u2|co~0_combout\) # (\d2[1]~input_o\)))) # (\d2[2]~input_o\ & 
-- (((\u5|u0|u3|co~combout\) # (\u6|u0|u2|co~0_combout\)) # (\d2[1]~input_o\))) ) ) ) # ( \u1|u1|u7|u1|u0|u1|sum~combout\ & ( !\u5|u0|u3|sum~combout\ & ( (!\d2[2]~input_o\ & (\d2[1]~input_o\ & (\u6|u0|u2|co~0_combout\ & !\u5|u0|u3|co~combout\))) # 
-- (\d2[2]~input_o\ & ((!\u5|u0|u3|co~combout\) # ((\d2[1]~input_o\ & \u6|u0|u2|co~0_combout\)))) ) ) ) # ( !\u1|u1|u7|u1|u0|u1|sum~combout\ & ( !\u5|u0|u3|sum~combout\ & ( (!\d2[2]~input_o\ & (\d2[1]~input_o\ & (\u6|u0|u2|co~0_combout\ & 
-- \u5|u0|u3|co~combout\))) # (\d2[2]~input_o\ & (((\d2[1]~input_o\ & \u6|u0|u2|co~0_combout\)) # (\u5|u0|u3|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000111110000000100000111011111110111111100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \u6|u0|u2|ALT_INV_co~0_combout\,
	datac => \ALT_INV_d2[2]~input_o\,
	datad => \u5|u0|u3|ALT_INV_co~combout\,
	datae => \u1|u1|u7|u1|u0|u1|ALT_INV_sum~combout\,
	dataf => \u5|u0|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u0|co~combout\);

-- Location: LABCELL_X55_Y2_N42
\u7|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|sum~combout\ = ( \d3[1]~input_o\ & ( \u6|u1|u0|co~combout\ & ( !\u3|u5|u0|u1|u1|sum~0_combout\ $ (!\u6|u1|u1|sum~0_combout\ $ (((!\u6|u1|u0|sum~combout\ & !\u7|u0|u3|co~0_combout\)))) ) ) ) # ( !\d3[1]~input_o\ & ( \u6|u1|u0|co~combout\ & ( 
-- !\u3|u5|u0|u1|u1|sum~0_combout\ $ (!\u6|u1|u1|sum~0_combout\ $ (((!\u6|u1|u0|sum~combout\) # (!\u7|u0|u3|co~0_combout\)))) ) ) ) # ( \d3[1]~input_o\ & ( !\u6|u1|u0|co~combout\ & ( !\u3|u5|u0|u1|u1|sum~0_combout\ $ (!\u6|u1|u1|sum~0_combout\ $ 
-- (((\u7|u0|u3|co~0_combout\) # (\u6|u1|u0|sum~combout\)))) ) ) ) # ( !\d3[1]~input_o\ & ( !\u6|u1|u0|co~combout\ & ( !\u3|u5|u0|u1|u1|sum~0_combout\ $ (!\u6|u1|u1|sum~0_combout\ $ (((\u6|u1|u0|sum~combout\ & \u7|u0|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001011010101001010110101001010101101001010101101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u0|ALT_INV_sum~combout\,
	datac => \u7|u0|u3|ALT_INV_co~0_combout\,
	datad => \u6|u1|u1|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_d3[1]~input_o\,
	dataf => \u6|u1|u0|ALT_INV_co~combout\,
	combout => \u7|u1|u1|sum~combout\);

-- Location: IOIBUF_X62_Y0_N18
\d4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d4(1),
	o => \d4[1]~input_o\);

-- Location: LABCELL_X55_Y2_N48
\bin~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~4_combout\ = ( \d4[0]~input_o\ & ( \d4[1]~input_o\ & ( !\u7|u1|u1|sum~combout\ $ (((!\sign~input_o\ & (\u7|u1|u0|sum~combout\)) # (\sign~input_o\ & ((!\u7|u1|u0|sum~combout\) # (\u9|u0|u3|co~0_combout\))))) ) ) ) # ( !\d4[0]~input_o\ & ( 
-- \d4[1]~input_o\ & ( !\u7|u1|u1|sum~combout\ $ (((\sign~input_o\ & ((!\u9|u0|u3|co~0_combout\) # (\u7|u1|u0|sum~combout\))))) ) ) ) # ( \d4[0]~input_o\ & ( !\d4[1]~input_o\ & ( !\u7|u1|u1|sum~combout\ $ (((!\sign~input_o\ & (!\u7|u1|u0|sum~combout\)) # 
-- (\sign~input_o\ & (\u7|u1|u0|sum~combout\ & !\u9|u0|u3|co~0_combout\)))) ) ) ) # ( !\d4[0]~input_o\ & ( !\d4[1]~input_o\ & ( !\u7|u1|u1|sum~combout\ $ (((!\sign~input_o\) # ((!\u7|u1|u0|sum~combout\ & \u9|u0|u3|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110110011010010110110010011001110010011001011010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sign~input_o\,
	datab => \u7|u1|u1|ALT_INV_sum~combout\,
	datac => \u7|u1|u0|ALT_INV_sum~combout\,
	datad => \u9|u0|u3|ALT_INV_co~0_combout\,
	datae => \ALT_INV_d4[0]~input_o\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \bin~4_combout\);

-- Location: IOIBUF_X58_Y0_N92
\d4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d4(2),
	o => \d4[2]~input_o\);

-- Location: LABCELL_X55_Y2_N57
\u8|u1|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u1|u0|co~0_combout\ = (\d4[0]~input_o\ & (!\u7|u0|u3|co~0_combout\ $ (!\d3[1]~input_o\ $ (\u6|u1|u0|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100001000100100010000100010010001000010001001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u0|u3|ALT_INV_co~0_combout\,
	datab => \ALT_INV_d4[0]~input_o\,
	datac => \ALT_INV_d3[1]~input_o\,
	datad => \u6|u1|u0|ALT_INV_sum~combout\,
	combout => \u8|u1|u0|co~0_combout\);

-- Location: LABCELL_X55_Y2_N54
\u8|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u1|u1|co~combout\ = ( \u7|u1|u1|sum~combout\ & ( (\u8|u1|u0|co~0_combout\) # (\d4[1]~input_o\) ) ) # ( !\u7|u1|u1|sum~combout\ & ( (\d4[1]~input_o\ & \u8|u1|u0|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d4[1]~input_o\,
	datad => \u8|u1|u0|ALT_INV_co~0_combout\,
	dataf => \u7|u1|u1|ALT_INV_sum~combout\,
	combout => \u8|u1|u1|co~combout\);

-- Location: LABCELL_X55_Y2_N30
\u7|u1|u1|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u1|co~combout\ = ( \d3[1]~input_o\ & ( \u6|u1|u0|co~combout\ & ( (!\u3|u5|u0|u1|u1|sum~0_combout\ & (!\u6|u1|u1|sum~0_combout\ & ((\u7|u0|u3|co~0_combout\) # (\u6|u1|u0|sum~combout\)))) # (\u3|u5|u0|u1|u1|sum~0_combout\ & 
-- (((!\u6|u1|u1|sum~0_combout\) # (\u7|u0|u3|co~0_combout\)) # (\u6|u1|u0|sum~combout\))) ) ) ) # ( !\d3[1]~input_o\ & ( \u6|u1|u0|co~combout\ & ( (!\u3|u5|u0|u1|u1|sum~0_combout\ & (\u6|u1|u0|sum~combout\ & (\u7|u0|u3|co~0_combout\ & 
-- !\u6|u1|u1|sum~0_combout\))) # (\u3|u5|u0|u1|u1|sum~0_combout\ & ((!\u6|u1|u1|sum~0_combout\) # ((\u6|u1|u0|sum~combout\ & \u7|u0|u3|co~0_combout\)))) ) ) ) # ( \d3[1]~input_o\ & ( !\u6|u1|u0|co~combout\ & ( (!\u3|u5|u0|u1|u1|sum~0_combout\ & 
-- (\u6|u1|u1|sum~0_combout\ & ((\u7|u0|u3|co~0_combout\) # (\u6|u1|u0|sum~combout\)))) # (\u3|u5|u0|u1|u1|sum~0_combout\ & (((\u6|u1|u1|sum~0_combout\) # (\u7|u0|u3|co~0_combout\)) # (\u6|u1|u0|sum~combout\))) ) ) ) # ( !\d3[1]~input_o\ & ( 
-- !\u6|u1|u0|co~combout\ & ( (!\u3|u5|u0|u1|u1|sum~0_combout\ & (\u6|u1|u0|sum~combout\ & (\u7|u0|u3|co~0_combout\ & \u6|u1|u1|sum~0_combout\))) # (\u3|u5|u0|u1|u1|sum~0_combout\ & (((\u6|u1|u0|sum~combout\ & \u7|u0|u3|co~0_combout\)) # 
-- (\u6|u1|u1|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000101010111111101010111000000010111111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u0|ALT_INV_sum~combout\,
	datac => \u7|u0|u3|ALT_INV_co~0_combout\,
	datad => \u6|u1|u1|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_d3[1]~input_o\,
	dataf => \u6|u1|u0|ALT_INV_co~combout\,
	combout => \u7|u1|u1|co~combout\);

-- Location: LABCELL_X56_Y2_N24
\u5|u1|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u1|sum~combout\ = ( \u5|u0|u3|co~combout\ & ( (!\d1[2]~input_o\ & (((\d1[1]~input_o\) # (\d1[3]~input_o\)))) # (\d1[2]~input_o\ & ((!\d1[0]~input_o\ & (!\d1[3]~input_o\ & !\d1[1]~input_o\)) # (\d1[0]~input_o\ & (\d1[3]~input_o\ & 
-- \d1[1]~input_o\)))) ) ) # ( !\u5|u0|u3|co~combout\ & ( (!\d1[2]~input_o\ & (((\d1[3]~input_o\ & \d1[1]~input_o\)))) # (\d1[2]~input_o\ & ((!\d1[0]~input_o\ & ((!\d1[3]~input_o\) # (!\d1[1]~input_o\))) # (\d1[0]~input_o\ & (!\d1[3]~input_o\ & 
-- !\d1[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000101100001100100010110000101100110011010010110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[0]~input_o\,
	datab => \ALT_INV_d1[2]~input_o\,
	datac => \ALT_INV_d1[3]~input_o\,
	datad => \ALT_INV_d1[1]~input_o\,
	dataf => \u5|u0|u3|ALT_INV_co~combout\,
	combout => \u5|u1|u1|sum~combout\);

-- Location: LABCELL_X56_Y2_N27
\u5|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u2|sum~combout\ = ( \d1[3]~input_o\ & ( (!\d1[2]~input_o\) # ((!\d1[0]~input_o\ & (!\u5|u0|u3|co~combout\ & !\d1[1]~input_o\))) ) ) # ( !\d1[3]~input_o\ & ( (\d1[2]~input_o\ & ((!\d1[0]~input_o\ & (\u5|u0|u3|co~combout\ & \d1[1]~input_o\)) # 
-- (\d1[0]~input_o\ & ((\d1[1]~input_o\) # (\u5|u0|u3|co~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001111101100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[0]~input_o\,
	datab => \ALT_INV_d1[2]~input_o\,
	datac => \u5|u0|u3|ALT_INV_co~combout\,
	datad => \ALT_INV_d1[1]~input_o\,
	dataf => \ALT_INV_d1[3]~input_o\,
	combout => \u5|u1|u2|sum~combout\);

-- Location: LABCELL_X57_Y2_N6
\u2|u5|u0|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u0|u1|u2|sum~combout\ = ( \d2[1]~input_o\ & ( (!\d2[0]~input_o\) # (\d2[3]~input_o\) ) ) # ( !\d2[1]~input_o\ & ( (\d2[0]~input_o\ & !\d2[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000110011111100111100110000001100001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d2[0]~input_o\,
	datac => \ALT_INV_d2[3]~input_o\,
	datae => \ALT_INV_d2[1]~input_o\,
	combout => \u2|u5|u0|u1|u2|sum~combout\);

-- Location: IOIBUF_X62_Y0_N52
\d3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3(3),
	o => \d3[3]~input_o\);

-- Location: MLABCELL_X59_Y2_N27
\u3|u5|u0|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u0|u1|u2|sum~combout\ = ( \d3[1]~input_o\ & ( !\d3[3]~input_o\ $ (((!\d3[2]~input_o\ & \d3[0]~input_o\))) ) ) # ( !\d3[1]~input_o\ & ( !\d3[3]~input_o\ $ (((!\d3[0]~input_o\) # (\d3[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001101001101010011001011001010110011010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[3]~input_o\,
	datab => \ALT_INV_d3[2]~input_o\,
	datac => \ALT_INV_d3[0]~input_o\,
	datae => \ALT_INV_d3[1]~input_o\,
	combout => \u3|u5|u0|u1|u2|sum~combout\);

-- Location: LABCELL_X57_Y2_N42
\u7|u1|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u2|sum~0_combout\ = ( \u6|u1|u0|co~combout\ & ( \u3|u5|u0|u1|u2|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ (!\u2|u5|u0|u1|u2|sum~combout\ $ (((!\u2|u5|u0|u1|u1|sum~0_combout\ & !\u5|u1|u1|sum~combout\)))) ) ) ) # ( !\u6|u1|u0|co~combout\ & ( 
-- \u3|u5|u0|u1|u2|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ (!\u2|u5|u0|u1|u2|sum~combout\ $ (((!\u2|u5|u0|u1|u1|sum~0_combout\) # (!\u5|u1|u1|sum~combout\)))) ) ) ) # ( \u6|u1|u0|co~combout\ & ( !\u3|u5|u0|u1|u2|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ 
-- (!\u2|u5|u0|u1|u2|sum~combout\ $ (((\u5|u1|u1|sum~combout\) # (\u2|u5|u0|u1|u1|sum~0_combout\)))) ) ) ) # ( !\u6|u1|u0|co~combout\ & ( !\u3|u5|u0|u1|u2|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ (!\u2|u5|u0|u1|u2|sum~combout\ $ 
-- (((\u2|u5|u0|u1|u1|sum~0_combout\ & \u5|u1|u1|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011111100001000111101000011101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	datab => \u5|u1|u1|ALT_INV_sum~combout\,
	datac => \u5|u1|u2|ALT_INV_sum~combout\,
	datad => \u2|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datae => \u6|u1|u0|ALT_INV_co~combout\,
	dataf => \u3|u5|u0|u1|u2|ALT_INV_sum~combout\,
	combout => \u7|u1|u2|sum~0_combout\);

-- Location: LABCELL_X55_Y2_N39
\u7|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u2|sum~combout\ = ( \u7|u1|u2|sum~0_combout\ & ( !\u7|u1|u1|co~combout\ ) ) # ( !\u7|u1|u2|sum~0_combout\ & ( \u7|u1|u1|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u7|u1|u1|ALT_INV_co~combout\,
	dataf => \u7|u1|u2|ALT_INV_sum~0_combout\,
	combout => \u7|u1|u2|sum~combout\);

-- Location: LABCELL_X55_Y2_N6
\u9|u1|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u1|u1|co~0_combout\ = ( \u7|u1|u1|sum~combout\ & ( (\u9|u0|u3|co~0_combout\ & ((!\u7|u1|u0|sum~combout\ & (\d4[1]~input_o\ & !\d4[0]~input_o\)) # (\u7|u1|u0|sum~combout\ & (!\d4[1]~input_o\ & \d4[0]~input_o\)))) ) ) # ( !\u7|u1|u1|sum~combout\ & ( 
-- (\u9|u0|u3|co~0_combout\ & ((!\u7|u1|u0|sum~combout\ & (!\d4[1]~input_o\ & !\d4[0]~input_o\)) # (\u7|u1|u0|sum~combout\ & (\d4[1]~input_o\ & \d4[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000001001000000000000100000010000100000000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u0|ALT_INV_sum~combout\,
	datab => \u9|u0|u3|ALT_INV_co~0_combout\,
	datac => \ALT_INV_d4[1]~input_o\,
	datad => \ALT_INV_d4[0]~input_o\,
	dataf => \u7|u1|u1|ALT_INV_sum~combout\,
	combout => \u9|u1|u1|co~0_combout\);

-- Location: LABCELL_X60_Y2_N30
\bin~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~5_combout\ = ( \u9|u1|u1|co~0_combout\ & ( !\d4[2]~input_o\ $ (!\u8|u1|u1|co~combout\ $ (\u7|u1|u2|sum~combout\)) ) ) # ( !\u9|u1|u1|co~0_combout\ & ( !\d4[2]~input_o\ $ (!\u8|u1|u1|co~combout\ $ (!\sign~input_o\ $ (!\u7|u1|u2|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \u8|u1|u1|ALT_INV_co~combout\,
	datac => \ALT_INV_sign~input_o\,
	datad => \u7|u1|u2|ALT_INV_sum~combout\,
	dataf => \u9|u1|u1|ALT_INV_co~0_combout\,
	combout => \bin~5_combout\);

-- Location: LABCELL_X55_Y2_N12
\u8|u1|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u1|u2|co~combout\ = ( \u8|u1|u0|co~0_combout\ & ( \d4[1]~input_o\ & ( (!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\)) # (\d4[2]~input_o\) ) ) ) # ( !\u8|u1|u0|co~0_combout\ & ( \d4[1]~input_o\ & ( (!\d4[2]~input_o\ & (\u7|u1|u1|sum~combout\ & 
-- (!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\)))) # (\d4[2]~input_o\ & ((!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\)) # (\u7|u1|u1|sum~combout\))) ) ) ) # ( \u8|u1|u0|co~0_combout\ & ( !\d4[1]~input_o\ & ( (!\d4[2]~input_o\ & 
-- (\u7|u1|u1|sum~combout\ & (!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\)))) # (\d4[2]~input_o\ & ((!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\)) # (\u7|u1|u1|sum~combout\))) ) ) ) # ( !\u8|u1|u0|co~0_combout\ & ( !\d4[1]~input_o\ & ( 
-- (\d4[2]~input_o\ & (!\u7|u1|u2|sum~0_combout\ $ (!\u7|u1|u1|co~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000101110111000100010111011100010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \u7|u1|u1|ALT_INV_sum~combout\,
	datac => \u7|u1|u2|ALT_INV_sum~0_combout\,
	datad => \u7|u1|u1|ALT_INV_co~combout\,
	datae => \u8|u1|u0|ALT_INV_co~0_combout\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \u8|u1|u2|co~combout\);

-- Location: IOIBUF_X54_Y0_N35
\d4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d4(3),
	o => \d4[3]~input_o\);

-- Location: LABCELL_X56_Y2_N57
\u5|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u5|u1|u3|sum~0_combout\ = ( \d1[3]~input_o\ & ( (\d1[2]~input_o\ & (((\d0[3]~input_o\) # (\d1[0]~input_o\)) # (\d1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000011110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1[1]~input_o\,
	datab => \ALT_INV_d1[0]~input_o\,
	datac => \ALT_INV_d1[2]~input_o\,
	datad => \ALT_INV_d0[3]~input_o\,
	dataf => \ALT_INV_d1[3]~input_o\,
	combout => \u5|u1|u3|sum~0_combout\);

-- Location: LABCELL_X57_Y2_N27
\u2|u5|u0|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u0|u1|u3|sum~combout\ = ( \d2[2]~input_o\ & ( (!\d2[0]~input_o\ & ((\d2[1]~input_o\))) # (\d2[0]~input_o\ & (\d2[3]~input_o\ & !\d2[1]~input_o\)) ) ) # ( !\d2[2]~input_o\ & ( (!\d2[0]~input_o\ & ((!\d2[1]~input_o\))) # (\d2[0]~input_o\ & 
-- ((!\d2[3]~input_o\) # (\d2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000001111000001011111000011111010000011110000010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[3]~input_o\,
	datac => \ALT_INV_d2[0]~input_o\,
	datad => \ALT_INV_d2[1]~input_o\,
	datae => \ALT_INV_d2[2]~input_o\,
	combout => \u2|u5|u0|u1|u3|sum~combout\);

-- Location: LABCELL_X57_Y2_N21
\u6|u1|u3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|sum~0_combout\ = ( \u2|u5|u0|u1|u3|sum~combout\ & ( !\u5|u1|u3|sum~0_combout\ ) ) # ( !\u2|u5|u0|u1|u3|sum~combout\ & ( \u5|u1|u3|sum~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|u1|u3|ALT_INV_sum~0_combout\,
	dataf => \u2|u5|u0|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u3|sum~0_combout\);

-- Location: LABCELL_X57_Y2_N0
\u6|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|sum~combout\ = ( \u6|u1|u0|co~combout\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( !\u6|u1|u3|sum~0_combout\ $ (((!\u5|u1|u2|sum~combout\ & !\u2|u5|u0|u1|u2|sum~combout\))) ) ) ) # ( !\u6|u1|u0|co~combout\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( 
-- !\u6|u1|u3|sum~0_combout\ $ (((!\u5|u1|u1|sum~combout\ & ((!\u5|u1|u2|sum~combout\) # (!\u2|u5|u0|u1|u2|sum~combout\))) # (\u5|u1|u1|sum~combout\ & (!\u5|u1|u2|sum~combout\ & !\u2|u5|u0|u1|u2|sum~combout\)))) ) ) ) # ( \u6|u1|u0|co~combout\ & ( 
-- !\u2|u5|u0|u1|u1|sum~0_combout\ & ( !\u6|u1|u3|sum~0_combout\ $ (((!\u5|u1|u1|sum~combout\ & ((!\u5|u1|u2|sum~combout\) # (!\u2|u5|u0|u1|u2|sum~combout\))) # (\u5|u1|u1|sum~combout\ & (!\u5|u1|u2|sum~combout\ & !\u2|u5|u0|u1|u2|sum~combout\)))) ) ) ) # ( 
-- !\u6|u1|u0|co~combout\ & ( !\u2|u5|u0|u1|u1|sum~0_combout\ & ( !\u6|u1|u3|sum~0_combout\ $ (((!\u5|u1|u2|sum~combout\) # (!\u2|u5|u0|u1|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101100110101001010110011010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u3|ALT_INV_sum~0_combout\,
	datab => \u5|u1|u1|ALT_INV_sum~combout\,
	datac => \u5|u1|u2|ALT_INV_sum~combout\,
	datad => \u2|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datae => \u6|u1|u0|ALT_INV_co~combout\,
	dataf => \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u6|u1|u3|sum~combout\);

-- Location: LABCELL_X57_Y2_N18
\u6|u1|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u2|sum~combout\ = ( \u5|u1|u1|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ (!\u2|u5|u0|u1|u2|sum~combout\ $ (((\u6|u1|u0|co~combout\) # (\u2|u5|u0|u1|u1|sum~0_combout\)))) ) ) # ( !\u5|u1|u1|sum~combout\ & ( !\u5|u1|u2|sum~combout\ $ 
-- (!\u2|u5|u0|u1|u2|sum~combout\ $ (((\u2|u5|u0|u1|u1|sum~0_combout\ & \u6|u1|u0|co~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001100110010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u5|u1|u2|ALT_INV_sum~combout\,
	datab => \u2|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datac => \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	datad => \u6|u1|u0|ALT_INV_co~combout\,
	dataf => \u5|u1|u1|ALT_INV_sum~combout\,
	combout => \u6|u1|u2|sum~combout\);

-- Location: LABCELL_X62_Y2_N30
\u3|u5|u0|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u5|u0|u1|u3|sum~combout\ = ( \d3[2]~input_o\ & ( (\d3[1]~input_o\ & !\d3[3]~input_o\) ) ) # ( !\d3[2]~input_o\ & ( (!\d3[1]~input_o\ & ((!\d3[0]~input_o\) # (\d3[3]~input_o\))) # (\d3[1]~input_o\ & (!\d3[0]~input_o\ & \d3[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011101110100010001110111001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datab => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u5|u0|u1|u3|sum~combout\);

-- Location: LABCELL_X57_Y2_N39
\u7|u1|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u3|sum~combout\ = ( \u3|u5|u0|u1|u3|sum~combout\ & ( !\u6|u1|u3|sum~combout\ $ (((!\u3|u5|u0|u1|u2|sum~combout\ & ((!\u6|u1|u2|sum~combout\) # (!\u7|u1|u1|co~combout\))) # (\u3|u5|u0|u1|u2|sum~combout\ & (!\u6|u1|u2|sum~combout\ & 
-- !\u7|u1|u1|co~combout\)))) ) ) # ( !\u3|u5|u0|u1|u3|sum~combout\ & ( !\u6|u1|u3|sum~combout\ $ (((!\u3|u5|u0|u1|u2|sum~combout\ & (\u6|u1|u2|sum~combout\ & \u7|u1|u1|co~combout\)) # (\u3|u5|u0|u1|u2|sum~combout\ & ((\u7|u1|u1|co~combout\) # 
-- (\u6|u1|u2|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110010101101010011001010101010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u3|ALT_INV_sum~combout\,
	datab => \u3|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|ALT_INV_sum~combout\,
	datad => \u7|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u5|u0|u1|u3|ALT_INV_sum~combout\,
	combout => \u7|u1|u3|sum~combout\);

-- Location: LABCELL_X60_Y2_N33
\u9|u1|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u1|u2|co~0_combout\ = ( \u9|u1|u1|co~0_combout\ & ( !\d4[2]~input_o\ $ (!\u8|u1|u1|co~combout\ $ (!\u7|u1|u2|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \u8|u1|u1|ALT_INV_co~combout\,
	datac => \u7|u1|u2|ALT_INV_sum~combout\,
	dataf => \u9|u1|u1|ALT_INV_co~0_combout\,
	combout => \u9|u1|u2|co~0_combout\);

-- Location: LABCELL_X60_Y2_N36
\bin~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~6_combout\ = ( \u9|u1|u2|co~0_combout\ & ( !\u8|u1|u2|co~combout\ $ (!\d4[3]~input_o\ $ (\u7|u1|u3|sum~combout\)) ) ) # ( !\u9|u1|u2|co~0_combout\ & ( !\u8|u1|u2|co~combout\ $ (!\d4[3]~input_o\ $ (!\sign~input_o\ $ (!\u7|u1|u3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u1|u2|ALT_INV_co~combout\,
	datab => \ALT_INV_d4[3]~input_o\,
	datac => \ALT_INV_sign~input_o\,
	datad => \u7|u1|u3|ALT_INV_sum~combout\,
	dataf => \u9|u1|u2|ALT_INV_co~0_combout\,
	combout => \bin~6_combout\);

-- Location: LABCELL_X57_Y2_N36
\u7|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u1|u3|co~combout\ = ( \u3|u5|u0|u1|u3|sum~combout\ & ( (!\u6|u1|u3|sum~combout\ & ((!\u3|u5|u0|u1|u2|sum~combout\ & (\u6|u1|u2|sum~combout\ & \u7|u1|u1|co~combout\)) # (\u3|u5|u0|u1|u2|sum~combout\ & ((\u7|u1|u1|co~combout\) # 
-- (\u6|u1|u2|sum~combout\))))) ) ) # ( !\u3|u5|u0|u1|u3|sum~combout\ & ( (!\u6|u1|u3|sum~combout\) # ((!\u3|u5|u0|u1|u2|sum~combout\ & (\u6|u1|u2|sum~combout\ & \u7|u1|u1|co~combout\)) # (\u3|u5|u0|u1|u2|sum~combout\ & ((\u7|u1|u1|co~combout\) # 
-- (\u6|u1|u2|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111111101010111011111100000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u3|ALT_INV_sum~combout\,
	datab => \u3|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datac => \u6|u1|u2|ALT_INV_sum~combout\,
	datad => \u7|u1|u1|ALT_INV_co~combout\,
	dataf => \u3|u5|u0|u1|u3|ALT_INV_sum~combout\,
	combout => \u7|u1|u3|co~combout\);

-- Location: LABCELL_X57_Y2_N48
\u6|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u2|u0|sum~0_combout\ = ( \d2[3]~input_o\ & ( (!\d2[1]~input_o\ & (!\d2[0]~input_o\ & \d2[2]~input_o\)) # (\d2[1]~input_o\ & (\d2[0]~input_o\ & !\d2[2]~input_o\)) ) ) # ( !\d2[3]~input_o\ & ( (!\d2[1]~input_o\ & ((!\d2[2]~input_o\))) # (\d2[1]~input_o\ 
-- & ((!\d2[0]~input_o\) # (\d2[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001010101111011100101010100010001100010000001000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \ALT_INV_d2[0]~input_o\,
	datad => \ALT_INV_d2[2]~input_o\,
	dataf => \ALT_INV_d2[3]~input_o\,
	combout => \u6|u2|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y2_N12
\u6|u1|u3|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|co~1_combout\ = ( \u6|u1|u0|co~combout\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u6|u1|u3|sum~0_combout\ & ((\u2|u5|u0|u1|u2|sum~combout\) # (\u5|u1|u2|sum~combout\))) ) ) ) # ( !\u6|u1|u0|co~combout\ & ( \u2|u5|u0|u1|u1|sum~0_combout\ & ( 
-- (!\u6|u1|u3|sum~0_combout\ & ((!\u5|u1|u1|sum~combout\ & (\u5|u1|u2|sum~combout\ & \u2|u5|u0|u1|u2|sum~combout\)) # (\u5|u1|u1|sum~combout\ & ((\u2|u5|u0|u1|u2|sum~combout\) # (\u5|u1|u2|sum~combout\))))) ) ) ) # ( \u6|u1|u0|co~combout\ & ( 
-- !\u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u6|u1|u3|sum~0_combout\ & ((!\u5|u1|u1|sum~combout\ & (\u5|u1|u2|sum~combout\ & \u2|u5|u0|u1|u2|sum~combout\)) # (\u5|u1|u1|sum~combout\ & ((\u2|u5|u0|u1|u2|sum~combout\) # (\u5|u1|u2|sum~combout\))))) ) ) ) # ( 
-- !\u6|u1|u0|co~combout\ & ( !\u2|u5|u0|u1|u1|sum~0_combout\ & ( (!\u6|u1|u3|sum~0_combout\ & (\u5|u1|u2|sum~combout\ & \u2|u5|u0|u1|u2|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000100010101000000010001010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u1|u3|ALT_INV_sum~0_combout\,
	datab => \u5|u1|u1|ALT_INV_sum~combout\,
	datac => \u5|u1|u2|ALT_INV_sum~combout\,
	datad => \u2|u5|u0|u1|u2|ALT_INV_sum~combout\,
	datae => \u6|u1|u0|ALT_INV_co~combout\,
	dataf => \u2|u5|u0|u1|u1|ALT_INV_sum~0_combout\,
	combout => \u6|u1|u3|co~1_combout\);

-- Location: LABCELL_X62_Y2_N36
\u6|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u1|u3|co~0_combout\ = (\u5|u1|u3|sum~0_combout\ & !\u2|u5|u0|u1|u3|sum~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u5|u1|u3|ALT_INV_sum~0_combout\,
	datad => \u2|u5|u0|u1|u3|ALT_INV_sum~combout\,
	combout => \u6|u1|u3|co~0_combout\);

-- Location: LABCELL_X62_Y2_N33
\u3|u7|u0|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u0|u2|u0|sum~0_combout\ = ( \d3[2]~input_o\ & ( \d3[3]~input_o\ ) ) # ( !\d3[2]~input_o\ & ( (!\d3[1]~input_o\ & (!\d3[0]~input_o\ & !\d3[3]~input_o\)) # (\d3[1]~input_o\ & (\d3[0]~input_o\ & \d3[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datac => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u7|u0|u2|u0|sum~0_combout\);

-- Location: LABCELL_X62_Y2_N45
\u7|u2|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u0|sum~0_combout\ = ( \u3|u7|u0|u2|u0|sum~0_combout\ & ( !\u6|u2|u0|sum~0_combout\ $ (((\u6|u1|u3|co~0_combout\) # (\u6|u1|u3|co~1_combout\))) ) ) # ( !\u3|u7|u0|u2|u0|sum~0_combout\ & ( !\u6|u2|u0|sum~0_combout\ $ (((!\u6|u1|u3|co~1_combout\ & 
-- !\u6|u1|u3|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101010011001101010101010011001010101011001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u2|u0|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u3|ALT_INV_co~1_combout\,
	datad => \u6|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u7|u2|u0|sum~0_combout\);

-- Location: LABCELL_X60_Y2_N12
\u7|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u0|sum~combout\ = ( \u7|u2|u0|sum~0_combout\ & ( !\u7|u1|u3|co~combout\ ) ) # ( !\u7|u2|u0|sum~0_combout\ & ( \u7|u1|u3|co~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u7|u1|u3|ALT_INV_co~combout\,
	dataf => \u7|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u7|u2|u0|sum~combout\);

-- Location: LABCELL_X60_Y2_N18
\u9|u1|u3|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u1|u3|co~0_combout\ = ( \u7|u1|u3|sum~combout\ & ( \d4[3]~input_o\ & ( (\u9|u1|u1|co~0_combout\ & ((!\d4[2]~input_o\ & (\u7|u1|u2|sum~combout\ & \u8|u1|u1|co~combout\)) # (\d4[2]~input_o\ & (!\u7|u1|u2|sum~combout\ $ (!\u8|u1|u1|co~combout\))))) ) ) ) 
-- # ( !\u7|u1|u3|sum~combout\ & ( \d4[3]~input_o\ & ( (!\d4[2]~input_o\ & (!\u7|u1|u2|sum~combout\ & (\u9|u1|u1|co~0_combout\ & !\u8|u1|u1|co~combout\))) ) ) ) # ( \u7|u1|u3|sum~combout\ & ( !\d4[3]~input_o\ & ( (!\d4[2]~input_o\ & (!\u7|u1|u2|sum~combout\ 
-- & (\u9|u1|u1|co~0_combout\ & !\u8|u1|u1|co~combout\))) ) ) ) # ( !\u7|u1|u3|sum~combout\ & ( !\d4[3]~input_o\ & ( (\u9|u1|u1|co~0_combout\ & ((!\d4[2]~input_o\ & (\u7|u1|u2|sum~combout\ & \u8|u1|u1|co~combout\)) # (\d4[2]~input_o\ & 
-- (!\u7|u1|u2|sum~combout\ $ (!\u8|u1|u1|co~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000110000010000000000000001000000000000000000100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \u7|u1|u2|ALT_INV_sum~combout\,
	datac => \u9|u1|u1|ALT_INV_co~0_combout\,
	datad => \u8|u1|u1|ALT_INV_co~combout\,
	datae => \u7|u1|u3|ALT_INV_sum~combout\,
	dataf => \ALT_INV_d4[3]~input_o\,
	combout => \u9|u1|u3|co~0_combout\);

-- Location: LABCELL_X60_Y2_N39
\u8|u1|u3|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u1|u3|co~combout\ = (!\u8|u1|u2|co~combout\ & (\d4[3]~input_o\ & !\u7|u1|u3|sum~combout\)) # (\u8|u1|u2|co~combout\ & ((!\u7|u1|u3|sum~combout\) # (\d4[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u1|u2|ALT_INV_co~combout\,
	datab => \ALT_INV_d4[3]~input_o\,
	datac => \u7|u1|u3|ALT_INV_sum~combout\,
	combout => \u8|u1|u3|co~combout\);

-- Location: LABCELL_X60_Y2_N54
\bin~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~7_combout\ = ( \sign~input_o\ & ( !\d4[0]~input_o\ $ (!\u7|u2|u0|sum~combout\ $ (!\u9|u1|u3|co~0_combout\ $ (\u8|u1|u3|co~combout\))) ) ) # ( !\sign~input_o\ & ( !\d4[0]~input_o\ $ (!\u7|u2|u0|sum~combout\ $ (\u8|u1|u3|co~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[0]~input_o\,
	datab => \u7|u2|u0|ALT_INV_sum~combout\,
	datac => \u9|u1|u3|ALT_INV_co~0_combout\,
	datad => \u8|u1|u3|ALT_INV_co~combout\,
	dataf => \ALT_INV_sign~input_o\,
	combout => \bin~7_combout\);

-- Location: LABCELL_X57_Y2_N51
\u2|u2|u5|u1|u0|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|u5|u1|u0|u3|sum~combout\ = ( \d2[3]~input_o\ & ( (!\d2[2]~input_o\ & ((!\d2[1]~input_o\) # (!\d2[0]~input_o\))) ) ) # ( !\d2[3]~input_o\ & ( (\d2[1]~input_o\ & \d2[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \ALT_INV_d2[0]~input_o\,
	datad => \ALT_INV_d2[2]~input_o\,
	dataf => \ALT_INV_d2[3]~input_o\,
	combout => \u2|u2|u5|u1|u0|u3|sum~combout\);

-- Location: LABCELL_X62_Y2_N42
\u6|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u2|u1|sum~combout\ = !\u2|u2|u5|u1|u0|u3|sum~combout\ $ ((((!\u6|u1|u3|co~1_combout\ & !\u6|u1|u3|co~0_combout\)) # (\u6|u2|u0|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110110100101001011011010010100101101101001010010110110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u2|u0|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u3|ALT_INV_co~1_combout\,
	datac => \u2|u2|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u6|u1|u3|ALT_INV_co~0_combout\,
	combout => \u6|u2|u1|sum~combout\);

-- Location: LABCELL_X62_Y2_N51
\u6|u2|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u6|u2|u0|sum~combout\ = ( \u6|u2|u0|sum~0_combout\ & ( (\u6|u1|u3|co~0_combout\) # (\u6|u1|u3|co~1_combout\) ) ) # ( !\u6|u2|u0|sum~0_combout\ & ( (!\u6|u1|u3|co~1_combout\ & !\u6|u1|u3|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u6|u1|u3|ALT_INV_co~1_combout\,
	datad => \u6|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u6|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u6|u2|u0|sum~combout\);

-- Location: LABCELL_X62_Y2_N24
\u3|u7|u0|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u0|u2|u1|sum~combout\ = ( !\d3[2]~input_o\ & ( (!\d3[1]~input_o\ & (!\d3[0]~input_o\ & !\d3[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datab => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u7|u0|u2|u1|sum~combout\);

-- Location: LABCELL_X62_Y2_N48
\u7|u2|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u1|sum~combout\ = ( \u3|u7|u0|u2|u0|sum~0_combout\ & ( !\u6|u2|u1|sum~combout\ $ (!\u3|u7|u0|u2|u1|sum~combout\ $ (((!\u7|u1|u3|co~combout\) # (!\u6|u2|u0|sum~combout\)))) ) ) # ( !\u3|u7|u0|u2|u0|sum~0_combout\ & ( !\u6|u2|u1|sum~combout\ $ 
-- (!\u3|u7|u0|u2|u1|sum~combout\ $ (((!\u7|u1|u3|co~combout\ & !\u6|u2|u0|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001101101100100100110110110011001001001101101100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u3|ALT_INV_co~combout\,
	datab => \u6|u2|u1|ALT_INV_sum~combout\,
	datac => \u6|u2|u0|ALT_INV_sum~combout\,
	datad => \u3|u7|u0|u2|u1|ALT_INV_sum~combout\,
	dataf => \u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u7|u2|u1|sum~combout\);

-- Location: LABCELL_X60_Y2_N15
\u8|u2|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u2|u1|sum~0_combout\ = ( \u7|u2|u1|sum~combout\ & ( !\d4[0]~input_o\ $ (\d4[1]~input_o\) ) ) # ( !\u7|u2|u1|sum~combout\ & ( !\d4[0]~input_o\ $ (!\d4[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[0]~input_o\,
	datac => \ALT_INV_d4[1]~input_o\,
	dataf => \u7|u2|u1|ALT_INV_sum~combout\,
	combout => \u8|u2|u1|sum~0_combout\);

-- Location: LABCELL_X60_Y2_N0
\bin~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~8_combout\ = ( \d4[0]~input_o\ & ( \u7|u2|u0|sum~combout\ & ( !\u8|u2|u1|sum~0_combout\ $ (((\sign~input_o\ & ((!\u9|u1|u3|co~0_combout\) # (\u8|u1|u3|co~combout\))))) ) ) ) # ( !\d4[0]~input_o\ & ( \u7|u2|u0|sum~combout\ & ( 
-- !\u8|u2|u1|sum~0_combout\ $ (((!\sign~input_o\ & ((!\u8|u1|u3|co~combout\))) # (\sign~input_o\ & (!\u9|u1|u3|co~0_combout\ & \u8|u1|u3|co~combout\)))) ) ) ) # ( \d4[0]~input_o\ & ( !\u7|u2|u0|sum~combout\ & ( !\u8|u2|u1|sum~0_combout\ $ (((!\sign~input_o\ 
-- & ((!\u8|u1|u3|co~combout\))) # (\sign~input_o\ & (!\u9|u1|u3|co~0_combout\ & \u8|u1|u3|co~combout\)))) ) ) ) # ( !\d4[0]~input_o\ & ( !\u7|u2|u0|sum~combout\ & ( !\u8|u2|u1|sum~0_combout\ $ (((!\sign~input_o\) # ((\u9|u1|u3|co~0_combout\ & 
-- !\u8|u1|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100110011001101001110001100110100111001001110010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sign~input_o\,
	datab => \u8|u2|u1|ALT_INV_sum~0_combout\,
	datac => \u9|u1|u3|ALT_INV_co~0_combout\,
	datad => \u8|u1|u3|ALT_INV_co~combout\,
	datae => \ALT_INV_d4[0]~input_o\,
	dataf => \u7|u2|u0|ALT_INV_sum~combout\,
	combout => \bin~8_combout\);

-- Location: LABCELL_X60_Y2_N48
\u9|u2|u1|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u2|u1|co~0_combout\ = ( \d4[1]~input_o\ & ( \u7|u2|u1|sum~combout\ & ( (\u9|u1|u3|co~0_combout\ & ((!\u7|u2|u0|sum~combout\ & (!\d4[0]~input_o\ $ (\u8|u1|u3|co~combout\))) # (\u7|u2|u0|sum~combout\ & (\d4[0]~input_o\ & !\u8|u1|u3|co~combout\)))) ) ) ) 
-- # ( !\d4[1]~input_o\ & ( \u7|u2|u1|sum~combout\ & ( (\u9|u1|u3|co~0_combout\ & (\u7|u2|u0|sum~combout\ & (!\d4[0]~input_o\ & \u8|u1|u3|co~combout\))) ) ) ) # ( \d4[1]~input_o\ & ( !\u7|u2|u1|sum~combout\ & ( (\u9|u1|u3|co~0_combout\ & 
-- (\u7|u2|u0|sum~combout\ & (!\d4[0]~input_o\ & \u8|u1|u3|co~combout\))) ) ) ) # ( !\d4[1]~input_o\ & ( !\u7|u2|u1|sum~combout\ & ( (\u9|u1|u3|co~0_combout\ & ((!\u7|u2|u0|sum~combout\ & (!\d4[0]~input_o\ $ (\u8|u1|u3|co~combout\))) # 
-- (\u7|u2|u0|sum~combout\ & (\d4[0]~input_o\ & !\u8|u1|u3|co~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000100000000000001000000000000000100000100000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u9|u1|u3|ALT_INV_co~0_combout\,
	datab => \u7|u2|u0|ALT_INV_sum~combout\,
	datac => \ALT_INV_d4[0]~input_o\,
	datad => \u8|u1|u3|ALT_INV_co~combout\,
	datae => \ALT_INV_d4[1]~input_o\,
	dataf => \u7|u2|u1|ALT_INV_sum~combout\,
	combout => \u9|u2|u1|co~0_combout\);

-- Location: LABCELL_X60_Y2_N6
\u8|u2|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u2|u0|co~combout\ = ( \u8|u1|u2|co~combout\ & ( \u7|u2|u0|sum~0_combout\ & ( (!\u7|u1|u3|co~combout\ & (((!\u7|u1|u3|sum~combout\) # (\d4[0]~input_o\)) # (\d4[3]~input_o\))) # (\u7|u1|u3|co~combout\ & (\d4[0]~input_o\ & ((!\u7|u1|u3|sum~combout\) # 
-- (\d4[3]~input_o\)))) ) ) ) # ( !\u8|u1|u2|co~combout\ & ( \u7|u2|u0|sum~0_combout\ & ( (!\u7|u1|u3|co~combout\ & (((\d4[3]~input_o\ & !\u7|u1|u3|sum~combout\)) # (\d4[0]~input_o\))) # (\u7|u1|u3|co~combout\ & (\d4[3]~input_o\ & (\d4[0]~input_o\ & 
-- !\u7|u1|u3|sum~combout\))) ) ) ) # ( \u8|u1|u2|co~combout\ & ( !\u7|u2|u0|sum~0_combout\ & ( (!\u7|u1|u3|co~combout\ & (\d4[0]~input_o\ & ((!\u7|u1|u3|sum~combout\) # (\d4[3]~input_o\)))) # (\u7|u1|u3|co~combout\ & (((!\u7|u1|u3|sum~combout\) # 
-- (\d4[0]~input_o\)) # (\d4[3]~input_o\))) ) ) ) # ( !\u8|u1|u2|co~combout\ & ( !\u7|u2|u0|sum~0_combout\ & ( (!\u7|u1|u3|co~combout\ & (\d4[3]~input_o\ & (\d4[0]~input_o\ & !\u7|u1|u3|sum~combout\))) # (\u7|u1|u3|co~combout\ & (((\d4[3]~input_o\ & 
-- !\u7|u1|u3|sum~combout\)) # (\d4[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000101010111110001011100101011000010101010111100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u1|u3|ALT_INV_co~combout\,
	datab => \ALT_INV_d4[3]~input_o\,
	datac => \ALT_INV_d4[0]~input_o\,
	datad => \u7|u1|u3|ALT_INV_sum~combout\,
	datae => \u8|u1|u2|ALT_INV_co~combout\,
	dataf => \u7|u2|u0|ALT_INV_sum~0_combout\,
	combout => \u8|u2|u0|co~combout\);

-- Location: LABCELL_X62_Y2_N39
\u3|u7|u0|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u0|u2|u2|sum~combout\ = ( \d3[2]~input_o\ & ( !\d3[0]~input_o\ ) ) # ( !\d3[2]~input_o\ & ( (!\d3[0]~input_o\ & ((\d3[3]~input_o\) # (\d3[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datab => \ALT_INV_d3[0]~input_o\,
	datac => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u7|u0|u2|u2|sum~combout\);

-- Location: LABCELL_X57_Y2_N54
\u2|u5|u0|u2|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u5|u0|u2|u2|sum~0_combout\ = ( \d2[2]~input_o\ & ( \d2[3]~input_o\ ) ) # ( !\d2[2]~input_o\ & ( (\d2[1]~input_o\ & (\d2[0]~input_o\ & \d2[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000011110000111100000001000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d2[1]~input_o\,
	datab => \ALT_INV_d2[0]~input_o\,
	datac => \ALT_INV_d2[3]~input_o\,
	datae => \ALT_INV_d2[2]~input_o\,
	combout => \u2|u5|u0|u2|u2|sum~0_combout\);

-- Location: LABCELL_X62_Y2_N0
\u7|u2|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u2|sum~0_combout\ = ( \u6|u1|u3|co~0_combout\ & ( \u2|u5|u0|u2|u2|sum~0_combout\ & ( !\u3|u7|u0|u2|u2|sum~combout\ $ (((!\u6|u2|u0|sum~0_combout\ & \u2|u2|u5|u1|u0|u3|sum~combout\))) ) ) ) # ( !\u6|u1|u3|co~0_combout\ & ( 
-- \u2|u5|u0|u2|u2|sum~0_combout\ & ( !\u3|u7|u0|u2|u2|sum~combout\ $ (((!\u6|u2|u0|sum~0_combout\ & (\u6|u1|u3|co~1_combout\ & \u2|u2|u5|u1|u0|u3|sum~combout\)))) ) ) ) # ( \u6|u1|u3|co~0_combout\ & ( !\u2|u5|u0|u2|u2|sum~0_combout\ & ( 
-- !\u3|u7|u0|u2|u2|sum~combout\ $ (((!\u2|u2|u5|u1|u0|u3|sum~combout\) # (\u6|u2|u0|sum~0_combout\))) ) ) ) # ( !\u6|u1|u3|co~0_combout\ & ( !\u2|u5|u0|u2|u2|sum~0_combout\ & ( !\u3|u7|u0|u2|u2|sum~combout\ $ ((((!\u6|u1|u3|co~1_combout\) # 
-- (!\u2|u2|u5|u1|u0|u3|sum~combout\)) # (\u6|u2|u0|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111101000010101111010111111101000000101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u2|u0|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u3|ALT_INV_co~1_combout\,
	datac => \u2|u2|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u3|u7|u0|u2|u2|ALT_INV_sum~combout\,
	datae => \u6|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u2|u5|u0|u2|u2|ALT_INV_sum~0_combout\,
	combout => \u7|u2|u2|sum~0_combout\);

-- Location: LABCELL_X62_Y2_N6
\u7|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u2|sum~combout\ = ( \u3|u7|u0|u2|u1|sum~combout\ & ( \u7|u1|u3|co~combout\ & ( !\u7|u2|u2|sum~0_combout\ $ (((!\u6|u2|u1|sum~combout\) # ((!\u6|u2|u0|sum~combout\ & \u3|u7|u0|u2|u0|sum~0_combout\)))) ) ) ) # ( !\u3|u7|u0|u2|u1|sum~combout\ & ( 
-- \u7|u1|u3|co~combout\ & ( !\u7|u2|u2|sum~0_combout\ $ (((!\u6|u2|u1|sum~combout\ & (!\u6|u2|u0|sum~combout\ & \u3|u7|u0|u2|u0|sum~0_combout\)))) ) ) ) # ( \u3|u7|u0|u2|u1|sum~combout\ & ( !\u7|u1|u3|co~combout\ & ( !\u7|u2|u2|sum~0_combout\ $ 
-- (((!\u6|u2|u1|sum~combout\) # ((!\u6|u2|u0|sum~combout\) # (\u3|u7|u0|u2|u0|sum~0_combout\)))) ) ) ) # ( !\u3|u7|u0|u2|u1|sum~combout\ & ( !\u7|u1|u3|co~combout\ & ( !\u7|u2|u2|sum~0_combout\ $ (((!\u6|u2|u1|sum~combout\ & ((!\u6|u2|u0|sum~combout\) # 
-- (\u3|u7|u0|u2|u0|sum~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001100110010101100101010110101010011010100110011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u2|u2|ALT_INV_sum~0_combout\,
	datab => \u6|u2|u1|ALT_INV_sum~combout\,
	datac => \u6|u2|u0|ALT_INV_sum~combout\,
	datad => \u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u0|u2|u1|ALT_INV_sum~combout\,
	dataf => \u7|u1|u3|ALT_INV_co~combout\,
	combout => \u7|u2|u2|sum~combout\);

-- Location: LABCELL_X60_Y2_N42
\u8|u2|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u2|u2|sum~combout\ = ( \d4[2]~input_o\ & ( \u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & ((\d4[1]~input_o\) # (\d4[0]~input_o\))) # (\u8|u2|u0|co~combout\ & (\d4[0]~input_o\ & \d4[1]~input_o\)))) # 
-- (\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & (\d4[0]~input_o\ & \d4[1]~input_o\)) # (\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\)))) ) ) ) # ( !\d4[2]~input_o\ & ( \u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & 
-- ((!\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\)) # (\u8|u2|u0|co~combout\ & ((!\d4[0]~input_o\) # (!\d4[1]~input_o\))))) # (\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & ((!\d4[0]~input_o\) # (!\d4[1]~input_o\))) # 
-- (\u8|u2|u0|co~combout\ & ((\d4[1]~input_o\) # (\d4[0]~input_o\))))) ) ) ) # ( \d4[2]~input_o\ & ( !\u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\)) # (\u8|u2|u0|co~combout\ & 
-- ((!\d4[0]~input_o\) # (!\d4[1]~input_o\))))) # (\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & ((!\d4[0]~input_o\) # (!\d4[1]~input_o\))) # (\u8|u2|u0|co~combout\ & ((\d4[1]~input_o\) # (\d4[0]~input_o\))))) ) ) ) # ( !\d4[2]~input_o\ & ( 
-- !\u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & ((\d4[1]~input_o\) # (\d4[0]~input_o\))) # (\u8|u2|u0|co~combout\ & (\d4[0]~input_o\ & \d4[1]~input_o\)))) # (\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & 
-- (\d4[0]~input_o\ & \d4[1]~input_o\)) # (\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010001110111001110111000111100111011100010001100010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u2|u1|ALT_INV_sum~combout\,
	datab => \u8|u2|u0|ALT_INV_co~combout\,
	datac => \ALT_INV_d4[0]~input_o\,
	datad => \ALT_INV_d4[1]~input_o\,
	datae => \ALT_INV_d4[2]~input_o\,
	dataf => \u7|u2|u2|ALT_INV_sum~combout\,
	combout => \u8|u2|u2|sum~combout\);

-- Location: LABCELL_X57_Y4_N30
\bin~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~9_combout\ = ( \u8|u2|u2|sum~combout\ & ( (!\sign~input_o\) # (\u9|u2|u1|co~0_combout\) ) ) # ( !\u8|u2|u2|sum~combout\ & ( (\sign~input_o\ & !\u9|u2|u1|co~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sign~input_o\,
	datad => \u9|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u8|u2|u2|ALT_INV_sum~combout\,
	combout => \bin~9_combout\);

-- Location: LABCELL_X60_Y2_N24
\u8|u2|u2|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u2|u2|co~combout\ = ( \d4[2]~input_o\ & ( \u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & ((!\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\)) # (\u8|u2|u0|co~combout\ & ((!\d4[0]~input_o\) # (!\d4[1]~input_o\))))) # 
-- (\u7|u2|u1|sum~combout\ & (((!\d4[0]~input_o\) # (!\d4[1]~input_o\)) # (\u8|u2|u0|co~combout\))) ) ) ) # ( !\d4[2]~input_o\ & ( \u7|u2|u2|sum~combout\ & ( (((\u7|u2|u1|sum~combout\ & \u8|u2|u0|co~combout\)) # (\d4[1]~input_o\)) # (\d4[0]~input_o\) ) ) ) # 
-- ( \d4[2]~input_o\ & ( !\u7|u2|u2|sum~combout\ & ( (\u7|u2|u1|sum~combout\ & (\u8|u2|u0|co~combout\ & (!\d4[0]~input_o\ & !\d4[1]~input_o\))) ) ) ) # ( !\d4[2]~input_o\ & ( !\u7|u2|u2|sum~combout\ & ( (!\u7|u2|u1|sum~combout\ & (\u8|u2|u0|co~combout\ & 
-- (!\d4[0]~input_o\ $ (!\d4[1]~input_o\)))) # (\u7|u2|u1|sum~combout\ & ((!\d4[0]~input_o\ & ((\d4[1]~input_o\))) # (\d4[0]~input_o\ & ((!\d4[1]~input_o\) # (\u8|u2|u0|co~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101110001000100000000000000011111111111111111011101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u2|u1|ALT_INV_sum~combout\,
	datab => \u8|u2|u0|ALT_INV_co~combout\,
	datac => \ALT_INV_d4[0]~input_o\,
	datad => \ALT_INV_d4[1]~input_o\,
	datae => \ALT_INV_d4[2]~input_o\,
	dataf => \u7|u2|u2|ALT_INV_sum~combout\,
	combout => \u8|u2|u2|co~combout\);

-- Location: LABCELL_X60_Y2_N57
\u4|u3|u5|u1|u0|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u5|u1|u0|u1|sum~combout\ = ( \d4[3]~input_o\ & ( ((!\d4[1]~input_o\ & !\d4[2]~input_o\)) # (\d4[0]~input_o\) ) ) # ( !\d4[3]~input_o\ & ( (!\d4[0]~input_o\ & ((\d4[2]~input_o\) # (\d4[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101011110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[0]~input_o\,
	datac => \ALT_INV_d4[1]~input_o\,
	datad => \ALT_INV_d4[2]~input_o\,
	dataf => \ALT_INV_d4[3]~input_o\,
	combout => \u4|u3|u5|u1|u0|u1|sum~combout\);

-- Location: LABCELL_X62_Y2_N27
\u3|u7|u0|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u0|u2|u3|sum~combout\ = ( \d3[2]~input_o\ & ( !\d3[1]~input_o\ $ (\d3[0]~input_o\) ) ) # ( !\d3[2]~input_o\ & ( (!\d3[1]~input_o\ & (!\d3[0]~input_o\ & \d3[3]~input_o\)) # (\d3[1]~input_o\ & (\d3[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datac => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u7|u0|u2|u3|sum~combout\);

-- Location: LABCELL_X62_Y2_N12
\u7|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u2|co~0_combout\ = ( \u6|u1|u3|co~0_combout\ & ( \u2|u5|u0|u2|u2|sum~0_combout\ & ( (\u3|u7|u0|u2|u2|sum~combout\ & ((!\u2|u2|u5|u1|u0|u3|sum~combout\) # (\u6|u2|u0|sum~0_combout\))) ) ) ) # ( !\u6|u1|u3|co~0_combout\ & ( 
-- \u2|u5|u0|u2|u2|sum~0_combout\ & ( (\u3|u7|u0|u2|u2|sum~combout\ & (((!\u6|u1|u3|co~1_combout\) # (!\u2|u2|u5|u1|u0|u3|sum~combout\)) # (\u6|u2|u0|sum~0_combout\))) ) ) ) # ( \u6|u1|u3|co~0_combout\ & ( !\u2|u5|u0|u2|u2|sum~0_combout\ & ( 
-- (!\u6|u2|u0|sum~0_combout\ & (\u2|u2|u5|u1|u0|u3|sum~combout\ & \u3|u7|u0|u2|u2|sum~combout\)) ) ) ) # ( !\u6|u1|u3|co~0_combout\ & ( !\u2|u5|u0|u2|u2|sum~0_combout\ & ( (!\u6|u2|u0|sum~0_combout\ & (\u6|u1|u3|co~1_combout\ & 
-- (\u2|u2|u5|u1|u0|u3|sum~combout\ & \u3|u7|u0|u2|u2|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000101000000000111111010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|u2|u0|ALT_INV_sum~0_combout\,
	datab => \u6|u1|u3|ALT_INV_co~1_combout\,
	datac => \u2|u2|u5|u1|u0|u3|ALT_INV_sum~combout\,
	datad => \u3|u7|u0|u2|u2|ALT_INV_sum~combout\,
	datae => \u6|u1|u3|ALT_INV_co~0_combout\,
	dataf => \u2|u5|u0|u2|u2|ALT_INV_sum~0_combout\,
	combout => \u7|u2|u2|co~0_combout\);

-- Location: LABCELL_X62_Y2_N18
\u7|u2|u2|co~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u2|co~1_combout\ = ( \u3|u7|u0|u2|u1|sum~combout\ & ( \u7|u1|u3|co~combout\ & ( (\u7|u2|u2|sum~0_combout\ & (\u6|u2|u1|sum~combout\ & ((!\u3|u7|u0|u2|u0|sum~0_combout\) # (\u6|u2|u0|sum~combout\)))) ) ) ) # ( !\u3|u7|u0|u2|u1|sum~combout\ & ( 
-- \u7|u1|u3|co~combout\ & ( (\u7|u2|u2|sum~0_combout\ & (((!\u3|u7|u0|u2|u0|sum~0_combout\) # (\u6|u2|u0|sum~combout\)) # (\u6|u2|u1|sum~combout\))) ) ) ) # ( \u3|u7|u0|u2|u1|sum~combout\ & ( !\u7|u1|u3|co~combout\ & ( (\u7|u2|u2|sum~0_combout\ & 
-- (\u6|u2|u1|sum~combout\ & (\u6|u2|u0|sum~combout\ & !\u3|u7|u0|u2|u0|sum~0_combout\))) ) ) ) # ( !\u3|u7|u0|u2|u1|sum~combout\ & ( !\u7|u1|u3|co~combout\ & ( (\u7|u2|u2|sum~0_combout\ & (((\u6|u2|u0|sum~combout\ & !\u3|u7|u0|u2|u0|sum~0_combout\)) # 
-- (\u6|u2|u1|sum~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010001000000010000000001010101000101010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u2|u2|ALT_INV_sum~0_combout\,
	datab => \u6|u2|u1|ALT_INV_sum~combout\,
	datac => \u6|u2|u0|ALT_INV_sum~combout\,
	datad => \u3|u7|u0|u2|u0|ALT_INV_sum~0_combout\,
	datae => \u3|u7|u0|u2|u1|ALT_INV_sum~combout\,
	dataf => \u7|u1|u3|ALT_INV_co~combout\,
	combout => \u7|u2|u2|co~1_combout\);

-- Location: LABCELL_X57_Y4_N39
\u7|u2|u3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u2|u3|sum~combout\ = !\u3|u7|u0|u2|u3|sum~combout\ $ (((!\u7|u2|u2|co~0_combout\ & !\u7|u2|u2|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	datab => \u7|u2|u2|ALT_INV_co~0_combout\,
	datac => \u7|u2|u2|ALT_INV_co~1_combout\,
	combout => \u7|u2|u3|sum~combout\);

-- Location: LABCELL_X57_Y4_N12
\bin~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~10_combout\ = ( \u9|u2|u1|co~0_combout\ & ( \u7|u2|u3|sum~combout\ & ( !\u8|u2|u2|co~combout\ $ (!\u4|u3|u5|u1|u0|u1|sum~combout\ $ (((!\u8|u2|u2|sum~combout\) # (!\sign~input_o\)))) ) ) ) # ( !\u9|u2|u1|co~0_combout\ & ( \u7|u2|u3|sum~combout\ & ( 
-- !\sign~input_o\ $ (!\u8|u2|u2|co~combout\ $ (!\u4|u3|u5|u1|u0|u1|sum~combout\)) ) ) ) # ( \u9|u2|u1|co~0_combout\ & ( !\u7|u2|u3|sum~combout\ & ( !\u8|u2|u2|co~combout\ $ (!\u4|u3|u5|u1|u0|u1|sum~combout\ $ (((\u8|u2|u2|sum~combout\ & \sign~input_o\)))) ) 
-- ) ) # ( !\u9|u2|u1|co~0_combout\ & ( !\u7|u2|u3|sum~combout\ & ( !\sign~input_o\ $ (!\u8|u2|u2|co~combout\ $ (\u4|u3|u5|u1|u0|u1|sum~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011000111101110000111000011001111001110000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u2|u2|ALT_INV_sum~combout\,
	datab => \ALT_INV_sign~input_o\,
	datac => \u8|u2|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\,
	datae => \u9|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u7|u2|u3|ALT_INV_sum~combout\,
	combout => \bin~10_combout\);

-- Location: LABCELL_X55_Y2_N18
\u4|u3|u5|u1|u0|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|u5|u1|u0|u2|sum~combout\ = ( \d4[1]~input_o\ & ( (\d4[0]~input_o\ & !\d4[3]~input_o\) ) ) # ( !\d4[1]~input_o\ & ( ((\d4[2]~input_o\ & !\d4[0]~input_o\)) # (\d4[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \ALT_INV_d4[0]~input_o\,
	datac => \ALT_INV_d4[3]~input_o\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \u4|u3|u5|u1|u0|u2|sum~combout\);

-- Location: LABCELL_X62_Y2_N54
\u7|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u3|u0|sum~0_combout\ = ( \d3[2]~input_o\ & ( (\d3[0]~input_o\) # (\d3[1]~input_o\) ) ) # ( !\d3[2]~input_o\ & ( (!\d3[1]~input_o\ & (!\d3[0]~input_o\ & \d3[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datab => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u7|u3|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N21
\u8|u3|u0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u3|u0|sum~0_combout\ = ( \u3|u7|u0|u2|u3|sum~combout\ & ( !\u4|u3|u5|u1|u0|u2|sum~combout\ $ (!\u7|u3|u0|sum~0_combout\ $ (((\u7|u2|u2|co~0_combout\) # (\u7|u2|u2|co~1_combout\)))) ) ) # ( !\u3|u7|u0|u2|u3|sum~combout\ & ( 
-- !\u4|u3|u5|u1|u0|u2|sum~combout\ $ (!\u7|u3|u0|sum~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001101010100101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u5|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \u7|u2|u2|ALT_INV_co~1_combout\,
	datac => \u7|u2|u2|ALT_INV_co~0_combout\,
	datad => \u7|u3|u0|ALT_INV_sum~0_combout\,
	dataf => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u8|u3|u0|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N18
\u9|u2|u2|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u2|u2|co~0_combout\ = ( !\u8|u2|u2|sum~combout\ & ( \u9|u2|u1|co~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u9|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u8|u2|u2|ALT_INV_sum~combout\,
	combout => \u9|u2|u2|co~0_combout\);

-- Location: MLABCELL_X59_Y2_N0
\bin~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~11_combout\ = ( \u9|u2|u2|co~0_combout\ & ( \u8|u2|u2|co~combout\ & ( !\u8|u3|u0|sum~0_combout\ $ (((!\u7|u2|u3|sum~combout\ & (!\sign~input_o\ & !\u4|u3|u5|u1|u0|u1|sum~combout\)) # (\u7|u2|u3|sum~combout\ & (\sign~input_o\ & 
-- \u4|u3|u5|u1|u0|u1|sum~combout\)))) ) ) ) # ( !\u9|u2|u2|co~0_combout\ & ( \u8|u2|u2|co~combout\ & ( !\u8|u3|u0|sum~0_combout\ $ (!\sign~input_o\ $ (((\u4|u3|u5|u1|u0|u1|sum~combout\) # (\u7|u2|u3|sum~combout\)))) ) ) ) # ( \u9|u2|u2|co~0_combout\ & ( 
-- !\u8|u2|u2|co~combout\ & ( !\u8|u3|u0|sum~0_combout\ $ (((!\u7|u2|u3|sum~combout\ & ((!\sign~input_o\) # (!\u4|u3|u5|u1|u0|u1|sum~combout\))) # (\u7|u2|u3|sum~combout\ & (!\sign~input_o\ & !\u4|u3|u5|u1|u0|u1|sum~combout\)))) ) ) ) # ( 
-- !\u9|u2|u2|co~0_combout\ & ( !\u8|u2|u2|co~combout\ & ( !\u8|u3|u0|sum~0_combout\ $ (!\sign~input_o\ $ (((\u7|u2|u3|sum~combout\ & \u4|u3|u5|u1|u0|u1|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010101100110101001101001101001010110101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u3|u0|ALT_INV_sum~0_combout\,
	datab => \u7|u2|u3|ALT_INV_sum~combout\,
	datac => \ALT_INV_sign~input_o\,
	datad => \u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\,
	datae => \u9|u2|u2|ALT_INV_co~0_combout\,
	dataf => \u8|u2|u2|ALT_INV_co~combout\,
	combout => \bin~11_combout\);

-- Location: LABCELL_X62_Y2_N57
\u3|u7|u0|u3|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u7|u0|u3|u1|sum~0_combout\ = ( \d3[2]~input_o\ & ( \d3[3]~input_o\ ) ) # ( !\d3[2]~input_o\ & ( (\d3[3]~input_o\ & ((\d3[0]~input_o\) # (\d3[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d3[1]~input_o\,
	datac => \ALT_INV_d3[0]~input_o\,
	datad => \ALT_INV_d3[3]~input_o\,
	dataf => \ALT_INV_d3[2]~input_o\,
	combout => \u3|u7|u0|u3|u1|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N36
\u7|u3|u1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u3|u1|sum~combout\ = ( \u3|u7|u0|u3|u1|sum~0_combout\ & ( (!\u3|u7|u0|u2|u3|sum~combout\) # ((!\u7|u3|u0|sum~0_combout\) # ((!\u7|u2|u2|co~0_combout\ & !\u7|u2|u2|co~1_combout\))) ) ) # ( !\u3|u7|u0|u3|u1|sum~0_combout\ & ( 
-- (\u3|u7|u0|u2|u3|sum~combout\ & (\u7|u3|u0|sum~0_combout\ & ((\u7|u2|u2|co~1_combout\) # (\u7|u2|u2|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010111111110111110101111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	datab => \u7|u2|u2|ALT_INV_co~0_combout\,
	datac => \u7|u3|u0|ALT_INV_sum~0_combout\,
	datad => \u7|u2|u2|ALT_INV_co~1_combout\,
	dataf => \u3|u7|u0|u3|u1|ALT_INV_sum~0_combout\,
	combout => \u7|u3|u1|sum~combout\);

-- Location: LABCELL_X55_Y2_N24
\u4|u6|u0|u3|u1|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u6|u0|u3|u1|sum~0_combout\ = ( \d4[1]~input_o\ & ( !\d4[2]~input_o\ $ (!\d4[0]~input_o\) ) ) # ( !\d4[1]~input_o\ & ( (!\d4[2]~input_o\ & (!\d4[0]~input_o\ $ (!\d4[3]~input_o\))) # (\d4[2]~input_o\ & (\d4[0]~input_o\ & \d4[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \ALT_INV_d4[0]~input_o\,
	datac => \ALT_INV_d4[3]~input_o\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \u4|u6|u0|u3|u1|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N0
\u9|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u9|u3|u0|co~0_combout\ = ( \u9|u2|u1|co~0_combout\ & ( !\u8|u2|u2|sum~combout\ & ( (!\u8|u3|u0|sum~0_combout\ & (!\u7|u2|u3|sum~combout\ & (!\u8|u2|u2|co~combout\ & !\u4|u3|u5|u1|u0|u1|sum~combout\))) # (\u8|u3|u0|sum~0_combout\ & 
-- ((!\u7|u2|u3|sum~combout\ & (\u8|u2|u2|co~combout\ & \u4|u3|u5|u1|u0|u1|sum~combout\)) # (\u7|u2|u3|sum~combout\ & (!\u8|u2|u2|co~combout\ $ (!\u4|u3|u5|u1|u0|u1|sum~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000010001010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u3|u0|ALT_INV_sum~0_combout\,
	datab => \u7|u2|u3|ALT_INV_sum~combout\,
	datac => \u8|u2|u2|ALT_INV_co~combout\,
	datad => \u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\,
	datae => \u9|u2|u1|ALT_INV_co~0_combout\,
	dataf => \u8|u2|u2|ALT_INV_sum~combout\,
	combout => \u9|u3|u0|co~0_combout\);

-- Location: LABCELL_X57_Y4_N24
\u7|u3|u0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u3|u0|sum~combout\ = ( \u3|u7|u0|u2|u3|sum~combout\ & ( !\u7|u3|u0|sum~0_combout\ $ (((!\u7|u2|u2|co~0_combout\ & !\u7|u2|u2|co~1_combout\))) ) ) # ( !\u3|u7|u0|u2|u3|sum~combout\ & ( \u7|u3|u0|sum~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110101010100110011010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u3|u0|ALT_INV_sum~0_combout\,
	datab => \u7|u2|u2|ALT_INV_co~0_combout\,
	datad => \u7|u2|u2|ALT_INV_co~1_combout\,
	dataf => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u7|u3|u0|sum~combout\);

-- Location: LABCELL_X57_Y4_N33
\u8|u3|u0|co\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u3|u0|co~combout\ = ( \u7|u3|u0|sum~combout\ & ( ((!\u7|u2|u3|sum~combout\ & (\u4|u3|u5|u1|u0|u1|sum~combout\ & \u8|u2|u2|co~combout\)) # (\u7|u2|u3|sum~combout\ & ((\u8|u2|u2|co~combout\) # (\u4|u3|u5|u1|u0|u1|sum~combout\)))) # 
-- (\u4|u3|u5|u1|u0|u2|sum~combout\) ) ) # ( !\u7|u3|u0|sum~combout\ & ( (\u4|u3|u5|u1|u0|u2|sum~combout\ & ((!\u7|u2|u3|sum~combout\ & (\u4|u3|u5|u1|u0|u1|sum~combout\ & \u8|u2|u2|co~combout\)) # (\u7|u2|u3|sum~combout\ & ((\u8|u2|u2|co~combout\) # 
-- (\u4|u3|u5|u1|u0|u1|sum~combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010101010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|u5|u1|u0|u2|ALT_INV_sum~combout\,
	datab => \u7|u2|u3|ALT_INV_sum~combout\,
	datac => \u4|u3|u5|u1|u0|u1|ALT_INV_sum~combout\,
	datad => \u8|u2|u2|ALT_INV_co~combout\,
	dataf => \u7|u3|u0|ALT_INV_sum~combout\,
	combout => \u8|u3|u0|co~combout\);

-- Location: LABCELL_X57_Y4_N6
\bin~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~12_combout\ = ( \u8|u3|u0|co~combout\ & ( !\u7|u3|u1|sum~combout\ $ (!\u4|u6|u0|u3|u1|sum~0_combout\ $ (((!\sign~input_o\) # (\u9|u3|u0|co~0_combout\)))) ) ) # ( !\u8|u3|u0|co~combout\ & ( !\u7|u3|u1|sum~combout\ $ (!\u4|u6|u0|u3|u1|sum~0_combout\ $ 
-- (((\sign~input_o\ & !\u9|u3|u0|co~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101011010011010010101101010010110101001011001011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u3|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_sign~input_o\,
	datac => \u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\,
	datad => \u9|u3|u0|ALT_INV_co~0_combout\,
	dataf => \u8|u3|u0|ALT_INV_co~combout\,
	combout => \bin~12_combout\);

-- Location: LABCELL_X55_Y2_N21
\u4|u6|u0|u3|u2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u6|u0|u3|u2|sum~combout\ = ( \d4[1]~input_o\ & ( !\d4[3]~input_o\ $ (((\d4[2]~input_o\ & \d4[0]~input_o\))) ) ) # ( !\d4[1]~input_o\ & ( (!\d4[2]~input_o\ & (\d4[0]~input_o\ & \d4[3]~input_o\)) # (\d4[2]~input_o\ & ((\d4[3]~input_o\) # 
-- (\d4[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011111101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datab => \ALT_INV_d4[0]~input_o\,
	datad => \ALT_INV_d4[3]~input_o\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \u4|u6|u0|u3|u2|sum~combout\);

-- Location: LABCELL_X57_Y4_N42
\u8|u3|u2|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u8|u3|u2|sum~0_combout\ = ( \u4|u6|u0|u3|u2|sum~combout\ & ( \u7|u2|u2|co~0_combout\ & ( (!\u3|u7|u0|u2|u3|sum~combout\) # ((!\u3|u7|u0|u3|u1|sum~0_combout\) # (!\u7|u3|u0|sum~0_combout\)) ) ) ) # ( !\u4|u6|u0|u3|u2|sum~combout\ & ( 
-- \u7|u2|u2|co~0_combout\ & ( (\u3|u7|u0|u2|u3|sum~combout\ & (\u3|u7|u0|u3|u1|sum~0_combout\ & \u7|u3|u0|sum~0_combout\)) ) ) ) # ( \u4|u6|u0|u3|u2|sum~combout\ & ( !\u7|u2|u2|co~0_combout\ & ( (!\u3|u7|u0|u2|u3|sum~combout\) # 
-- ((!\u3|u7|u0|u3|u1|sum~0_combout\) # ((!\u7|u3|u0|sum~0_combout\) # (!\u7|u2|u2|co~1_combout\))) ) ) ) # ( !\u4|u6|u0|u3|u2|sum~combout\ & ( !\u7|u2|u2|co~0_combout\ & ( (\u3|u7|u0|u2|u3|sum~combout\ & (\u3|u7|u0|u3|u1|sum~0_combout\ & 
-- (\u7|u3|u0|sum~0_combout\ & \u7|u2|u2|co~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	datab => \u3|u7|u0|u3|u1|ALT_INV_sum~0_combout\,
	datac => \u7|u3|u0|ALT_INV_sum~0_combout\,
	datad => \u7|u2|u2|ALT_INV_co~1_combout\,
	datae => \u4|u6|u0|u3|u2|ALT_INV_sum~combout\,
	dataf => \u7|u2|u2|ALT_INV_co~0_combout\,
	combout => \u8|u3|u2|sum~0_combout\);

-- Location: LABCELL_X57_Y4_N48
\bin~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~13_combout\ = ( \u4|u6|u0|u3|u1|sum~0_combout\ & ( \u8|u3|u0|co~combout\ & ( !\u8|u3|u2|sum~0_combout\ $ (((\sign~input_o\ & ((!\u9|u3|u0|co~0_combout\) # (\u7|u3|u1|sum~combout\))))) ) ) ) # ( !\u4|u6|u0|u3|u1|sum~0_combout\ & ( 
-- \u8|u3|u0|co~combout\ & ( !\u8|u3|u2|sum~0_combout\ $ (((!\u7|u3|u1|sum~combout\ & (!\sign~input_o\)) # (\u7|u3|u1|sum~combout\ & (\sign~input_o\ & !\u9|u3|u0|co~0_combout\)))) ) ) ) # ( \u4|u6|u0|u3|u1|sum~0_combout\ & ( !\u8|u3|u0|co~combout\ & ( 
-- !\u8|u3|u2|sum~0_combout\ $ (((!\u7|u3|u1|sum~combout\ & (!\sign~input_o\)) # (\u7|u3|u1|sum~combout\ & (\sign~input_o\ & !\u9|u3|u0|co~0_combout\)))) ) ) ) # ( !\u4|u6|u0|u3|u1|sum~0_combout\ & ( !\u8|u3|u0|co~combout\ & ( !\u8|u3|u2|sum~0_combout\ $ 
-- (((!\sign~input_o\) # ((!\u7|u3|u1|sum~combout\ & \u9|u3|u0|co~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111001110011001111001100001100111100110001100111000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u3|u1|ALT_INV_sum~combout\,
	datab => \ALT_INV_sign~input_o\,
	datac => \u9|u3|u0|ALT_INV_co~0_combout\,
	datad => \u8|u3|u2|ALT_INV_sum~0_combout\,
	datae => \u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\,
	dataf => \u8|u3|u0|ALT_INV_co~combout\,
	combout => \bin~13_combout\);

-- Location: LABCELL_X57_Y4_N57
\bin~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~15_combout\ = ( \u9|u3|u0|co~0_combout\ & ( (!\u8|u3|u0|co~combout\ & ((!\u4|u6|u0|u3|u1|sum~0_combout\ & (!\u8|u3|u2|sum~0_combout\ & !\u7|u3|u1|sum~combout\)) # (\u4|u6|u0|u3|u1|sum~0_combout\ & (\u8|u3|u2|sum~0_combout\ & 
-- \u7|u3|u1|sum~combout\)))) # (\u8|u3|u0|co~combout\ & (\u8|u3|u2|sum~0_combout\ & (!\u4|u6|u0|u3|u1|sum~0_combout\ $ (!\u7|u3|u1|sum~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000001000001101000000100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u3|u0|ALT_INV_co~combout\,
	datab => \u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\,
	datac => \u8|u3|u2|ALT_INV_sum~0_combout\,
	datad => \u7|u3|u1|ALT_INV_sum~combout\,
	dataf => \u9|u3|u0|ALT_INV_co~0_combout\,
	combout => \bin~15_combout\);

-- Location: LABCELL_X55_Y2_N27
\bin~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~16_combout\ = ( \d4[1]~input_o\ & ( (!\d4[2]~input_o\ & ((\d4[3]~input_o\))) # (\d4[2]~input_o\ & (!\d4[0]~input_o\ & !\d4[3]~input_o\)) ) ) # ( !\d4[1]~input_o\ & ( \d4[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000101010100101000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d4[2]~input_o\,
	datac => \ALT_INV_d4[0]~input_o\,
	datad => \ALT_INV_d4[3]~input_o\,
	dataf => \ALT_INV_d4[1]~input_o\,
	combout => \bin~16_combout\);

-- Location: LABCELL_X57_Y4_N27
\u7|u3|u0|co~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u7|u3|u0|co~0_combout\ = ( \u3|u7|u0|u2|u3|sum~combout\ & ( (\u7|u3|u0|sum~0_combout\ & ((\u7|u2|u2|co~1_combout\) # (\u7|u2|u2|co~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u7|u3|u0|ALT_INV_sum~0_combout\,
	datac => \u7|u2|u2|ALT_INV_co~0_combout\,
	datad => \u7|u2|u2|ALT_INV_co~1_combout\,
	dataf => \u3|u7|u0|u2|u3|ALT_INV_sum~combout\,
	combout => \u7|u3|u0|co~0_combout\);

-- Location: LABCELL_X57_Y4_N54
\bin~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~14_combout\ = ( \u3|u7|u0|u3|u1|sum~0_combout\ & ( (!\u8|u3|u0|co~combout\ & (\u4|u6|u0|u3|u2|sum~combout\ & ((\u7|u3|u0|co~0_combout\) # (\u4|u6|u0|u3|u1|sum~0_combout\)))) # (\u8|u3|u0|co~combout\ & (((\u4|u6|u0|u3|u1|sum~0_combout\ & 
-- \u7|u3|u0|co~0_combout\)) # (\u4|u6|u0|u3|u2|sum~combout\))) ) ) # ( !\u3|u7|u0|u3|u1|sum~0_combout\ & ( (\u4|u6|u0|u3|u2|sum~combout\ & ((!\u8|u3|u0|co~combout\ & (\u4|u6|u0|u3|u1|sum~0_combout\ & \u7|u3|u0|co~0_combout\)) # (\u8|u3|u0|co~combout\ & 
-- ((\u7|u3|u0|co~0_combout\) # (\u4|u6|u0|u3|u1|sum~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100000001011111110000000101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u8|u3|u0|ALT_INV_co~combout\,
	datab => \u4|u6|u0|u3|u1|ALT_INV_sum~0_combout\,
	datac => \u7|u3|u0|ALT_INV_co~0_combout\,
	datad => \u4|u6|u0|u3|u2|ALT_INV_sum~combout\,
	dataf => \u3|u7|u0|u3|u1|ALT_INV_sum~0_combout\,
	combout => \bin~14_combout\);

-- Location: LABCELL_X57_Y4_N9
\bin~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bin~17_combout\ = ( \bin~14_combout\ & ( !\bin~16_combout\ $ (((\sign~input_o\ & !\bin~15_combout\))) ) ) # ( !\bin~14_combout\ & ( !\bin~16_combout\ $ (((!\sign~input_o\) # (\bin~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111111001111001100001100111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sign~input_o\,
	datac => \ALT_INV_bin~15_combout\,
	datad => \ALT_INV_bin~16_combout\,
	dataf => \ALT_INV_bin~14_combout\,
	combout => \bin~17_combout\);

-- Location: LABCELL_X9_Y77_N3
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


