library ieee;
use ieee.std_logic_1164.all;

ENTITY universalregister IS
	PORT ( 	RST : IN std_logic;
				S : IN std_logic_vector(1 DOWNTO 0);
				P : IN std_logic_vector(3 DOWNTO 0);
				SHR : IN std_logic;
				SHL : IN std_logic;
				CLK : IN std_logic;
				Q : BUFFER std_logic_vector(3 DOWNTO 0) );
END ENTITY;

ARCHITECTURE behavorial OF universalregister IS 

BEGIN
	PROCESS(RST, CLK)
	BEGIN
		IF RST = 'H' THEN
			Q <= "0000";
		ELSIF rising_edge(CLK) and RST = 'L' THEN
			CASE S IS
				WHEN "LL" => -- Hold
					null;
				WHEN "HL" => -- Shift Left
					Q(3 DOWNTO 1) <= Q(2 DOWNTO 0);
					IF SHL = 'L' THEN
						Q(0) <= 'L';
					ELSE
						Q(0) <= 'H';
					END IF;
				WHEN "LH" => -- shift Right
					Q(2 DOWNTO 0) <= Q(3 DOWNTO 1);
					IF SHR = 'L' THEN
						Q(3) <= 'L';
					ELSE
						Q(3) <= 'H';
					END IF;
				WHEN "HH" => -- par load
					Q <= P;
				WHEN OTHERS =>
					null;
			END CASE;
		ELSE
			null;
		END IF;
	END PROCESS;
	
END ARCHITECTURE;