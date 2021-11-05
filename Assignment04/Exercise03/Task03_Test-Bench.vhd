LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
ENTITY Task03_Bench IS
END Task03_Bench;
 
ARCHITECTURE behavior OF Task03_Bench IS  
 
	
	COMPONENT Task03_1
	PORT(
		I : IN  std_logic_vector(2 downto 0);
		O : OUT  std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Task03_2
   PORT(
        I : IN  std_logic_vector(2 downto 0);
        O : OUT  std_logic_vector(1 downto 0)
       );
   END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal O_de_enc : std_logic_vector(1 downto 0);
   signal O_mux : std_logic_vector(1 downto 0);
	
	-- Error signal (1 = error, 0 = no error)
	signal err : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT) for Decoder and Encoder
   uut_de_enc : Task03_1 PORT MAP (
          I => I,
          O => O_de_enc
        );
		  
	-- Instantiate the Unit Under Test (UUT) for Multiplexer
	uut_mux : Task03_2 PORT MAP (
		I => I,
		O => O_mux
	);
	
	-- set error variable
	err <= '0' when (O_mux = O_de_enc) else '1';
	
	stim_proc : process
	begin
	wait for 100 ns;
	I <= "001";
	wait for 100 ns;
	I <= "010";
	wait for 100 ns;
	I <= "011";
	wait for 100 ns;
	I <= "100";
	wait for 100 ns;
	I <= "101";
	wait for 100 ns;
	I <= "110";
	wait for 100 ns;
	I <= "111";
	wait;
	
	end process;


END;
