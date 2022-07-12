library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejercicio_3_14 is
    Port ( Clk, Reset, X : in  STD_LOGIC;
           Estado : inout  STD_LOGIC_VECTOR (2 downto 0);
           Z : out  STD_LOGIC);
end Ejercicio_3_14;

architecture Behavioral of Ejercicio_3_14 is

begin

	proceso1: process (X, Estado)
		begin
			case Estado is
				when "000" => 
					if x = '0' then
						Estado <= "110";
					else
						Estado <= "001";
					end if;
				
				when "001" => 
					if x = '0' then
						Estado <= "000";
					else
						Estado <= "011";
					end if;
				
				when "011" => 
					if x = '0' then
						Estado <= "001";
					else
						Estado <= "010";
					end if;
					
				when "010" => 
					if x = '0' then
						Estado <= "011";
					else
						Estado <= "110";
					end if;
				when "110" => 
					if x = '0' then
						Estado <= "111";
					else
						Estado <= "010";
					end if;
				when "111" => 
					if x = '0' then
						Estado <= "011";
					else
						Estado <= "101";
					end if;
				when "101" => 
					if x = '0' then
						Estado <= "111";
					else
						Estado <= "110";
					end if;
				when "110" => 
					if x = '0' then
						Estado <= "101";
					else
						Estado <= "000";
					end if;
			end case;
	end process proceso1;

	proceso2: process (Clk)
		begin
			if (Clk'event and Clk = '1') then
				edo_pres <= edo_fut;
			end if;
	end process proceso2;

end Behavioral;

