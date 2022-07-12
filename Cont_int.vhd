library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Cont_int is
    Port ( clk, reset : in  STD_LOGIC;
           Q : inout  integer range 0 to 15);
end Cont_int;

architecture arq_cont of Cont_int is

begin
	process (clk, reset) begin
		if (clk' event and clk = '1') then
			if ( reset = '1' or Q = 9) then
					Q <= 0;
			else
					Q <= Q + 1;
			end if;
		end if;
	end process;
end arq_cont;

