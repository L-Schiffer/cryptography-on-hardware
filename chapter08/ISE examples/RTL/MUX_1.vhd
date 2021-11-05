
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_1 is
    Port ( I : in  STD_LOGIC_VECTOR(15 downto 0);
			  S : in  STD_LOGIC_VECTOR( 3 downto 0);
           Y : out STD_LOGIC);
end MUX_1;

architecture Behavioral of MUX_1 is
begin

	PROCESS (S)
   BEGIN
		CASE S IS
			WHEN "0000" => Y <= I(0);
			WHEN "0001" => Y <= I(1);
			WHEN "0010" => Y <= I(2);
			WHEN "0011" => Y <= I(3);
			WHEN "0100" => Y <= I(4);
			WHEN "0101" => Y <= I(5);
			WHEN "0110" => Y <= I(6);
			WHEN "0111" => Y <= I(7);
			WHEN "1000" => Y <= I(8);
			WHEN "1001" => Y <= I(9);
			WHEN "1010" => Y <= I(10);
			WHEN "1011" => Y <= I(11);
			WHEN "1100" => Y <= I(12);
			WHEN "1101" => Y <= I(13);
			WHEN "1110" => Y <= I(14);
			WHEN OTHERS => Y <= I(15);
		END CASE;
	END PROCESS;

end Behavioral;

