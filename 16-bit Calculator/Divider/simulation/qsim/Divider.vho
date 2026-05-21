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

-- DATE "05/21/2026 11:30:12"

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
	clk : IN std_logic;
	T : IN std_logic;
	rst_n : IN std_logic;
	count : OUT std_logic_vector(15 DOWNTO 0);
	qm : OUT std_logic
	);
END Divider;

-- Design Ports Information
-- count[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qm	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_qm : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \u1|u1|S_m~combout\ : std_logic;
SIGNAL \u1|u1|Q_m~combout\ : std_logic;
SIGNAL \u1|u1|R_m~combout\ : std_logic;
SIGNAL \u1|u1|Qn_m~combout\ : std_logic;
SIGNAL \u1|u1|R_s~combout\ : std_logic;
SIGNAL \u1|u1|Qn_s~combout\ : std_logic;
SIGNAL \u1|u1|S_s~combout\ : std_logic;
SIGNAL \u1|u1|Q_s~combout\ : std_logic;
SIGNAL \u1|u2|R_m~combout\ : std_logic;
SIGNAL \u1|u2|Qn_m~combout\ : std_logic;
SIGNAL \u1|u2|R_s~combout\ : std_logic;
SIGNAL \u1|u2|Qn_s~combout\ : std_logic;
SIGNAL \u1|u2|S_m~combout\ : std_logic;
SIGNAL \u1|u2|Q_m~combout\ : std_logic;
SIGNAL \u1|u2|S_s~combout\ : std_logic;
SIGNAL \u1|u2|Q_s~combout\ : std_logic;
SIGNAL \u1|u3|S_m~combout\ : std_logic;
SIGNAL \u1|u3|Q_m~combout\ : std_logic;
SIGNAL \u1|u3|R_m~combout\ : std_logic;
SIGNAL \u1|u3|Qn_m~combout\ : std_logic;
SIGNAL \u1|u3|R_s~combout\ : std_logic;
SIGNAL \u1|u3|Qn_s~combout\ : std_logic;
SIGNAL \u1|u3|S_s~combout\ : std_logic;
SIGNAL \u1|u3|Q_s~combout\ : std_logic;
SIGNAL \u1|u4|S_m~combout\ : std_logic;
SIGNAL \u1|u4|Q_m~combout\ : std_logic;
SIGNAL \u1|u4|R_m~combout\ : std_logic;
SIGNAL \u1|u4|Qn_m~combout\ : std_logic;
SIGNAL \u1|u4|R_s~combout\ : std_logic;
SIGNAL \u1|u4|Qn_s~combout\ : std_logic;
SIGNAL \u1|u4|S_s~combout\ : std_logic;
SIGNAL \u1|u4|Q_s~combout\ : std_logic;
SIGNAL \u2|u1|R_m~combout\ : std_logic;
SIGNAL \u2|u1|S_m~combout\ : std_logic;
SIGNAL \u2|u1|Q_m~combout\ : std_logic;
SIGNAL \u2|u1|Qn_m~combout\ : std_logic;
SIGNAL \u2|u1|R_s~combout\ : std_logic;
SIGNAL \u2|u1|Qn_s~combout\ : std_logic;
SIGNAL \u2|u1|S_s~combout\ : std_logic;
SIGNAL \u2|u1|Q_s~combout\ : std_logic;
SIGNAL \u2|u2|R_m~combout\ : std_logic;
SIGNAL \u2|u2|Qn_m~combout\ : std_logic;
SIGNAL \u2|u2|R_s~combout\ : std_logic;
SIGNAL \u2|u2|Qn_s~combout\ : std_logic;
SIGNAL \u2|u2|S_m~combout\ : std_logic;
SIGNAL \u2|u2|Q_m~combout\ : std_logic;
SIGNAL \u2|u2|S_s~combout\ : std_logic;
SIGNAL \u2|u2|Q_s~combout\ : std_logic;
SIGNAL \u2|u3|R_m~combout\ : std_logic;
SIGNAL \u2|u3|S_m~combout\ : std_logic;
SIGNAL \u2|u3|Q_m~combout\ : std_logic;
SIGNAL \u2|u3|Qn_m~combout\ : std_logic;
SIGNAL \u2|u3|R_s~combout\ : std_logic;
SIGNAL \u2|u3|Qn_s~combout\ : std_logic;
SIGNAL \u2|u3|S_s~combout\ : std_logic;
SIGNAL \u2|u3|Q_s~combout\ : std_logic;
SIGNAL \u2|c[2]~0_combout\ : std_logic;
SIGNAL \u2|c[2]~1_combout\ : std_logic;
SIGNAL \u2|u4|S_m~combout\ : std_logic;
SIGNAL \u2|u4|Q_m~combout\ : std_logic;
SIGNAL \u2|u4|R_m~combout\ : std_logic;
SIGNAL \u2|u4|Qn_m~combout\ : std_logic;
SIGNAL \u2|u4|R_s~combout\ : std_logic;
SIGNAL \u2|u4|Qn_s~combout\ : std_logic;
SIGNAL \u2|u4|S_s~combout\ : std_logic;
SIGNAL \u2|u4|Q_s~combout\ : std_logic;
SIGNAL \u3|u1|R_m~combout\ : std_logic;
SIGNAL \u3|u1|Qn_m~combout\ : std_logic;
SIGNAL \u3|u1|R_s~combout\ : std_logic;
SIGNAL \u3|u1|Qn_s~combout\ : std_logic;
SIGNAL \u3|u1|S_m~combout\ : std_logic;
SIGNAL \u3|u1|Q_m~combout\ : std_logic;
SIGNAL \u3|u1|S_s~combout\ : std_logic;
SIGNAL \u3|u1|Q_s~combout\ : std_logic;
SIGNAL \u3|u2|R_m~combout\ : std_logic;
SIGNAL \u3|u2|Qn_m~combout\ : std_logic;
SIGNAL \u3|u2|R_s~combout\ : std_logic;
SIGNAL \u3|u2|Qn_s~combout\ : std_logic;
SIGNAL \u3|u2|S_m~combout\ : std_logic;
SIGNAL \u3|u2|Q_m~combout\ : std_logic;
SIGNAL \u3|u2|S_s~combout\ : std_logic;
SIGNAL \u3|u2|Q_s~combout\ : std_logic;
SIGNAL \u3|u3|R_m~combout\ : std_logic;
SIGNAL \u3|u3|S_m~combout\ : std_logic;
SIGNAL \u3|u3|Q_m~combout\ : std_logic;
SIGNAL \u3|u3|Qn_m~combout\ : std_logic;
SIGNAL \u3|u3|R_s~combout\ : std_logic;
SIGNAL \u3|u3|Qn_s~combout\ : std_logic;
SIGNAL \u3|u3|S_s~combout\ : std_logic;
SIGNAL \u3|u3|Q_s~combout\ : std_logic;
SIGNAL \u3|u4|R_m~combout\ : std_logic;
SIGNAL \u3|u4|S_m~combout\ : std_logic;
SIGNAL \u3|u4|Q_m~combout\ : std_logic;
SIGNAL \u3|u4|Qn_m~combout\ : std_logic;
SIGNAL \u3|u4|R_s~combout\ : std_logic;
SIGNAL \u3|u4|Qn_s~combout\ : std_logic;
SIGNAL \u3|u4|S_s~combout\ : std_logic;
SIGNAL \u3|u4|Q_s~combout\ : std_logic;
SIGNAL \u4|u1|S_m~combout\ : std_logic;
SIGNAL \u4|u1|Q_m~combout\ : std_logic;
SIGNAL \u4|u1|R_m~combout\ : std_logic;
SIGNAL \u4|u1|Qn_m~combout\ : std_logic;
SIGNAL \u4|u1|R_s~combout\ : std_logic;
SIGNAL \u4|u1|Qn_s~combout\ : std_logic;
SIGNAL \u4|u1|S_s~combout\ : std_logic;
SIGNAL \u4|u1|Q_s~combout\ : std_logic;
SIGNAL \u4|u2|R_m~combout\ : std_logic;
SIGNAL \u4|u2|S_m~combout\ : std_logic;
SIGNAL \u4|u2|Q_m~combout\ : std_logic;
SIGNAL \u4|u2|Qn_m~combout\ : std_logic;
SIGNAL \u4|u2|R_s~combout\ : std_logic;
SIGNAL \u4|u2|Qn_s~combout\ : std_logic;
SIGNAL \u4|u2|S_s~combout\ : std_logic;
SIGNAL \u4|u2|Q_s~combout\ : std_logic;
SIGNAL \u4|c[1]~0_combout\ : std_logic;
SIGNAL \u4|u3|R_m~combout\ : std_logic;
SIGNAL \u4|u3|S_m~combout\ : std_logic;
SIGNAL \u4|u3|Q_m~combout\ : std_logic;
SIGNAL \u4|u3|Qn_m~combout\ : std_logic;
SIGNAL \u4|u3|R_s~combout\ : std_logic;
SIGNAL \u4|u3|Qn_s~combout\ : std_logic;
SIGNAL \u4|u3|S_s~combout\ : std_logic;
SIGNAL \u4|u3|Q_s~combout\ : std_logic;
SIGNAL \u4|u4|S_m~combout\ : std_logic;
SIGNAL \u4|u4|Q_m~combout\ : std_logic;
SIGNAL \u4|u4|R_m~combout\ : std_logic;
SIGNAL \u4|u4|Qn_m~combout\ : std_logic;
SIGNAL \u4|u4|R_s~combout\ : std_logic;
SIGNAL \u4|u4|Qn_s~combout\ : std_logic;
SIGNAL \u4|u4|S_s~combout\ : std_logic;
SIGNAL \u4|u4|Q_s~combout\ : std_logic;
SIGNAL \u4|tc~0_combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_Qn_s~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_S_s~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_Q_s~combout\ : std_logic;
SIGNAL \u4|ALT_INV_c[1]~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_c[2]~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_c[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_T~input_o\ : std_logic;
SIGNAL \u4|u4|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_R_m~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_S_m~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_Qn_m~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u4|u4|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u4|u2|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u4|u1|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u3|u4|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u3|u3|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u3|u2|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u3|u1|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u4|u3|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u2|u3|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u2|u2|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u2|u1|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u1|u4|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u1|u3|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u1|u2|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u1|u1|ALT_INV_Q_m~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_R_s~combout\ : std_logic;
SIGNAL \u2|u4|ALT_INV_Q_m~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_T <= T;
ww_rst_n <= rst_n;
count <= ww_count;
qm <= ww_qm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u4|u4|ALT_INV_Qn_s~combout\ <= NOT \u4|u4|Qn_s~combout\;
\u4|u4|ALT_INV_S_s~combout\ <= NOT \u4|u4|S_s~combout\;
\u4|u2|ALT_INV_Qn_s~combout\ <= NOT \u4|u2|Qn_s~combout\;
\u4|u2|ALT_INV_S_s~combout\ <= NOT \u4|u2|S_s~combout\;
\u4|u1|ALT_INV_Qn_s~combout\ <= NOT \u4|u1|Qn_s~combout\;
\u4|u1|ALT_INV_S_s~combout\ <= NOT \u4|u1|S_s~combout\;
\u3|u4|ALT_INV_Qn_s~combout\ <= NOT \u3|u4|Qn_s~combout\;
\u3|u4|ALT_INV_S_s~combout\ <= NOT \u3|u4|S_s~combout\;
\u3|u3|ALT_INV_Qn_s~combout\ <= NOT \u3|u3|Qn_s~combout\;
\u3|u3|ALT_INV_S_s~combout\ <= NOT \u3|u3|S_s~combout\;
\u3|u2|ALT_INV_Qn_s~combout\ <= NOT \u3|u2|Qn_s~combout\;
\u3|u2|ALT_INV_S_s~combout\ <= NOT \u3|u2|S_s~combout\;
\u3|u1|ALT_INV_Qn_s~combout\ <= NOT \u3|u1|Qn_s~combout\;
\u3|u1|ALT_INV_S_s~combout\ <= NOT \u3|u1|S_s~combout\;
\u4|u3|ALT_INV_Qn_s~combout\ <= NOT \u4|u3|Qn_s~combout\;
\u4|u3|ALT_INV_S_s~combout\ <= NOT \u4|u3|S_s~combout\;
\u2|u3|ALT_INV_Qn_s~combout\ <= NOT \u2|u3|Qn_s~combout\;
\u2|u3|ALT_INV_S_s~combout\ <= NOT \u2|u3|S_s~combout\;
\u2|u2|ALT_INV_Qn_s~combout\ <= NOT \u2|u2|Qn_s~combout\;
\u2|u2|ALT_INV_S_s~combout\ <= NOT \u2|u2|S_s~combout\;
\u2|u1|ALT_INV_Qn_s~combout\ <= NOT \u2|u1|Qn_s~combout\;
\u2|u1|ALT_INV_S_s~combout\ <= NOT \u2|u1|S_s~combout\;
\u1|u4|ALT_INV_Qn_s~combout\ <= NOT \u1|u4|Qn_s~combout\;
\u1|u4|ALT_INV_S_s~combout\ <= NOT \u1|u4|S_s~combout\;
\u1|u3|ALT_INV_Qn_s~combout\ <= NOT \u1|u3|Qn_s~combout\;
\u1|u3|ALT_INV_S_s~combout\ <= NOT \u1|u3|S_s~combout\;
\u1|u2|ALT_INV_Qn_s~combout\ <= NOT \u1|u2|Qn_s~combout\;
\u1|u2|ALT_INV_S_s~combout\ <= NOT \u1|u2|S_s~combout\;
\u1|u1|ALT_INV_Qn_s~combout\ <= NOT \u1|u1|Qn_s~combout\;
\u1|u1|ALT_INV_S_s~combout\ <= NOT \u1|u1|S_s~combout\;
\u2|u4|ALT_INV_Qn_s~combout\ <= NOT \u2|u4|Qn_s~combout\;
\u2|u4|ALT_INV_S_s~combout\ <= NOT \u2|u4|S_s~combout\;
\u4|u4|ALT_INV_Q_s~combout\ <= NOT \u4|u4|Q_s~combout\;
\u4|u2|ALT_INV_Q_s~combout\ <= NOT \u4|u2|Q_s~combout\;
\u4|u1|ALT_INV_Q_s~combout\ <= NOT \u4|u1|Q_s~combout\;
\u3|u4|ALT_INV_Q_s~combout\ <= NOT \u3|u4|Q_s~combout\;
\u3|u3|ALT_INV_Q_s~combout\ <= NOT \u3|u3|Q_s~combout\;
\u3|u2|ALT_INV_Q_s~combout\ <= NOT \u3|u2|Q_s~combout\;
\u3|u1|ALT_INV_Q_s~combout\ <= NOT \u3|u1|Q_s~combout\;
\u4|u3|ALT_INV_Q_s~combout\ <= NOT \u4|u3|Q_s~combout\;
\u2|u3|ALT_INV_Q_s~combout\ <= NOT \u2|u3|Q_s~combout\;
\u2|u2|ALT_INV_Q_s~combout\ <= NOT \u2|u2|Q_s~combout\;
\u2|u1|ALT_INV_Q_s~combout\ <= NOT \u2|u1|Q_s~combout\;
\u1|u4|ALT_INV_Q_s~combout\ <= NOT \u1|u4|Q_s~combout\;
\u1|u3|ALT_INV_Q_s~combout\ <= NOT \u1|u3|Q_s~combout\;
\u1|u2|ALT_INV_Q_s~combout\ <= NOT \u1|u2|Q_s~combout\;
\u1|u1|ALT_INV_Q_s~combout\ <= NOT \u1|u1|Q_s~combout\;
\u2|u4|ALT_INV_Q_s~combout\ <= NOT \u2|u4|Q_s~combout\;
\u4|ALT_INV_c[1]~0_combout\ <= NOT \u4|c[1]~0_combout\;
\u2|ALT_INV_c[2]~1_combout\ <= NOT \u2|c[2]~1_combout\;
\u2|ALT_INV_c[2]~0_combout\ <= NOT \u2|c[2]~0_combout\;
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_T~input_o\ <= NOT \T~input_o\;
\u4|u4|ALT_INV_R_m~combout\ <= NOT \u4|u4|R_m~combout\;
\u4|u2|ALT_INV_R_m~combout\ <= NOT \u4|u2|R_m~combout\;
\u2|u3|ALT_INV_R_m~combout\ <= NOT \u2|u3|R_m~combout\;
\u4|u4|ALT_INV_S_m~combout\ <= NOT \u4|u4|S_m~combout\;
\u4|u3|ALT_INV_R_m~combout\ <= NOT \u4|u3|R_m~combout\;
\u4|u4|ALT_INV_Qn_m~combout\ <= NOT \u4|u4|Qn_m~combout\;
\u4|u2|ALT_INV_S_m~combout\ <= NOT \u4|u2|S_m~combout\;
\u4|u1|ALT_INV_R_m~combout\ <= NOT \u4|u1|R_m~combout\;
\u4|u2|ALT_INV_Qn_m~combout\ <= NOT \u4|u2|Qn_m~combout\;
\u4|u1|ALT_INV_S_m~combout\ <= NOT \u4|u1|S_m~combout\;
\u3|u4|ALT_INV_R_m~combout\ <= NOT \u3|u4|R_m~combout\;
\u4|u1|ALT_INV_Qn_m~combout\ <= NOT \u4|u1|Qn_m~combout\;
\u3|u4|ALT_INV_S_m~combout\ <= NOT \u3|u4|S_m~combout\;
\u3|u3|ALT_INV_R_m~combout\ <= NOT \u3|u3|R_m~combout\;
\u3|u4|ALT_INV_Qn_m~combout\ <= NOT \u3|u4|Qn_m~combout\;
\u3|u3|ALT_INV_S_m~combout\ <= NOT \u3|u3|S_m~combout\;
\u3|u2|ALT_INV_R_m~combout\ <= NOT \u3|u2|R_m~combout\;
\u3|u3|ALT_INV_Qn_m~combout\ <= NOT \u3|u3|Qn_m~combout\;
\u3|u2|ALT_INV_S_m~combout\ <= NOT \u3|u2|S_m~combout\;
\u3|u1|ALT_INV_R_m~combout\ <= NOT \u3|u1|R_m~combout\;
\u3|u2|ALT_INV_Qn_m~combout\ <= NOT \u3|u2|Qn_m~combout\;
\u3|u1|ALT_INV_S_m~combout\ <= NOT \u3|u1|S_m~combout\;
\u2|u4|ALT_INV_R_m~combout\ <= NOT \u2|u4|R_m~combout\;
\u3|u1|ALT_INV_Qn_m~combout\ <= NOT \u3|u1|Qn_m~combout\;
\u4|u3|ALT_INV_S_m~combout\ <= NOT \u4|u3|S_m~combout\;
\u4|u3|ALT_INV_Qn_m~combout\ <= NOT \u4|u3|Qn_m~combout\;
\u2|u3|ALT_INV_S_m~combout\ <= NOT \u2|u3|S_m~combout\;
\u2|u2|ALT_INV_R_m~combout\ <= NOT \u2|u2|R_m~combout\;
\u2|u3|ALT_INV_Qn_m~combout\ <= NOT \u2|u3|Qn_m~combout\;
\u2|u2|ALT_INV_S_m~combout\ <= NOT \u2|u2|S_m~combout\;
\u2|u1|ALT_INV_R_m~combout\ <= NOT \u2|u1|R_m~combout\;
\u2|u2|ALT_INV_Qn_m~combout\ <= NOT \u2|u2|Qn_m~combout\;
\u2|u1|ALT_INV_S_m~combout\ <= NOT \u2|u1|S_m~combout\;
\u1|u4|ALT_INV_R_m~combout\ <= NOT \u1|u4|R_m~combout\;
\u2|u1|ALT_INV_Qn_m~combout\ <= NOT \u2|u1|Qn_m~combout\;
\u1|u4|ALT_INV_S_m~combout\ <= NOT \u1|u4|S_m~combout\;
\u1|u3|ALT_INV_R_m~combout\ <= NOT \u1|u3|R_m~combout\;
\u1|u4|ALT_INV_Qn_m~combout\ <= NOT \u1|u4|Qn_m~combout\;
\u1|u3|ALT_INV_S_m~combout\ <= NOT \u1|u3|S_m~combout\;
\u1|u2|ALT_INV_R_m~combout\ <= NOT \u1|u2|R_m~combout\;
\u1|u3|ALT_INV_Qn_m~combout\ <= NOT \u1|u3|Qn_m~combout\;
\u1|u2|ALT_INV_S_m~combout\ <= NOT \u1|u2|S_m~combout\;
\u1|u1|ALT_INV_R_m~combout\ <= NOT \u1|u1|R_m~combout\;
\u1|u2|ALT_INV_Qn_m~combout\ <= NOT \u1|u2|Qn_m~combout\;
\u1|u1|ALT_INV_S_m~combout\ <= NOT \u1|u1|S_m~combout\;
\u1|u1|ALT_INV_Qn_m~combout\ <= NOT \u1|u1|Qn_m~combout\;
\u2|u4|ALT_INV_S_m~combout\ <= NOT \u2|u4|S_m~combout\;
\u2|u4|ALT_INV_Qn_m~combout\ <= NOT \u2|u4|Qn_m~combout\;
\u4|u4|ALT_INV_R_s~combout\ <= NOT \u4|u4|R_s~combout\;
\u4|u4|ALT_INV_Q_m~combout\ <= NOT \u4|u4|Q_m~combout\;
\u4|u2|ALT_INV_R_s~combout\ <= NOT \u4|u2|R_s~combout\;
\u4|u2|ALT_INV_Q_m~combout\ <= NOT \u4|u2|Q_m~combout\;
\u4|u1|ALT_INV_R_s~combout\ <= NOT \u4|u1|R_s~combout\;
\u4|u1|ALT_INV_Q_m~combout\ <= NOT \u4|u1|Q_m~combout\;
\u3|u4|ALT_INV_R_s~combout\ <= NOT \u3|u4|R_s~combout\;
\u3|u4|ALT_INV_Q_m~combout\ <= NOT \u3|u4|Q_m~combout\;
\u3|u3|ALT_INV_R_s~combout\ <= NOT \u3|u3|R_s~combout\;
\u3|u3|ALT_INV_Q_m~combout\ <= NOT \u3|u3|Q_m~combout\;
\u3|u2|ALT_INV_R_s~combout\ <= NOT \u3|u2|R_s~combout\;
\u3|u2|ALT_INV_Q_m~combout\ <= NOT \u3|u2|Q_m~combout\;
\u3|u1|ALT_INV_R_s~combout\ <= NOT \u3|u1|R_s~combout\;
\u3|u1|ALT_INV_Q_m~combout\ <= NOT \u3|u1|Q_m~combout\;
\u4|u3|ALT_INV_R_s~combout\ <= NOT \u4|u3|R_s~combout\;
\u4|u3|ALT_INV_Q_m~combout\ <= NOT \u4|u3|Q_m~combout\;
\u2|u3|ALT_INV_R_s~combout\ <= NOT \u2|u3|R_s~combout\;
\u2|u3|ALT_INV_Q_m~combout\ <= NOT \u2|u3|Q_m~combout\;
\u2|u2|ALT_INV_R_s~combout\ <= NOT \u2|u2|R_s~combout\;
\u2|u2|ALT_INV_Q_m~combout\ <= NOT \u2|u2|Q_m~combout\;
\u2|u1|ALT_INV_R_s~combout\ <= NOT \u2|u1|R_s~combout\;
\u2|u1|ALT_INV_Q_m~combout\ <= NOT \u2|u1|Q_m~combout\;
\u1|u4|ALT_INV_R_s~combout\ <= NOT \u1|u4|R_s~combout\;
\u1|u4|ALT_INV_Q_m~combout\ <= NOT \u1|u4|Q_m~combout\;
\u1|u3|ALT_INV_R_s~combout\ <= NOT \u1|u3|R_s~combout\;
\u1|u3|ALT_INV_Q_m~combout\ <= NOT \u1|u3|Q_m~combout\;
\u1|u2|ALT_INV_R_s~combout\ <= NOT \u1|u2|R_s~combout\;
\u1|u2|ALT_INV_Q_m~combout\ <= NOT \u1|u2|Q_m~combout\;
\u1|u1|ALT_INV_R_s~combout\ <= NOT \u1|u1|R_s~combout\;
\u1|u1|ALT_INV_Q_m~combout\ <= NOT \u1|u1|Q_m~combout\;
\u2|u4|ALT_INV_R_s~combout\ <= NOT \u2|u4|R_s~combout\;
\u2|u4|ALT_INV_Q_m~combout\ <= NOT \u2|u4|Q_m~combout\;

-- Location: IOOBUF_X0_Y20_N39
\count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u1|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(0));

-- Location: IOOBUF_X0_Y18_N79
\count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u2|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(1));

