-- Libraries
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Entity 
ENTITY tb_reg_1bit IS
END ENTITY;

-- Architecture
ARCHITECTURE testbench OF tb_reg_1bit IS
	-- Component declaration
	COMPONENT reg_1bit IS
		PORT ( 	ld, d0, clk, clr 	: IN STD_LOGIC := 'U';
					q0						: OUT STD_LOGIC := 'U');
	END COMPONENT;

	-- Signal declarations
	SIGNAL ld, d0, clk, clr : STD_LOGIC := 'U'; -- input stimuli signals
	SIGNAL q0 : STD_LOGIC := 'U'; -- output signals

-- Architecture body
BEGIN
	dut : reg_1bit -- Instanziierung eines 1bit-Registers
		PORT MAP( ld, d0, clk, clr, q0 ); -- weise den Komponentenports die entsprechenden Signale zu
		
	-- zeitliches Verhalten der clock
	clk_proc: PROCESS
	BEGIN
		clk <= '0';
		wait for 0.5 ns;
		clk <= '1';
		wait for 0.5 ns;
	END PROCESS clk_proc;
	
	clr_proc: PROCESS
	BEGIN
		clr <= '0';
		wait for 10.4 ns;
		clr <= '1';
		wait for 13.3 ns;
	END PROCESS clr_proc;
	
	stim_proc: PROCESS
	BEGIN
		ld <= '0';
		d0 <= '0';
		wait for 0.4 ns;
		ld <= '1';
		wait for 0.4 ns;
		ld <= '0';
		d0 <= '1';
		wait for 0.4 ns;
		ld <= '1';
		wait for 0.4 ns;
	END PROCESS stim_proc;
	
END ARCHITECTURE;