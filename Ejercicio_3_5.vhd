library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Contador is
    Port ( clk, reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Contador;

architecture Behavioral of Contador is
	signal aux : STD_LOGIC_VECTOR (3 downto 0);
begin
	process(clk, reset)
		begin
			if reset = '0' then 
			aux <= "0000";
			elsif(clk' event and clk = '1') then
			aux <= aux + 1;
			end if;
	end process;
Q <= aux;
end Behavioral;