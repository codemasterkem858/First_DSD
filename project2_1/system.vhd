library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	num1, num2 : in std_logic_vector(3 downto 0);
	HEX0, HEX1 : out std_logic_vector(6 downto 0)
);
end system;

architecture behavior of system is
	component HexDisp is
	port(
		a, b, c, d : in std_logic;
		HEX0 : out std_logic_vector(6 downto 0)
	);
	end component;
	begin	
		U1: HexDisp port map (a => num1(0), b => num1(1), c => num1(2), d => num1(3), HEX0 => HEX0);
		U2: HexDisp port map (a => num2(0), b => num2(1), c => num2(2), d => num2(3), HEX0 => HEX1);
	end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity HexDisp is
port(
	a, b, c, d : in std_logic;
	HEX0 : out std_logic_vector(6 downto 0)
);
end HexDisp;

architecture behavior of HexDisp is

begin
	HEX0(0) <= not(( b nor d) or (c) or (b and d) or a);
	HEX0(1) <= not((c nor d) or not b or (c and d));
	HEX0(2) <= not(not c or d or b);
	HEX0(3) <= not((b nor d) or (not b and c) or (not c and b and d) or (c and not d) or a);
	HEX0(4) <= not((b nor d) or (not d and c));
	HEX0(5) <= not((c nor d) or (not c and b) or (not d and b) or a);
	HEX0(6) <= not((b xor c) or (not d and b) or a);
end behavior; 