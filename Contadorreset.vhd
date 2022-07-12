library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all

entity Contadorreset is
    Port ( clk, reset : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Contadorreset;

architecture modulo of Contadorreset is
begin
	process(clk, reset)
		begin
			if (clk' event and clk = '1') then
				if (reset = '1' or Q = "1001") then
				Q <= "000";
				else
				Q <= Q + 1;
				end if;
			end if;
	end process;
end modulo;

