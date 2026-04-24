library ieee;
use ieee.std_logic_1164.all;

entity system is
port(
	selec : in std_logic_vector(2 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
);
end system;

architecture behavior of system is
	
	component Mux8x1_7bit is
	port(
		H_in1, H_in2, H_in3, H_in4, H_in5, H_in6, H_in7, H_in8 : in std_logic_vector(6 downto 0);
		sel : in std_logic_vector(2 downto 0);
		H_out : out std_logic_vector(6 downto 0)
	);
	end component;
	
	constant d : std_logic_vector(6 downto 0) := "1000010";
	constant E : std_logic_vector(6 downto 0) := "0110000";
	constant l : std_logic_vector(6 downto 0) := "1001111";
	constant o : std_logic_vector(6 downto 0) := "0000001";
	constant x : std_logic_vector(6 downto 0) := "1111111";
	
	signal h1, h2, h3, h4, h5, h6 : std_logic_vector(6 downto 0);


begin
	 U1: Mux8x1_7bit port map(H_in1=>x, H_in2=>x, H_in3=>d, H_in4=>E, H_in5=>l, H_in6=>o, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX0);
    U2: Mux8x1_7bit port map(H_in1=>x, H_in2=>d, H_in3=>E, H_in4=>l, H_in5=>o, H_in6=>x, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX1);
    U3: Mux8x1_7bit port map(H_in1=>d, H_in2=>E, H_in3=>l, H_in4=>o, H_in5=>x, H_in6=>x, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX2);
    U4: Mux8x1_7bit port map(H_in1=>E, H_in2=>l, H_in3=>o, H_in4=>x, H_in5=>x, H_in6=>d, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX3);
    U5: Mux8x1_7bit port map(H_in1=>l, H_in2=>o, H_in3=>x, H_in4=>x, H_in5=>d, H_in6=>E, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX4);
    U6: Mux8x1_7bit port map(H_in1=>o, H_in2=>x, H_in3=>x, H_in4=>d, H_in5=>E, H_in6=>l, H_in7=>x, H_in8=>x, sel=>selec, H_out=>HEX5);
	
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1_7bit is
port(
	H_in1, H_in2 : in std_logic_vector(6 downto 0);
	sel : in std_logic;
	H_out : out std_logic_vector(6 downto 0)
);
end Mux2x1_7bit;

architecture behavior of Mux2x1_7bit is
	signal sel_vector : std_logic_vector(6 downto 0);
	signal not_sel_vector : std_logic_vector(6 downto 0);

begin
	sel_vector <= (others => sel);
	not_sel_vector <= (others => not sel);
	H_out <= (H_in1 and not_sel_vector) or (H_in2 and sel_vector);
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity Mux4x1_7bit is
port(
	H_in1, H_in2, H_in3, H_in4 : in std_logic_vector(6 downto 0);
	sel : in std_logic_vector(1 downto 0);
	H_out : out std_logic_vector(6 downto 0)
);
end Mux4x1_7bit;

architecture behavior of Mux4x1_7bit is

	component Mux2x1_7bit is
	port(
		H_in1, H_in2 : in std_logic_vector(6 downto 0);
		sel : in std_logic;
		H_out : out std_logic_vector(6 downto 0)
	);
	end component;
	signal m_in1, m_in2 : std_logic_vector(6 downto 0);
begin
	U1 : Mux2x1_7bit port map (H_in1 => H_in1, H_in2 => H_in2, sel => sel(0), H_out => m_in1);
	U2 : Mux2x1_7bit port map (H_in1 => H_in3, H_in2 => H_in4, sel => sel(0), H_out => m_in2);
	U3 : Mux2x1_7bit port map (H_in1 => m_in1, H_in2 => m_in2, sel => sel(1), H_out => H_out);
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity Mux8x1_7bit is 
port(
	H_in1, H_in2, H_in3, H_in4, H_in5, H_in6, H_in7, H_in8: in std_logic_vector(6 downto 0);
	sel : in std_logic_vector(2 downto 0);
	H_out : out std_logic_vector(6 downto 0)
);
end Mux8x1_7bit;

architecture behavior of Mux8x1_7bit is
	component Mux4x1_7bit is
	port(
		H_in1, H_in2, H_in3, H_in4 : in std_logic_vector(6 downto 0);
		sel : in std_logic_vector(1 downto 0);
		H_out : out std_logic_vector(6 downto 0)
	);
	end component;
	component Mux2x1_7bit is
	port(
		H_in1, H_in2 : in std_logic_vector(6 downto 0);
		sel : in std_logic;
		H_out : out std_logic_vector(6 downto 0)
	);
	end component;
	
	signal m_in1, m_in2 : std_logic_vector(6 downto 0);
	signal sel_int : std_logic_vector(1 downto 0);

	begin
	sel_int(0) <= sel(0);
	sel_int(1) <= sel(1);
	U1 : Mux4x1_7bit port map (H_in1 => H_in1, H_in2 => H_in2, H_in3 => H_in3, H_in4 => H_in4, sel => sel_int, H_out => m_in1);
	U2 : Mux4x1_7bit port map (H_in1 => H_in5, H_in2 => H_in6, H_in3 => H_in7, H_in4 => H_in8, sel => sel_int, H_out => m_in2);
	U3 : Mux2x1_7bit port map (H_in1 => m_in1, H_in2 => m_in2, sel => sel(2), H_out => H_out);
	end behavior;
	