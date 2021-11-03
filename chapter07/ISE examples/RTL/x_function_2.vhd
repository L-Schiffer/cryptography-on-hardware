
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_function_2 is
    Port ( a,b,c,d,e,f : in  STD_LOGIC;
           x           : out STD_LOGIC);
end x_function_2;

architecture Behavioral of x_function_2 is
	
	COMPONENT mid IS
   PORT (a,b,c : IN STD_LOGIC;
         y     : OUT STD_LOGIC);    
   END COMPONENT;

	SIGNAL y,z : STD_LOGIC;

begin
	
   mid_inst2: mid 
	PORT MAP 
	 (a => e, 
	  b => y, 
	  c => d, 
	  y => z);
	  
   x  <= z or f;
	mid_inst1: mid PORT MAP (a, b, c, y);

end Behavioral;

