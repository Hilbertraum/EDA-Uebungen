library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_universalregister IS
END ENTITY;

ARCHITECTURE testbench OF tb_universalregister IS 
	-- Components
	COMPONENT universalregister IS
		PORT ( 	RST : IN std_logic;
				S : IN std_logic_vector(1 DOWNTO 0);
				P : IN std_logic_vector(3 DOWNTO 0);
				SHR : IN std_logic;
				SHL : IN std_logic;
				CLK : IN std_logic;
				Q : BUFFER std_logic_vector(3 DOWNTO 0) );
	END COMPONENT;
	
	-- Signals
 	SIGNAL rst : std_logic := 'H';
	SIGNAL s : std_logic_vector(1 DOWNTO 0) := "LL";
	SIGNAL p : std_logic_vector(3 DOWNTO 0) := "0000";
	SIGNAL shr : std_logic := 'L';
	SIGNAL shl : std_logic := 'L';
	SIGNAL clk : std_logic := '0';
	SIGNAL q : std_logic_vector(3 DOWNTO 0);
	
BEGIN
	-- Instanciations
	dut : universalregister
		PORT MAP ( rst, s, p, shr, shl, clk, q );
	
	-- Stimuli
	clk <= not clk after 10 ps;
	rst <= 'L' after 50 ps;
	s(1) <= 'H' after 100 ps, 'L' after 100 ps;
	s(0) <= 'H' after 50 ps, 'L' after 50 ps;
	p(3) <= not p(3) after 24 ps;
 	p(2) <= not p(2) after 18 ps;
	p(1) <= not p(1) after 29 ps;
	p(0) <= not p(0) after 37 ps;
	shr  <= 'H' after 7 ps, 'L' after 7 ps;
	shl  <= 'H' after 7 ps, 'L' after 7 ps;
	
END ARCHITECTURE;