library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopSR is
Port( s, r, clk : in STD_LOGIC;
		Q, Qn : inout STD_LOGIC);
end FlipFlopSR;

architecture Behavioral of FlipFlopSR is

begin
	process(clk, s, r)
	begin
	if (clk' event and clk = '1') then
		if (s = '0' and r = '1') then
			Q <= '0';
			Qn <= '1';
	elsif (s = '1' and r = '0') then
			Q <= '1';
			Qn <= '0';
	elsif (s = '0' and r = '0') then
			Q <= 	Q;
			Qn <= Qn;
	else
		Q <= '-';
		Qn <= '-';
		end if;
	end if;
	end process;

end Behavioral;

