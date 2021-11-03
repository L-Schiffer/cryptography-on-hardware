
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mid is
    Port ( a : in  STD_LOGIC;
	        b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
           y : out STD_LOGIC);
end mid;

architecture Behavioral of mid is
begin
	
	y <= a or (b and C);
	
end Behavioral;

