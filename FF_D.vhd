library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_D is
    Port ( D, Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FF_D;

architecture Behavioral of FF_D is

begin

process(Clk)
begin
	if (clk'event and clk='l' ) then 
	Q <= D; 
	end if;
end process;

end Behavioral;

