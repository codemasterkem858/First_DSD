library ieee;
use ieee.std_logic_1164.all;

entity Divider is

end Divider

architecture behavior of Divider is

end behavior;

--------------------------------------------------------
--					16 bit Comparator
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity comparator_16bit is
	port(
		a, b    :  in std_logic_vector(15 downto  0);
		g, l, e : out std_logic
	);
end comparator_16bit;

architecture behavior of comparator_4bit is
	
	-- Component
	-- 4 bit Comparator
	component comparator_4bit is
	port(
		a, b    :  in std_logic_vector(3 downto  0);
		g, l, e : out std_logic
	);
	end component;
	
	-- Signals
	signal g, l, e : std_logic_vector(3 downto 0);
	
	-- Behavior
	begin
		U1 : comparator_4bit port map (a => a(3  downto  0), b => b(3  downto  0), g => g(0), l => l(0), e => e(0));
		U2 : comparator_4bit port map (a => a(7  downto  4), b => b(7  downto  4), g => g(1), l => l(1), e => e(1));
		U3 : comparator_4bit port map (a => a(11 downto  8), b => b(11 downto  8), g => g(2), l => l(2), e => e(2));
		U4 : comparator_4bit port map (a => a(15 downto 12), b => b(15 downto 12), g => g(3), l => l(3), e => e(3));
		l  <=  l(3) or 
				(l(2) and e(3)) or 
				(l(1) and e(3) and e(2)) or 
				(l(0) and e(3) and e(2) and e(1));
				
		g  <=	 g(3) or 
				(g(2) and e(3)) or 
				(g(1) and e(3) and e(2)) or 
				(g(0) and e(3) and e(2) and e(1));
				
		e  <=	(e(3) and e(2) and e(1) and e(0));

end behavior;

--------------------------------------------------------
--					 4 bit Comparator
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity comparator_4bit is
	port(
		a, b    :  in std_logic_vector(3 downto 0);
		g, l, e : out std_logic
	);
end comparator_4bit;

architecture behavior of comparator_4bit is
	
	-- Component
	-- 1 bit Comparator
	component comparator_1bit is
	port(
		a, b : in std_logic;
		g, l, e : out std_logic
	);
	end component;
	
	-- Signals
	signal g, l, e : std_logic_vector(4 downto 0);
	
	-- Behavior
	begin
		U1 : comparator_1bit port map (a => a(0), b => b(0), g => g(0), l => l(0), e => e(0));
		U2 : comparator_1bit port map (a => a(1), b => b(1), g => g(1), l => l(1), e => e(1));
		U3 : comparator_1bit port map (a => a(2), b => b(2), g => g(2), l => l(2), e => e(2));
		U4 : comparator_1bit port map (a => a(3), b => b(3), g => g(3), l => l(3), e => e(3));
		l  <= l(3) or 
				(l(2) and e(3)) or 
				(l(1) and e(3) and e(2)) or 
				(l(0) and e(3) and e(2) and e(1));
				
		g  <=	g(3) or 
				(g(2) and e(3)) or 
				(g(1) and e(3) and e(2)) or 
				(g(0) and e(3) and e(2) and e(1));
				
		e  <=	(e(3) and e(2) and e(1) and e(0));
end behavior;
--------------------------------------------------------
--					 1 bit Comparator
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity comparator_1bit is
	port(
		a, b : in std_logic;
		g, l, e : out std_logic
	);
end comparator_1bit;

architecture behavior of comparator_1bit is
	
	-- Behavior
	begin
		g <= a and (not b);
		l <= not a and b;
		e <= a xnor b;
		
end behavior;

--------------------------------------------------------
--					16 bit Full Adder
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity FAdder is
	port(
		a, b : in  std_logic_vector(15 downto 0);	-- 16 bit inputs
		ci   : in  std_logic;							-- 1 bit carry in
		sum  : out std_logic_vector(15 downto 0);	-- 16 bit output
		co   : out std_logic;							-- 1 bit carry out
		neg  : out std_logic								-- 1 bit negative flag
		
	);
end FAdder;

architecture behavior of FAdder is

	-- Component
	-- 4 bit Full Adders
	component FAdder_4bit is
		port(
			a, b :  in std_logic_vector(3 downto 0);
			ci   :  in std_logic;
			sum  : out std_logic_vector(3 downto 0);
			co   : out std_logic
		);
	end component;
	
	-- Signal
	signal co0, co1, co2 : std_logic;
	signal summ : std_logic_vector(15 downto 0);
	
	-- Behavior
	begin
		u0 : FAdder_4bit port map (a => a(3  downto  0), b => b(3  downto  0), ci =>  ci, sum => summ(3  downto  0), co => co0);
		u1 : FAdder_4bit port map (a => a(7  downto  4), b => b(7  downto  4), ci => co0, sum => summ(7  downto  4), co => co1);
		u2 : FAdder_4bit port map (a => a(11 downto  8), b => b(11 downto  8), ci => co1, sum => summ(11 downto  8), co => co2);
		u3 : FAdder_4bit port map (a => a(15 downto 12), b => b(15 downto 12), ci => co2, sum => summ(15 downto 12), co =>  co);
		
		sum <= summ;
		neg <= summ(15);
end behavior;

--------------------------------------------------------
--					 4 bit Full Adder
--------------------------------------------------------
	
library ieee;
use ieee.std_logic_1164.all;

entity FAdder_4bit is
	port(
		a, b :  in std_logic_vector(3 downto 0);
		ci   :  in std_logic;
		sum  : out std_logic_vector(3 downto 0);
		co   : out std_logic
	);
end FAdder_4bit;

architecture behavior of FAdder_4bit is

	-- Component
	-- 1 bit Full Adder
	component FAdder_1bit is
		port(
			a, b, ci :  in std_logic;
			sum, co  : out std_logic
		);
	end component;
	
	-- Signals
	signal co0, co1, co2 : std_logic;
	
	--Behavior
	begin
		u0 : FAdder_1bit port map (a => a(0), b => b(0), ci => ci , sum => sum(0), co => co0);
		u1 : FAdder_1bit port map (a => a(1), b => b(1), ci => co0, sum => sum(1), co => co1);
		u2 : FAdder_1bit port map (a => a(2), b => b(2), ci => co1, sum => sum(2), co => co2);
		u3 : FAdder_1bit port map (a => a(3), b => b(3), ci => co2, sum => sum(3), co =>  co);
end behavior;

--------------------------------------------------------
--					 1 bit Full Adder
--------------------------------------------------------
	
library ieee;
use ieee.std_logic_1164.all;

entity FAdder_1bit is
	port(
		a, b, ci :  in std_logic;
		sum, co  : out std_logic
	);
end FAdder_1bit;

architecture behavior of FAdder_1bit is
	
	-- Behavior
	begin
		sum <= a xor b xor ci;
		co  <= a xor (b and ci);

end behavior;

--------------------------------------------------------
--					 D Latch
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity DLatch is
	port(
		D    :  in std_logic;
		clk  :  in std_logic;
		en   :  in std_logic;
		Q    : out std_logic;
		Qnot : out std_logic
	);
end DLatch;

architecture behavior of DLatch is

	-- Signals
	signal R_g, S_g, Qa, Qb :  std_logic;
	attribute keep : boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;
	
	-- Behavior
	begin
	R_g  <= not D nand clk;
	S_g  <= D nand clk;
	Qa   <= S_g nand Qb;
	Qb   <= R_g nand Qa;
	
	Q    <= Qa;
	Qnot <= Qb;

end behavior;
