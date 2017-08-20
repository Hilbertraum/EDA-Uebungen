-- library includes
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

-- Entity 
ENTITY reg_1bit IS
	PORT ( 	ld, d0, clk, clr 	: IN STD_LOGIC := 'U';
				q0						: OUT STD_LOGIC := 'U');
END ENTITY;

-- Architecture 
ARCHITECTURE behavorial OF reg_1bit IS
-- Signals
SIGNAL q_i : STD_LOGIC := 'U';
SIGNAL q_o : STD_LOGIC := 'U';

-- Architecture body
BEGIN 
	PROCESS(clk, clr)
	BEGIN
		IF clr = '1' THEN -- 1. Fall: Clear Sinal gesetzt
			q_i <= '0';
			q_o <= '0';
		ELSIF (rising_edge(clk)) THEN -- 2. Fall: steigende Taktflanke
			IF ld = '1' THEN
				q_i <= d0;
			END IF;					
		ELSIF (falling_edge(clk)) THEN -- 3. Fall: fallende Taktflanke
			q_o <= q_i;
		END IF;
	END PROCESS;
	q0 <= q_o; -- Ausgang des FF übernimmt Ausgang des Slave Latch
END ARCHITECTURE;