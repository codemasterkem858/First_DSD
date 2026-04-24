library ieee;
use ieee.std_logic_1164.all;

entity Mux4x1 is
port(
	x : in std_logic_vector(1 downto 0);
	y : in std_logic_vector(1 downto 0);
	z : in std_logic_vector(1 downto 0);
	w : in std_logic_vector(1 downto 0);
	s1: in std_logic;
	s2: in std_logic;
	mo: out std_logic_vector(1 downto 0)
);
end Mux4x1;

architecture behavior of Mux4x1 is
	
	component Mux2x1 is
	port(
		a, b : in std_logic_vector(1 downto 0);
		s : in std_logic;
		m : out std_logic_vector(1 downto 0)
	);
	end component;
	signal m1_out, m2_out : std_logic_vector(1 downto 0);

begin
	U1: Mux2x1 port map (a => x, b => y, s => s1, m => m1_out);
	U2: Mux2x1 port map (a => z, b => w, s => s1, m => m2_out);
	U3: Mux2x1 port map (a => m1_out, b => m2_out, s => s2, m => mo);
end behavior;