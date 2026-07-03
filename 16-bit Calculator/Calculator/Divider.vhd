-- ==========================================================
--	1. 1 stage 16 bit processing block
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity pu is
	port(
		a, b	:  in std_logic_vector(15 downto 0);
		d_in  :  in std_logic;
		r		: out std_logic_vector(15 downto 0);
		q		: out std_logic
	);
end pu;

architecture behavior of pu is

	-- component
	-- 16 bit Full Adder
	component FAdder is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			ci		:  in std_logic;
			s		: out std_logic_vector(15 downto 0);
			co		: out std_logic
		);
	end component;
	
	-- Signal
	signal ss, as	: std_logic_vector(15 downto 0);
	signal qs		: std_logic;
	
	-- Behavior
	begin
		as <= a(14 downto 0) & d_in;
		
		u1: FAdder port map (a => as, b => not b,  ci => '1', s => ss, co => qs);
		
		r <= ss when (qs = '1') else as;
		q <= qs;

end behavior;

-- ==========================================================
--	2. 4 stage 16 bit processing block
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity pu4s is
	port(
		a, b		:  in std_logic_vector(15 downto 0);
		d_bits	:  in std_logic_vector(3  downto 0);
		r			: out std_logic_vector(15 downto 0);
		q			: out std_logic_vector(3  downto 0)
	);
end pu4s;

architecture behavior of pu4s is
	
	-- Component
	-- Processing block
	component pu is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			d_in  :  in std_logic;
			r		: out std_logic_vector(15 downto 0);
			q		: out std_logic
		);
	end component;
	
	-- Signals
	signal r0, r1, r2 : std_logic_vector(15 downto 0);
	
	-- Behavior
	begin
		u1: pu port map (a => a,  b => b, d_in => d_bits(3), r => r2, q => q(3));
		u2: pu port map (a => r2, b => b, d_in => d_bits(2), r => r1, q => q(2));
		u3: pu port map (a => r1, b => b, d_in => d_bits(1), r => r0, q => q(1));
		u4: pu port map (a => r0, b => b, d_in => d_bits(0), r => r,  q => q(0));
end behavior;


-- ==========================================================
--	3. Divider
-- ==========================================================

library ieee;
use ieee.std_logic_1164.all;

entity Divider is
	port(
		a, b	:  in std_logic_vector(15 downto 0);
		r, q	: out std_logic_vector(15 downto 0)
	);
end Divider;

architecture behavior of Divider is

	-- Components
	-- 4 stage Processing block
	component pu4s is
		port(
			a, b		:  in std_logic_vector(15 downto 0);
			d_bits	:  in std_logic_vector(3  downto 0);	
			r			: out std_logic_vector(15 downto 0);
			q			: out std_logic_vector(3  downto 0)
		);
	end component;
	
	component FAdder is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			ci		:  in std_logic;
			s		: out std_logic_vector(15 downto 0);
			co		: out std_logic
		);
	end component;
	
	-- Signals
	signal r2, r1, r0 		: std_logic_vector(15 downto 0);	-- Partial reminders
	signal am, bm				: std_logic_vector(15 downto 0);	-- Magnitudes of the operands
	signal rm, qm				: std_logic_vector(15 downto 0); -- Magnitudes of results
	signal an, bn, rn, qn	: std_logic_vector(15 downto 0);	-- Negated intermediate values
	
	-- Constants
	constant zeros : std_logic_vector(15 downto 0) := (others => '0');
	constant Tmin	: std_logic_vector(15 downto 0) := "1000000000000000";
	constant min1	: std_logic_vector(15 downto 0) := (others => '1');
	
	-- Behavior
	begin
		v1: FAdder port map(a => (others => '0'), b => not a, ci => '1', s => an);
		v2: FAdder port map(a => (others => '0'), b => not b, ci => '1', s => bn);
		
		am <= an when (a(15) = '1') else a;
		bm <= bn when (b(15) = '1') else b;
		
		u1: pu4s port map(
			a 			=> zeros, 
			b 			=> bm, 
			d_bits	=> am(15 downto 12), 
			q 			=> qm(15 downto 12), 
			r 			=> r2
		);
		u2: pu4s port map(
			a 			=> r2,
			b 			=> bm,
			d_bits 	=> am(11 downto  8),
			q 			=> qm(11 downto  8),
			r 			=> r1
		);
		u3: pu4s port map(
			a 			=> r1,
			b 			=> bm,
			d_bits 	=> am(7  downto  4),
			q 			=> qm(7  downto  4),
			r 			=> r0
		);
		u4: pu4s port map(
			a 			=> r0,
			b 			=> bm,
			d_bits 	=> am(3 downto 0),
			q 			=> qm(3 downto 0),
			r 			=> rm
		);
		
		v3: FAdder port map (a => (others => '0'), b => not qm, ci => '1', s => qn);
		v4: FAdder port map (a => (others => '0'), b => not rm, ci => '1', s => rn);
		
		q <= qn  when ((a(15) xor b(15)) = '1') else qm;
		r <= rn  when (a(15) = '1') else rm;
		
end behavior;