-- Location: IOOBUF_X10_Y0_N93
\count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u3|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(2));

-- Location: IOOBUF_X0_Y20_N56
\count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|u4|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(3));

-- Location: IOOBUF_X0_Y20_N22
\count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u1|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(4));

-- Location: IOOBUF_X10_Y0_N76
\count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u2|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(5));

-- Location: IOOBUF_X54_Y20_N22
\count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u3|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(6));

-- Location: IOOBUF_X0_Y21_N5
\count[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|u4|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(7));

-- Location: IOOBUF_X0_Y18_N62
\count[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u1|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(8));

-- Location: IOOBUF_X0_Y19_N22
\count[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u2|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(9));

-- Location: IOOBUF_X0_Y18_N45
\count[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u3|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(10));

-- Location: IOOBUF_X0_Y19_N39
\count[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|u4|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(11));

-- Location: IOOBUF_X0_Y21_N56
\count[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u1|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(12));

-- Location: IOOBUF_X0_Y18_N96
\count[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u2|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(13));

-- Location: IOOBUF_X0_Y21_N22
\count[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u3|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(14));

-- Location: IOOBUF_X0_Y19_N5
\count[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|u4|Q_s~combout\,
	devoe => ww_devoe,
	o => ww_count(15));

-- Location: IOOBUF_X0_Y21_N39
\qm~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|tc~0_combout\,
	devoe => ww_devoe,
	o => ww_qm);

