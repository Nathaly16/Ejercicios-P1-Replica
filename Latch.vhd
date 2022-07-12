library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Latch is
    Port ( X, Control : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Latch;

architecture Behavioral of Latch is

begin

	Z <= X  when (Control = '1');

end Behavioral;

