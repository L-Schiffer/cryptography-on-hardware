library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task03a is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           x : out  STD_LOGIC);
end Task03a;

architecture Implementation of Task03a is
begin
	x <= not(a) or (b and c);
end Implementation;

