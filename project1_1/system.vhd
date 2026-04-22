library ieee;
use ieee.std_logic_1164.all;

entity system is
	port (
		mysw : in std_logic_vector(9 downto 0);
		myLEDR : out std_logic_vector(9 downto 0)
	);
end system;

architecture behavior of system is
begin
	myLEDR <= mysw;
end;