LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY decodificadorBCD7Seg IS
	PORT (
		bcd : IN std_logic_vector(3 DOWNTO 0);
		abcdefg : OUT std_logic_vector(6 DOWNTO 0)
	);
END decodificadorBCD7Seg;

ARCHITECTURE arch OF decodificadorBCD7Seg IS
BEGIN
	with bcd select
		abcdefg <= "0000001" when "0000", -- 0 
					  "1001111" when "0001", -- 1 
			        "0010010" when "0010", -- 2 
		   	     "0000110" when "0011", -- 3 
		   	     "1001100" when "0100", -- 4 
		  	        "0100100" when "0101", -- 5 
			        "0100000" when "0110", -- 6 
	  		        "0001111" when "0111", -- 7 
			        "0000000" when "1000", -- 8
		           "0000100" when others; -- 9
END ARCHITECTURE;
