library ieee;
use ieee.std_logic_1164.all;

entity system is
port (
	a, b : in std_logic_vector (3 downto 0);
	ci : in std_logic;
	s : out std_logic_vector (3 downto 0);
	co : out std_logic
);
end system;
architecture behavior of system is
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