
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_1 is
    Port ( I : in  STD_LOGIC_VECTOR( 3 downto 0);
           Y : out STD_LOGIC_VECTOR(15 downto 0));
end Decoder_1;

architecture Behavioral of Decoder_1 is
begin

	PROCESS (I)
   BEGIN
		CASE I IS
			WHEN "0000" => Y <= "0000000000000001";
			WHEN "0001" => Y <= "0000000000000010";
			WHEN "0010" => Y <= "0000000000000100";
			WHEN "0011" => Y <= "0000000000001000";
			WHEN "0100" => Y <= "0000000000010000";
			WHEN "0101" => Y <= "0000000000100000";
			WHEN "0110" => Y <= "0000000001000000";
			WHEN "0111" => Y <= "0000000010000000";
			WHEN "1000" => Y <= "0000000100000000";
			WHEN "1001" => Y <= "0000001000000000";
			WHEN "1010" => Y <= "0000010000000000";
			WHEN "1011" => Y <= "0000100000000000";
			WHEN "1100" => Y <= "0001000000000000";
			WHEN "1101" => Y <= "0010000000000000";
			WHEN "1110" => Y <= "0100000000000000";
			WHEN OTHERS => Y <= "1000000000000000";
		END CASE;
	END PROCESS;

end Behavioral;