-- Location: IOIBUF_X0_Y19_N55
\rst_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\T~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: MLABCELL_X4_Y20_N15
\u1|u1|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|S_m~combout\ = LCELL(( \u1|u1|Qn_s~combout\ & ( (!\clk~input_o\) # (!\T~input_o\) ) ) # ( !\u1|u1|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_T~input_o\,
	dataf => \u1|u1|ALT_INV_Qn_s~combout\,
	combout => \u1|u1|S_m~combout\);

-- Location: MLABCELL_X4_Y20_N30
\u1|u1|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|Q_m~combout\ = LCELL(( \u1|u1|S_m~combout\ & ( !\u1|u1|Qn_m~combout\ ) ) # ( !\u1|u1|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|ALT_INV_Qn_m~combout\,
	dataf => \u1|u1|ALT_INV_S_m~combout\,
	combout => \u1|u1|Q_m~combout\);

-- Location: MLABCELL_X4_Y20_N12
\u1|u1|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|R_m~combout\ = LCELL(( \u1|u1|Q_s~combout\ & ( (!\clk~input_o\) # (!\T~input_o\) ) ) # ( !\u1|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \ALT_INV_T~input_o\,
	dataf => \u1|u1|ALT_INV_Q_s~combout\,
	combout => \u1|u1|R_m~combout\);

-- Location: MLABCELL_X4_Y20_N51
\u1|u1|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|Qn_m~combout\ = LCELL(( \u1|u1|R_m~combout\ & ( (!\u1|u1|Q_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u1|u1|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|ALT_INV_Q_m~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u1|u1|ALT_INV_R_m~combout\,
	combout => \u1|u1|Qn_m~combout\);

-- Location: MLABCELL_X4_Y20_N33
\u1|u1|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|R_s~combout\ = LCELL(( \u1|u1|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u1|u1|ALT_INV_Qn_m~combout\,
	combout => \u1|u1|R_s~combout\);

-- Location: MLABCELL_X4_Y20_N6
\u1|u1|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|Qn_s~combout\ = LCELL(( \u1|u1|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u1|u1|R_s~combout\) ) ) # ( !\u1|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datac => \u1|u1|ALT_INV_R_s~combout\,
	dataf => \u1|u1|ALT_INV_Q_s~combout\,
	combout => \u1|u1|Qn_s~combout\);

-- Location: MLABCELL_X4_Y20_N48
\u1|u1|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|S_s~combout\ = LCELL(( \u1|u1|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u1|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u1|u1|ALT_INV_Q_m~combout\,
	combout => \u1|u1|S_s~combout\);

-- Location: MLABCELL_X4_Y20_N9
\u1|u1|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u1|Q_s~combout\ = LCELL(( \u1|u1|S_s~combout\ & ( !\u1|u1|Qn_s~combout\ ) ) # ( !\u1|u1|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|ALT_INV_Qn_s~combout\,
	dataf => \u1|u1|ALT_INV_S_s~combout\,
	combout => \u1|u1|Q_s~combout\);

-- Location: MLABCELL_X4_Y20_N21
\u1|u2|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|R_m~combout\ = LCELL(( \clk~input_o\ & ( (!\u1|u1|Q_s~combout\) # ((!\T~input_o\) # (!\u1|u2|Q_s~combout\)) ) ) # ( !\clk~input_o\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_Q_s~combout\,
	datac => \ALT_INV_T~input_o\,
	datad => \u1|u2|ALT_INV_Q_s~combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \u1|u2|R_m~combout\);

-- Location: LABCELL_X5_Y20_N18
\u1|u2|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|Qn_m~combout\ = LCELL(( \u1|u2|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u1|u2|R_m~combout\) ) ) # ( !\u1|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u1|u2|ALT_INV_R_m~combout\,
	dataf => \u1|u2|ALT_INV_Q_m~combout\,
	combout => \u1|u2|Qn_m~combout\);

-- Location: MLABCELL_X4_Y20_N39
\u1|u2|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|R_s~combout\ = LCELL(( \u1|u2|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u2|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u1|u2|ALT_INV_Qn_m~combout\,
	combout => \u1|u2|R_s~combout\);

-- Location: MLABCELL_X4_Y20_N42
\u1|u2|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|Qn_s~combout\ = LCELL(( \u1|u2|R_s~combout\ & ( (!\rst_n~input_o\) # (!\u1|u2|Q_s~combout\) ) ) # ( !\u1|u2|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datad => \u1|u2|ALT_INV_Q_s~combout\,
	dataf => \u1|u2|ALT_INV_R_s~combout\,
	combout => \u1|u2|Qn_s~combout\);

-- Location: MLABCELL_X4_Y20_N36
\u1|u2|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|S_m~combout\ = LCELL(( \u1|u2|Qn_s~combout\ & ( \u1|u1|R_m~combout\ ) ) # ( !\u1|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|ALT_INV_R_m~combout\,
	dataf => \u1|u2|ALT_INV_Qn_s~combout\,
	combout => \u1|u2|S_m~combout\);

-- Location: MLABCELL_X4_Y20_N24
\u1|u2|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|Q_m~combout\ = LCELL(( \u1|u2|Qn_m~combout\ & ( !\u1|u2|S_m~combout\ ) ) # ( !\u1|u2|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u2|ALT_INV_S_m~combout\,
	dataf => \u1|u2|ALT_INV_Qn_m~combout\,
	combout => \u1|u2|Q_m~combout\);

-- Location: MLABCELL_X4_Y20_N27
\u1|u2|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|S_s~combout\ = LCELL(( \u1|u2|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u1|u2|ALT_INV_Q_m~combout\,
	combout => \u1|u2|S_s~combout\);

-- Location: MLABCELL_X4_Y20_N45
\u1|u2|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u2|Q_s~combout\ = LCELL(( \u1|u2|Qn_s~combout\ & ( !\u1|u2|S_s~combout\ ) ) # ( !\u1|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u2|ALT_INV_S_s~combout\,
	dataf => \u1|u2|ALT_INV_Qn_s~combout\,
	combout => \u1|u2|Q_s~combout\);

-- Location: LABCELL_X5_Y20_N24
\u1|u3|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|S_m~combout\ = LCELL(( \u1|u3|Qn_s~combout\ & ( \u1|u2|R_m~combout\ ) ) # ( !\u1|u3|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u2|ALT_INV_R_m~combout\,
	dataf => \u1|u3|ALT_INV_Qn_s~combout\,
	combout => \u1|u3|S_m~combout\);

-- Location: LABCELL_X5_Y20_N33
\u1|u3|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|Q_m~combout\ = LCELL(( \u1|u3|S_m~combout\ & ( !\u1|u3|Qn_m~combout\ ) ) # ( !\u1|u3|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u3|ALT_INV_Qn_m~combout\,
	dataf => \u1|u3|ALT_INV_S_m~combout\,
	combout => \u1|u3|Q_m~combout\);

-- Location: MLABCELL_X4_Y20_N18
\u1|u3|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|R_m~combout\ = LCELL(( \u1|u3|Q_s~combout\ & ( (!\u1|u1|Q_s~combout\) # ((!\T~input_o\) # ((!\clk~input_o\) # (!\u1|u2|Q_s~combout\))) ) ) # ( !\u1|u3|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_Q_s~combout\,
	datab => \ALT_INV_T~input_o\,
	datac => \ALT_INV_clk~input_o\,
	datad => \u1|u2|ALT_INV_Q_s~combout\,
	dataf => \u1|u3|ALT_INV_Q_s~combout\,
	combout => \u1|u3|R_m~combout\);

-- Location: LABCELL_X5_Y20_N30
\u1|u3|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|Qn_m~combout\ = LCELL(( \u1|u3|R_m~combout\ & ( (!\u1|u3|Q_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u1|u3|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u3|ALT_INV_Q_m~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u1|u3|ALT_INV_R_m~combout\,
	combout => \u1|u3|Qn_m~combout\);

-- Location: LABCELL_X5_Y20_N12
\u1|u3|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|R_s~combout\ = LCELL(( \u1|u3|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u1|u3|ALT_INV_Qn_m~combout\,
	combout => \u1|u3|R_s~combout\);

-- Location: LABCELL_X5_Y20_N3
\u1|u3|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|Qn_s~combout\ = LCELL(( \u1|u3|R_s~combout\ & ( (!\rst_n~input_o\) # (!\u1|u3|Q_s~combout\) ) ) # ( !\u1|u3|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u1|u3|ALT_INV_Q_s~combout\,
	dataf => \u1|u3|ALT_INV_R_s~combout\,
	combout => \u1|u3|Qn_s~combout\);

-- Location: LABCELL_X5_Y20_N15
\u1|u3|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|S_s~combout\ = LCELL(( \u1|u3|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u1|u3|ALT_INV_Q_m~combout\,
	combout => \u1|u3|S_s~combout\);

-- Location: LABCELL_X5_Y20_N0
\u1|u3|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u3|Q_s~combout\ = LCELL(( \u1|u3|S_s~combout\ & ( !\u1|u3|Qn_s~combout\ ) ) # ( !\u1|u3|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u3|ALT_INV_Qn_s~combout\,
	dataf => \u1|u3|ALT_INV_S_s~combout\,
	combout => \u1|u3|Q_s~combout\);

-- Location: LABCELL_X5_Y20_N27
\u1|u4|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|S_m~combout\ = LCELL(( \u1|u4|Qn_s~combout\ & ( \u1|u3|R_m~combout\ ) ) # ( !\u1|u4|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|u3|ALT_INV_R_m~combout\,
	dataf => \u1|u4|ALT_INV_Qn_s~combout\,
	combout => \u1|u4|S_m~combout\);

-- Location: LABCELL_X5_Y20_N36
\u1|u4|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|Q_m~combout\ = LCELL(( \u1|u4|Qn_m~combout\ & ( !\u1|u4|S_m~combout\ ) ) # ( !\u1|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|u4|ALT_INV_S_m~combout\,
	dataf => \u1|u4|ALT_INV_Qn_m~combout\,
	combout => \u1|u4|Q_m~combout\);

-- Location: MLABCELL_X4_Y20_N54
\u1|u4|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|R_m~combout\ = LCELL(( \u1|u4|Q_s~combout\ & ( \u1|u3|Q_s~combout\ & ( (!\u1|u1|Q_s~combout\) # ((!\u1|u2|Q_s~combout\) # ((!\clk~input_o\) # (!\T~input_o\))) ) ) ) # ( !\u1|u4|Q_s~combout\ & ( \u1|u3|Q_s~combout\ ) ) # ( \u1|u4|Q_s~combout\ & ( 
-- !\u1|u3|Q_s~combout\ ) ) # ( !\u1|u4|Q_s~combout\ & ( !\u1|u3|Q_s~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|ALT_INV_Q_s~combout\,
	datab => \u1|u2|ALT_INV_Q_s~combout\,
	datac => \ALT_INV_clk~input_o\,
	datad => \ALT_INV_T~input_o\,
	datae => \u1|u4|ALT_INV_Q_s~combout\,
	dataf => \u1|u3|ALT_INV_Q_s~combout\,
	combout => \u1|u4|R_m~combout\);

-- Location: LABCELL_X5_Y20_N39
\u1|u4|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|Qn_m~combout\ = LCELL(( \u1|u4|R_m~combout\ & ( (!\rst_n~input_o\) # (!\u1|u4|Q_m~combout\) ) ) # ( !\u1|u4|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u1|u4|ALT_INV_Q_m~combout\,
	dataf => \u1|u4|ALT_INV_R_m~combout\,
	combout => \u1|u4|Qn_m~combout\);

-- Location: LABCELL_X5_Y20_N51
\u1|u4|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|R_s~combout\ = LCELL(( \u1|u4|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u1|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u1|u4|ALT_INV_Qn_m~combout\,
	combout => \u1|u4|R_s~combout\);

-- Location: LABCELL_X5_Y20_N9
\u1|u4|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|Qn_s~combout\ = LCELL(( \u1|u4|R_s~combout\ & ( (!\rst_n~input_o\) # (!\u1|u4|Q_s~combout\) ) ) # ( !\u1|u4|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u1|u4|ALT_INV_Q_s~combout\,
	dataf => \u1|u4|ALT_INV_R_s~combout\,
	combout => \u1|u4|Qn_s~combout\);

-- Location: LABCELL_X5_Y20_N48
\u1|u4|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|S_s~combout\ = LCELL((!\u1|u4|Q_m~combout\) # (\clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datad => \u1|u4|ALT_INV_Q_m~combout\,
	combout => \u1|u4|S_s~combout\);

-- Location: LABCELL_X5_Y20_N6
\u1|u4|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|u4|Q_s~combout\ = LCELL(( \u1|u4|S_s~combout\ & ( !\u1|u4|Qn_s~combout\ ) ) # ( !\u1|u4|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|u4|ALT_INV_Qn_s~combout\,
	dataf => \u1|u4|ALT_INV_S_s~combout\,
	combout => \u1|u4|Q_s~combout\);

-- Location: LABCELL_X6_Y20_N27
\u2|u1|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|R_m~combout\ = LCELL(( \u2|u1|Q_s~combout\ & ( \u1|u4|R_m~combout\ ) ) # ( !\u2|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_R_m~combout\,
	dataf => \u2|u1|ALT_INV_Q_s~combout\,
	combout => \u2|u1|R_m~combout\);

-- Location: LABCELL_X5_Y20_N21
\u2|u1|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|S_m~combout\ = LCELL(( \u2|u1|Qn_s~combout\ & ( \u1|u4|R_m~combout\ ) ) # ( !\u2|u1|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_R_m~combout\,
	dataf => \u2|u1|ALT_INV_Qn_s~combout\,
	combout => \u2|u1|S_m~combout\);

-- Location: LABCELL_X5_Y20_N45
\u2|u1|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|Q_m~combout\ = LCELL(( \u2|u1|Qn_m~combout\ & ( !\u2|u1|S_m~combout\ ) ) # ( !\u2|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u1|ALT_INV_S_m~combout\,
	dataf => \u2|u1|ALT_INV_Qn_m~combout\,
	combout => \u2|u1|Q_m~combout\);

-- Location: LABCELL_X5_Y20_N42
\u2|u1|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|Qn_m~combout\ = LCELL(( \u2|u1|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u2|u1|R_m~combout\) ) ) # ( !\u2|u1|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u2|u1|ALT_INV_R_m~combout\,
	dataf => \u2|u1|ALT_INV_Q_m~combout\,
	combout => \u2|u1|Qn_m~combout\);

-- Location: LABCELL_X5_Y20_N54
\u2|u1|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|R_s~combout\ = LCELL(( \u2|u1|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u2|u1|ALT_INV_Qn_m~combout\,
	combout => \u2|u1|R_s~combout\);

-- Location: LABCELL_X5_Y20_N57
\u2|u1|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|Qn_s~combout\ = LCELL(( \u2|u1|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u2|u1|R_s~combout\) ) ) # ( !\u2|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u2|u1|ALT_INV_R_s~combout\,
	dataf => \u2|u1|ALT_INV_Q_s~combout\,
	combout => \u2|u1|Qn_s~combout\);

-- Location: LABCELL_X6_Y20_N36
\u2|u1|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|S_s~combout\ = LCELL(( \u2|u1|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u1|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u2|u1|ALT_INV_Q_m~combout\,
	combout => \u2|u1|S_s~combout\);

-- Location: LABCELL_X6_Y20_N39
\u2|u1|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u1|Q_s~combout\ = LCELL(( \u2|u1|S_s~combout\ & ( !\u2|u1|Qn_s~combout\ ) ) # ( !\u2|u1|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u1|ALT_INV_Qn_s~combout\,
	dataf => \u2|u1|ALT_INV_S_s~combout\,
	combout => \u2|u1|Q_s~combout\);

-- Location: LABCELL_X6_Y20_N24
\u2|u2|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|R_m~combout\ = LCELL(( \u2|u2|Q_s~combout\ & ( (!\u2|u1|Q_s~combout\) # (\u1|u4|R_m~combout\) ) ) # ( !\u2|u2|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u4|ALT_INV_R_m~combout\,
	datab => \u2|u1|ALT_INV_Q_s~combout\,
	dataf => \u2|u2|ALT_INV_Q_s~combout\,
	combout => \u2|u2|R_m~combout\);

-- Location: LABCELL_X6_Y20_N54
\u2|u2|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|Qn_m~combout\ = LCELL(( \u2|u2|R_m~combout\ & ( (!\u2|u2|Q_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u2|u2|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u2|ALT_INV_Q_m~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u2|u2|ALT_INV_R_m~combout\,
	combout => \u2|u2|Qn_m~combout\);

-- Location: LABCELL_X6_Y20_N45
\u2|u2|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|R_s~combout\ = LCELL((!\u2|u2|Qn_m~combout\) # (\clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datad => \u2|u2|ALT_INV_Qn_m~combout\,
	combout => \u2|u2|R_s~combout\);

-- Location: LABCELL_X6_Y20_N30
\u2|u2|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|Qn_s~combout\ = LCELL(( \u2|u2|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u2|u2|R_s~combout\) ) ) # ( !\u2|u2|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u2|u2|ALT_INV_R_s~combout\,
	dataf => \u2|u2|ALT_INV_Q_s~combout\,
	combout => \u2|u2|Qn_s~combout\);

-- Location: LABCELL_X6_Y20_N15
\u2|u2|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|S_m~combout\ = LCELL(( \u2|u2|Qn_s~combout\ & ( \u2|u1|R_m~combout\ ) ) # ( !\u2|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u1|ALT_INV_R_m~combout\,
	dataf => \u2|u2|ALT_INV_Qn_s~combout\,
	combout => \u2|u2|S_m~combout\);

-- Location: LABCELL_X6_Y20_N42
\u2|u2|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|Q_m~combout\ = LCELL(( \u2|u2|S_m~combout\ & ( !\u2|u2|Qn_m~combout\ ) ) # ( !\u2|u2|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u2|ALT_INV_Qn_m~combout\,
	dataf => \u2|u2|ALT_INV_S_m~combout\,
	combout => \u2|u2|Q_m~combout\);

-- Location: LABCELL_X6_Y20_N57
\u2|u2|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|S_s~combout\ = LCELL(( \u2|u2|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u2|u2|ALT_INV_Q_m~combout\,
	combout => \u2|u2|S_s~combout\);

-- Location: LABCELL_X6_Y20_N12
\u2|u2|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u2|Q_s~combout\ = LCELL(( \u2|u2|Qn_s~combout\ & ( !\u2|u2|S_s~combout\ ) ) # ( !\u2|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u2|ALT_INV_S_s~combout\,
	dataf => \u2|u2|ALT_INV_Qn_s~combout\,
	combout => \u2|u2|Q_s~combout\);

-- Location: LABCELL_X6_Y20_N3
\u2|u3|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|R_m~combout\ = LCELL(( \u2|u3|Q_s~combout\ & ( (!\u2|u2|Q_s~combout\) # ((!\u2|u1|Q_s~combout\) # (\u1|u4|R_m~combout\)) ) ) # ( !\u2|u3|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u2|ALT_INV_Q_s~combout\,
	datac => \u2|u1|ALT_INV_Q_s~combout\,
	datad => \u1|u4|ALT_INV_R_m~combout\,
	dataf => \u2|u3|ALT_INV_Q_s~combout\,
	combout => \u2|u3|R_m~combout\);

-- Location: LABCELL_X6_Y20_N21
\u2|u3|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|S_m~combout\ = LCELL(( \u2|u3|Qn_s~combout\ & ( \u2|u2|R_m~combout\ ) ) # ( !\u2|u3|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|ALT_INV_R_m~combout\,
	dataf => \u2|u3|ALT_INV_Qn_s~combout\,
	combout => \u2|u3|S_m~combout\);

-- Location: LABCELL_X6_Y20_N51
\u2|u3|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|Q_m~combout\ = LCELL(( \u2|u3|Qn_m~combout\ & ( !\u2|u3|S_m~combout\ ) ) # ( !\u2|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u2|u3|ALT_INV_S_m~combout\,
	dataf => \u2|u3|ALT_INV_Qn_m~combout\,
	combout => \u2|u3|Q_m~combout\);

-- Location: LABCELL_X6_Y20_N6
\u2|u3|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|Qn_m~combout\ = LCELL(( \u2|u3|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u2|u3|R_m~combout\) ) ) # ( !\u2|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u2|u3|ALT_INV_R_m~combout\,
	dataf => \u2|u3|ALT_INV_Q_m~combout\,
	combout => \u2|u3|Qn_m~combout\);

-- Location: LABCELL_X6_Y20_N48
\u2|u3|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|R_s~combout\ = LCELL(( \u2|u3|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u2|u3|ALT_INV_Qn_m~combout\,
	combout => \u2|u3|R_s~combout\);

-- Location: LABCELL_X6_Y20_N33
\u2|u3|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|Qn_s~combout\ = LCELL(( \u2|u3|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u2|u3|R_s~combout\) ) ) # ( !\u2|u3|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datad => \u2|u3|ALT_INV_R_s~combout\,
	dataf => \u2|u3|ALT_INV_Q_s~combout\,
	combout => \u2|u3|Qn_s~combout\);

-- Location: LABCELL_X6_Y20_N9
\u2|u3|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|S_s~combout\ = LCELL(( \u2|u3|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u2|u3|ALT_INV_Q_m~combout\,
	combout => \u2|u3|S_s~combout\);

-- Location: LABCELL_X6_Y20_N18
\u2|u3|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u3|Q_s~combout\ = LCELL(( \u2|u3|S_s~combout\ & ( !\u2|u3|Qn_s~combout\ ) ) # ( !\u2|u3|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u3|ALT_INV_Qn_s~combout\,
	dataf => \u2|u3|ALT_INV_S_s~combout\,
	combout => \u2|u3|Q_s~combout\);

-- Location: MLABCELL_X4_Y20_N0
\u2|c[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|c[2]~0_combout\ = ( \T~input_o\ & ( \u1|u3|Q_s~combout\ & ( (\u2|u1|Q_s~combout\ & (\u1|u2|Q_s~combout\ & (\u1|u1|Q_s~combout\ & \u1|u4|Q_s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|ALT_INV_Q_s~combout\,
	datab => \u1|u2|ALT_INV_Q_s~combout\,
	datac => \u1|u1|ALT_INV_Q_s~combout\,
	datad => \u1|u4|ALT_INV_Q_s~combout\,
	datae => \ALT_INV_T~input_o\,
	dataf => \u1|u3|ALT_INV_Q_s~combout\,
	combout => \u2|c[2]~0_combout\);

-- Location: LABCELL_X6_Y20_N0
\u2|c[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|c[2]~1_combout\ = (\u2|u3|Q_s~combout\ & \u2|u2|Q_s~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|ALT_INV_Q_s~combout\,
	datab => \u2|u2|ALT_INV_Q_s~combout\,
	combout => \u2|c[2]~1_combout\);

-- Location: LABCELL_X1_Y21_N6
\u2|u4|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|S_m~combout\ = LCELL(( \u2|u4|Qn_s~combout\ & ( (!\clk~input_o\) # ((!\u2|c[2]~0_combout\) # (!\u2|c[2]~1_combout\)) ) ) # ( !\u2|u4|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \u2|ALT_INV_c[2]~0_combout\,
	datad => \u2|ALT_INV_c[2]~1_combout\,
	dataf => \u2|u4|ALT_INV_Qn_s~combout\,
	combout => \u2|u4|S_m~combout\);

-- Location: LABCELL_X1_Y21_N54
\u2|u4|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|Q_m~combout\ = LCELL(( \u2|u4|S_m~combout\ & ( !\u2|u4|Qn_m~combout\ ) ) # ( !\u2|u4|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u2|u4|ALT_INV_Qn_m~combout\,
	dataf => \u2|u4|ALT_INV_S_m~combout\,
	combout => \u2|u4|Q_m~combout\);

-- Location: LABCELL_X1_Y21_N48
\u2|u4|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|R_m~combout\ = LCELL(( \u2|u4|Q_s~combout\ & ( (!\clk~input_o\) # ((!\u2|c[2]~1_combout\) # (!\u2|c[2]~0_combout\)) ) ) # ( !\u2|u4|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \u2|ALT_INV_c[2]~1_combout\,
	datad => \u2|ALT_INV_c[2]~0_combout\,
	dataf => \u2|u4|ALT_INV_Q_s~combout\,
	combout => \u2|u4|R_m~combout\);

-- Location: LABCELL_X1_Y21_N33
\u2|u4|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|Qn_m~combout\ = LCELL(( \u2|u4|R_m~combout\ & ( (!\rst_n~input_o\) # (!\u2|u4|Q_m~combout\) ) ) # ( !\u2|u4|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u2|u4|ALT_INV_Q_m~combout\,
	dataf => \u2|u4|ALT_INV_R_m~combout\,
	combout => \u2|u4|Qn_m~combout\);

-- Location: LABCELL_X1_Y21_N30
\u2|u4|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|R_s~combout\ = LCELL(( \u2|u4|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u2|u4|ALT_INV_Qn_m~combout\,
	combout => \u2|u4|R_s~combout\);

-- Location: LABCELL_X1_Y21_N15
\u2|u4|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|Qn_s~combout\ = LCELL(( \u2|u4|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u2|u4|R_s~combout\) ) ) # ( !\u2|u4|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_n~input_o\,
	datac => \u2|u4|ALT_INV_R_s~combout\,
	dataf => \u2|u4|ALT_INV_Q_s~combout\,
	combout => \u2|u4|Qn_s~combout\);

-- Location: LABCELL_X1_Y22_N15
\u2|u4|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|S_s~combout\ = LCELL(( \u2|u4|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u2|u4|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u2|u4|ALT_INV_Q_m~combout\,
	combout => \u2|u4|S_s~combout\);

-- Location: LABCELL_X1_Y21_N12
\u2|u4|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|u4|Q_s~combout\ = LCELL(( \u2|u4|S_s~combout\ & ( !\u2|u4|Qn_s~combout\ ) ) # ( !\u2|u4|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|ALT_INV_Qn_s~combout\,
	dataf => \u2|u4|ALT_INV_S_s~combout\,
	combout => \u2|u4|Q_s~combout\);

-- Location: LABCELL_X1_Y21_N51
\u3|u1|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|R_m~combout\ = LCELL(( \u3|u1|Q_s~combout\ & ( (!\u2|c[2]~1_combout\) # ((!\clk~input_o\) # ((!\u2|u4|Q_s~combout\) # (!\u2|c[2]~0_combout\))) ) ) # ( !\u3|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_c[2]~1_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \u2|u4|ALT_INV_Q_s~combout\,
	datad => \u2|ALT_INV_c[2]~0_combout\,
	dataf => \u3|u1|ALT_INV_Q_s~combout\,
	combout => \u3|u1|R_m~combout\);

-- Location: LABCELL_X2_Y21_N42
\u3|u1|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|Qn_m~combout\ = LCELL(( \u3|u1|R_m~combout\ & ( (!\rst_n~input_o\) # (!\u3|u1|Q_m~combout\) ) ) # ( !\u3|u1|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u3|u1|ALT_INV_Q_m~combout\,
	dataf => \u3|u1|ALT_INV_R_m~combout\,
	combout => \u3|u1|Qn_m~combout\);

-- Location: LABCELL_X2_Y21_N51
\u3|u1|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|R_s~combout\ = LCELL(( \u3|u1|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u3|u1|ALT_INV_Qn_m~combout\,
	combout => \u3|u1|R_s~combout\);

-- Location: LABCELL_X2_Y21_N48
\u3|u1|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|Qn_s~combout\ = LCELL(( \u3|u1|R_s~combout\ & ( (!\rst_n~input_o\) # (!\u3|u1|Q_s~combout\) ) ) # ( !\u3|u1|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u3|u1|ALT_INV_Q_s~combout\,
	dataf => \u3|u1|ALT_INV_R_s~combout\,
	combout => \u3|u1|Qn_s~combout\);

-- Location: LABCELL_X2_Y21_N54
\u3|u1|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|S_m~combout\ = LCELL(( \u3|u1|Qn_s~combout\ & ( \u2|u4|R_m~combout\ ) ) # ( !\u3|u1|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u2|u4|ALT_INV_R_m~combout\,
	dataf => \u3|u1|ALT_INV_Qn_s~combout\,
	combout => \u3|u1|S_m~combout\);

-- Location: LABCELL_X2_Y21_N45
\u3|u1|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|Q_m~combout\ = LCELL(( \u3|u1|Qn_m~combout\ & ( !\u3|u1|S_m~combout\ ) ) # ( !\u3|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u1|ALT_INV_S_m~combout\,
	dataf => \u3|u1|ALT_INV_Qn_m~combout\,
	combout => \u3|u1|Q_m~combout\);

-- Location: LABCELL_X2_Y21_N0
\u3|u1|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|S_s~combout\ = LCELL(( \u3|u1|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u1|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u3|u1|ALT_INV_Q_m~combout\,
	combout => \u3|u1|S_s~combout\);

-- Location: LABCELL_X2_Y21_N3
\u3|u1|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u1|Q_s~combout\ = LCELL(( \u3|u1|Qn_s~combout\ & ( !\u3|u1|S_s~combout\ ) ) # ( !\u3|u1|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u1|ALT_INV_S_s~combout\,
	dataf => \u3|u1|ALT_INV_Qn_s~combout\,
	combout => \u3|u1|Q_s~combout\);

-- Location: LABCELL_X1_Y21_N24
\u3|u2|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|R_m~combout\ = LCELL(( \clk~input_o\ & ( \u3|u2|Q_s~combout\ & ( (!\u2|c[2]~1_combout\) # ((!\u3|u1|Q_s~combout\) # ((!\u2|c[2]~0_combout\) # (!\u2|u4|Q_s~combout\))) ) ) ) # ( !\clk~input_o\ & ( \u3|u2|Q_s~combout\ ) ) # ( \clk~input_o\ & ( 
-- !\u3|u2|Q_s~combout\ ) ) # ( !\clk~input_o\ & ( !\u3|u2|Q_s~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_c[2]~1_combout\,
	datab => \u3|u1|ALT_INV_Q_s~combout\,
	datac => \u2|ALT_INV_c[2]~0_combout\,
	datad => \u2|u4|ALT_INV_Q_s~combout\,
	datae => \ALT_INV_clk~input_o\,
	dataf => \u3|u2|ALT_INV_Q_s~combout\,
	combout => \u3|u2|R_m~combout\);

-- Location: LABCELL_X1_Y22_N33
\u3|u2|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|Qn_m~combout\ = LCELL(( \u3|u2|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u3|u2|R_m~combout\) ) ) # ( !\u3|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u3|u2|ALT_INV_R_m~combout\,
	dataf => \u3|u2|ALT_INV_Q_m~combout\,
	combout => \u3|u2|Qn_m~combout\);

-- Location: LABCELL_X1_Y22_N9
\u3|u2|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|R_s~combout\ = LCELL(( \u3|u2|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u2|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u3|u2|ALT_INV_Qn_m~combout\,
	combout => \u3|u2|R_s~combout\);

-- Location: LABCELL_X1_Y22_N51
\u3|u2|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|Qn_s~combout\ = LCELL(( \u3|u2|Q_s~combout\ & ( (!\u3|u2|R_s~combout\) # (!\rst_n~input_o\) ) ) # ( !\u3|u2|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|ALT_INV_R_s~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u3|u2|ALT_INV_Q_s~combout\,
	combout => \u3|u2|Qn_s~combout\);

-- Location: LABCELL_X2_Y21_N57
\u3|u2|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|S_m~combout\ = LCELL(( \u3|u2|Qn_s~combout\ & ( \u3|u1|R_m~combout\ ) ) # ( !\u3|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|ALT_INV_R_m~combout\,
	dataf => \u3|u2|ALT_INV_Qn_s~combout\,
	combout => \u3|u2|S_m~combout\);

-- Location: LABCELL_X1_Y22_N6
\u3|u2|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|Q_m~combout\ = LCELL(( \u3|u2|S_m~combout\ & ( !\u3|u2|Qn_m~combout\ ) ) # ( !\u3|u2|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|ALT_INV_Qn_m~combout\,
	dataf => \u3|u2|ALT_INV_S_m~combout\,
	combout => \u3|u2|Q_m~combout\);

-- Location: LABCELL_X1_Y22_N48
\u3|u2|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|S_s~combout\ = LCELL(( \u3|u2|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u3|u2|ALT_INV_Q_m~combout\,
	combout => \u3|u2|S_s~combout\);

-- Location: LABCELL_X1_Y22_N30
\u3|u2|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u2|Q_s~combout\ = LCELL(( \u3|u2|Qn_s~combout\ & ( !\u3|u2|S_s~combout\ ) ) # ( !\u3|u2|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|ALT_INV_S_s~combout\,
	dataf => \u3|u2|ALT_INV_Qn_s~combout\,
	combout => \u3|u2|Q_s~combout\);

-- Location: LABCELL_X1_Y22_N42
\u3|u3|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|R_m~combout\ = LCELL(( \u3|u3|Q_s~combout\ & ( \u3|u2|R_m~combout\ ) ) # ( !\u3|u3|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u2|ALT_INV_R_m~combout\,
	dataf => \u3|u3|ALT_INV_Q_s~combout\,
	combout => \u3|u3|R_m~combout\);

-- Location: LABCELL_X2_Y22_N6
\u3|u3|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|S_m~combout\ = LCELL(( \u3|u3|Qn_s~combout\ & ( \u3|u2|R_m~combout\ ) ) # ( !\u3|u3|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u2|ALT_INV_R_m~combout\,
	dataf => \u3|u3|ALT_INV_Qn_s~combout\,
	combout => \u3|u3|S_m~combout\);

-- Location: LABCELL_X2_Y22_N15
\u3|u3|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|Q_m~combout\ = LCELL(( \u3|u3|Qn_m~combout\ & ( !\u3|u3|S_m~combout\ ) ) # ( !\u3|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u3|ALT_INV_S_m~combout\,
	dataf => \u3|u3|ALT_INV_Qn_m~combout\,
	combout => \u3|u3|Q_m~combout\);

-- Location: LABCELL_X2_Y22_N12
\u3|u3|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|Qn_m~combout\ = LCELL(( \u3|u3|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u3|u3|R_m~combout\) ) ) # ( !\u3|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datad => \u3|u3|ALT_INV_R_m~combout\,
	dataf => \u3|u3|ALT_INV_Q_m~combout\,
	combout => \u3|u3|Qn_m~combout\);

-- Location: LABCELL_X2_Y22_N48
\u3|u3|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|R_s~combout\ = LCELL(( \u3|u3|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u3|u3|ALT_INV_Qn_m~combout\,
	combout => \u3|u3|R_s~combout\);

-- Location: LABCELL_X2_Y22_N33
\u3|u3|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|Qn_s~combout\ = LCELL(( \u3|u3|Q_s~combout\ & ( (!\u3|u3|R_s~combout\) # (!\rst_n~input_o\) ) ) # ( !\u3|u3|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|ALT_INV_R_s~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u3|u3|ALT_INV_Q_s~combout\,
	combout => \u3|u3|Qn_s~combout\);

-- Location: LABCELL_X2_Y22_N51
\u3|u3|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|S_s~combout\ = LCELL(( \u3|u3|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u3|u3|ALT_INV_Q_m~combout\,
	combout => \u3|u3|S_s~combout\);

-- Location: LABCELL_X2_Y22_N30
\u3|u3|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u3|Q_s~combout\ = LCELL(( \u3|u3|S_s~combout\ & ( !\u3|u3|Qn_s~combout\ ) ) # ( !\u3|u3|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u3|ALT_INV_Qn_s~combout\,
	dataf => \u3|u3|ALT_INV_S_s~combout\,
	combout => \u3|u3|Q_s~combout\);

-- Location: LABCELL_X2_Y22_N18
\u3|u4|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|R_m~combout\ = LCELL(( \u3|u4|Q_s~combout\ & ( (!\u3|u3|Q_s~combout\) # (\u3|u2|R_m~combout\) ) ) # ( !\u3|u4|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u3|u3|ALT_INV_Q_s~combout\,
	datac => \u3|u2|ALT_INV_R_m~combout\,
	dataf => \u3|u4|ALT_INV_Q_s~combout\,
	combout => \u3|u4|R_m~combout\);

-- Location: LABCELL_X2_Y22_N36
\u3|u4|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|S_m~combout\ = LCELL((!\u3|u4|Qn_s~combout\) # (\u3|u3|R_m~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u4|ALT_INV_Qn_s~combout\,
	datad => \u3|u3|ALT_INV_R_m~combout\,
	combout => \u3|u4|S_m~combout\);

-- Location: LABCELL_X2_Y22_N57
\u3|u4|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|Q_m~combout\ = LCELL(( \u3|u4|Qn_m~combout\ & ( !\u3|u4|S_m~combout\ ) ) # ( !\u3|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u4|ALT_INV_S_m~combout\,
	dataf => \u3|u4|ALT_INV_Qn_m~combout\,
	combout => \u3|u4|Q_m~combout\);

-- Location: LABCELL_X2_Y22_N24
\u3|u4|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|Qn_m~combout\ = LCELL(( \u3|u4|Q_m~combout\ & ( (!\u3|u4|R_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u3|u4|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u3|u4|ALT_INV_R_m~combout\,
	datad => \ALT_INV_rst_n~input_o\,
	dataf => \u3|u4|ALT_INV_Q_m~combout\,
	combout => \u3|u4|Qn_m~combout\);

-- Location: LABCELL_X2_Y22_N3
\u3|u4|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|R_s~combout\ = LCELL(( \u3|u4|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u3|u4|ALT_INV_Qn_m~combout\,
	combout => \u3|u4|R_s~combout\);

-- Location: LABCELL_X2_Y22_N0
\u3|u4|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|Qn_s~combout\ = LCELL(( \u3|u4|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u3|u4|R_s~combout\) ) ) # ( !\u3|u4|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datad => \u3|u4|ALT_INV_R_s~combout\,
	dataf => \u3|u4|ALT_INV_Q_s~combout\,
	combout => \u3|u4|Qn_s~combout\);

-- Location: LABCELL_X2_Y22_N54
\u3|u4|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|S_s~combout\ = LCELL(( \u3|u4|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u3|u4|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \u3|u4|ALT_INV_Q_m~combout\,
	combout => \u3|u4|S_s~combout\);

-- Location: LABCELL_X2_Y22_N39
\u3|u4|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|u4|Q_s~combout\ = LCELL(( \u3|u4|S_s~combout\ & ( !\u3|u4|Qn_s~combout\ ) ) # ( !\u3|u4|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u3|u4|ALT_INV_Qn_s~combout\,
	dataf => \u3|u4|ALT_INV_S_s~combout\,
	combout => \u3|u4|Q_s~combout\);

-- Location: LABCELL_X2_Y22_N27
\u4|u1|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|S_m~combout\ = LCELL((!\u4|u1|Qn_s~combout\) # (\u3|u4|R_m~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_R_m~combout\,
	datad => \u4|u1|ALT_INV_Qn_s~combout\,
	combout => \u4|u1|S_m~combout\);

-- Location: LABCELL_X1_Y22_N12
\u4|u1|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|Q_m~combout\ = LCELL(( \u4|u1|Qn_m~combout\ & ( !\u4|u1|S_m~combout\ ) ) # ( !\u4|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u1|ALT_INV_S_m~combout\,
	dataf => \u4|u1|ALT_INV_Qn_m~combout\,
	combout => \u4|u1|Q_m~combout\);

-- Location: LABCELL_X1_Y21_N9
\u4|u1|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|R_m~combout\ = LCELL(( \u4|u1|Q_s~combout\ & ( ((!\u3|u3|Q_s~combout\) # (!\u3|u4|Q_s~combout\)) # (\u3|u2|R_m~combout\) ) ) # ( !\u4|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u2|ALT_INV_R_m~combout\,
	datac => \u3|u3|ALT_INV_Q_s~combout\,
	datad => \u3|u4|ALT_INV_Q_s~combout\,
	dataf => \u4|u1|ALT_INV_Q_s~combout\,
	combout => \u4|u1|R_m~combout\);

-- Location: LABCELL_X1_Y22_N45
\u4|u1|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|Qn_m~combout\ = LCELL(( \u4|u1|R_m~combout\ & ( (!\u4|u1|Q_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u4|u1|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u1|ALT_INV_Q_m~combout\,
	datad => \ALT_INV_rst_n~input_o\,
	dataf => \u4|u1|ALT_INV_R_m~combout\,
	combout => \u4|u1|Qn_m~combout\);

-- Location: LABCELL_X2_Y22_N21
\u4|u1|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|R_s~combout\ = LCELL(( \u4|u1|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u1|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u4|u1|ALT_INV_Qn_m~combout\,
	combout => \u4|u1|R_s~combout\);

-- Location: LABCELL_X2_Y22_N45
\u4|u1|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|Qn_s~combout\ = LCELL(( \u4|u1|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u4|u1|R_s~combout\) ) ) # ( !\u4|u1|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u4|u1|ALT_INV_R_s~combout\,
	dataf => \u4|u1|ALT_INV_Q_s~combout\,
	combout => \u4|u1|Qn_s~combout\);

-- Location: LABCELL_X2_Y22_N9
\u4|u1|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|S_s~combout\ = LCELL((!\u4|u1|Q_m~combout\) # (\clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	datad => \u4|u1|ALT_INV_Q_m~combout\,
	combout => \u4|u1|S_s~combout\);

-- Location: LABCELL_X2_Y22_N42
\u4|u1|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u1|Q_s~combout\ = LCELL(( \u4|u1|S_s~combout\ & ( !\u4|u1|Qn_s~combout\ ) ) # ( !\u4|u1|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u1|ALT_INV_Qn_s~combout\,
	dataf => \u4|u1|ALT_INV_S_s~combout\,
	combout => \u4|u1|Q_s~combout\);

-- Location: LABCELL_X1_Y22_N54
\u4|u2|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|R_m~combout\ = LCELL(( \u3|u2|R_m~combout\ & ( \u4|u2|Q_s~combout\ ) ) # ( !\u3|u2|R_m~combout\ & ( \u4|u2|Q_s~combout\ & ( (!\u3|u3|Q_s~combout\) # ((!\u4|u1|Q_s~combout\) # (!\u3|u4|Q_s~combout\)) ) ) ) # ( \u3|u2|R_m~combout\ & ( 
-- !\u4|u2|Q_s~combout\ ) ) # ( !\u3|u2|R_m~combout\ & ( !\u4|u2|Q_s~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u3|ALT_INV_Q_s~combout\,
	datab => \u4|u1|ALT_INV_Q_s~combout\,
	datac => \u3|u4|ALT_INV_Q_s~combout\,
	datae => \u3|u2|ALT_INV_R_m~combout\,
	dataf => \u4|u2|ALT_INV_Q_s~combout\,
	combout => \u4|u2|R_m~combout\);

-- Location: LABCELL_X1_Y22_N36
\u4|u2|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|S_m~combout\ = LCELL((!\u4|u2|Qn_s~combout\) # (\u4|u1|R_m~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u1|ALT_INV_R_m~combout\,
	datad => \u4|u2|ALT_INV_Qn_s~combout\,
	combout => \u4|u2|S_m~combout\);

-- Location: LABCELL_X1_Y22_N24
\u4|u2|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|Q_m~combout\ = LCELL(( \u4|u2|Qn_m~combout\ & ( !\u4|u2|S_m~combout\ ) ) # ( !\u4|u2|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u2|ALT_INV_S_m~combout\,
	dataf => \u4|u2|ALT_INV_Qn_m~combout\,
	combout => \u4|u2|Q_m~combout\);

-- Location: LABCELL_X1_Y22_N18
\u4|u2|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|Qn_m~combout\ = LCELL(( \u4|u2|R_m~combout\ & ( \u4|u2|Q_m~combout\ & ( !\rst_n~input_o\ ) ) ) # ( !\u4|u2|R_m~combout\ & ( \u4|u2|Q_m~combout\ ) ) # ( \u4|u2|R_m~combout\ & ( !\u4|u2|Q_m~combout\ ) ) # ( !\u4|u2|R_m~combout\ & ( 
-- !\u4|u2|Q_m~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datae => \u4|u2|ALT_INV_R_m~combout\,
	dataf => \u4|u2|ALT_INV_Q_m~combout\,
	combout => \u4|u2|Qn_m~combout\);

-- Location: LABCELL_X1_Y22_N3
\u4|u2|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|R_s~combout\ = LCELL(( \u4|u2|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u2|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u4|u2|ALT_INV_Qn_m~combout\,
	combout => \u4|u2|R_s~combout\);

-- Location: LABCELL_X1_Y22_N0
\u4|u2|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|Qn_s~combout\ = LCELL(( \u4|u2|Q_s~combout\ & ( (!\rst_n~input_o\) # (!\u4|u2|R_s~combout\) ) ) # ( !\u4|u2|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst_n~input_o\,
	datad => \u4|u2|ALT_INV_R_s~combout\,
	dataf => \u4|u2|ALT_INV_Q_s~combout\,
	combout => \u4|u2|Qn_s~combout\);

-- Location: LABCELL_X1_Y22_N27
\u4|u2|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|S_s~combout\ = LCELL(( \u4|u2|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u2|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	dataf => \u4|u2|ALT_INV_Q_m~combout\,
	combout => \u4|u2|S_s~combout\);

-- Location: LABCELL_X1_Y22_N39
\u4|u2|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u2|Q_s~combout\ = LCELL(( \u4|u2|S_s~combout\ & ( !\u4|u2|Qn_s~combout\ ) ) # ( !\u4|u2|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u2|ALT_INV_Qn_s~combout\,
	dataf => \u4|u2|ALT_INV_S_s~combout\,
	combout => \u4|u2|Q_s~combout\);

-- Location: LABCELL_X1_Y21_N0
\u4|c[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|c[1]~0_combout\ = ( \u4|u2|Q_s~combout\ & ( \u3|u2|Q_s~combout\ & ( (\u3|u4|Q_s~combout\ & (\u3|u1|Q_s~combout\ & (\u4|u1|Q_s~combout\ & \u3|u3|Q_s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u4|ALT_INV_Q_s~combout\,
	datab => \u3|u1|ALT_INV_Q_s~combout\,
	datac => \u4|u1|ALT_INV_Q_s~combout\,
	datad => \u3|u3|ALT_INV_Q_s~combout\,
	datae => \u4|u2|ALT_INV_Q_s~combout\,
	dataf => \u3|u2|ALT_INV_Q_s~combout\,
	combout => \u4|c[1]~0_combout\);

-- Location: LABCELL_X1_Y21_N42
\u4|u3|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|R_m~combout\ = LCELL(( \u4|c[1]~0_combout\ & ( \u4|u3|Q_s~combout\ & ( (!\u2|c[2]~0_combout\) # ((!\clk~input_o\) # ((!\u2|c[2]~1_combout\) # (!\u2|u4|Q_s~combout\))) ) ) ) # ( !\u4|c[1]~0_combout\ & ( \u4|u3|Q_s~combout\ ) ) # ( 
-- \u4|c[1]~0_combout\ & ( !\u4|u3|Q_s~combout\ ) ) # ( !\u4|c[1]~0_combout\ & ( !\u4|u3|Q_s~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_c[2]~0_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \u2|ALT_INV_c[2]~1_combout\,
	datad => \u2|u4|ALT_INV_Q_s~combout\,
	datae => \u4|ALT_INV_c[1]~0_combout\,
	dataf => \u4|u3|ALT_INV_Q_s~combout\,
	combout => \u4|u3|R_m~combout\);

-- Location: LABCELL_X1_Y21_N45
\u4|u3|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|S_m~combout\ = LCELL(( \u4|c[1]~0_combout\ & ( \u4|u3|Qn_s~combout\ & ( (!\u2|c[2]~0_combout\) # ((!\clk~input_o\) # ((!\u2|u4|Q_s~combout\) # (!\u2|c[2]~1_combout\))) ) ) ) # ( !\u4|c[1]~0_combout\ & ( \u4|u3|Qn_s~combout\ ) ) # ( 
-- \u4|c[1]~0_combout\ & ( !\u4|u3|Qn_s~combout\ ) ) # ( !\u4|c[1]~0_combout\ & ( !\u4|u3|Qn_s~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u2|ALT_INV_c[2]~0_combout\,
	datab => \ALT_INV_clk~input_o\,
	datac => \u2|u4|ALT_INV_Q_s~combout\,
	datad => \u2|ALT_INV_c[2]~1_combout\,
	datae => \u4|ALT_INV_c[1]~0_combout\,
	dataf => \u4|u3|ALT_INV_Qn_s~combout\,
	combout => \u4|u3|S_m~combout\);

-- Location: LABCELL_X2_Y21_N36
\u4|u3|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|Q_m~combout\ = LCELL(( \u4|u3|S_m~combout\ & ( !\u4|u3|Qn_m~combout\ ) ) # ( !\u4|u3|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u4|u3|ALT_INV_Qn_m~combout\,
	dataf => \u4|u3|ALT_INV_S_m~combout\,
	combout => \u4|u3|Q_m~combout\);

-- Location: LABCELL_X2_Y21_N12
\u4|u3|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|Qn_m~combout\ = LCELL(( \u4|u3|Q_m~combout\ & ( (!\rst_n~input_o\) # (!\u4|u3|R_m~combout\) ) ) # ( !\u4|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_n~input_o\,
	datad => \u4|u3|ALT_INV_R_m~combout\,
	dataf => \u4|u3|ALT_INV_Q_m~combout\,
	combout => \u4|u3|Qn_m~combout\);

-- Location: LABCELL_X2_Y21_N39
\u4|u3|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|R_s~combout\ = LCELL(( \u4|u3|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u3|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk~input_o\,
	dataf => \u4|u3|ALT_INV_Qn_m~combout\,
	combout => \u4|u3|R_s~combout\);

-- Location: LABCELL_X1_Y21_N21
\u4|u3|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|Qn_s~combout\ = LCELL(( \u4|u3|R_s~combout\ & ( (!\u4|u3|Q_s~combout\) # (!\rst_n~input_o\) ) ) # ( !\u4|u3|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u3|ALT_INV_Q_s~combout\,
	datac => \ALT_INV_rst_n~input_o\,
	dataf => \u4|u3|ALT_INV_R_s~combout\,
	combout => \u4|u3|Qn_s~combout\);

-- Location: LABCELL_X2_Y21_N15
\u4|u3|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|S_s~combout\ = LCELL(( \u4|u3|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u3|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk~input_o\,
	dataf => \u4|u3|ALT_INV_Q_m~combout\,
	combout => \u4|u3|S_s~combout\);

-- Location: LABCELL_X1_Y21_N18
\u4|u3|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u3|Q_s~combout\ = LCELL(( \u4|u3|S_s~combout\ & ( !\u4|u3|Qn_s~combout\ ) ) # ( !\u4|u3|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u3|ALT_INV_Qn_s~combout\,
	dataf => \u4|u3|ALT_INV_S_s~combout\,
	combout => \u4|u3|Q_s~combout\);

-- Location: LABCELL_X2_Y21_N6
\u4|u4|S_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|S_m~combout\ = LCELL(( \u4|u4|Qn_s~combout\ & ( \u4|u3|R_m~combout\ ) ) # ( !\u4|u4|Qn_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u3|ALT_INV_R_m~combout\,
	dataf => \u4|u4|ALT_INV_Qn_s~combout\,
	combout => \u4|u4|S_m~combout\);

-- Location: LABCELL_X2_Y21_N18
\u4|u4|Q_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|Q_m~combout\ = LCELL(( \u4|u4|S_m~combout\ & ( !\u4|u4|Qn_m~combout\ ) ) # ( !\u4|u4|S_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u4|ALT_INV_Qn_m~combout\,
	dataf => \u4|u4|ALT_INV_S_m~combout\,
	combout => \u4|u4|Q_m~combout\);

-- Location: LABCELL_X2_Y21_N30
\u4|u4|R_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|R_m~combout\ = LCELL(( \u4|u4|Q_s~combout\ & ( \u4|u3|R_m~combout\ ) ) # ( !\u4|u4|Q_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u4|u3|ALT_INV_R_m~combout\,
	dataf => \u4|u4|ALT_INV_Q_s~combout\,
	combout => \u4|u4|R_m~combout\);

-- Location: LABCELL_X2_Y21_N27
\u4|u4|Qn_m\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|Qn_m~combout\ = LCELL(( \u4|u4|R_m~combout\ & ( (!\u4|u4|Q_m~combout\) # (!\rst_n~input_o\) ) ) # ( !\u4|u4|R_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|ALT_INV_Q_m~combout\,
	datad => \ALT_INV_rst_n~input_o\,
	dataf => \u4|u4|ALT_INV_R_m~combout\,
	combout => \u4|u4|Qn_m~combout\);

-- Location: LABCELL_X2_Y21_N21
\u4|u4|R_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|R_s~combout\ = LCELL(( \u4|u4|Qn_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u4|Qn_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk~input_o\,
	dataf => \u4|u4|ALT_INV_Qn_m~combout\,
	combout => \u4|u4|R_s~combout\);

-- Location: LABCELL_X2_Y21_N33
\u4|u4|Qn_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|Qn_s~combout\ = LCELL(( \u4|u4|R_s~combout\ & ( (!\u4|u4|Q_s~combout\) # (!\rst_n~input_o\) ) ) # ( !\u4|u4|R_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u4|u4|ALT_INV_Q_s~combout\,
	datad => \ALT_INV_rst_n~input_o\,
	dataf => \u4|u4|ALT_INV_R_s~combout\,
	combout => \u4|u4|Qn_s~combout\);

-- Location: LABCELL_X2_Y21_N24
\u4|u4|S_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|S_s~combout\ = LCELL(( \u4|u4|Q_m~combout\ & ( \clk~input_o\ ) ) # ( !\u4|u4|Q_m~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk~input_o\,
	dataf => \u4|u4|ALT_INV_Q_m~combout\,
	combout => \u4|u4|S_s~combout\);

-- Location: LABCELL_X2_Y21_N9
\u4|u4|Q_s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|u4|Q_s~combout\ = LCELL(( \u4|u4|S_s~combout\ & ( !\u4|u4|Qn_s~combout\ ) ) # ( !\u4|u4|S_s~combout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|u4|ALT_INV_Qn_s~combout\,
	dataf => \u4|u4|ALT_INV_S_s~combout\,
	combout => \u4|u4|Q_s~combout\);

-- Location: LABCELL_X1_Y21_N36
\u4|tc~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|tc~0_combout\ = ( \u2|c[2]~1_combout\ & ( \u4|u3|Q_s~combout\ & ( (\u4|c[1]~0_combout\ & (\u2|u4|Q_s~combout\ & (\u2|c[2]~0_combout\ & \u4|u4|Q_s~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u4|ALT_INV_c[1]~0_combout\,
	datab => \u2|u4|ALT_INV_Q_s~combout\,
	datac => \u2|ALT_INV_c[2]~0_combout\,
	datad => \u4|u4|ALT_INV_Q_s~combout\,
	datae => \u2|ALT_INV_c[2]~1_combout\,
	dataf => \u4|u3|ALT_INV_Q_s~combout\,
	combout => \u4|tc~0_combout\);

-- Location: MLABCELL_X28_Y40_N0
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


