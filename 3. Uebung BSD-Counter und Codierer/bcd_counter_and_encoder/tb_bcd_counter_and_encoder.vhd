library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_bcd_counter_and_encoder IS
END ENTITY;

ARCHITECTURE testbench OF tb_bcd_counter_and_encoder IS

	-- Components
	COMPONENT bcd_counter_and_encoder IS
		PORT( D : IN std_logic_vector(3 DOWNTO 0);
				CLK : IN std_logic;
				INIT : IN std_logic;
				OUT_7SEG : OUT std_logic_vector(6 DOWNTO 0);
				OUT_LED : OUT std_logic_vector(7 DOWNTO 0);
				OUT_LCD : OUT std_logic_vector(11 DOWNTO 0) );
	END COMPONENT;

	-- Signals
	SIGNAL clk : std_logic := '0';
	SIGNAL d : std_logic_vector(3 DOWNTO 0) := "0000";
	SIGNAL init : std_logic := '1';
	SIGNAL out_7seg : std_logic_vector(6 DOWNTO 0) := "UUUUUUU";
	SIGNAL out_led : std_logic_vector(7 DOWNTO 0) := "UUUUUUUU";
	SIGNAL out_lcd : std_logic_vector(11 DOWNTO 0) := "UUUUUUUUUUUU";
	
BEGIN
	-- Instanziierung
	dut : bcd_counter_and_encoder
		PORT MAP (d, clk, init, out_7seg, out_led, out_lcd);

	-- Stimuli
	clk <= not clk after 10 ps;
	D(0) <= not D(0) after 20 ps;
	D(1) <= not D(1) after 40 ps;
	D(2) <= not D(2) after 80 ps;
	D(3) <= not D(3) after 160 ps;
	init <= '0' after 12 ps;
	
	
END ARCHITECTURE;