library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity State_Machine IS Port
(
	clk_input		: IN std_logic;
	reset				: IN std_logic;
	enable			: IN std_logic;
	blink_sig		: IN std_logic;
	NS_req			: IN std_logic;
	EW_req			: IN std_logic;
	led_state		: OUT std_logic_vector(3 downto 0);
	NS_clear			: OUT std_logic;
	NS_crossing		: OUT std_logic;
	NS_yellow		: OUT std_logic;
	NS_green			: OUT std_logic;
	NS_red			: OUT std_logic;
	EW_clear			: OUT std_logic;
	EW_crossing		: OUT std_logic;
	EW_yellow		: OUT std_logic;
	EW_green			: OUT std_logic;
	EW_red			: OUT std_logic
 );
END ENTITY;
 

Architecture main of State_Machine is

TYPE STATE_NAMES IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
SIGNAL current_state, next_state	:  STATE_NAMES;
SIGNAL state_counter	:	unsigned(3 downto 0) := "0000";

BEGIN
 

 -------------------------------------------------------------------------------
 --State Machine:
 -------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS EXAMPLE
 
Register_select: PROCESS (clk_input)  -- this process updates with a clock
BEGIN
	IF(rising_edge(clk_input)) THEN
		IF (reset = '1') THEN
			current_state <= s0;
		ELSIF (reset = '0' and enable = '1') THEN
			current_state <= next_State;
		END IF;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS EXAMPLE

Transition: PROCESS (current_state) 

BEGIN
  CASE current_state IS
        WHEN s0=>		
				IF(EW_req = '1' and NS_req = '0') THEN
					next_state <= s6;
				ELSE
					next_state <=s1;
				END IF;

         WHEN s1=>		
				IF(EW_req = '1' and NS_req = '0') THEN
						next_state <= s6;
				ELSE
						next_state<=s2;
				END IF;
			WHEN s8 =>
				if(EW_req = '0' and NS_req = '1') then
					next_state <= s14;
				else
					next_state <= s9;
				end if;
			WHEN s9 =>
				if(EW_req = '0' and NS_req = '1') then
					next_state <= s14;
				else
					next_state <= s10;
				end if;
			
         WHEN s2 =>
				next_state<=s3;
         WHEN s3 =>
				next_state<=s4;
         WHEN s4 =>
				next_state<=s5;
         WHEN s5 =>
				next_state<=s6;
         WHEN s6 =>
				next_state<=s7;
         WHEN s7 =>
				next_state<=s8;
			WHEN s10 => 
				next_state<=s11;
			WHEN s11 =>
				next_state<=s12;
			WHEN s12 =>
				next_state<=s13;
			WHEN s13 =>
				next_state<=s14;
			WHEN s14 =>
				next_state<=s15;
			WHEN s15 =>
				next_state<=s0;
			END CASE;
		END PROCESS;
 

-- DECODER SECTION PROCESS EXAMPLE (MOORE FORM SHOWN)

Decoder_Section: PROCESS (current_state, blink_sig) 

BEGIN
     CASE current_state IS
	  
         WHEN s0 | s1 =>
				EW_green <= '0';
				EW_yellow <= '0';
				EW_red <= '1';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= blink_sig;
				NS_yellow <= '0';
				NS_red <= '0';
				NS_clear <= '0';
				NS_crossing <= '0';
				
				
			WHEN s2 | s3 | s4 | s5 =>
				EW_green <= '0';
				EW_yellow <= '0';
				EW_red <= '1';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= '1';
				NS_yellow <= '0';
				NS_red <= '0';
				NS_clear <= '0';
				NS_crossing <= '1';
				
			
			WHEN s6 =>
				EW_green <= '0';
				EW_yellow <= '0';
				EW_red <= '1';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= '0';
				NS_yellow <= '1';
				NS_red <= '0';
				NS_clear <= '1';
				NS_crossing <= '0';
				
				
			WHEN s7 =>
				EW_green <= '0';
				EW_yellow <= '0';
				EW_red <= '1';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= '0';
				NS_yellow <= '1';
				NS_red <= '0';
				NS_clear <= '0';
				NS_crossing <= '0';
				
			
			WHEN s8 | s9 =>
				EW_green <= blink_sig;
				EW_yellow <= '0';
				EW_red <= '0';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= '0';
				NS_yellow <= '0';
				NS_red <= '1';
				NS_clear <= '0';
				NS_crossing <= '0';
				
				
			WHEN s10 | s11 | s12 | s13 =>
				EW_green <= '1';
				EW_yellow <= '0';
				EW_red <= '0';
				EW_clear <= '0';
				EW_crossing <= '1';
				NS_green <= '0';
				NS_yellow <= '0';
				NS_red <= '1';
				NS_clear <= '0';
				NS_crossing <= '0';
				
				
			WHEN s14 =>
				EW_green <= '0';
				EW_yellow <= '1';
				EW_red <= '0';
				EW_clear <= '1';
				EW_crossing <= '0';
				NS_green <= '0';
				NS_yellow <= '0';
				NS_red <= '1';
				NS_clear <= '0';
				NS_crossing <= '0';
				
				
			WHEN s15 =>
				EW_green <= '0';
				EW_yellow <= '1';
				EW_red <= '0';
				EW_clear <= '0';
				EW_crossing <= '0';
				NS_green <= '0';
				NS_yellow <= '0';
				NS_red <= '1';
				NS_clear <= '0';
				NS_crossing <= '0';
				
			END CASE;
			
			CASE current_state IS
				WHEN s0 =>
					led_state <= "0000";
				WHEN s1 =>
					led_state <= "0001";
				WHEN s2 =>
					led_state <= "0010";
				WHEN s3 =>
					led_state <= "0011";
				WHEN s4 =>
					led_state <= "0100";
				WHEN s5 =>
					led_state <= "0101";
				WHEN s6 =>
					led_state <= "0110";
				WHEN s7 =>
					led_state <= "0111";
				WHEN s8 =>
					led_state <= "1000";
				WHEN s9 =>
					led_state <= "1001";
				WHEN s10 =>
					led_state <= "1010";
				WHEN s11 =>
					led_state <= "1011";
				WHEN s12 =>
					led_state <= "1100";
				WHEN s13 =>
					led_state <= "1101";
				WHEN s14 =>
					led_state <= "1110";
				WHEN s15 =>
					led_state <= "1111";
				END CASE;
 END PROCESS;

 END ARCHITECTURE main;