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

	-- Component 1: 5 bit full adder
	component FAdder_5bit is
	port(
		a, b : in std_logic_vector(4 downto 0);
		ci : in std_logic;
		s : out std_logic_vector(4 downto 0)
	);
	end component;
	
	-- Component 2: 5 bit comparator
	component comparator_5bit is
	port(
		a, b : in std_logic_vector(4 downto 0);
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
	constant ten : std_logic_vector(4 downto 0) := "01010";
	constant one : std_logic_vector(4 downto 0) := "00001";
	
	
	-- Signals
	signal con1, errorx, errory : std_logic;
	signal a5, b5, sum5, diff5 : std_logic_vector(4 downto 0);
	signal sum, diff, digit1, digit0: std_logic_vector(3 downto 0);

	-- Behavior
	begin
		-- mapping a and b into a5 and b5
		a5 <= '0' & a;
		b5 <= '0' & b;
		-- adds a5 and b5 and stores it in sum
		U1 : FAdder_5bit port map (a => a5, b => b5, ci => ci, s => sum5);
		-- Compares 'a' with 10. 
		-- If a < 10, a mapped to 4 bits, HEX0 <= a, HEX1 <= "0000" (binary 0)
		-- Otherwise, HEX0 <= (a-10) mapped to 4 bits, HEX1 <= "1000" (binary 1)
		U2 : comparator_5bit port map (a => sum5, b => ten, d => con1);
		U3 : FAdder_5bit port map (a => sum5, b => "10101", ci => '1', s => diff5);
		
		--mapping values of sum5 into sum
		sum  <= sum5  (3 downto 0);
		
		--mapping values of diff5 into diff
		diff <= diff5 (3 downto 0);
		
		U4 : Mux2x1_4bit port map (a => diff, b => sum, s => con1, m => digit0);
		U5 : Mux2x1_4bit port map (a => "0001", b => "0000", s => con1, m => digit1);
		U6 : HexDisp port map (input => digit0, HEX0 => HEX0);
		U7 : HexDisp port map (input => digit1, HEX0 => HEX1);
		U8 : HexDisp port map (input => a, HEX0 => HEX5);
		U9 : HexDisp port map (input => b, HEX0 => HEX3);
		U10: comparator_5bit port map (a => a5, b => ten, d => errorx);
		U11: comparator_5bit port map (a => b5, b => ten, d => errory);
		
		
		LEDR(3 downto 0) <= sum;
		LEDR(9) <= errorx nand errory;
		
	end behavior;


-- Five bit adder
-- Uses 5 one-bit adder sub circuits

library ieee;
use ieee.std_logic_1164.all;

entity FAdder_5bit is
port (
	a, b : in std_logic_vector (4 downto 0);
	ci : in std_logic;
	s : out std_logic_vector (4 downto 0)
);
end FAdder_5bit;
architecture behavior of FAdder_5bit is
	component FAdder_1bit is
	port(
		a, b, ci : in std_logic;
		s, co : out std_logic
	);
	end component;
	signal co1, co2, co3, co4, co5 : std_logic;

begin
	U1 : FAdder_1bit port map (a => a(0), b => b(0), ci => ci,  s => s(0), co => co1);
	U2 : FAdder_1bit port map (a => a(1), b => b(1), ci => co1, s => s(1), co => co2);
	U3 : FAdder_1bit port map (a => a(2), b => b(2), ci => co2, s => s(2), co => co3);
	U4 : FAdder_1bit port map (a => a(3), b => b(3), ci => co3, s => s(3), co => co4);
	U5 : FAdder_1bit port map (a => a(4), b => b(4), ci => co4, s => s(4), co => co5);
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

entity comparator_5bit is
port(
	a, b: in std_logic_vector(4 downto 0);
	d : out std_logic
);
end comparator_5bit;

architecture behavior of comparator_5bit is
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
		U5 : comparator_1bit port map (a => a(4), b => b(4), g => g(4), l => l(4), e => e(4));
		d  <= l(4) or 
				(l(3) and e(4)) or 
				(l(2) and e(4) and e(3)) or 
				(l(1) and e(4) and e(3) and e(2)) or 
				(l(0) and e(4) and e(3) and e(2) and e(1));
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