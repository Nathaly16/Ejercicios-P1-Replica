library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FFT is
    Port ( Clk, T : in  STD_LOGIC;
           Q, Qn : inout  STD_LOGIC);
end FF_T;

architecture Behavioral of FFT is

begin

	process (Clk, T)
		begin
			if (Clk' event and Clk = '1') then
				if (T = '1') then
					Q <= not Qn;
					Qn <= not Q;				
				else 
					Q <= Q;
					Qn <= Qn;
				end if;
			end if;
	end process;

end Behavioral;

