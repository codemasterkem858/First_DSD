--Main Entity
library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	a, b : in std_logic_vector(3 downto 0);
	ci : in std_logic;
	HEX0, HEX1, HEX3, HEX5 : out std_logic_vector(6 downto 0);
	LEDR : out std_logic_vector(9 downto 0)
);
end system;

architecture behavior of system is

	-- Component 1: 4 bit full adder
	component FAdder_4bit is
	port(
		a, b : in std_logic_vector(3 downto 0);
		ci : in std_logic;
		s : out std_logic_vector(3 downto 0);
		co: out std_logic
	);
	end component;
	
	-- Component 2: 4 bit comparator
	component comparator_4bit is
	port(
		a, b : in std_logic_vector(3 downto 0);
		d: out std_logic
	);
	end component;
	
	-- Component 3: 4 bit two-to-one multiplexer
	component Mux2x1_4bit is
	port(
		a, b: in std_logic_vector (3 downto 0);
		s : in std_logic;
		m : out std_logic_vector (3 downto 0)
	);
	end component;
	
	-- Component 4: Seven segment display
	component HexDisp is
	port(
		input : in std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0)
	);
	end component;
	
	-- Constants
	constant ten : std_logic_vector(3 downto 0) := "1010";
	constant one : std_logic_vector(3 downto 0) := "0001";
	constant zero: std_logic_vector(3 downto 0) := "0000";
	
	
	-- Signals
	signal con1, co : std_logic;
	signal sum, z0, c1, S0, S1: std_logic_vector(3 downto 0);

	-- Behavior is supposed to mimic the following psuedocode
	/*
		T0 = a + b + ci
		if (T0 > 9) then
			z0 = 10
			c1 = 1
		else
			z0 = 0
			c1 = 0
		end if
		S0 = T0 - z0
		S1 = c1
	*/
	-- Multiline comment does not work unless vhdl 2008 is used
	
	begin
		-- a + b + ci
		U1 : FAdder_4bit port map (a => a, b => b, ci => ci, s => sum, co => co);
		
		-- if sum > 9  then con1 = 0 and 
		-- if sum < 10 then con1 = 1
		U2 : comparator_4bit port map (a => sum, b => ten, d => con1);
		
		-- z0 = 10 if con1 = 0, z0 = 0 if con1 = 1
		U3 : Mux2x1_4bit port map (a => ten, b => zero, s => con1, m => z0);
		
		-- c1 = 1 if con1 = 0, c1 = 0 if con1 = 1
		U4 : Mux2x1_4bit port map (a => one, b => zero, s => con1, m => c1);
		
		-- s0 = sum - z0 = sum + ~(z0) + 1
		U5 : FAdder_4bit port map (a => sum, b => not (z0), ci => '1', s => S0, co => co);
		
		-- Display a on HEX5 and b on HEX3
		U6 : HexDisp port map (input => a, HEX0 => HEX5);
		U7 : HexDisp port map (input => b, HEX0 => HEX3);
		
		-- Display S1 on HEX1 and S0 on HEX0
		U8 : HexDisp port map (input => s0, HEX0 => HEX0);
		U9 : HexDisp port map (input => c1, HEX0 => HEX1);
		
	end behavior;


-- Five bit adder
-- Uses 5 one-bit adder sub circuits

library ieee;
use ieee.std_logic_1164.all;

entity FAdder_4bit is
port (
	a, b : in std_logic_vector (3 downto 0);
	ci : in std_logic;
	s : out std_logic_vector (3 downto 0);
	co : out std_logic
);
end FAdder_4bit;
architecture behavior of FAdder_4bit is
	component FAdder_1bit is
	port(
		a, b, ci : in std_logic;
		s, co : out std_logic
	);
	end component;
	signal co1, co2, co3 : std_logic;

begin
	U1 : FAdder_1bit port map (a => a(0), b => b(0), ci => ci,  s => s(0), co => co1);
	U2 : FAdder_1bit port map (a => a(1), b => b(1), ci => co1, s => s(1), co => co2);
	U3 : FAdder_1bit port map (a => a(2), b => b(2), ci => co2, s => s(2), co => co3);
	U4 : FAdder_1bit port map (a => a(3), b => b(3), ci => co3, s => s(3), co =>  co);
end behavior;

-- One bit full adder
-- Used 5 times in four bit full adder

library ieee;
use ieee.std_logic_1164.all;

entity FAdder_1bit is
port(
	a, b, ci : in std_logic;
	s, co : out std_logic
);
end FAdder_1bit;

architecture behavior of FAdder_1bit is

begin
	s <= a xor b xor ci;
	co <= (a and b) or (ci and (a xor b));
end behavior;

-- BCD to seven segment display decoder

library ieee;
use ieee.std_logic_1164.all;

entity HexDisp is
port(
	input : in std_logic_vector(3 downto 0);
	HEX0 : out std_logic_vector(6 downto 0)
);
end HexDisp;

architecture behavior of HexDisp is

	signal a, b, c, d : std_logic;

begin
	a <= input(3);
	b <= input(2);
	c <= input(1);
	d <= input(0);
	HEX0(0) <= not((b nor d) or (c) or (b and d) or a);
	HEX0(1) <= not((c nor d) or not b or (c and d));
	HEX0(2) <= not((not c) or d or b);
	HEX0(3) <= not((b nor d) or (not b and c) or (not c and b and d) or (c and not d) or a);
	HEX0(4) <= not((b nor d) or (not d and c));
	HEX0(5) <= not((c nor d) or (not c and b) or (not d and b) or a);
	HEX0(6) <= not((b xor c) or (not d and b) or a);
end behavior; 

-- Comparator
	library ieee;
	use ieee.std_logic_1164.all;

	entity comparator_1bit is
	port(
		a, b : in std_logic;
		g, l, e : out std_logic
	);
	end comparator_1bit;

	architecture behavior of comparator_1bit is
	begin
		g <= a and (not b);
		l <= not a and b;
		e <= a xnor b;
	end behavior;

	library ieee;
	use ieee.std_logic_1164.all;

	entity comparator_4bit is
	port(
		a, b: in std_logic_vector(3 downto 0);
		d : out std_logic
	);
	end comparator_4bit;

	architecture behavior of comparator_4bit is
		component comparator_1bit is
		port(
			a, b : in std_logic;
			g, l, e : out std_logic
		);
		end component;
		signal g, l, e : std_logic_vector(4 downto 0);
		begin
			U1 : comparator_1bit port map (a => a(0), b => b(0), g => g(0), l => l(0), e => e(0));
			U2 : comparator_1bit port map (a => a(1), b => b(1), g => g(1), l => l(1), e => e(1));
			U3 : comparator_1bit port map (a => a(2), b => b(2), g => g(2), l => l(2), e => e(2));
			U4 : comparator_1bit port map (a => a(3), b => b(3), g => g(3), l => l(3), e => e(3));
			d  <= l(3) or 
					(l(2) and e(3)) or 
					(l(1) and e(3) and e(2)) or 
					(l(0) and e(3) and e(2) and e(1));
		end behavior;

-- Multiplexers
library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1_4bit is
port(
	a, b: in std_logic_vector (3 downto 0);
	s : in std_logic;
	m : out std_logic_vector (3 downto 0)
);
end Mux2x1_4bit;

architecture behavior of Mux2x1_4bit is
	signal s_vector : std_logic_vector(3 downto 0);
	signal not_s_vector : std_logic_vector(3 downto 0);
begin
	s_vector <= (others => s);
	not_s_vector <= (others => not s);
	m <= (a and not_s_vector) or (b and s_vector);
end behavior;