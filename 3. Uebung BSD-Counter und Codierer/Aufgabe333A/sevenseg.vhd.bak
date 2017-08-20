library ieee;
use ieee.std_logic_1164.all;

ENTITY bcd_to_7seg IS
	PORT ( D : IN std_logic_vector(3 DOWNTO 0);
			 O: OUT std_logic_vector(6 DOWNTO 0) );
END ENTITY;

ARCHITECTURE behavorial OF bcd_to_7seg IS
	BEGIN
		PROCESS(D)
		VARIABLE TMP: std_logic_vector(6 downto 0);
			BEGIN
				CASE D IS
					WHEN "0000" => TMP := "1000000"; --0
					WHEN "0001" => TMP := "1111001"; --1
					WHEN "0010" => TMP := "0100100"; --2
					WHEN "0011" => TMP := "0110000"; --3
					WHEN "0100" => TMP := "0011001"; --4
					WHEN "0101" => TMP := "0010010"; --5
					WHEN "0110" => TMP := "0000010"; --6
					WHEN "0111" => TMP := "1111000"; --7
					WHEN "1000" => TMP := "0000000"; --8
					WHEN "1001" => TMP := "0010000"; --9
					WHEN "1010" => TMP := "1111111"; --0
					WHEN "1011" => TMP := "1111111"; --0
					WHEN "1100" => TMP := "1111111"; --0
					WHEN "1101" => TMP := "1111111"; --0
					WHEN "1110" => TMP := "1111111"; --0
					WHEN "1111" => TMP := "1111111"; --0
					WHEN OTHERS => TMP := TMP;
					END CASE;
			O <= TMP;
		END PROCESS;
END ARCHITECTURE;