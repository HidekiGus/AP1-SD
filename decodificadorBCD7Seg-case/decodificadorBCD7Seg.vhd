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
  PROCESS(bcd)
  BEGIN
    CASE bcd IS
      WHEN "0000" =>
        abcdefg <= "0000001";
      WHEN "0001" =>
        abcdefg <= "1001111";
      WHEN "0010" =>
        abcdefg <= "0010010";
      WHEN "0011" =>
        abcdefg <= "0000110";
      WHEN "0100" =>
        abcdefg <= "1001100";
      WHEN "0101" =>
        abcdefg <= "0100100";
      WHEN "0110" =>
        abcdefg <= "0100000";
      WHEN "0111" =>
        abcdefg <= "0001111";
      WHEN "1000" =>
        abcdefg <= "0000000";
      WHEN OTHERS =>
        abcdefg <= "0000100"; 
    END CASE;
  END PROCESS;
END ARCHITECTURE;
