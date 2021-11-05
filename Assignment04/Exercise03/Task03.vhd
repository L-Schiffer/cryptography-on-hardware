library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Task03_1 is
Port(
	I : in  std_logic_vector(2 downto 0); -- input value x
	O : out std_logic_vector(1 downto 0) -- output value f(x)
	);
end Task03_1;

architecture Behavioral of Task03_1 is
	component Decoder is
	Port(
		I : in std_logic_vector(2 downto 0);
		O : out std_logic_vector(7 downto 0)
	);
	end component;
	
	component Encoder is
	Port(
		I : in std_logic_vector(7 downto 0);
		O : out std_logic_vector(1 downto 0)
	);
	end component;
	
	Signal y : std_logic_vector(7 downto 0); -- result of decoder
	Signal z : std_logic_vector(1 downto 0); -- f(x)
	
begin
	dec_instance : Decoder port map(I => I, O => y);
	enc_instance : Encoder port map(I =>y, O => z);
	O <= z;

end Behavioral;

