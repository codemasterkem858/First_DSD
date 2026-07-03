library ieee;
use ieee.std_logic_1164.all;

entity binconv is
	port(
		d0, d1, d2, d3	:  in std_logic_vector(3  downto 0);
		sign				:  in std_logic;
		bin				: out std_logic_vector(15 downto 0)
	);
end binconv;

architecture behavior of binconv is
	
	component Multiplier is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			prod	: out std_logic_vector(31 downto 0)
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
	
	constant zeros	: std_logic_vector(11 downto 0):= (others => '0');
	constant ten	: std_logic_vector(15 downto 0):= "0000000000001010";
	constant hun	: std_logic_vector(15 downto 0):= "0000000001100100";
	constant tho	: std_logic_vector(15 downto 0):= "0000001111101000";
	constant tth	: std_logic_vector(15 downto 0):= "0010011100010000";
	
	signal bd0, bd1, bd2, bd3	: std_logic_vector(31 downto 0);
	signal s1, s2, s3, s4		: std_logic_vector(15 downto 0);
	
	begin
		bd0 <= "0000" & zeros & zeros & d0;
		u1: Multiplier port map(a => zeros & d1, b => ten, prod => bd1);
		u2: Multiplier port map(a => zeros & d2, b => hun, prod => bd2);
		u3: Multiplier port map(a => zeros & d3, b => tho, prod => bd3);
		
		u5: FAdder port map (a => bd0(15 downto 0),	b => bd1(15 downto 0), ci => '0', s => s1, co => open);
		u6: FAdder port map (a => s1, 					b => bd2(15 downto 0), ci => '0', s => s2, co => open);
		u7: FAdder port map (a => s2, 					b => bd3(15 downto 0), ci => '0', s => s3, co => open);
		
		u9: FAdder port map (a => (others => '0'), b => not s3, ci => '1', s => s4, co => open);
		
		bin <= s4 when (sign = '1') else s3;
				
	
end behavior;