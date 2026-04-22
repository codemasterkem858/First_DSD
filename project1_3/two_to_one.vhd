library ieee;
use ieee.std_logic_1164.all;

entity two_to_one is
port(
	a : in std_logic_vector(1 downto 0);
	b : in std_logic_vector(1 downto 0);
	s : in std_logic;
	m : out std_logic_vector(1 downto 0)
);
end two_to_one;

architecture behavior of two_to_one is
	signal s_vector : std_logic_vector(1 downto 0);
	signal not_s_vector : std_logic_vector(1 downto 0);
	signal int1 : std_logic_vector(1 downto 0);
	signal int2 : std_logic_vector(1 downto 0);
	
	begin
		s_vector <= (others => s);
		not_s_vector <= (others => not s);
		int1 <= a and not_s_vector;
		int2 <= b and s_vector;
		m <= int1 or int2;
	end behavior;