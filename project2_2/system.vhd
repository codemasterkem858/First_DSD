library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	
);
end system;

architecture behavior of system is;

begin
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

library ieee;
use ieee.std_logic_1164.all;

entity comparator_4bit is
port(
	a, b: in std_logic_vector(3 downto 0);
	d : out std_logic
);
end comparator_4bit;

architecture behavior of comparator_4bit is

begin
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

begin
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity Minus is
port(
	a : in std_logic_vector (3 downto 0);
	d : out std_logic_vector (3 downto 0)
);
end Minus;

architecture behavior of Minus is

begin
end behavior;