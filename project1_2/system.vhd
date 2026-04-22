library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	x : in std_logic_vector(9 downto 6);
	y : in std_logic_vector(5 downto 2);
	s : in std_logic;
	m : out std_logic_vector(3 downto 0)
);
end system;

architecture behavior of system is

	signal s_vector : std_logic_vector(3 downto 0);
	signal not_s_vector : std_logic_vector(3 downto 0);
	signal int2 : std_logic_vector(3 downto 0);
	signal int3 : std_logic_vector(3 downto 0);
	
	begin
		s_vector <= (others => s);
		not_s_vector <= (others => not s);
		int2 <= not_s_vector and x;
		int3 <= y and s_vector;
		m <= int2 or int3;
	end behavior;