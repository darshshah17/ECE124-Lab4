
library ieee;
use ieee.std_logic_1164.all;

entity synchronizer is port (

			clk					: in std_logic;
			reset					: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
 end synchronizer;
 
 
architecture circuit of synchronizer is

	Signal remember				: std_logic_vector(1 downto 0);

BEGIN

sync_process: process(clk)
	begin
	
	if (rising_edge(clk)) then
		
		if (reset = '1') then
			remember(0) <= '0';
			remember(1) <= '0';
		else
			remember(1) <= remember(0);
			remember(0) <= din;
		end if;
	end if;

end process;
dout <= remember(1);
end;
