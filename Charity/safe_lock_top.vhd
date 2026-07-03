library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ============================================================
-- Debounce module: filters mechanical bounce on a push button
-- and outputs a single clean one-clock-cycle pulse on press.
-- ============================================================
entity debounce is
    generic ( DEBOUNCE_LIMIT : integer := 500000 ); -- ~10ms @ 50MHz (real hardware default)
    port (
        clk       : in  std_logic;
        button_in : in  std_logic;  -- raw button input, active LOW
        pulse_out : out std_logic   -- 1-cycle pulse on a clean press
    );
end entity debounce;

architecture rtl of debounce is
    signal counter     : integer range 0 to DEBOUNCE_LIMIT := 0;
    signal stable      : std_logic := '1';
    signal stable_prev : std_logic := '1';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if button_in = stable then
                counter <= 0;
            elsif counter = DEBOUNCE_LIMIT then
                stable  <= button_in;
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
            stable_prev <= stable;
        end if;
    end process;

    pulse_out <= '1' when (stable = '0' and stable_prev = '1') else '0';

end architecture rtl;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ============================================================
-- Top level: FPGA-Based Digital Safe Lock System
-- Target: Altera/Intel Cyclone V on the DE1-SoC board
-- ============================================================
entity safe_lock_top is
    port (
        CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(3 downto 0);  -- KEY(0)=reset, KEY(1)=enter, active LOW
        SW       : in  std_logic_vector(9 downto 0);   -- SW(3 downto 0) = digit value 0-9
        LEDR     : out std_logic_vector(9 downto 0);
        HEX0     : out std_logic_vector(6 downto 0);   -- digits entered so far
        HEX1     : out std_logic_vector(6 downto 0);   -- attempts remaining
        HEX5     : out std_logic_vector(6 downto 0)    -- status letter
    );
end entity safe_lock_top;

architecture rtl of safe_lock_top is

    component debounce is
        generic ( DEBOUNCE_LIMIT : integer := 500000 );
        port (
            clk       : in  std_logic;
            button_in : in  std_logic;
            pulse_out : out std_logic
        );
    end component;

    type state_type is (S_ENTER, S_CHECK, S_UNLOCKED, S_INVALID, S_LOCKOUT);
    signal state : state_type := S_ENTER;

    type digit_array is array (0 to 3) of std_logic_vector(3 downto 0);
    constant PASSWORD : digit_array := (x"1", x"2", x"3", x"4");
    signal entered : digit_array := (others => (others => '0'));

    signal entry_count : integer range 0 to 4 := 0;
    signal fail_count  : integer range 0 to 3 := 0;

    signal enter_pulse : std_logic;
    signal reset_pulse : std_logic;

    -- *** SIMULATION-FRIENDLY TEST VALUES ***
    -- Revert these to 50_000_000 and 150_000_000 before generating a bitstream
    -- for the real board.
    constant INVALID_HOLD : integer := 20;   -- was 50_000_000 (~1s @ 50MHz)
    constant LOCKOUT_HOLD : integer := 50;   -- was 150_000_000 (~3s @ 50MHz)
    signal delay_counter  : integer range 0 to LOCKOUT_HOLD := 0;
	 function seg7(val : integer) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case val is
            when 0  => seg := "1000000";
            when 1  => seg := "1111001";
            when 2  => seg := "0100100";
            when 3  => seg := "0110000";
            when 4  => seg := "0011001";
            when 5  => seg := "0010010";
            when 6  => seg := "0000010";
            when 7  => seg := "1111000";
            when 8  => seg := "0000000";
            when 9  => seg := "0010000";
            when 10 => seg := "1000111"; -- 'L' (locked / entering)
            when 11 => seg := "1000001"; -- 'U' (unlocked)
            when 12 => seg := "0000110"; -- 'E' (error/invalid)
            when others => seg := "1111111"; -- blank
        end case;
        return seg;
    end function;

begin

    -- *** SIMULATION-FRIENDLY TEST VALUE: DEBOUNCE_LIMIT => 5 ***
    -- Revert to 500000 before generating a bitstream for the real board.
    reset_db : debounce
        generic map ( DEBOUNCE_LIMIT => 5 )
        port map ( clk => CLOCK_50, button_in => KEY(0), pulse_out => reset_pulse );

    enter_db : debounce
        generic map ( DEBOUNCE_LIMIT => 5 )
        port map ( clk => CLOCK_50, button_in => KEY(1), pulse_out => enter_pulse );

    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if reset_pulse = '1' then
                state         <= S_ENTER;
                entry_count   <= 0;
                fail_count    <= 0;
                delay_counter <= 0;
            else
                case state is

                    when S_ENTER =>
                        if enter_pulse = '1' and entry_count < 4 then
                            entered(entry_count) <= SW(3 downto 0);
                            if entry_count = 3 then
                                state <= S_CHECK;
                            end if;
                            entry_count <= entry_count + 1;
                        end if;

                    when S_CHECK =>
                        if entered = PASSWORD then
                            state <= S_UNLOCKED;
                        else
                            state <= S_INVALID;
                            delay_counter <= 0;
                        end if;

                    when S_INVALID =>
                        if delay_counter < INVALID_HOLD then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter <= 0;
                            entry_count   <= 0;
                            if fail_count = 2 then
                                fail_count <= fail_count + 1;
                                state      <= S_LOCKOUT;
                            else
                                fail_count <= fail_count + 1;
                                state      <= S_ENTER;
                            end if;
                        end if;

                    when S_LOCKOUT =>
                        if delay_counter < LOCKOUT_HOLD then
                            delay_counter <= delay_counter + 1;
                        else
                            delay_counter <= 0;
                            entry_count   <= 0;
                            fail_count    <= 0;
                            state         <= S_ENTER;
                        end if;

                    when S_UNLOCKED =>
                        null; -- stays unlocked until KEY(0) reset is pressed

                end case;
            end if;
        end if;
    end process;

    LEDR(0) <= '1' when state = S_UNLOCKED else '0';
    LEDR(1) <= '1' when state = S_ENTER    else '0';
    LEDR(2) <= '1' when state = S_INVALID  else '0';
    LEDR(9) <= '1' when state = S_LOCKOUT  else '0';
    LEDR(8 downto 3) <= (others => '0');

    HEX0 <= seg7(entry_count);
    HEX1 <= seg7(3 - fail_count);
	 HEX5 <= seg7(11) when state = S_UNLOCKED else
            seg7(10) when (state = S_ENTER or state = S_LOCKOUT) else
            seg7(12) when state = S_INVALID else
            seg7(13);

end architecture rtl;