
-- Main Entity
librar ieee;
use ieee.std_logic_1164.all;

entity system is

	port(
		SW : in std_logic_vector(5 downto 0);				-- 6 bit binary input
		HEX0, HEX1 : out std_logic_vector(6 downto 0)	--	2 digit display output
	);
	end system;

architecture behavior of system is
	
	-- Components
	
	-- 6 bit Comparator
	component comparator_6bit is
		port(
			a, b : in std_logic_vector(5 downto 0);
			d : out std_logic
		);
	end component;
	
	-- 4 bit eight-to-one Multiplexer
	component Mux8x1_4bit is
		port(
			a, b, c, d, e, f, g, h : in std_logic_vector(3 downto 0);
			s : in std_logic_vector(2 downto 0);
			m : out std_logic_vector(3 downto 0);
		);
	end component
	
	-- constants
	constant sixty  : std_logic_vector(5 downto 0):= "111100";
	constant fifty  : std_logic_vector(5 downto 0):= "110010";
	constant forty  : std_logic_vector(5 downto 0):= "101000";
	constant thirty : std_logic_vector(5 downto 0):= "011110";
	constant twenty : std_logic_vector(5 downto 0):= "010100";
	constant ten	 : std_logic_vector(5 downto 0):= "001010";
	
	-- signals

begin
end behavior;

--comparator
library ieee;
use ieee.std_logic_1164.all;

entity comparator_1bit is
port(
	a, b : in std_logic;
	g, l, e : out std_logic
);
end comparator_1bit;

architecture behavior of comparator_1bit is
begin
	g <= a and (not b);
	l <= not a and b;
	e <= a xnor b;
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity comparator_6bit is

	port(
		a, b: in std_logic_vector(5 downto 0);
		d : out std_logic
	);
	end comparator_6bit;

architecture behavior of comparator_4bit is
	component comparator_1bit is
	port(
		a, b : in std_logic;
		g, l, e : out std_logic
	);
	end component;
	signal g, l, e : std_logic_vector(5 downto 0);
	begin
		U1 : comparator_1bit port map (a => a(0), b => b(0), g => g(0), l => l(0), e => e(0));
		U2 : comparator_1bit port map (a => a(1), b => b(1), g => g(1), l => l(1), e => e(1));
		U3 : comparator_1bit port map (a => a(2), b => b(2), g => g(2), l => l(2), e => e(2));
		U4 : comparator_1bit port map (a => a(3), b => b(3), g => g(3), l => l(3), e => e(3));
		U5 : comparator_1bit port map (a => a(4), b => b(4), g => g(4), l => l(4), e => e(4));
		U6 : comparator_1bit port map (a => a(5), b => b(5), g => g(5), l => l(5), e => e(5));
		d  <= (l(5)) or
				(l(4) and e(5)) or
				(l(3) and e(5) and e(4)) or
				(l(2) and e(5) and e(4) and e(3)) or 
				(l(1) and e(5) and e(4) and e(3) and e(2)) or 
				(l(0) and e(5) and e(4) and e(3) and e(2) and e(1));
	end behavior;

-- Multiplexers
-- 4 bit two-to-one multiplexers
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

	-- Signal
	signal s_vector : std_logic_vector(3 downto 0);
	signal not_s_vector : std_logic_vector(3 downto 0);
	
	-- Behavior
	begin
		s_vector <= (others => s);
		not_s_vector <= (others => not s);
		m <= (a and not_s_vector) or (b and s_vector);
	end behavior;

-- 4 bit eight-to-one multiplexers
library ieee; 
use ieee.std_logic_1164.all;

entity Mux8x1_4bit is
	port (
		a, b, c, d, e, f, g, h : in std_logic_vector(3 downto 0);
		s : in std_logic_vector (2 downto 0);
		m : out std_logic_vector(3 downto 0)
	);
	end Mux2x1_4bit;

architecture behavior of Mux8x1_4bit is

	-- Component
	-- 4 bit two-to-one multiplexer
	component Mux2x1_4bit is
		port(
			a, b : in std_logic_vector(3 downto 0);
			s : in std_logic;
			m : out std_logic_vector(3 downto 0);
		);
		end component;
	
	-- Signal
	signal m11, m12, m13, m14, m21, m22 : std_logic_vector(3 downto 0);
	
	-- Behavior
	begin
		u1: Mux2x1_4bit port map (a =>   a, b =>   b, s => s(0), m => m11);
		u2: Mux2x1_4bit port map (a =>   c, b =>   d, s => s(0), m => m12);
		u3: Mux2x1_4bit port map (a =>   e, b =>   f, s => s(0), m => m13);
		u4: Mux2x1_4bit port map (a =>   g, b =>   h, s => s(0), m => m14);
		u5: Mux2x1_4bit port map (a => m11, b => m12, s => s(1), m => m21);
		u6: Mux2x1_4bit port map (a => m13, b => m14, s => s(1), m => m22);
		u7: Mux2x1_4bit port map (a => m21, b => m22, s => s(2), m =>   m);
		
	end behavior;
	
-- 3 bit priority encoder
-- Test it on separate document
library ieee;
use ieee.std_logic_1164.all;

entity prienc_3bit is
	port(
		a, b, c, d, e, f, g, h : in std_logic;
		dec : out std_logic_vector(2 downto 0)
	);
end prienc_3bit;

architectre behavior of prienc_3bit is
	
	--Signals
	
	begin
	dec(2 downto 0) <= 
	
	end behavior;
	