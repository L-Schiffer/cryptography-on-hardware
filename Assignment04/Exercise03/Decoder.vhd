
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Decoder is
	Port(
		I : in std_logic_vector(2 downto 0); -- input vector with three bits
		O : out std_logic_vector(7 downto 0) -- output vecor with eight bits
	);
end Decoder;

architecture Behavioral of Decoder is

begin
	Process(I)
	begin
		O <= (others => '0'); --setting all values of O to 0
		O(to_integer(unsigned(I))) <= '1'; -- setting element on Index I to 1
	end Process;
	
end Behavioral;

