
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity x_function_3 is
    Port ( a : in  STD_LOGIC;
	        b : in  STD_LOGIC;
			  c : in  STD_LOGIC;
			  d : in  STD_LOGIC;
           x : out STD_LOGIC);
end x_function_3;

architecture Behavioral of x_function_3 is

	SIGNAL dcba : STD_LOGIC_VECTOR(3 downto 0);

begin
	
	dcba <= d & c & b & a;

	PROCESS (dcba)
   BEGIN
		CASE dcba IS
			WHEN "0000" => x <= '0';
			WHEN "0001" => x <= '1';
			WHEN "0010" => x <= '0';
			WHEN "0011" => x <= '1';
			WHEN "0100" => x <= '1';
			WHEN "0101" => x <= '0';
			WHEN "0110" => x <= '1';
			WHEN "0111" => x <= '0';
			WHEN "1000" => x <= '0';
			WHEN "1001" => x <= '0';
			WHEN "1010" => x <= '1';
			WHEN "1011" => x <= '1';
			WHEN "1100" => x <= '1';
			WHEN "1101" => x <= '0';
			WHEN "1110" => x <= '1';
			WHEN OTHERS => x <= '1';
		END CASE;
	END PROCESS;

end Behavioral;

