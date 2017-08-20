LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY sevenSeg IS
	PORT (	Bin:  IN std_logic_vector(3 downto 0);
				LTN:  IN std_logic;
				BTN:  IN std_logic;
				Bout: OUT std_logic_vector(6 downto 0)
				);
END sevenSeg;

ARCHITECTURE sevenSegArch OF sevenSeg IS
	BEGIN
		PROCESS(LTN, BTN, Bin)
		VARIABLE TMP: std_logic_vector(6 downto 0);
			BEGIN
			IF ((BTN= '1') AND (LTN='0')) THEN 
				TMP := "0000000";
			ELSIF((BTN='0') AND (LTN='0')) THEN 
				TMP := "1111111";
			ELSIF(LTN='1') THEN 
				CASE Bin IS
					WHEN "0000" => TMP := "0000001";
					WHEN "0001" => TMP := "1001111";
					WHEN "0010" => TMP := "0010010";
					WHEN "0011" => TMP := "0000110";
					WHEN "0100" => TMP := "1001100";
					WHEN "0101" => TMP := "0100100";
					WHEN "0110" => TMP := "0100000";
					WHEN "0111" => TMP := "0001111";
					WHEN "1000" => TMP := "0000000";
					WHEN "1001" => TMP := "0000100";
					WHEN "1010" => TMP := "1111111";
					WHEN "1011" => TMP := "1111111";
					WHEN "1100" => TMP := "1111111";
					WHEN "1101" => TMP := "1111111";
					WHEN "1110" => TMP := "1111111";
					WHEN "1111" => TMP := "1111111";
					WHEN OTHERS => TMP := TMP;
					END CASE;
			END IF; 
			Bout <= TMP;
		END PROCESS;
END sevenSegArch;