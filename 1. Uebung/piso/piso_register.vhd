library ieee;
use ieee.std_logic_1164.all;

ENTITY piso_register IS
	PORT( clr, ld, clk : IN std_logic;
			d : IN std_logic_vector(3 DOWNTO 0);
			q_out : OUT std_logic );
END ENTITY;

ARCHITECTURE behavorial OF piso_register IS
	-- Signaldeklarationen --
	SIGNAL q_m : std_logic_vector(3 DOWNTO 0) := "UUUU";
	SIGNAL q_s : std_logic_vector(3 DOWNTO 0) := "UUUU";
	SIGNAL transfer_or_shift : std_logic := 'U';
	
BEGIN
	PROCESS(clk, clr)
	BEGIN
		IF clr = '1' THEN -- RST
			q_m <= "0000";
			q_s <= "0000";
			transfer_or_shift <= '0';
		ELSIF (clr = '0' AND falling_edge(clk)) THEN -- CLK
			IF ld = '1' THEN -- Daten am Eingang weden in Master eingelesen
				q_m <= d; 
				transfer_or_shift <= '0';
			ELSIF ld = '0' THEN
				IF transfer_or_shift = '1' THEN -- shifte Daten im Slave
					q_s(0) <= '0';
					q_s(3 DOWNTO 1) <= q_s(2 DOWNTO 0);
				ELSIF transfer_or_shift = '0' THEN -- lade Daten von Master in Slave
					q_s <= q_m;
					transfer_or_shift <= '1';
				END IF;
			END IF;
		END IF;
	END PROCESS;
	q_out <= q_s(3);
END ARCHITECTURE;