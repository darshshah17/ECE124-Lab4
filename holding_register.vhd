-- Section 206, Team 18 - Darsh Shah, Krish Modi

library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for holding register module
entity holding_register is
    port (
		-- Clock input
        clk             : in std_logic;
        -- Reset input
        reset           : in std_logic;
		-- Clear input
        register_clr    : in std_logic;       
		-- Data input
        din             : in std_logic;  
		-- Data output
        dout            : out std_logic      
    );
end holding_register;

-- Architecture definition for holding register module
architecture circuit of holding_register is
    signal sreg         : std_logic;        -- Signal for the register
    signal remember     : std_logic;        -- Signal to remember previous state
    
begin

    processHolding: process(clk)
    begin
        -- Logic to remember previous state unless clear is asserted
        remember  <= (sreg OR din) AND NOT(register_clr);
        
        -- Check for rising clock edge
        if (rising_edge(clk)) then
            
            -- Reset the register if reset signal
            if (reset = '1') then
                sreg <= '0';
            else
                -- Update register with remembered state
                sreg <= remember;
            end if;
        end if;
    end process processHolding;
    
    -- Assign the output of the register to dout
    dout <= sreg;

end architecture circuit;
