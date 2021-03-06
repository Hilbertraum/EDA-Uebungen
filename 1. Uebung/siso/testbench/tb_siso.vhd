-- libs
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Entity
ENTITY tb_siso IS
END ENTITY;

-- Architecture
ARCHITECTURE testbench OF tb_siso IS
	-- component
	COMPONENT siso IS
		PORT ( 	clk, clr, d : IN std_logic := 'U';
					o 				: OUT std_logic := 'U');
	END COMPONENT;
	
-- Signal declarations
	SIGNAL clk, clr, d : STD_LOGIC := 'U'; -- input stimuli signals
	SIGNAL o : STD_LOGIC := 'U'; -- output signals
	
-- Architecture body
BEGIN
	-- instanciation of pipo
	dut : siso
	PORT MAP( clk, clr, d, o );
	
	-- Zeitverhalten der clock
	clock_proc: PROCESS
	BEGIN
		wait for 0.5 ns; 
		clk <= '0';
		wait for 0.5 ns;
		clk <= '1';
	END PROCESS clock_proc;
	
	-- Zeitverhalten von clear
	clear_proc: PROCESS
	BEGIN
		wait for 7 ns;
		clr <= '1';
		wait for 2 ns;
		clr <= '0';
		wait for 15 ns;
	END PROCESS clear_proc;
	
	-- Zeitverhalten von d
	d0_proc: PROCESS
	BEGIN
		wait for 0.4 ns;
		d <= '0';
		wait for 0.4 ns;
		d <= '1';
	END PROCESS d0_proc;
END ARCHITECTURE;
