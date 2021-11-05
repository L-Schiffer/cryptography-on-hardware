
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_2 is
    Port ( I : in  STD_LOGIC_VECTOR(15 downto 0);
			  S : in  STD_LOGIC_VECTOR( 3 downto 0);
           Y : out STD_LOGIC);
end MUX_2;

architecture Behavioral of MUX_2 is
begin

	PROCESS (I, S)
   BEGIN
		Y <= I(to_integer(unsigned(S)));
	END PROCESS;

end Behavioral;

