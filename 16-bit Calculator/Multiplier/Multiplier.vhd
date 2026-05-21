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
	component FAdder_32bit
		port(
			a, b :  in std_logic_vector(31 downto 0);
			ci   :  in std_logic;
			sum  : out std_logic_vector(31 downto 0);
			co  : out std_logic
		);
	end component;
	
	-- 1 bit Multiplier/extended AND Gate
	component Mul_4bit is
		port(
			a :  in std_logic_vector(15 downto 0);
			b :  in std_logic_vector(3  downto 0);
			p : out std_logic_vector(19 downto 0)
		);
	end component;
	
	-- Constants
	constant four : std_logic_vector(3 downto 0) := "0000";
	
	-- Signals
	signal p0, p1, p2, p3 : std_logic_vector(19 downto 0);
	signal sum0, sum1     : std_logic_vector(31 downto 0);
	signal c0, c1, c2     : std_logic;
	
	-- Behavior
	begin
		u1 : Mul_4bit port map (a => a, b => b(3  downto  0), p => p0);
		u2 : Mul_4bit port map (a => a, b => b(7  downto  4), p => p1);
		u3 : Mul_4bit port map (a => a, b => b(11 downto  8), p => p2);
		u4 : Mul_4bit port map (a => a, b => b(15 downto 12), p => p3);
		u5 : FAdder_32bit port map (
			a   => four & four & four & p0, 
			b   => four & four & p1 & four, 
			ci  => '0', 
			sum => sum0,
			co  => c0
		);
		u6 : FAdder_32bit port map (
			a   => four & p2 & four & four,
			b   => p3 & four & four & four,
			ci  => '0',
			sum => sum1,
			co  => c1
		);
		u7 : FAdder_32bit port map (
			a   => sum0,
			b   => sum1,
			ci  => '0',
			sum => prod,
			co  => c2
		);

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

-- Special Full Adder
/*
Unlike the regular Full Adder, this one will output the carry out and all bits except the least significant bit as a single vector.
The LSB will become its own output and will be fed into becoming part of the final result. 
*/

library ieee;
use ieee.std_logic_1164.all;

entity altAdder is
	port(
		a, b :  in std_logic_vector(15 downto 0);
		ci   :  in std_logic;
		sum  : out std_logic_vector(15 downto 0);
		lsb  : out std_logic
	);
end altAdder;

architecture behavior of altAdder is
	
	-- Component
	-- 16 bit Full Adder
	component FAdder is
		port(
			a, b :  in std_logic_vector(15 downto 0);
			ci   :  in std_logic;
			sum  : out std_logic_vector(15 downto 0);
			co   : out std_logic
		);
	end component;
	
	-- Signals
	signal summ : std_logic_vector(15 downto 0);
	signal coo  : std_logic;
	
	-- Behavior
	begin
		u1: FAdder port map (a => a, b => b, ci => ci, sum => summ, co => coo);
		sum <= coo & summ(15 downto 1);
		lsb <= summ(0);
	
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity Mul_4bit is
	port(
		a  :  in std_logic_vector(15 downto 0);
		b  :  in std_logic_vector(3  downto 0);
		p  : out std_logic_vector(19 downto 0)
	);
end Mul_4bit;

architecture behavior of Mul_4bit is
	
	-- Components
	-- Full Adder
	component altAdder
		port(
			a, b :  in std_logic_vector(15 downto 0);
			ci   :  in std_logic;
			sum  : out std_logic_vector(15 downto 0);
			lsb  : out std_logic
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
	
	-- Signals
	signal 	p0, p1, p2, p3,
				sum0, sum1 : std_logic_vector(15 downto 0);
	
	begin
		-- a and b(0)
		u1 : Mul_1bit port map (a => a, b => b(0), p => p0);
		-- p(0) is taken
		p(0) <= p0(0);
		-- a and b(1)
		u2 : Mul_1bit port map (a => a, b => b(1), p => p1);
		-- first addition
		u3 : altAdder port map (a => '0' & p0(15 downto 1), b => p1, ci => '0', sum => sum0, lsb => p(1));
		-- a and b(2)
		u4 : Mul_1bit port map (a => a, b => b(2), p => p2);
		-- second addition
		u5 : altAdder port map (a => sum0, b => p2, ci => '0', sum => sum1, lsb => p(2));
		-- a and b(3)
		u6 : Mul_1bit port map (a => a, b => b(3), p => p3);
		-- third addition. Here, lsb is mapped to p(3) and the sum to the remaining 16 bits of the output
		u7 : altAdder port map (a => sum1, b => p3, ci => '0', sum => p(19 downto 4), lsb => p(3));
	
end behavior;

-- 32 bit Adder
library ieee;
use ieee.std_logic_1164.all;

entity FAdder_32bit is
	port(
		a, b  :  in std_logic_vector(31 downto 0);
		ci    :  in std_logic;
		sum   : out std_logic_vector(31 downto 0);
		co    : out std_logic
	);
end FAdder_32bit;

architecture behavior of FAdder_32bit is
	-- Component
	-- 16 bit Full Adder
	component FAdder is
		port(
			a, b  :  in std_logic_vector(15 downto 0);
			ci    :  in std_logic;
			sum   : out std_logic_vector(15 downto 0);
			co    : out std_logic
		);
	end component;
	
	-- Signal
	signal summ : std_logic_vector(31 downto 0);
	signal co0  : std_logic;
	
	-- Behavior
	begin
		u0 : FAdder port map (a => a(15 downto  0), b => b(15 downto  0), ci =>   ci, sum => summ(15 downto  0), co => co0);
		u1 : FAdder port map (a => a(31 downto 16), b => b(31 downto 16), ci =>  co0, sum => summ(31 downto 16), co =>  co);

end behavior;



