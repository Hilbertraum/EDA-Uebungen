library ieee;
use ieee.std_logic_1164.all;

ENTITY piso IS
	PORT( rst, clk : IN std_logic;
			d : IN std_logic_vector(3 DOWNTO 0); 
			q_out : OUT std_logic );
END ENTITY;

ARCHITECTURE structural OF piso IS
	-- Komponentendeklarationen --
	COMPONENT piso_steuereinheit IS
		PORT( rst, clk : IN std_logic;
				clr, ld : OUT std_logic );
	END COMPONENT;
	
	COMPONENT piso_register IS
	PORT( clr, ld, clk : IN std_logic;
			d : IN std_logic_vector(3 DOWNTO 0);
			q_out : OUT std_logic );
	END COMPONENT;
	
	-- Signaldeklarationen --
	SIGNAL s_clr : std_logic := 'U';
	SIGNAL s_ld : std_logic := 'U';
	
BEGIN
	-- Instanziierungen
	ctrl : piso_steuereinheit
		PORT MAP ( rst, clk, s_clr, s_ld );
	
	reg : piso_register
	 PORT MAP ( s_clr, s_ld, clk, d, q_out );
END ARCHITECTURE;