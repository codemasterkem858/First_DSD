library ieee;
use ieee.std_logic_1164.all;

entity bcdconv is
	port(
		a	:  in std_logic_vector(15 downto 0);
		d	: out std_logic_vector(19 downto 0);
		clk:  in std_logic;
	);
end bcdconv;

architecture behavior of bcdconv is
	
	-- Components
	-- 16 bit divider
	component Divider is
		port(
			a, b	:  in std_logic_vector(15 downto 0);
			r, q	:  in std_logic_vector
		);
	end component;
	
	-- 4 bit register
	component reg4bit is
		port(
			d					:  in std_logic_vector(3 downto 0);
			clk, en, clr	:  in std_logic;
			q					: out std_logic_vector(3 downto 0)
		);
	end component;

	-- 16 bit register
	component reg16bit is
		port(
			d					:  in std_logic_vector(15 downto 0);
			clk, en, clr	:  in std_logic;
			q					: out std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signals
	signal q1, q2, q3, q4, q5	: std_logic_vector(15 downto 0);
	signal r1, r2, r3, r4, r5	: std_logic_vector(15 downto 0);
	
	-- Constants
	constant ten : std_logic_vector(15 downto 0) := "0000000000001010"
	
	-- Behavior
	begin
		u1: Divider port map (a => a, b => ten, q => q1, );
	
end behavior;

-----------------------------------------------
--              4 bit register
-----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity reg4bit is
    port(
        d            : in  std_logic_vector(3 downto 0);
        clk, clr, en : in  std_logic;
        q            : out std_logic_vector(3 downto 0)
    );
end reg4bit;

architecture behavior of reg4bit is
begin
    process(clk, clr)
    begin
        if clr = '0' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= d;
            end if;
        end if;
    end process;
end behavior;

-----------------------------------------------
--              16 bit register
-----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity reg16bit is
    port(
        d            : in  std_logic_vector(15 downto 0);
        clk, clr, en : in  std_logic;
        q            : out std_logic_vector(15 downto 0)
    );
end reg16bit;

architecture behavior of reg16bit is
begin
    process(clk, clr)
    begin
        if clr = '0' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if en = '1' then
                q <= d;
            end if;
        end if;
    end process;
end behavior;