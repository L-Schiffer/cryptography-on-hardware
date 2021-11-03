library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task03b is
    Port ( a_in : in  integer;
           b_in : in  integer;
           c_in : in  integer;
			  x: out integer);
end Task03b;

architecture calculation of Task03b is
begin
	process (a_in, b_in, c_in)
		variable a : integer;
		variable b : integer;
		variable c : integer;
		variable d : integer;
	begin
		a := a_in;
		b := b_in;
		c := c_in;
		
		d := a + b;
		a := d * c;
		d := d + 9;
		b := d * a;
		x <= b;
	end process;

end calculation;

