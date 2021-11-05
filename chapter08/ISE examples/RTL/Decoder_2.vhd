
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder_2 is
    Port ( I : in  STD_LOGIC_VECTOR( 3 downto 0);
           Y : out STD_LOGIC_VECTOR(15 downto 0));
end Decoder_2;

architecture Behavioral of Decoder_2 is
begin

	PROCESS (I)
   BEGIN
		Y <= (others => '0');
		Y(to_integer(unsigned(I))) <= '1';
	END PROCESS;

end Behavioral;

