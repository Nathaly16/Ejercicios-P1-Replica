library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Ejercicio_3_6 is
    Port ( Clk, Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio_3_6;

architecture Behavioral of Ejercicio_3_6 is
	signal aux : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
	process (Clk, Reset)
	begin
		if (Clk'event and Clk = '1') then				
			if (Reset = '0' or Aux = "101") then
				Aux <= "000";
			elsif (Aux = "000") then
				Aux <= Aux + 1;
			else
				Aux <= Aux + 2;
			end if;
		end if;
		Q <= Aux;
	end process;

end Behavioral;
