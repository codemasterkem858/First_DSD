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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/20/2026 13:26:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          binconv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY binconv_vhd_vec_tst IS
END binconv_vhd_vec_tst;
ARCHITECTURE binconv_arch OF binconv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bin : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL d0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL d4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sign : STD_LOGIC;
COMPONENT binconv
	PORT (
	bin : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	d0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	d4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sign : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : binconv
	PORT MAP (
-- list connections between master ports and signals
	bin => bin,
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	sign => sign
	);
-- d0[3]
t_prcs_d0_3: PROCESS
BEGIN
	d0(3) <= '0';
WAIT;
END PROCESS t_prcs_d0_3;
-- d0[2]
t_prcs_d0_2: PROCESS
BEGIN
	d0(2) <= '0';
WAIT;
END PROCESS t_prcs_d0_2;
-- d0[1]
t_prcs_d0_1: PROCESS
BEGIN
	d0(1) <= '0';
WAIT;
END PROCESS t_prcs_d0_1;
-- d0[0]
t_prcs_d0_0: PROCESS
BEGIN
	d0(0) <= '0';
WAIT;
END PROCESS t_prcs_d0_0;
-- d1[3]
t_prcs_d1_3: PROCESS
BEGIN
	d1(3) <= '0';
WAIT;
END PROCESS t_prcs_d1_3;
-- d1[2]
t_prcs_d1_2: PROCESS
BEGIN
	d1(2) <= '0';
WAIT;
END PROCESS t_prcs_d1_2;
-- d1[1]
t_prcs_d1_1: PROCESS
BEGIN
	d1(1) <= '0';
WAIT;
END PROCESS t_prcs_d1_1;
-- d1[0]
t_prcs_d1_0: PROCESS
BEGIN
	d1(0) <= '0';
WAIT;
END PROCESS t_prcs_d1_0;
-- d2[3]
t_prcs_d2_3: PROCESS
BEGIN
	d2(3) <= '0';
WAIT;
END PROCESS t_prcs_d2_3;
-- d2[2]
t_prcs_d2_2: PROCESS
BEGIN
	d2(2) <= '0';
WAIT;
END PROCESS t_prcs_d2_2;
-- d2[1]
t_prcs_d2_1: PROCESS
BEGIN
	d2(1) <= '0';
WAIT;
END PROCESS t_prcs_d2_1;
-- d2[0]
t_prcs_d2_0: PROCESS
BEGIN
	d2(0) <= '0';
WAIT;
END PROCESS t_prcs_d2_0;
-- d3[3]
t_prcs_d3_3: PROCESS
BEGIN
	d3(3) <= '0';
WAIT;
END PROCESS t_prcs_d3_3;
-- d3[2]
t_prcs_d3_2: PROCESS
BEGIN
	d3(2) <= '0';
WAIT;
END PROCESS t_prcs_d3_2;
-- d3[1]
t_prcs_d3_1: PROCESS
BEGIN
	d3(1) <= '0';
WAIT;
END PROCESS t_prcs_d3_1;
-- d3[0]
t_prcs_d3_0: PROCESS
BEGIN
	d3(0) <= '0';
WAIT;
END PROCESS t_prcs_d3_0;
-- d4[3]
t_prcs_d4_3: PROCESS
BEGIN
	d4(3) <= '0';
WAIT;
END PROCESS t_prcs_d4_3;
-- d4[2]
t_prcs_d4_2: PROCESS
BEGIN
	d4(2) <= '0';
WAIT;
END PROCESS t_prcs_d4_2;
-- d4[1]
t_prcs_d4_1: PROCESS
BEGIN
	d4(1) <= '0';
WAIT;
END PROCESS t_prcs_d4_1;
-- d4[0]
t_prcs_d4_0: PROCESS
BEGIN
	d4(0) <= '0';
WAIT;
END PROCESS t_prcs_d4_0;

-- sign
t_prcs_sign: PROCESS
BEGIN
	sign <= '0';
	WAIT FOR 500000 ps;
	sign <= '1';
WAIT;
END PROCESS t_prcs_sign;
END binconv_arch;
