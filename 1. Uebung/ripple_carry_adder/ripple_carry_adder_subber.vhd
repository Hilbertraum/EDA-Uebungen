library ieee;
use ieee.std_logic_1164.all;

ENTITY ripple_carry_adder_subber IS
	PORT ( 	x, y, c_i, mode  : IN std_logic; -- c_i... carry_in, mode=0 -> adder, mode=1 -> subber
				c_o, s : OUT std_logic );
END ENTITY;

ARCHITECTURE behavorial OF ripple_carry_adder_subber IS
BEGIN
	c_o <= (x and c_i) or (y and c_i) or (x and y) WHEN mode = '0' ELSE -- <- adder
			 (y and c_i) or ((not x) and (y xor c_i)); -- <- subber
	
	s <= ((not x) and (not y) and c_i) or ((not x) and y and (not c_i)) or (x and (not y) and (not c_i)) or (x and y and c_i) WHEN mode = '0' ELSE -- adder
		  (x and (((not y) and (not c_i)) or (y and c_i))) or ((not x) and (y xor c_i)); -- subber
END ARCHITECTURE;
