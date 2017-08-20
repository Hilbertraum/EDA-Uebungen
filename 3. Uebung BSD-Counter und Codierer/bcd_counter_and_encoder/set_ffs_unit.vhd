-- bekommt als Eingänge die Set-Values auf die die FFs gesetzt weden sollen
-- gibt als Ausgänge J(3...0) und K(3...0) raus, damit die FFs auf die jeweiligen Werte gesetzt werden

library ieee;
use ieee.std_logic_1164.all;

ENTITY set_ffs_unit IS
	PORT ( D : IN std_logic_vector(3 DOWNTO 0); -- Werte, auf die die FF-Ausgänge gesetzt werden sollen
			 J : OUT std_logic_vector(3 DOWNTO 0); 
			 K : OUT std_logic_vector(3 DOWNTO 0) );
END ENTITY;

ARCHITECTURE behavorial OF set_ffs_unit IS

BEGIN
	-- D(i)='0' -> J(i)<='0' , K(i)<= '1' bzw.
	--	D(i)='1' -> J(i)<='1' , K(i)<= '0'
		
		-- D(0) -> J(0) , K(0)
		WITH D(0) SELECT
			J(0) <= '0' WHEN '0',
					  '1' WHEN '1',
					  'X' WHEN OTHERS;
		WITH D(0) SELECT
			K(0) <= '1' WHEN '0',
					  '0' WHEN '1',
					  'X' WHEN OTHERS;

		-- D(1) -> J(1) , K(1)
		WITH D(1) SELECT
			J(1) <= '0' WHEN '0',
					  '1' WHEN '1',
					  'X' WHEN OTHERS;
		WITH D(1) SELECT
			K(1) <= '1' WHEN '0',
					  '0' WHEN '1',
					  'X' WHEN OTHERS;

		-- D(2) -> J(2) , K(2)
		WITH D(2) SELECT
			J(2) <= '0' WHEN '0',
					  '1' WHEN '1',
					  'X' WHEN OTHERS;
		WITH D(2) SELECT
			K(2) <= '1' WHEN '0',
					  '0' WHEN '1',
					  'X' WHEN OTHERS;
		
		-- D(3) -> J(3) , K(3)
		WITH D(3) SELECT
			J(3) <= '0' WHEN '0',
					  '1' WHEN '1',
					  'X' WHEN OTHERS;
		WITH D(3) SELECT
			K(3) <= '1' WHEN '0',
					  '0' WHEN '1',
					  'X' WHEN OTHERS;
		
END ARCHITECTURE;