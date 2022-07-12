library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Ejercicio_3_7_FF is
    Port ( Clk, Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio_3_7;

architecture Behavioral of Ejercicio_3_7_FF is
	signal Aux : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
	process (Clk)
	begin
		if (Clk'event and Clk = '1') then				
			if (Reset = '0' or Aux = "111") then
				Aux <= "000";
			else
				Aux <= Aux + 1;
			end if;
		end if;
		Q <= Aux;
	end process;
end Behavioral;
