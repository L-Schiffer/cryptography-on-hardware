
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Encoder_2 is
    Port ( I : in  STD_LOGIC_VECTOR(15 downto 0);
			  V : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR( 3 downto 0));
end Encoder_2;

architecture Behavioral of Encoder_2 is
begin

	PROCESS (I)
   BEGIN
		V <= '0';  Y <= "0000";
		FOR j in 15 downto 0 LOOP
			IF (I(j) = '1') THEN
				Y <= std_logic_vector(to_unsigned(j, 4));
				V <= '1';  exit;
			END IF;
		END LOOP;
	END PROCESS;
	
end Behavioral;

