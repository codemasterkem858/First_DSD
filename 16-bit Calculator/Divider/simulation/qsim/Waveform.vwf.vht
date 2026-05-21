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
-- Generated on "05/21/2026 11:30:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Divider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Divider_vhd_vec_tst IS
END Divider_vhd_vec_tst;
ARCHITECTURE Divider_arch OF Divider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL qm : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
SIGNAL T : STD_LOGIC;
COMPONENT Divider
	PORT (
	clk : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	qm : OUT STD_LOGIC;
	rst_n : IN STD_LOGIC;
	T : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count => count,
	qm => qm,
	rst_n => rst_n,
	T => T
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- T
t_prcs_T: PROCESS
BEGIN
	T <= '1';
WAIT;
END PROCESS t_prcs_T;

-- rst_n
t_prcs_rst_n: PROCESS
BEGIN
LOOP
	rst_n <= '0';
	WAIT FOR 10000 ps;
	rst_n <= '1';
	WAIT FOR 990000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_rst_n;
END Divider_arch;
