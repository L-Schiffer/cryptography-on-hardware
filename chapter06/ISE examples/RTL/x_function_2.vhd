
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_function_2 is
    Port ( a : in  STD_LOGIC;
	        b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
			  d : in  STD_LOGIC;
           x : out STD_LOGIC);
end x_function_2;

architecture Behavioral of x_function_2 is

	SIGNAL dcba : STD_LOGIC_VECTOR(3 downto 0);

begin
	
	dcba <= d & c & b & a;

	PROCESS (dcba)
   BEGIN
		IF    (dcba = "0000") THEN	x <= '0';
      ELSIF (dcba = "0001") THEN x <= '1';
      ELSIF (dcba = "0010") THEN x <= '0';
      ELSIF (dcba = "0011") THEN x <= '1';
      ELSIF (dcba = "0100") THEN x <= '1';
      ELSIF (dcba = "0101") THEN x <= '0';
      ELSIF (dcba = "0110") THEN x <= '1';
      ELSIF (dcba = "0111") THEN x <= '0';
      ELSIF (dcba = "1000") THEN x <= '0';
      ELSIF (dcba = "1001") THEN x <= '0';
      ELSIF (dcba = "1010") THEN x <= '1';
      ELSIF (dcba = "1011") THEN x <= '1';
      ELSIF (dcba = "1100") THEN x <= '1';
      ELSIF (dcba = "1101") THEN x <= '0';
      ELSIF (dcba = "1110") THEN x <= '1';
      ELSE                       x <= '1';
		END IF;
	END PROCESS;

end Behavioral;

