library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity FF_DA is
Port( Clk, Reset, En, D: in std_logic; 
		Q: inout std_logic); 
end FF_DA;

architecture Behavioral of FF_DA is
signal q_aux: std_logic; 
begin 
	process (Clk, Reset, En) 
	begin 
		if (reset = 'l') then 
			q_aux <= '0';
		elsif (Clk' event and Clk = '1') then 
			if (En = 'l') then 
			q_aux <= D; 
			end if; 
		end if; 
	end process; 
Q <= q_aux; 
end Behavioral;

