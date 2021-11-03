
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.Numeric_Std.ALL;
 
ENTITY test_x_functoin_3 IS
END test_x_functoin_3;
 
ARCHITECTURE behavior OF test_x_functoin_3 IS 
 
    COMPONENT x_function_1
    PORT(
         a,b,c,d,e,f : IN  std_logic;
         x           : OUT  std_logic);
    END COMPONENT;
 
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
   signal x1, x2 : std_logic;
	
	signal err : std_logic;
	
	signal v   : integer := 0;
	signal Vec : std_logic_vector(5 downto 0);
 
BEGIN
 
 	a <= Vec(0);
	b <= Vec(1);
	c <= Vec(2);
	d <= Vec(3);
	e <= Vec(4);
	f <= Vec(5);
 
   uut1: x_function_1 PORT MAP (a,b,c,d,e,f,x1);
   uut2: x_function_2 PORT MAP (a,b,c,d,e,f,x2);

	--err <= x1 XOR x2;
	--err <= '1' WHEN (x1 /= x2) ELSE '0';
	err <= '0' WHEN (x1 = x2) ELSE '1';

	Vec <= std_logic_vector(to_unsigned(v, 6));
		
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		
		if (v < 63) then
			v <= v + 1;
		else
			v <= 0;
		end if;

   end process;

END;
