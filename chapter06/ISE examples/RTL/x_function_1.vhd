
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_function_1 is
    Port ( a : in  STD_LOGIC;
	        b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
			  d : in  STD_LOGIC;
           x : out STD_LOGIC);
end x_function_1;

architecture Behavioral of x_function_1 is

begin
	
	x <= (b and d) or (not (a) and c) or (a and not (c) and not (d));

end Behavioral;

