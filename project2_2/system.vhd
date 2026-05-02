library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	SW : in std_logic_vector(3 downto 0);
	HEX0, HEX1 : out std_logic_vector(6 downto 0)
);
end system;

architecture behavior of system is
	component HexDisp is
	port(
		input:  in std_logic_vector(3 downto 0);
		HEX0 : out std_logic_vector(6 downto 0)
	);
	end component;
	
	component Mux2x1_4bit is
	port(
		a, b : in std_logic_vector(3 downto 0);
		s : in std_logic;
		m : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component comparator_4bit is
	port(
		a, b : in std_logic_vector(3 downto 0);
		d : out std_logic
	);
	end component;
	
	component FAdder_4bit is
	port(
		a, b : in std_logic_vector(3 downto 0);
		ci : in std_logic;
		s : out std_logic_vector(3 downto 0);
		co : out std_logic
	);
	end component;
	constant ten : std_logic_vector(3 downto 0) := "0101";
	constant one : std_logic_vector(3 downto 0) := "1000";
	constant ci : std_logic := '1';
	signal co : std_logic;
	signal con1 : std_logic;
	signal diff, digit1, digit0: std_logic_vector(3 downto 0);
begin
	U1 : comparator_4bit port map (a => SW, b => "0101", d => con1);
	U2 : FAdder_4bit port map (a => SW, b => "1010", ci => ci, s => diff, co => co);
	U3 : Mux2x1_4bit port map (a => SW, b => diff, s => con1, m => digit0);
	U4 : Mux2x1_4bit port map (a => "0000", b => "1000", s => con1, m => digit1);
	U5 : HexDisp port map (input => digit0, HEX0 => HEX0);
	U6 : HexDisp port map (input => digit1, HEX0 => HEX1);
end behavior;

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
	a <= input(0);
	b <= input(1);
	c <= input(2);
	d <= input(3);
	HEX0(0) <= not((b nor d) or (c) or (b and d) or a);
	HEX0(1) <= not((c nor d) or not b or (c and d));
	HEX0(2) <= not((not c) or d or b);
	HEX0(3) <= not((b nor d) or (not b and c) or (not c and b and d) or (c and not d) or a);
	HEX0(4) <= not((b nor d) or (not d and c));
	HEX0(5) <= not((c nor d) or (not c and b) or (not d and b) or a);
	HEX0(6) <= not((b xor c) or (not d and b) or a);
end behavior; 

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
	signal g, l, e : std_logic_vector(3 downto 0);
	begin
		U1 : comparator_1bit port map (a => a(0), b => b(0), g => g(0), l => l(0), e => e(0));
		U2 : comparator_1bit port map (a => a(1), b => b(1), g => g(1), l => l(1), e => e(1));
		U3 : comparator_1bit port map (a => a(2), b => b(2), g => g(2), l => l(2), e => e(2));
		U4 : comparator_1bit port map (a => a(3), b => b(3), g => g(3), l => l(3), e => e(3));
		d <= l(0) or (l(1) and e(0)) or (l(2) and e(0) and e(1)) or (l(3) and e(0) and e(1) and e(2));
	end behavior;

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