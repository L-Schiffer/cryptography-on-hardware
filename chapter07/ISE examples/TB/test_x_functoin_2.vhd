
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_x_functoin_2 IS
END test_x_functoin_2;
 
ARCHITECTURE behavior OF test_x_functoin_2 IS 
 
    COMPONENT x_function_2
    PORT(
         a,b,c,d,e,f : IN  std_logic;
         x           : OUT  std_logic);
    END COMPONENT;

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal e : std_logic := '0';
   signal f : std_logic := '0';

 	--Outputs
   signal x : std_logic;
 
BEGIN
 
   uut: x_function_2 PORT MAP (a,b,c,d,e,f,x);

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	

		a <= '1';
		b <= '1';
		f <= '1';
		
		wait for 100 ns;	
		
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '1';
		e <= '1';
		f <= '1';

      wait;
   end process;

END;
