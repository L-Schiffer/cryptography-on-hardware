
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder_1 is
    Port ( I : in  STD_LOGIC_VECTOR(15 downto 0);
			  V : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR( 3 downto 0));
end Encoder_1;

architecture Behavioral of Encoder_1 is
begin

	PROCESS (I)
   BEGIN
		V <= '1';
		IF    (I(15) = '1') THEN Y <= "1111";
		ELSIF (I(14) = '1') THEN Y <= "1110";
		ELSIF (I(13) = '1') THEN Y <= "1101";
		ELSIF (I(12) = '1') THEN Y <= "1100";
		ELSIF (I(11) = '1') THEN Y <= "1011";
		ELSIF (I(10) = '1') THEN Y <= "1010";
		ELSIF (I( 9) = '1') THEN Y <= "1001";
		ELSIF (I( 8) = '1') THEN Y <= "1000";
		ELSIF (I( 7) = '1') THEN Y <= "0111";
		ELSIF (I( 6) = '1') THEN Y <= "0110";
		ELSIF (I( 5) = '1') THEN Y <= "0101";
		ELSIF (I( 4) = '1') THEN Y <= "0100";
		ELSIF (I( 3) = '1') THEN Y <= "0011";
		ELSIF (I( 2) = '1') THEN Y <= "0010";
		ELSIF (I( 1) = '1') THEN Y <= "0001";
		ELSIF (I( 0) = '1') THEN Y <= "0000";
		ELSE V <= '0'; Y <= "0000"; 
      END IF;
    END PROCESS; 

end Behavioral;

