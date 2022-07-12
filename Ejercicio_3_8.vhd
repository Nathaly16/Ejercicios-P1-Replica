library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Ejercicio_3_8 is
    Port ( Clk, X : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio_3_8;

architecture Behavioral of Ejercicio_3_8 is
	signal aux : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
	process (Clk, X)
	begin
		if (Clk'event and Clk = '1') then
			if (X = '1') then
				if (Aux = "000") then
					Aux <= "011";
				else 
					Aux <= Aux - 1;
				end if;
			elsif (Aux = "011") then
				Aux <= "000";
			else
				Aux <= Aux + 1;
			end if;
		end if;
		Q <= Aux;
	end process;

end Behavioral;
