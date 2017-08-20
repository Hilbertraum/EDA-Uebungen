library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_four_bit_ripple_carry_adder_subber IS
END ENTITY;

ARCHITECTURE testbench OF tb_four_bit_ripple_carry_adder_subber IS
	-- components
	COMPONENT four_bit_ripple_carry_adder_subber IS
		PORT ( 	x : IN std_logic_vector(3 DOWNTO 0); -- summand / 
					y : IN std_logic_vector(3 DOWNTO 0); -- summand / 
					c_i : IN std_logic; -- carry in
					mode : IN std_logic; -- mode=0 -> adder, mode=1 -> subber
					c_o : OUT std_logic; -- carry out
					s : OUT std_logic_vector(3 DOWNTO 0) ); -- summand / differenz
	END COMPONENT;
	
	-- signals
	SIGNAL x : std_logic_vector(3 DOWNTO 0) := "0000"; -- summand / 
	SIGNAL y : std_logic_vector(3 DOWNTO 0) := "0000"; -- summand / 
	SIGNAL c_i : std_logic := '0'; -- carry in
	SIGNAL mode : std_logic := '0'; -- mode=0 -> adder, mode=1 -> subber
	SIGNAL c_o : std_logic; -- carry out
	SIGNAL s : std_logic_vector(3 DOWNTO 0); -- summand / differenz

BEGIN
	-- instanciation
		dut : four_bit_ripple_carry_adder_subber
		 PORT MAP ( x, y, c_i, mode, c_o, s );
		 
	-- stimuli
	mode <= not mode after 512 ps;
	c_i <= not c_i after 256 ps;
	x(3) <= not x(3) after 128 ps;
	x(2) <= not x(2) after 64 ps;
	x(1) <= not x(1) after 32 ps;
	x(0) <= not x(0) after 16 ps;
	y(3) <= not y(3) after 8 ps;
	y(2) <= not x(2) after 4 ps;
	y(1) <= not x(1) after 2 ps;
	y(0) <= not x(0) after 1 ps;
END ARCHITECTURE;
