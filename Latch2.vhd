library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Latch_Process is
    Port ( dato, control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end Latch_Process;

architecture Behavioral of Latch_Process is
begin

		process(dato, control)
		begin
			if control = '1' then
			salida <= dato;
		end if;
end process;

end Behavioral;

