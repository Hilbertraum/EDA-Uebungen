LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;




ENTITY tb_lcd_controller IS
END ENTITY;




ARCHITECTURE testbench OF tb_lcd_controller IS

	-- Components Deklaration
	
	COMPONENT lcd_controller IS
		GENERIC( 
			num_hex_digits : integer := 2
		);
		
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
			data_bus_7         : INOUT  STD_LOGIC
			
			
		);
		
		
	END COMPONENT;
	
	
	-- Signal Deklaration
	SIGNAL reset              	: std_logic := '0';  -- Map this Port to a Switch within your [Port Declarations / Pin Planer]  
	SIGNAL clock_50           	: std_logic := '0';  -- Using the DE2 50Mhz Clk, in order to Genreate the 400Hz signal... clk_count_400hz reset count value must be set to:  <= x"0F424"
			
	SIGNAL BCD_ZAHL				: std_logic_vector(3 DOWNTO 0) := "0000";
	SIGNAL AIKEN_ZAHL			 	: std_logic_vector(3 DOWNTO 0) := "0000";
	SIGNAL GRAY_ZAHL			 	: std_logic_vector(3 DOWNTO 0) := "0000";
			
	SIGNAL lcd_rs             	: std_logic; -- '0' -> Command modus, '1' -> data modus
	SIGNAL lcd_e              	: std_logic; -- enable signal
	SIGNAL lcd_rw             	: std_logic; -- '1' -> read, '0' -> write, wird in state machine "LCD-Driver-Core" verwendet
	SIGNAL lcd_on             	: std_logic; -- '1' --> activation of lcd_contrast!!!
	SIGNAL lcd_blon           	: std_logic; -- '1' -> activation of back light!! 
			
			
	SIGNAL data_bus_0         	: STD_LOGIC;
	SIGNAL data_bus_1         	: STD_LOGIC;
	SIGNAL data_bus_2         	: STD_LOGIC;
	SIGNAL data_bus_3         	: STD_LOGIC;
	SIGNAL data_bus_4         	: STD_LOGIC;
	SIGNAL data_bus_5         	: STD_LOGIC;
	SIGNAL data_bus_6         	: STD_LOGIC;
	SIGNAL data_bus_7         	: STD_LOGIC;
	
	
	
BEGIN

	-- Instanziierungen
	dut : lcd_controller
		PORT MAP( reset, clock_50, BCD_ZAHL, AIKEN_ZAHL, GRAY_ZAHL, lcd_rs, lcd_e, lcd_rw, lcd_on, lcd_blon, data_bus_0, data_bus_1, data_bus_2, data_bus_3, data_bus_4, data_bus_5, data_bus_6, data_bus_7);

	-- Stimuli
	clock_50 <= (not clock_50) after 10 ns;
	PROCESS
	BEGIN
		reset <= '1';
		wait for 100 ms;
		reset <= '0';
		wait for 1000 ms;
	END PROCESS;
	
	
	
END ARCHITECTURE;
