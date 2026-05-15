library ieee;
use ieee.std_logic_1164.all;

entity Multiplier is
	port(
		a, b :  in std_logic_vector(15 downto 0);
		prod : out std_logic_vector(31 downto 0)
	);
end Multiplier;

architecture behavior of Multiplier is

	-- Components
	-- Full Adder
	component FAdder
		port(
			a, b :  in std_logic_vector(15 downto 0);
			ci   :  in std_logic;
			sum  : out std_logic_vector(15 downto 0);
			co   : out std_logic
		);
	end component;
	
	-- 1 bit Multiplier/extended AND Gate
	component Mul_1bit is
		port(
			a :  in std_logic_vector(15 downto 0);
			b :  in std_logic;
			p : out std_logic_vector(15 downto 0)
		);
	end component;
	begin

end behavior;

-- 1 bit Multiplier/extended AND Gate
-- This basically performs the logical AND computation of a 16bit string with a single bit

library ieee;
use ieee.std_logic_1164.all;

entity Mul_1bit is
	port(
		a :  in std_logic_vector(15 downto 0);
		b :  in std_logic;
		p : out std_logic_vector(15 downto 0)
	);
end Mul_1bit;

architecture behaivor of Mul_1bit is

	-- Signal
	signal b_ext : std_logic_vector(15 downto 0);
	
	-- Behavior
	begin
		b_ext <= (others => b);
		p <= a and b_ext;

end behaivor;