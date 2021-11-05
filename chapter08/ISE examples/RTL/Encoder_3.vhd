
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Encoder_3 is
    Generic (n : integer := 8);
    Port ( I : in  STD_LOGIC_VECTOR((2**n)-1 downto 0);
			  V : out STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(n-1      downto 0));
end Encoder_3;

architecture Behavioral of Encoder_3 is
begin

	PROCESS (I)
   BEGIN
		V <= '0';  Y <= (others => '0');
		FOR j in (2**n)-1 downto 0 LOOP
			IF (I(j) = '1') THEN
				Y <= std_logic_vector(to_unsigned(j, Y'length));
				V <= '1';  exit;
			END IF;
		END LOOP;
	END PROCESS;
	
end Behavioral;

