
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task03_2 is
	Port(
	I : in std_logic_vector(2 downto 0);
	O : out std_logic_vector(1 downto 0)
	);
end Task03_2;

architecture Behavioral of Task03_2 is

begin

process(I)
begin
	case I is
		when "000" => O <= "10";
		when "001" => O <= "11";
		when "010" => O <= "11";
		when "011" => O <= "11";
		when "100" => O <= "01";
		when "101" => O <= "00";
		when "110" => O <= "01";
		when others => O <= "10";
	end case;
end process;
	

end Behavioral;

