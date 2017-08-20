library ieee;
use ieee.std_logic_1164.all;

ENTITY piso_steuereinheit IS
	PORT( rst, clk : IN std_logic;
			clr, ld : OUT std_logic );
END ENTITY;

ARCHITECTURE behavorial OF piso_steuereinheit IS
	-- Signaldeklarationen --
	
	-- Variablendeklaration --
	TYPE null_bis_drei IS RANGE 0 to 3;
BEGIN
	PROCESS(clk, rst)
		VARIABLE cnt : null_bis_drei := 0;
	BEGIN
		IF rst = '1' THEN -- RESET
			clr <= '1';
			cnt := 3;
		ELSIF rst = '0' THEN
			clr <= '0';
			IF rst = '0' AND falling_edge(clk) THEN -- CLOCK
				IF cnt = 3 THEN -- cnt
					cnt := 0;
					ld <= '1';
				ELSE
					cnt := cnt + 1;
					ld <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
END ARCHITECTURE;