-- Section 206, Team 18 - Darsh Shah, Krish Modi

library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for PB_inverters module
entity PB_inverters is
    port (
        rst_n           : in  std_logic;                   -- Active-low reset input
        rst             : out std_logic;                  -- Reset output
        pb_n_filtered   : in  std_logic_vector (3 downto 0);  -- Filtered push button inputs
        pb              : out std_logic_vector(3 downto 0)    -- Inverted push button inputs
    );
end PB_inverters;

architecture ckt of PB_inverters is

begin
    -- Output reset is the inverted value of input reset
    rst <= NOT(rst_n);
    -- Inverted push button inputs
    pb <= NOT(pb_n_filtered);

end ckt;