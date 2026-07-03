-- ==========================================================
-- 1. 1-bit Full Adder (Leaf Node)
-- ==========================================================
library ieee;
use ieee.std_logic_1164.all;

entity FAdder_1bit is
    port(
        a, b, ci :  in std_logic;
        sum, co  : out std_logic
    );
end FAdder_1bit;

architecture behavior of FAdder_1bit is
begin
    sum <= a xor b xor ci;
    co  <= (a and b) or ((a xor b) and ci);
end behavior;

-- ==========================================================
-- 2. 4-bit Full Adder
-- ==========================================================
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
    component FAdder_1bit is
        port(
            a, b, ci :  in std_logic;
            sum, co  : out std_logic
        );
    end component;
    
    signal co0, co1, co2 : std_logic;
begin
    u0 : FAdder_1bit port map (a => a(0), b => b(0), ci => ci , sum => sum(0), co => co0);
    u1 : FAdder_1bit port map (a => a(1), b => b(1), ci => co0, sum => sum(1), co => co1);
    u2 : FAdder_1bit port map (a => a(2), b => b(2), ci => co1, sum => sum(2), co => co2);
    u3 : FAdder_1bit port map (a => a(3), b => b(3), ci => co2, sum => sum(3), co =>  co);
end behavior;

-- ==========================================================
-- 3. 16-bit Full Adder
-- ==========================================================
library ieee;
use ieee.std_logic_1164.all;

entity FAdder is
    port(
        a, b : in  std_logic_vector(15 downto 0); -- 16 bit inputs
        ci   : in  std_logic;                     -- 1 bit carry in
        sum  : out std_logic_vector(15 downto 0); -- 16 bit output
        co   : out std_logic                      -- 1 bit carry out
    );
end FAdder;

architecture behavior of FAdder is
    component FAdder_4bit is
        port(
            a, b :  in std_logic_vector(3 downto 0);
            ci   :  in std_logic;
            sum  : out std_logic_vector(3 downto 0);
            co   : out std_logic
        );
    end component;
    
    signal co0, co1, co2 : std_logic;
    signal summ : std_logic_vector(15 downto 0);
begin
    u0 : FAdder_4bit port map (a => a(3  downto  0), b => b(3  downto  0), ci =>  ci, sum => summ(3  downto  0), co => co0);
    u1 : FAdder_4bit port map (a => a(7  downto  4), b => b(7  downto  4), ci => co0, sum => summ(7  downto  4), co => co1);
    u2 : FAdder_4bit port map (a => a(11 downto  8), b => b(11 downto  8), ci => co1, sum => summ(11 downto  8), co => co2);
    u3 : FAdder_4bit port map (a => a(15 downto 12), b => b(15 downto 12), ci => co2, sum => summ(15 downto 12), co =>  co);
    
    sum <= summ;
end behavior;

-- ==========================================================
-- 4. Special 16-bit Full Adder (altAdder)
-- ==========================================================
-- Unlike the regular Full Adder, this one will output the carry out and all 
-- bits except the least significant bit as a single vector.
-- The LSB will become its own output and will be fed into the final result.
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
    component FAdder is
        port(
            a, b :  in std_logic_vector(15 downto 0);
            ci   :  in std_logic;
            sum  : out std_logic_vector(15 downto 0);
            co   : out std_logic
        );
    end component;
    
    signal summ : std_logic_vector(15 downto 0);
    signal coo  : std_logic;
begin
    u1: FAdder port map (a => a, b => b, ci => ci, sum => summ, co => coo);
    sum <= coo & summ(15 downto 1);
    lsb <= summ(0);
end behavior;

-- ==========================================================
-- 5. 32-bit Full Adder (FIXED: Directly mapped outputs)
-- ==========================================================
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
    component FAdder is
        port(
            a, b  :  in std_logic_vector(15 downto 0);
            ci    :  in std_logic;
            sum   : out std_logic_vector(15 downto 0);
            co    : out std_logic
        );
    end component;
    
    signal co0  : std_logic;
begin
    u0 : FAdder port map (a => a(15 downto  0), b => b(15 downto  0), ci =>   ci, sum => sum(15 downto  0), co => co0);
    u1 : FAdder port map (a => a(31 downto 16), b => b(31 downto 16), ci =>  co0, sum => sum(31 downto 16), co =>  co);
