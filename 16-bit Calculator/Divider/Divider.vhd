--------------------------------------------------------
--					16-bit  counter
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Divider is
    port(
        clk, T, rst_n : in  std_logic;
        count         : out std_logic_vector(15 downto 0);
        qm            : out std_logic -- This is the terminal count for the whole 16 bits
    );
end Divider;

architecture behavior of Divider is
    component count_4bit is
        port(
            clk, T, rst_n : in  std_logic;
            count         : out std_logic_vector(3 downto 0);
            tc            : out std_logic -- Renamed port to 'tc' (terminal count)
        );
    end component;
    
    -- Internal carry signals between 4-bit blocks
    signal carry : std_logic_vector(3 downto 0);
begin
    -- Block 1: Toggles when T is high
    u1 : count_4bit port map (clk => clk, T => T, rst_n => rst_n, count => count(3 downto 0), tc => carry(0));
    
    -- Block 2: Toggles when Block 1 reaches "1111" AND T is high
    u2 : count_4bit port map (clk => clk, T => carry(0), rst_n => rst_n, count => count(7 downto 4), tc => carry(1));
    
    -- Block 3: Toggles when Block 2 reaches "1111" AND its input was high
    u3 : count_4bit port map (clk => clk, T => carry(1), rst_n => rst_n, count => count(11 downto 8), tc => carry(2));
    
    -- Block 4: Toggles when Block 3 reaches "1111"
    u4 : count_4bit port map (clk => clk, T => carry(2), rst_n => rst_n, count => count(15 downto 12), tc => carry(3));
    
    -- Drive the output port qm from the final carry signal
    qm <= carry(3);
end behavior;

--------------------------------------------------------
--					4-bit  counter
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity count_4bit is
    port(
        clk, T, rst_n : in  std_logic;
        count         : out std_logic_vector(3 downto 0);
        tc            : out std_logic -- Terminal Count output
    );
end count_4bit;

architecture behavior of count_4bit is
    component T_Flip is
        port(
            clk, T, rst_n : in  std_logic;
            Q, Qnot       : out std_logic
        );
    end component;
    
    -- Internal signals for the flip-flop outputs
    signal q_int : std_logic_vector(3 downto 0);
    -- Internal carry chain signals
    signal c     : std_logic_vector(2 downto 0);
begin
    -- Bit 0 toggles if T is 1
    u1 : T_Flip port map (clk => clk, T => T, rst_n => rst_n, Q => q_int(0));
    
    -- Bit 1 toggles if T=1 and Bit 0 is 1
    c(0) <= q_int(0) and T;
    u2 : T_Flip port map (clk => clk, T => c(0), rst_n => rst_n, Q => q_int(1));
    
    -- Bit 2 toggles if Bit 0 and 1 are 1 and T is 1
    c(1) <= q_int(1) and c(0);
    u3 : T_Flip port map (clk => clk, T => c(1), rst_n => rst_n, Q => q_int(2));
    
    -- Bit 3 toggles if Bit 0, 1, and 2 are 1 and T is 1
    c(2) <= q_int(2) and c(1);
    u4 : T_Flip port map (clk => clk, T => c(2), rst_n => rst_n, Q => q_int(3));

    -- Final Terminal Count (High when counter is "1111" AND input T is 1)
    tc <= q_int(3) and c(2);
    
    -- Assign internal signals to output port
    count <= q_int;
end behavior;

--------------------------------------------------------
--					T-Flip Flop
--------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity T_Flip is
    port(
        T       : in  std_logic;
        clk     : in  std_logic;
        rst_n   : in  std_logic; -- Active Low Reset (Connect to '0' then '1')
        Q       : out std_logic;
        Qnot    : out std_logic
    );
end T_Flip;

architecture structural of T_Flip is

    -- Internal signals
    signal S_m, R_m, Q_m, Qn_m : std_logic;
    signal S_s, R_s, Q_s, Qn_s : std_logic;
    signal clk_inv             : std_logic;

    -- Attributes to stop Quartus from removing the gates
    attribute keep : boolean;
    attribute keep of S_m, R_m, Q_m, Qn_m, S_s, R_s, Q_s, Qn_s : signal is true;

begin

    clk_inv <= not clk;

    ---------------------------------------------------
    -- MASTER SECTION (Gated SR with Reset)
    ---------------------------------------------------
    -- Toggle logic: captures opposite of current state
    S_m <= not (T and clk and Qn_s);
    R_m <= not (T and clk and Q_s);

    -- Master Latch (3-input NAND on Qn_m allows reset)
    Q_m  <= S_m nand Qn_m;
    Qn_m <= not(R_m and Q_m and rst_n); -- If rst_n=0, Qn_m=1, Q_m=0

    ---------------------------------------------------
    -- SLAVE SECTION (Gated SR with Reset)
    ---------------------------------------------------
    S_s <= not (Q_m and clk_inv);
    R_s <= not (Qn_m and clk_inv);

    -- Slave Latch (3-input NAND on Qn_s allows reset)
    Q_s  <= S_s nand Qn_s;
    Qn_s <= not(R_s and Q_s and rst_n); -- Final output reset

    -- Helper function for 3-input NAND logic
    -- Since we can't use components, we write the logic directly
    Q    <= Q_s;
    Qnot <= Qn_s;

end structural;

-- We define the 3-input NAND behavior as a simple logic string
-- (A nand B nand C) is functionally: not (A and B and C)