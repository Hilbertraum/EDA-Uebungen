library ieee;
use ieee.std_logic_1164.all;

ENTITY bcd_to_aiken_and_gray IS
	PORT (D : IN std_logic_vector(3 DOWNTO 0);
			O : OUT std_logic_vector(7 DOWNTO 0) );
END ENTITY;

ARCHITECTURE behavorial OF bcd_to_aiken_and_gray IS
	
	-- Signals
	SIGNAL gray : std_logic_vector(3 DOWNTO 0);
	SIGNAL aiken : std_logic_vector(3 DOWNTO 0);

BEGIN

	gray(0) <= D(1) XOR D(0);
	gray(1) <= D(2) XOR D(1);
	gray(2) <= D(3) XOR D(2);
	gray(3) <= D(3);

	aiken(3) <= (D(0) and D(2)) or (D(1) and D(2) and (not D(3))) or D(3);
	aiken(2) <= ((not D(0)) and D(2)) or (D(1) and D(2) and (not D(3))) or D(3);
	aiken(1) <= (D(0) and (not D(1)) and D(2) and (not D(3))) or (D(1) and (not D(2)) and (not D(3))) or D(3);
	aiken(0) <= (D(0) and (not D(3))) or (D(0) and (not D(2)));

	O(3 DOWNTO 0) <= aiken;
	O(7 DOWNTO 4) <= gray;
END ARCHITECTURE;