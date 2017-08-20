library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_piso IS
END ENTITY;

ARCHITECTURE testbench OF tb_piso IS
	-- Komponentendeklarationen --
	COMPONENT piso IS
		PORT( rst, clk : IN std_logic;
				d : IN std_logic_vector(3 DOWNTO 0); 
				q_out : OUT std_logic );
	END COMPONENT;
	
	-- Signaldeklarationen --
	SIGNAL rst, clk, q_out : std_logic := 'U';
	SIGNAL d : std_logic_vector(3 DOWNTO 0) := "UUUU";  
	
BEGIN
	-- Instanziierungen --
	dut : piso
		PORT MAP( rst, clk, d, q_out );
	
	-- Input stimuli --
	PROCESS
	BEGIN
		wait for 5 ns;
		rst <= '1';
		wait for 40 ns;
		rst <= '0';
		wait for 200 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
		clk <= '0';
	END PROCESS;
	
	PROCESS
	BEGIN
		wait for 2 ns;
		d <= "0101";
		wait for 10 ns;
		d <= "1010";
		wait for 15 ns;
		d <= "1110";
		wait for 12 ns;
		d <= "0011";
		wait for 10 ns;
		d <= "1111";
		wait for 17 ns;
		d <= "0000";
	END PROCESS;
	
	
	
END ARCHITECTURE;