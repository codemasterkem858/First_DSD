library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	c0 : in std_logic;
	c1 : in std_logic;
	HEX0 : out std_logic_vector(0 to 6)
);
end system;

architecture behavior of system is

begin
	HEX0(0) <= not c0;
	HEX0(1) <= c0;
	HEX0(2) <= c0;
	HEX0(3) <= c1;
	HEX0(4) <= c1;
	HEX0(5) <= not c0;
	HEX0(6) <= c1;
end behavior;