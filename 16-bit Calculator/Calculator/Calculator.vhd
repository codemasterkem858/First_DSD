library ieee;
use ieee.std_logic_1164.all;

entity Calculator is
	port(
		a, b						:  in std_logic_vector(16 downto 0);
		sel						:  in std_logic_vector(2  downto 0);
		d0, d1, d2, d3, d4	: out std_logic_vector(3  downto 0);
		flags						: out std_logic_vector(3  downto 0);
		aaa, bbb, rrr			: out std_logic_vector(15 downto 0);
		sign						: out std_logic
	);
end Calculator;

architecture behavior of Calculator is
	
	component FAdder is
		port(
			a, b	:  in std_logic_vector(15 downto 0);	
			ci		:  in std_logic;							
			s		: out std_logic_vector(15 downto 0);	
			co 	: out std_logic
		);
	end component;
	
	component Multiplier is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			prod	: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Divider is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			q, r	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component bcdconv is
		port(
			a							:  in std_logic_vector(15 downto  0);
			b0, b1, b2, b3, b4	: out std_logic_vector(3  downto  0);
			sign						: out std_logic
		);
	end component;
	
	component binconv is
		port(
			d0, d1, d2, d3	:  in std_logic_vector(3  downto 0);
			sign				:  in std_logic;
			bin				: out std_logic_vector(15 downto 0)
		);
	end component;
	
	signal p											: std_logic_vector(31 downto 0);
	signal a1, b1, s1, d, p1, q1, r1, res	: std_logic_vector(15 downto 0);
	signal z, n, oa, os, om, od, dz			: std_logic;
	
	constant eegg	: std_logic_vector(15 downto 0):="1000100000010001";
	constant min	: std_logic_vector(15 downto 0):="1000000000000000";
	constant neg1	: std_logic_vector(15 downto 0):= (others => '1');
	constant zero	: std_logic_vector(15 downto 0):= (others => '0');
	
	
	begin
	
		a11  : binconv		port map (d0 => a(3 downto 0), d1 => a(7 downto 4), d2 => a(11 downto 8), d3 => a(15 downto 12), sign => a(16), bin => a1);
		b11  : binconv		port map (d0 => b(3 downto 0), d1 => b(7 downto 4), d2 => b(11 downto 8), d3 => b(15 downto 12), sign => b(16), bin => b1);
		
		aaa <= a1;
		bbb <= b1;
		
		sum : FAdder 		port map (a => a1, b =>     b1, ci => '0', s => s1, co => open);
		dif : FAdder		port map (a => a1, b => not b1, ci => '1', s =>  d, co => open);
		pro : Multiplier	port map (a => a1, b => b1, prod => p);
		div : Divider 		port map (a => a1, b => b1, q => q1, r => r1);
		p1 <= p(15 downto 0);
		
		process(sel, s1, d, p1, q1, r1, a1, b1)
		begin
			case sel is
            when "000"  => res <= s1;
            when "001"  => res <=  d;
            when "010"  => res <= p1;
            when "011"  => res <= q1;
            when "100"  => res <= r1;
            when "101"  => res <= a1;
            when "110"  => res <= b1;
            when "111"  => res <= eegg;
				when others => res <= (others => '0');
			end case;
		end process;
		
		z  <= '1' when (res = zero) else '0';
		n  <= '1' when (res(15) = '1') else '0';
		oa <= ( a(15) and b(15) and (not res(15)) ) or ( (not a(15)) and (not b(15)) and res(15) );
		os <= ( a(15) and (not b(15)) and (not res(15)) ) or ( (not a(15)) and b(15) and res(15) );
		om <= '1' when ( (p(31 downto 15) = zero & '0') nor (p(31 downto 15) = neg1 & '1') ) else '0';
		od <= '1' when ( (a1 = min) and (b1 = neg1) ) else '0';
		dz <= '1' when ( (b1 = zero) and ( (sel = "011") or (sel = "100") )) else '0';
		
		process(sel, z, n, oa, os, om, od, dz)
		begin
			case sel is
				when "000"	=> flags <= z & n & oa  & '0';
		      when "001"	=> flags <= z & n & os  & '0';
		      when "010"	=> flags <= z & n & om  & '0';
            when "011"	=> flags <= z & n & od  &  dz;
		      when "100"	=> flags <= z & n & od  &  dz;
				when others	=> flags <= z & n & '0' & '0';
			end case;
		end process;
		
		bcd	: bcdconv	port map (a => res, sign => sign, b0 => d0, b1 => d1, b2 => d2, b3 => d3, b4 => d4);
		rrr <= res;
		
end behavior;
