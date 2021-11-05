
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder is
	Port(
		I : in std_logic_vector(7 downto 0); -- input is the decoded input
		O : out std_logic_vector(1 downto 0) -- values of f(x) are 0-3, therefore two bits are enough
	);
end Encoder;

architecture Behavioral of Encoder is
begin

	Process(I)
	begin
		-- converting the boolean function to the outputs
		if (I(7) = '1') then O <= "10";
		elsif (I(6) = '1') then O <= "01";
		elsif (I(5) = '1') then O <= "00";
		elsif (I(4) = '1') then O <= "01";
		elsif (I(3) = '1') then O <= "11";
		elsif (I(2) = '1') then O <= "11";
		elsif (I(1) = '1') then O <= "11";
		else O <= "10";
		end if;
		
	end process;
	

end Behavioral;

