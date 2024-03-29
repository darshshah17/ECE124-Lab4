-- Section 206, Team 18 - Darsh Shah, Krish Modi

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- Entity declaration for top-level
ENTITY LogicalStep_Lab4_top IS
    PORT (
        clkin_50        : IN  std_logic;                        -- 50 MHz clock input
        rst_n           : IN  std_logic;                        -- Active-low reset input
        pb_n            : IN  std_logic_vector(3 DOWNTO 0);     -- Push button inputs
        sw              : IN  std_logic_vector(7 DOWNTO 0);     -- Switch inputs
        leds            : OUT std_logic_vector(7 DOWNTO 0);     -- LED outputs
        
        seg7_data       : OUT std_logic_vector(6 DOWNTO 0);     -- Seven-segment display data output
        seg7_char1      : OUT std_logic;                       -- Seven-segment display character 1 output
        seg7_char2      : OUT std_logic                        -- Seven-segment display character 2 output
    );
END LogicalStep_Lab4_top;

-- Architecture definition for top-level
ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS
    
-- Component declarations for clock_generator, holding_register, pb_filters, synchronizer, pb_inverters, segment7_mux, State_Machine
    COMPONENT clock_generator IS
        PORT (
            sim_mode        : IN  BOOLEAN;          -- Simulation mode
            reset           : IN  std_logic;       -- Reset input
            clkin           : IN  std_logic;       -- Clock input
            sm_clken        : OUT std_logic;      -- Clock enable output
            blink           : OUT std_logic       -- Blink signal output
        );
    END COMPONENT;
    
    COMPONENT holding_register IS
        PORT (
            clk             : IN  std_logic;       -- Clock input
            reset           : IN  std_logic;       -- Reset input
            register_clr    : IN  std_logic;       -- Clear input for the register
            din             : IN  std_logic;       -- Data input
            dout            : OUT std_logic       -- Data output
        );
    END COMPONENT;

    COMPONENT pb_filters IS
        PORT (
            clkin               : IN  std_logic;               -- Clock input
            rst_n               : IN  std_logic;               -- Active-low reset input
            rst_n_filtered      : OUT std_logic;              -- Filtered reset output
            pb_n                : IN  std_logic_vector(3 DOWNTO 0);  -- Push button inputs
            pb_n_filtered       : OUT std_logic_vector(3 DOWNTO 0)   -- Filtered push button inputs
        );
    END COMPONENT;
    
    COMPONENT synchronizer IS
        PORT (
            clk                 : IN  std_logic;       -- Clock input
            reset               : IN  std_logic;       -- Reset input
            din                 : IN  std_logic;       -- Data input
            dout                : OUT std_logic       -- Synchronized data output
        );
    END COMPONENT;
    
    COMPONENT pb_inverters IS
        PORT (
            rst_n               : IN  std_logic;               -- Active-low reset input
            rst                 : OUT std_logic;              -- Reset output
            pb_n_filtered       : IN  std_logic_vector(3 DOWNTO 0);  -- Filtered push button inputs
            pb                  : OUT std_logic_vector(3 DOWNTO 0)   -- Inverted push button inputs
        );
    END COMPONENT;
    
    COMPONENT segment7_mux IS
        PORT (
            clk         : IN  std_logic := '0';                -- Clock input (defaulted to 0)
            DIN2        : IN  std_logic_vector(6 DOWNTO 0);   -- Seven-segment display data input 2
            DIN1        : IN  std_logic_vector(6 DOWNTO 0);   -- Seven-segment display data input 1
            DOUT        : OUT std_logic_vector(6 DOWNTO 0);   -- Seven-segment display data output
            DIG2        : OUT std_logic;                      -- Seven-segment display digit 2 control
            DIG1        : OUT std_logic                       -- Seven-segment display digit 1 control
        );
    END COMPONENT;
    
    -- Component declaration for State Machine:
	-- Controls traffic lights for North-South and East-West directions
	-- accepts clock, reset, enable, and various request signal
	-- outputs LED state and traffic signals for both directions
	COMPONENT State_Machine IS
	PORT (
		clk_input       : IN  std_logic;
		reset           : IN  std_logic;                   
		enable          : IN  std_logic;                   
		blink_sig       : IN  std_logic;                   
		NS_req          : IN  std_logic;                  
		EW_req          : IN  std_logic;                   
		led_state       : OUT std_logic_vector(3 DOWNTO 0);
		NS_clear        : OUT std_logic;                   
		NS_crossing     : OUT std_logic;                   
		NS_yellow       : OUT std_logic;                   
		NS_green        : OUT std_logic;                   
		NS_red          : OUT std_logic;                   
		EW_clear        : OUT std_logic;                   
		EW_crossing     : OUT std_logic;                   
		EW_yellow       : OUT std_logic;                   
		EW_green        : OUT std_logic;                   
		EW_red          : OUT std_logic                    
	);
	END COMPONENT;

    
    -- Constant declaration for simulation mode
    CONSTANT simulation : BOOLEAN := FALSE;     -- Set to FALSE for LogicalStep board downloads, set to TRUE for SIMULATIONS
    
    -- Signal declarations
    SIGNAL rst, rst_n_filtered, sync_rst              : std_logic;
    SIGNAL sm_clken, blink_sig                        : std_logic; 
    SIGNAL pb_n_filtered, pb                          : std_logic_vector(3 DOWNTO 0); 
    SIGNAL NS_red, NS_green, NS_amber, EW_red, EW_green, EW_amber   : std_logic;
    SIGNAL NS, EW                                     : std_logic := '0';
    SIGNAL sync_input_NS, sync_input_EW                : std_logic;
    SIGNAL NS_clear, EW_clear                          : std_logic := '0';
    SIGNAL NS_7segment, EW_7segment                    : std_logic_vector(6 DOWNTO 0);
    
BEGIN
----------------------------------------------------------------------------------------------------
    INST0: pb_filters           PORT MAP (clkin_50, rst_n, rst_n_filtered, pb_n, pb_n_filtered);
    INST1: synchronizer         PORT MAP (clkin_50, sync_rst, rst, sync_rst);
    INST2: clock_generator      PORT MAP (simulation, sync_rst, clkin_50, sm_clken, blink_sig);
    INST3: pb_inverters         PORT MAP (rst_n_filtered, rst, pb_n_filtered, pb);   
    INST4: synchronizer         PORT MAP (clkin_50, sync_rst, pb(0), sync_input_NS);
    INST5: holding_register     PORT MAP (clkin_50, rst, EW_clear, sync_input_EW, EW);
    INST6: synchronizer         PORT MAP (clkin_50, sync_rst, pb(1), sync_input_EW);
    INST7: holding_register     PORT MAP (clkin_50, rst, NS_clear, sync_input_NS, NS);
    INST8: State_Machine        PORT MAP (clkin_50, sync_rst, sm_clken, blink_sig, NS, EW, leds(7 DOWNTO 4), NS_clear, leds(0), NS_amber, NS_green, NS_red, EW_clear, leds(2), EW_amber, EW_green, EW_red);
    
    -- Seven-segment display data assignments
    NS_7segment(6 DOWNTO 0) <= NS_amber & "00" & NS_green & "00" & NS_red;
    EW_7segment(6 DOWNTO 0) <= EW_amber & "00" & EW_green & "00" & EW_red;
     
    -- Instance mapping for seven-segment display multiplexer
    INST9: segment7_mux        PORT MAP (clkin_50, NS_7segment, EW_7segment, seg7_data, seg7_char2, seg7_char1);
    
    -- LED assignments
    leds(1) <= NS;
    leds(3) <= EW;

END SimpleCircuit;
