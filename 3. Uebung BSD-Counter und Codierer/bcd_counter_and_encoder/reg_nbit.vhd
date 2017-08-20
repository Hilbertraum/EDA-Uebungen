-- Libraries
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

-- Entity
ENTITY reg_nbit IS
	GENERIC ( n : NATURAL := 4 );
	PORT ( 	d					: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				ld, clk, clr 	: IN STD_LOGIC := 'U';
				q					: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
END ENTITY;

-- Architecture
ARCHITECTURE behavorial OF reg_nbit IS
	-- Signals
	SIGNAL q_i : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL q_o : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
BEGIN 
	PROCESS(clk, clr)
	BEGIN
				IF clr = '1' THEN -- 1. Fall: Clear Sinal gesetzt
					FOR i IN 0 TO n-1 LOOP
						q_i(i) <= '0';
						q_o(i) <= '0';
					END LOOP;
		ELSIF (rising_edge(clk)) THEN -- 2. Fall: steigende Taktflanke
			IF ld = '1' THEN
				FOR i IN 0 TO n-1 LOOP
					q_i(i) <= d(i);
				END LOOP;
			END IF;					
		ELSIF (falling_edge(clk)) THEN -- 3. Fall: fallende Taktflanke
			FOR i IN 0 TO n-1 LOOP
				q_o(i) <= q_i(i);
			END LOOP;
		END IF;
	END PROCESS;
	q <= q_o;
END ARCHITECTURE;