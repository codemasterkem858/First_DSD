-- =====================================
-- 1. Binary to BCD converter
-- =====================================
library ieee;
use ieee.std_logic_1164.all;

entity bcdconv is
	port(
		a							:  in std_logic_vector(15 downto  0);
		b0, b1, b2, b3, b4	: out std_logic_vector(3  downto  0);
		sign						: out std_logic
	);
end bcdconv;

architecture behavior of bcdconv is
	
	component Divider is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			r, q	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component FAdder is
		port(
			a, b : in  std_logic_vector(15 downto 0);
			ci   : in  std_logic;
			s    : out std_logic_vector(15 downto 0);	
			co   : out std_logic
		);
	end component;
	
	signal q0, q1, q2, q3, r0, r1, r2, r3, r4 : std_logic_vector(15 downto  0);
	signal aneg, amag	: std_logic_vector(15 downto 0);
	
	
	constant ten : std_logic_vector(15 downto  0) := "0000000000001010";
	
	begin
		v1  : FAdder port map (a => (others => '0'), b => not a, ci => '1', s => aneg, co => open);
		amag <= aneg when (a(15) = '1') else a;
		
		u1  : Divider port map (a => amag, b => ten, q => q0, r => r0);
		u2  : Divider port map (a =>   q0, b => ten, q => q1, r => r1);
		u3  : Divider port map (a =>   q1, b => ten, q => q2, r => r2);
		u4  : Divider port map (a =>   q2, b => ten, q => q3, r => r3);
		u5  : Divider port map (a =>   q3, b => ten, r => r4);
		
		b0 <= r0(3 downto 0);
		b1 <= r1(3 downto 0);
		b2 <= r2(3 downto 0);
		b3 <= r3(3 downto 0);
		b4 <= r4(3 downto 0);
		
		sign <= a(15);
end behavior;