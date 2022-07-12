library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ContadoAsigPins is
    Port ( clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
attribute pin_numbers of contador : entity is
'' clk : 1 Q(3) : 14 Q(2) : 15 Q(1) : 16 Q(0) : 17 '';
end ContadoAsigPins;

architecture Pins of ContadoAsigPins is

begin
process (clk)
	begin
		if (clk' event and clk = '1') then 
		Q<= Q+1;
		end if;
end process;
end Pins;