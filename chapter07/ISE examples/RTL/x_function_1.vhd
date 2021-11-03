
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_function_1 is
    Port ( a,b,c,d,e,f : in  STD_LOGIC;
           x           : out STD_LOGIC);
end x_function_1;

architecture Behavioral of x_function_1 is

begin
	
	x <= (a and d) or (b and c and d) or e or f;

end Behavioral;

