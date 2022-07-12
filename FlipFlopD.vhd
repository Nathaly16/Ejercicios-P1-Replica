library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopD is
	Port ( D, Clk, Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FlipFlopD;

architecture Behavioral of FlipFlopD is

begin
	process(Clk, D, Reset)
	begin
		if (Reset = 'l' ) then 
		Q <= '0'; 
		elsif (Clk' event and Clk = 'l' ) then 
		Q <= D; 
		end if;
	end process;
end Behavioral;

