-- libs
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Entity
ENTITY tb_pipo IS
END ENTITY;

-- Architecture
ARCHITECTURE testbench OF tb_pipo IS
	-- component
	COMPONENT pipo IS
		PORT( clk, clr : IN STD_LOGIC := 'U';
				d : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := "UUUU";
				q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "UUUU" );
	END COMPONENT;
	
-- Signal declarations
	SIGNAL clk, clr : STD_LOGIC := 'U'; -- input stimuli signals
	SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0); -- output signals
	
-- Architecture body
BEGIN
	-- instanciation of pipo
	dut : pipo
	PORT MAP( clk, clr, d, q );
	
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
		wait for 10 ns;
		clr <= '1';
		wait for 2 ns;
		clr <= '0';
		wait for 20 ns;
	END PROCESS clear_proc;
	
	-- Zeitverhalten von d0
	d0_proc: PROCESS
	BEGIN
		wait for 0.4 ns;
		d(0) <= '0';
		wait for 0.4 ns;
		d(0) <= '1';
	END PROCESS d0_proc;
	
		-- Zeitverhalten von d1
	d1_proc: PROCESS
	BEGIN
		wait for 0.8 ns;
		d(1) <= '0';
		wait for 0.8 ns;
		d(1) <= '1';
	END PROCESS d1_proc;
	
		-- Zeitverhalten von d2
	d2_proc: PROCESS
	BEGIN
		wait for 1.6 ns;
		d(2) <= '0';
		wait for 1.6 ns;
		d(2) <= '1';
	END PROCESS d2_proc;
	
		-- Zeitverhalten von d3
	d3_proc: PROCESS
	BEGIN
		wait for 3.2 ns;
		d(3) <= '0';
		wait for 3.2 ns;
		d(3) <= '1';
	END PROCESS d3_proc;
END ARCHITECTURE ;