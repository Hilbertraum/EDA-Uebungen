library ieee;
use ieee.std_logic_1164.all;


ENTITY THREE_DIGITS IS
	PORT( 
			CLK 		: 	IN 	std_logic;
			INIT 		: 	IN 	std_logic;
			Dsec		:  IN std_logic_vector(5 downto 0);
			Dmin		:  IN std_logic_vector(5 downto 0);
			SEVENSEG1	: 	OUT 	std_logic_vector(6 DOWNTO 0);
			SEVENSEG2	: 	OUT 	std_logic_vector(6 DOWNTO 0);
			SEVENSEG3	: 	OUT 	std_logic_vector(6 DOWNTO 0);
			SEVENSEG4	: 	OUT 	std_logic_vector(6 DOWNTO 0);
			SEVENSEG5	: 	OUT 	std_logic_vector(6 DOWNTO 0);
			SEVENSEG6	: 	OUT 	std_logic_vector(6 DOWNTO 0)	
			
	);
			
END ENTITY;



ARCHITECTURE structural OF THREE_DIGITS IS
	
	-- Components

	COMPONENT scale_clock IS
		PORT (
    clk_50Mhz : in  std_logic;
    rst       : in  std_logic;
    clk_2Hz   : out std_logic);
	END COMPONENT;
	
	COMPONENT bcd_counter IS
		PORT ( 	
			CLK :  in std_logic;
			RESET : in std_logic;
			D 	: in std_logic_vector(5 downto 0);
			FWD : out std_logic;
			DIGIT0: out std_logic_vector(3 downto 0);
			DIGIT1: out std_logic_vector(3 downto 0));
	END COMPONENT;
	
	COMPONENT bcd_counter24 IS
		PORT ( 	
			CLK :  in std_logic;
			RESET : in std_logic;
			DIGIT0: out std_logic_vector(3 downto 0);
			DIGIT1: out std_logic_vector(3 downto 0));
	END COMPONENT;
	
	COMPONENT sevenseg IS
		PORT ( D : IN std_logic_vector(3 DOWNTO 0);
				 O : OUT std_logic_vector(6 DOWNTO 0) );
	END COMPONENT;
	
	

	
	-- Signals
	SIGNAL d0 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d1 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d2 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d3		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d4 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d5		: std_logic_vector(3 DOWNTO 0);
	SIGNAL CLK_2Hz : std_logic;
	SIGNAL S_to_M : std_logic;
	SIGNAL M_to_H : std_logic;
	
	
BEGIN
	
	-- Instanciations
	
	seconds : bcd_counter
		PORT MAP( CLK_2Hz, INIT,Dsec ,S_to_M, d0, d1);
		
	minutes : bcd_counter
		PORT MAP( S_to_M, INIT,Dmin, M_to_H, d2, d3);
	
	hours : bcd_counter24
		PORT MAP( M_to_H, INIT, d4, d5);
		
	CLK1 : scale_clock
		PORT MAP (CLK, INIT, CLK_2Hz);
	
	sevenseg1_inst : sevenseg
		PORT MAP( d0, SEVENSEG1);
	sevenseg2_inst : sevenseg
		PORT MAP( d1, SEVENSEG2);
	sevenseg3_inst : sevenseg
		PORT MAP( d2, SEVENSEG3);
	sevenseg4_inst : sevenseg
		PORT MAP(d3, SEVENSEG4);
	sevenseg5_inst : sevenseg
		PORT MAP( d4, SEVENSEG5);
	sevenseg6_inst : sevenseg
		PORT MAP(d5, SEVENSEG6);
		
END ARCHITECTURE;