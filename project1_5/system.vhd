library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	sel : in std_logic_vector(9 downto 8);
	con0 : in std_logic_vector(7 downto 6);
	con1 : in std_logic_vector(5 downto 4);
	con2 : in std_logic_vector(3 downto 2);
	con3 : in std_logic_vector(1 downto 0);
	HEX0 : out std_logic_vector(6 downto 0);
);
end system;

architecture behavior of system is
	component seven_segment is
	port(
		...
	);

begin
end behavior;

entity seven_segment is
port(
	c0 : in std_logic;
	c1 : in std_logic;
	HEX0 : out std_logic_vector(0 to 6)
);
end seven_segment;

architecture behavioral of seven_segment is

begin
	HEX0(0) <= not c0;
	HEX0(1) <= c0;
	HEX0(2) <= c0;
	HEX0(3) <= c1;
	HEX0(4) <= c1;
	HEX0(5) <= not c0;
	HEX0(6) <= c1;
end behavioral;