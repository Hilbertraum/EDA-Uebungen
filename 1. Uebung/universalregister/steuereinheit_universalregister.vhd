library ieee;
use ieee.std_logic_1164.all;

ENTITY steuereinheit_universalregister IS
	PORT ( 	RST : IN std_logic;
				CLK : IN std_logic;
				MODE : IN std_logic_vector(1 DOWNTO 0);
				CLR : OUT std_logic;
				LD : OUT std_logic;
				RD : OUT std_logic;
				SER : OUT std_logic;
				TRI : OUT std_logic );
END ENTITY;

ARCHITECTURE behavorial OF steuereinheit_universalregister IS 
	TYPE null_bis_drei IS RANGE 0 to 3;
BEGIN
	PROCESS(CLK, RST)
		VARIABLE cnt : null_bis_drei := 0;
	BEGIN
		IF MODE = "00" THEN ----------- SISO-MODUS --------------
			null;
		ELSE
			null;
		END IF;
		
		
		IF MODE = "01" THEN ----------- PIPO-MODUS --------------
			null;
		ELSE
			null;
		END IF;
		
		
		IF MODE = "10" THEN ----------- PISO-MODUS -------------- RD, SER und TRI noch setzen
			IF RST = '1' THEN -- RESET
				CLR <= '1';
				cnt := 3;
			ELSIF RST = '0' THEN
				CLR <= '0';
				IF falling_edge(CLK) THEN -- CLOCK
					IF cnt = 3 THEN -- cnt
						cnt := 0;
						ld <= '1';
					ELSE
						cnt := cnt + 1;
						ld <= '0';
					END IF;
				END IF;
			END IF;
		ELSE
			null;
		END IF;	
		
		
		IF MODE = "11" THEN ----------- SIPO-MODUS --------------
			null;
		ELSE
			null;
		END IF;
		
	END PROCESS;
	
END ARCHITECTURE;