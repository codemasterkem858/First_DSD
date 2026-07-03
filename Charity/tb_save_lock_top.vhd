library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_safe_lock_top is
end entity tb_safe_lock_top;

architecture sim of tb_safe_lock_top is

    -- Component declaration
    component safe_lock_top is
        port (
            CLOCK_50 : in  std_logic;
            KEY      : in  std_logic_vector(3 downto 0);
            SW       : in  std_logic_vector(9 downto 0);
            LEDR     : out std_logic_vector(9 downto 0);
            HEX0     : out std_logic_vector(6 downto 0);
            HEX1     : out std_logic_vector(6 downto 0);
            HEX5     : out std_logic_vector(6 downto 0)
        );
    end component;

    -- Testbench signals
    signal CLOCK_50 : std_logic := '0';
    signal KEY      : std_logic_vector(3 downto 0) := "1111";
    signal SW       : std_logic_vector(9 downto 0) := (others => '0');
    signal LEDR     : std_logic_vector(9 downto 0);
    signal HEX0     : std_logic_vector(6 downto 0);
    signal HEX1     : std_logic_vector(6 downto 0);
    signal HEX5     : std_logic_vector(6 downto 0);

    constant CLK_PERIOD : time := 20 ns;

    -- Procedure to easily simulate a button press (holds low for 8 clock cycles)
    procedure press_enter(signal k_enter : out std_logic) is
    begin
        k_enter <= '0';
        wait for 8 * CLK_PERIOD;
        k_enter <= '1';
        wait for 5 * CLK_PERIOD;
    end procedure;

begin

    -- Instantiate Unit Under Test (UUT)
    uut: safe_lock_top
        port map (
            CLOCK_50 => CLOCK_50,
            KEY      => KEY,
            SW       => SW,
            LEDR     => LEDR,
            HEX0     => HEX0,
            HEX1     => HEX1,
            HEX5     => HEX5
        );

    -- Clock generation (50 MHz)
    clk_process : process
    begin
        CLOCK_50 <= '0';
        wait for CLK_PERIOD/2;
        CLOCK_50 <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial Hardware Reset (KEY(0) active low)
        KEY(0) <= '0';
        wait for 8 * CLK_PERIOD;
        KEY(0) <= '1';
        wait for 5 * CLK_PERIOD;

        -- ========================================================
        -- TEST CASE 1: Successful Unlock (1, 2, 3, 4)
        -- ========================================================
        
        -- Enter 1
        SW(3 downto 0) <= x"1";
        press_enter(KEY(1));

        -- Enter 2
        SW(3 downto 0) <= x"2";
        press_enter(KEY(1));

        -- Enter 3
        SW(3 downto 0) <= x"3";
        press_enter(KEY(1));

        -- Enter 4
        SW(3 downto 0) <= x"4";
        press_enter(KEY(1));

        -- Observe S_UNLOCKED status (LEDR(0) should be '1', HEX5 should show 'U')
        wait for 20 * CLK_PERIOD;

        -- Reset back to entry state to test failures
        KEY(0) <= '0';
        wait for 8 * CLK_PERIOD;
        KEY(0) <= '1';
        wait for 5 * CLK_PERIOD;

        -- ========================================================
        -- TEST CASE 2: Lockout sequence (3 consecutive failures)
        -- ========================================================
        
        -- Failure 1 (Entering 0,0,0,0)
        SW(3 downto 0) <= x"0";
        for i in 1 to 4 loop
            press_enter(KEY(1));
        end loop;
        -- Wait through S_INVALID delay (20 clock cycles + margins)
        wait for 30 * CLK_PERIOD;

        -- Failure 2
        for i in 1 to 4 loop
            press_enter(KEY(1));
        end loop;
        -- Wait through S_INVALID delay
        wait for 30 * CLK_PERIOD;

        -- Failure 3 (Triggers lockout)
        for i in 1 to 4 loop
            press_enter(KEY(1));
        end loop;
        
        -- System is now in S_LOCKOUT (LEDR(9) should be '1')
        -- Wait through S_LOCKOUT delay (50 clock cycles)
        wait for 60 * CLK_PERIOD;

        -- System should now be back to S_ENTER automatically.
        wait;
    end process;

end architecture sim;