end behavior;

-- ==========================================================
-- 6. 16-bit Multiplexer
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity mux2x1_16bit is
	port(
		a, b	:  in std_logic_vector(15 downto  0);
		s		:  in std_logic;
		m		: out std_logic_vector(15 downto  0)
	);
end mux2x1_16bit;

architecture behavior of mux2x1_16bit is
	signal s_ext, nots : std_logic_vector(15 downto 0);
	begin
		s_ext <= (others => s);
		nots	<= (others => not s);
		m <= (a and nots) or (b and s_ext); 
end behavior;

-- ==========================================================
-- 7. 1-bit Multiplier / Extended AND Gate (FIXED: Spelling)
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
-- 8. 4-bit Multiplier
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
            a, b :  in std_logic_vector(15 downto 0);
            ci   :  in std_logic;
            sum  : out std_logic_vector(15 downto 0);
            lsb  : out std_logic
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
    u3 : altAdder port map (a => '0' & p0(15 downto 1), b => p1, ci => '0', sum => sum0, lsb => p(1));
    
    -- a and b(2)
    u4 : Mul_1bit port map (a => a, b => b(2), p => p2);
    u5 : altAdder port map (a => sum0, b => p2, ci => '0', sum => sum1, lsb => p(2));
    
    -- a and b(3)
    u6 : Mul_1bit port map (a => a, b => b(3), p => p3);
    u7 : altAdder port map (a => sum1, b => p3, ci => '0', sum => p(19 downto 4), lsb => p(3));
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
	component FAdder is
			port(
				a, b	:  in std_logic_vector(15 downto  0);
				ci 	:  in std_logic;
				sum	: out std_logic_vector(15 downto  0);
				co		: out std_logic
			);
	end component;
	component FAdder_32bit is
			port(
            a, b :  in std_logic_vector(31 downto 0);
            ci   :  in std_logic;
            sum  : out std_logic_vector(31 downto 0);
            co   : out std_logic
			);
    end component;
    
    component Mul_4bit is
        port(
            a :  in std_logic_vector(15 downto 0);
            b :  in std_logic_vector(3  downto 0);
            p : out std_logic_vector(19 downto 0)
        );
    end component;
	 
	 component mux2x1_16bit is
			port(
				a, b	:  in std_logic_vector(15 downto 0);
				s		:  in std_logic;
				m		: out std_logic_vector(15 downto 0)
			);
	 end component;
    
    constant four : std_logic_vector(3 downto 0) := "0000";
    
	 signal inp1, inp2, m1, m2			: std_logic_vector(15 downto 0);
    signal p0, p1, p2, p3				: std_logic_vector(19 downto 0);
    signal sum0, sum1, sum3, sum4   : std_logic_vector(31 downto 0);
    signal c0, c1, c2, c3, c4, c5   : std_logic;
begin
    
	 
	 v1 : FAdder port map (a => (others => '0'), b => not a, ci => '1', sum => inp1, co => c4);
	 v2 : FAdder port map (a => (others => '0'), b => not b, ci => '1', sum => inp2, co => c5);
	 v3 : mux2x1_16bit port map (a => a, b => inp1, s => a(15), m => m1);
	 v4 : mux2x1_16bit port map (a => b, b => inp2, s => b(15), m => m2);
	 u1 : Mul_4bit port map (a => m1, b => m2(3  downto  0), p => p0);
    u2 : Mul_4bit port map (a => m1, b => m2(7  downto  4), p => p1);
    u3 : Mul_4bit port map (a => m1, b => m2(11 downto  8), p => p2);
    u4 : Mul_4bit port map (a => m1, b => m2(15 downto 12), p => p3);
    
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
        sum => sum3,
        co  => c2
    );
	 v5 : FAdder_32bit port map (
		  a	=> (others => '0'),
		  b	=> not sum3,
		  ci	=> '1',
		  sum => sum4,
		  co	=> c3
	 );
	 v6 : mux2x1_16bit port map (a => sum3(31 downto 16), b => sum4(31 downto 16), s => a(15) xor b(15), m => prod(31 downto 16));
	 v7 : mux2x1_16bit port map (a => sum3(15 downto  0), b => sum4(15 downto  0), s => a(15) xor b(15), m => prod(15 downto  0));
end behavior;