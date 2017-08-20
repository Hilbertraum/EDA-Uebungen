library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_ripple_carry_adder_subber IS
END ENTITY;

ARCHITECTURE testbench OF tb_ripple_carry_adder_subber IS
	-- komponenten
	COMPONENT ripple_carry_adder_subber IS
		PORT ( 	x, y, c_i, mode  : IN std_logic; -- c_i... carry_in, mode=0 -> adder, mode=1 -> subber
				c_o, s : OUT std_logic );
	END COMPONENT;
	
	-- signale
	SIGNAL x : std_logic := 'U';
	SIGNAL y : std_logic := 'U';
	SIGNAL c_i : std_logic := 'U';
	SIGNAL mode : std_logic := 'U';
	SIGNAL c_o : std_logic := 'U';
	SIGNAL s : std_logic := 'U';

BEGIN
	-- instanziierungen
	dut : ripple_carry_adder_subber
		PORT MAP( x, y, c_i, mode, c_o, s );
		
	-- stimuli
	PROCESS
	BEGIN 
		wait for 10 ns;
		c_i <= '0';
		wait for 10 ns;
		c_i <= '1';
	END PROCESS;

	PROCESS
	BEGIN 
		wait for 20 ns;
		y <= '0';
		wait for 20 ns;
		y <= '1';
	END PROCESS;
	
	PROCESS
	BEGIN 
		wait for 40 ns;
		x <= '0';
		wait for 40 ns;
		x <= '1';
	END PROCESS;
	
		PROCESS
	BEGIN 
		wait for 80 ns;
		mode <= '0';
		wait for 80 ns;
		mode <= '1';
	END PROCESS;
END ARCHITECTURE;
