library ieee;
use ieee.std_logic_1164.all;


ENTITY bcd_counter_and_encoder IS
	PORT( D 			: 	IN 	std_logic_vector(3 DOWNTO 0);
			CLK 		: 	IN 	std_logic;
			CLK_50	: 	IN		std_logic;
			INIT 		: 	IN 	std_logic;
			OUT_7SEG : 	OUT 	std_logic_vector(6 DOWNTO 0);
			OUT_LED 	: 	OUT 	std_logic_vector(7 DOWNTO 0);
			OUT_LCD 	: 	OUT 	std_logic_vector(12 DOWNTO 0) 
			
	);
			
END ENTITY;



ARCHITECTURE structural OF bcd_counter_and_encoder IS
	
	-- Components
	COMPONENT reg_nbit IS
		GENERIC ( n : NATURAL := 4 );
		PORT ( 	d					: IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
					ld, clk, clr 	: IN STD_LOGIC := 'U';
					q					: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0) );
	END COMPONENT;

	COMPONENT bcd_counter IS
		PORT ( 	CLK : IN std_logic;
			INIT : IN std_logic;
			D : IN std_logic_vector(3 DOWNTO 0);
			AUSGANG : OUT std_logic_vector(3 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT bcd_to_7seg IS
		PORT ( D : IN std_logic_vector(3 DOWNTO 0);
				O : OUT std_logic_vector(6 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT bcd_to_aiken_and_gray IS
		PORT (D : IN std_logic_vector(3 DOWNTO 0);
				O : OUT std_logic_vector(7 DOWNTO 0) );
	END COMPONENT;
	
	COMPONENT lcd_controller IS
   PORT( 
      reset              : IN     std_logic;  -- Map this Port to a Switch within your [Port Declarations / Pin Planer]  
      clock_50           : IN     std_logic;  -- Using the DE2 50Mhz Clk, in order to Genreate the 400Hz signal... clk_count_400hz reset count value must be set to:  <= x"0F424"
      
		BCD_ZAHL				 : IN 	 std_logic_vector(3 DOWNTO 0);
		AIKEN_ZAHL			 : IN 	 std_logic_vector(3 DOWNTO 0);
		GRAY_ZAHL			 : IN 	 std_logic_vector(3 DOWNTO 0);
		
      lcd_rs             : OUT    std_logic; -- '0' -> Command modus, '1' -> data modus
      lcd_e              : OUT    std_logic; -- enable signal
      lcd_rw             : OUT    std_logic; -- '1' -> read, '0' -> write, wird in state machine "LCD-Driver-Core" verwendet
      lcd_on             : OUT    std_logic; -- '1' --> activation of lcd_contrast!!!
      lcd_blon           : OUT    std_logic; -- '1' ->activation of back light!! 
      
      
      data_bus_0         : INOUT  STD_LOGIC;
      data_bus_1         : INOUT  STD_LOGIC;
      data_bus_2         : INOUT  STD_LOGIC;
      data_bus_3         : INOUT  STD_LOGIC;
      data_bus_4         : INOUT  STD_LOGIC;
      data_bus_5         : INOUT  STD_LOGIC;
      data_bus_6         : INOUT  STD_LOGIC;
      data_bus_7         : INOUT  STD_LOGIC );
	END COMPONENT;
	
	-- Signals
	SIGNAL d0 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d1 		: std_logic_vector(3 DOWNTO 0);
	SIGNAL d2 		: std_logic_vector(7 DOWNTO 0);	
	SIGNAL d3 		: std_logic_vector(3 DOWNTO 0);	
	SIGNAL d4 		: std_logic_vector(6 DOWNTO 0);	
	SIGNAL d5 		: std_logic_vector(12 DOWNTO 0);
	SIGNAL not_init : std_logic;
	
BEGIN

	not_init <= not INIT;
	
	-- Instanciations
	
	pipo1 : reg_nbit
		PORT MAP( D, '1', CLK, '0', d0 );
	
	bcd_counter_instance : bcd_counter
		PORT MAP( CLK, INIT, d0, d1 );
	
	bcd_to_7seg_instance : bcd_to_7seg
		PORT MAP( d1, d4 );
		
	pipo2 : reg_nbit
		GENERIC MAP (7)
		PORT MAP( d4, '1', CLK_50, '0', OUT_7SEG );

	converter : bcd_to_aiken_and_gray
		PORT MAP ( d1, d2 );
		
	pipo3 : reg_nbit
		GENERIC MAP (8)
		PORT MAP( d2, '1', CLK_50, '0', OUT_LED );

	pipo4 : reg_nbit
		GENERIC MAP (13)
		PORT MAP( d5, '1', CLK_50, '0',  OUT_LCD);

	lcd_ctrl : lcd_controller
		PORT MAP(not_INIT, CLK_50, d1, d2(3 DOWNTO 0), d2(7 DOWNTO 4), d5(0), d5(1), d5(2), d5(3), d5(4), d5(5), d5(6), d5(7), d5(8), d5(9), d5(10), d5(11), d5(12) );
		
END ARCHITECTURE;