-- Libraries
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Entity 
ENTITY tb_reg_nbit IS
END ENTITY;

-- Architecture
ARCHITECTURE testbench OF tb_reg_nbit IS
-- Component declaration
COMPONENT reg_nbit IS
	GENERIC ( n : NATURAL := 2 );
	PORT ( 	d					: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				ld, clk, clr 	: IN STD_LOGIC := 'U';
				q					: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
END COMPONENT;

-- Signal declarations
SIGNAL ld, clk, clr : STD_LOGIC := 'U'; -- input stimuli signals
SIGNAL d : STD_LOGIC_VECTOR(3-1 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3-1 DOWNTO 0); -- output signals

-- Architecture body
BEGIN
	dut : reg_nbit -- Instanziierung eines 1bit-Registers
		GENERIC MAP(3)
		PORT MAP( d, ld, clk, clr, q ); -- weise den Komponentenports die entsprechenden Signale zu
		
	-- zeitliches Verhalten der clock
	clk_proc: PROCESS
	BEGIN
		clk <= '0';
		wait for 0.5 ns;
		clk <= '1';
		wait for 0.5 ns;
	END PROCESS clk_proc;
	
	-- zeitliches Verhalten von clr
	clr_proc: PROCESS
	BEGIN
		clr <= '0';
		wait for 10.4 ns;
		clr <= '1';
		wait for 5.3 ns;
	END PROCESS clr_proc;
	
	-- zeitliches Verhalten von ld
	ld_proc: PROCESS
	BEGIN
		ld <= '0';
		wait for 1.6 ns;
		ld <= '1';
		wait for 1.6 ns;
	END PROCESS ld_proc;
	
	-- zeitliches Verhalten von d
	d_proc: PROCESS
	BEGIN
		d(1) <= '0';
		d(0) <= '0';
		wait for 0.4 ns;
		d(1) <= '0';
		d(0) <= '1';
		wait for 0.4 ns;
		d(1) <= '1';
		d(0) <= '0';
		wait for 0.4 ns;
		d(1) <= '1';
		d(0) <= '1';
		wait for 0.4 ns;
	END PROCESS d_proc;
	
END ARCHITECTURE;