
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder_3 is
	 Generic (n : integer := 4);
    Port ( I : in  STD_LOGIC_VECTOR(n-1      downto 0);
           Y : out STD_LOGIC_VECTOR((2**n)-1 downto 0));
end Decoder_3;

architecture Behavioral of Decoder_3 is
begin

	PROCESS (I)
   BEGIN
		Y <= (others => '0');
		Y(to_integer(unsigned(I))) <= '1';
	END PROCESS;

end Behavioral;

