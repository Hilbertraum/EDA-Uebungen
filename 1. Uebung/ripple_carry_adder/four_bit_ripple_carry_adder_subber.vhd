library ieee;
use ieee.std_logic_1164.all;

ENTITY four_bit_ripple_carry_adder_subber IS
	PORT ( 	x : IN std_logic_vector(3 DOWNTO 0); -- summand / 
				y : IN std_logic_vector(3 DOWNTO 0); -- summand / 
				c_i : IN std_logic; -- carry in
				mode : IN std_logic; -- mode=0 -> adder, mode=1 -> subber
				c_o : OUT std_logic; -- carry out
				s : OUT std_logic_vector(3 DOWNTO 0); -- summand / differenz
				x_o : OUT std_logic_vector(3 DOWNTO 0); -- für die LED-Anzeige des Eingangsvektors x
				y_o : OUT std_logic_vector(3 DOWNTO 0) ); -- für die LED-Anzeige des Eingangsvektors y
END ENTITY;

ARCHITECTURE structural OF four_bit_ripple_carry_adder_subber IS
	-- components
	COMPONENT ripple_carry_adder_subber IS
		PORT ( 	x, y, c_i, mode  : IN std_logic; -- c_i... carry_in, mode=0 -> adder, mode=1 -> subber
				c_o, s : OUT std_logic );
	END COMPONENT;
	
	-- signals
	SIGNAL g1 : std_logic;
	SIGNAL g2 : std_logic;
	SIGNAL g3 : std_logic;	
BEGIN
	-- instanciation
		
	adder_subber_1 : ripple_carry_adder_subber
		PORT MAP ( x(0), y(0), c_i, mode, g1, s(0) );
		
	adder_subber_2 : ripple_carry_adder_subber
		PORT MAP ( x(1), y(1), g1, mode, g2, s(1) );
		
	adder_subber_3 : ripple_carry_adder_subber
		PORT MAP ( x(2), y(2), g2, mode, g3, s(2) );
		
	adder_subber_4 : ripple_carry_adder_subber
		PORT MAP ( x(3), y(3), g3, mode, c_o, s(3) );
		
	x_o <= x;
	y_o <= y;
END ARCHITECTURE;
