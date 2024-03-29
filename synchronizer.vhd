-- Section 206, Team 18 - Darsh Shah, Krish Modi

library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for synchronizer module
entity synchronizer is
    port (
        clk     : in  std_logic;      -- Clock input
        reset   : in  std_logic;      -- Reset input
        din     : in  std_logic;      -- Data input
        dout    : out std_logic       -- Data output
    );
end synchronizer;

-- Architecture definition
architecture circuit of synchronizer is
    -- Signal declaration for remembering previous data
    signal remember : std_logic_vector(1 downto 0);
begin

    -- Process for synchronizing data with clock
    sync_process: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                remember(0) <= '0'; -- Reset to 0
                remember(1) <= '0'; -- Reset to 0
            else
                remember(1) <= remember(0); -- Store previous value
                remember(0) <= din;         -- Store current input value
            end if;
        end if;
    end process;
    
    -- Output the synchronized data
    dout <= remember(1);
end;

