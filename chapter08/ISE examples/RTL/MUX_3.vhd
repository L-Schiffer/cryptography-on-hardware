
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_3 is
	 Generic (n : integer := 4);
    Port ( I : in  STD_LOGIC_VECTOR((2**n)-1 downto 0);
			  S : in  STD_LOGIC_VECTOR(n-1      downto 0);
           Y : out STD_LOGIC);
end MUX_3;

architecture Behavioral of MUX_3 is
begin

	PROCESS (S, I)
   BEGIN
		Y <= I(to_integer(unsigned(S)));
	END PROCESS;

end Behavioral;

