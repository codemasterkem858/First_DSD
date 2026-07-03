-- ==========================================================
-- 1. Special 16-bit Full Adder (altAdder)
-- ==========================================================

-- Unlike the regular Full Adder, this one will output the carry out and all 
-- bits except the least significant bit as a single vector.
-- The LSB will become its own output and will be fed into the final result.
library ieee;
use ieee.std_logic_1164.all;

entity altAdder is
    port(
        a, b	:  in std_logic_vector(15 downto 0);
        ci		:  in std_logic;
        s		: out std_logic_vector(15 downto 0);
        lsb		: out std_logic
    );
end altAdder;

architecture behavior of altAdder is
    component FAdder is
        port(
            a, b	:  in std_logic_vector(15 downto 0);
            ci		:  in std_logic;
            s		: out std_logic_vector(15 downto 0);
            co		: out std_logic
        );
    end component;
    
    signal summ : std_logic_vector(15 downto 0);
    signal coo  : std_logic;
begin
    u1: FAdder port map (a => a, b => b, ci => ci, s => summ, co => coo);
    s	 	<= coo & summ(15 downto 1);
    lsb	<= summ(0);
end behavior;

-- ==========================================================
-- 2. 32-bit Full Adder
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity FAdder_32bit is
    port(
        a, b	:  in std_logic_vector(31 downto 0);
        ci		:  in std_logic;
        s		: out std_logic_vector(31 downto 0);
        co		: out std_logic
    );
end FAdder_32bit;

architecture behavior of FAdder_32bit is
    component FAdder is
        port(
            a, b	:  in std_logic_vector(15 downto 0);
            ci		:  in std_logic;
            s	   : out std_logic_vector(15 downto 0);
            co    : out std_logic
        );
    end component;
    
    signal co0  : std_logic;
begin
    u0 : FAdder port map (a => a(15 downto  0), b => b(15 downto  0), ci =>   ci, s => s(15 downto  0), co => co0);
    u1 : FAdder port map (a => a(31 downto 16), b => b(31 downto 16), ci =>  co0, s => s(31 downto 16), co =>  co);
end behavior;

-- ==========================================================
-- 3. 1-bit Multiplier / Extended AND Gate (FIXED: Spelling)
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity Mul_1bit is
    port(
        a :  in std_logic_vector(15 downto 0);
        b :  in std_logic;
        p : out std_logic_vector(15 downto 0)
    );
end Mul_1bit;

architecture behavior of Mul_1bit is

   signal b_ext : std_logic_vector(15 downto 0);
	 
	begin
		 b_ext <= (others => b);
		 p <= a and b_ext;
end behavior;

-- ==========================================================
-- 4. 4-bit Multiplier
-- ==========================================================

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
	component altAdder
		port(
				a, b	:  in std_logic_vector(15 downto 0);
            ci		:  in std_logic;
            s		: out std_logic_vector(15 downto 0);
            lsb	: out std_logic
        );
	end component;
    
   component Mul_1bit is
		port(
			a :  in std_logic_vector(15 downto 0);
			b :  in std_logic;
			p : out std_logic_vector(15 downto 0)
		);
	end component;
    
   signal p0, p1, p2, p3, sum0, sum1 : std_logic_vector(15 downto 0);
	
	begin
		 -- a and b(0)
		 u1 : Mul_1bit port map (a => a, b => b(0), p => p0);
		 p(0) <= p0(0);
		 
		 -- a and b(1)
		 u2 : Mul_1bit port map (a => a, b => b(1), p => p1);
		 u3 : altAdder port map (a => '0' & p0(15 downto 1), b => p1, ci => '0', s => sum0, lsb => p(1));
		 
		 -- a and b(2)
		 u4 : Mul_1bit port map (a => a, b => b(2), p => p2);
		 u5 : altAdder port map (a => sum0, b => p2, ci => '0', s => sum1, lsb => p(2));
		 
		 -- a and b(3)
		 u6 : Mul_1bit port map (a => a, b => b(3), p => p3);
		 u7 : altAdder port map (a => sum1, b => p3, ci => '0', s => p(19 downto 4), lsb => p(3));
		 
end behavior;

-- ==========================================================
-- 9. Top-Level Entity (16-bit Multiplier)
-- ==========================================================
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

	-- 16 bit Adder
	component FAdder is
			port(
				a, b	:  in std_logic_vector(15 downto  0);
				ci 	:  in std_logic;
				s		: out std_logic_vector(15 downto  0);
				co		: out std_logic
			);
	end component;
	
	-- 32 bit Adder
	component FAdder_32bit is
			port(
            a, b	:  in std_logic_vector(31 downto 0);
            ci		:  in std_logic;
            s		: out std_logic_vector(31 downto 0);
            co		: out std_logic
			);
	end component;
	
	-- 4 bit Multiplier
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
	signal inp1, inp2, m1, m2			: std_logic_vector(15 downto 0);
	signal p0, p1, p2, p3				: std_logic_vector(19 downto 0);
	signal sum0, sum1, sum3, sum4   : std_logic_vector(31 downto 0);
	signal c0, c1, c2, c3, c4, c5   : std_logic;
	 
	begin
    
	 
		v1 : FAdder port map (a => (others => '0'), b => not a, ci => '1', s => inp1, co => c4);
		v2 : FAdder port map (a => (others => '0'), b => not b, ci => '1', s => inp2, co => c5);

		m1 <= inp1 when (a(15) = '1') else a;
		m2 <= inp2 when (b(15) = '1') else b;
		
		u1 : Mul_4bit port map (a => m1, b => m2(3  downto  0), p => p0);
		u2 : Mul_4bit port map (a => m1, b => m2(7  downto  4), p => p1);
		u3 : Mul_4bit port map (a => m1, b => m2(11 downto  8), p => p2);
		u4 : Mul_4bit port map (a => m1, b => m2(15 downto 12), p => p3);

		u5 : FAdder_32bit port map (
			a   => four & four & four & p0, 
			b   => four & four & p1 & four, 
			ci  => '0', 
			s	 => sum0,
			co  => c0
		);
		u6 : FAdder_32bit port map (
			a   => four & p2 & four & four,
			b   => p3 & four & four & four,
			ci  => '0',
			s	 => sum1,
			co  => c1
		);
		u7 : FAdder_32bit port map (
			a 	 => sum0,
			b	 => sum1,
			ci  => '0',
			s	 => sum3,
			co  => c2
		);
		
		v3 : FAdder_32bit port map (
			a	 => (others => '0'),
			b	 => not sum3,
			ci	 => '1',
			s	 => sum4,
			co	 => c3
		);
		prod <= sum4 when ((a(15) xor b(15)) = '1') else sum3;
		
end behavior;
