library ieee;
use ieee.std_logic_1164.all;

ENTITY jk_ff IS
	PORT ( J, K: IN std_logic;
         RST: IN std_logic;
         CLK: IN std_logic;
         Q : OUT std_logic );
END ENTITY;

ARCHITECTURE behavorial OF jk_ff IS
	-- Signals
	SIGNAL tmp : std_logic;

BEGIN
   PROCESS (CLK, RST) 
   BEGIN
		IF RST = '1' THEN
			tmp <= '0';
		ELSIF rising_edge(CLK) THEN                 
			IF (J='0' and K='0') THEN
				tmp <= tmp;
			ELSIF (J='0' and K='1') THEN
				tmp <= '0';
			ELSIF (J='1' and K='0') THEN
				tmp <= '1';
			ELSIF (J='1' and K='1') THEN
				IF (tmp = '0' or tmp = '1') THEN
					tmp <= not (tmp);
				ELSE
					tmp <= '0';
				END IF;
         END IF;
      END IF;
   END PROCESS;
	Q <= tmp;
END ARCHITECTURE;