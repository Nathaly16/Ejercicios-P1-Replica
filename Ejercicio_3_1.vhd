library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio_3_1 is
Port(
	D, clk: in std_logic;
	Q: out std_logic);
end Ejercicio_3_1;

architecture Behavioral of Ejercicio_3_1 is

begin
	process (clk)
begin
		if (clk ' event and clk = '1') then
		Q <= D;
		end if;
	end process;
end Behavioral;

