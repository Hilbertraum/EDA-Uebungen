-- http://www.digital-circuitry.com/Projects_LCD_DISPLAYS.htm
---------------------------------- Initialisierung des LCD-Displays: --------------------------------
-- RS = 0 -> Comand-Modus
-- immer bei falling_edge(EN) wird der Databus ausgelesen
-- erst soll drei mal x38 eingelesen werden ---> interner Reset
-- dann nochmal x38 ---> transfer mode: 8-bit, lines: 2, font size: 5x8
-- x08 ---> Display Off
-- x01 ---> Clear Display
-- x0C ---> Display On
-- x06 ---> Write mode, LCD will auto increment adress and move cursor to the right for every character sent
-- Vielleicht müssen die letzten beiden Befehle getauscht werden
--
----------------------------------- Zeichen-Ausgabe ---------------------------------------------
-- RS <= 1 ---> Data-Modus
-- String eingeben
-- x"C0" ---> places cursor at 2nd line
-- RS <= '1'
-- String eingeben
-- Hinweis: x"80" ---> cursor at first line
-- Hinweis: der Rest der Zeile muss immer mit Spaces (x20) aufgefüllt werden 

-- TODO: DATEN AN PIPO WEITERREICHEN

--
LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


ENTITY lcd_controller IS
   GENERIC( 
      num_hex_digits : integer := 2
   );
   
   PORT( 
      reset              : IN     std_logic;  -- Map this Port to a Switch within your [Port Declarations / Pin Planer] ... LOW-AKTIV!!!
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

-- Declarations

END lcd_controller ;

--
ARCHITECTURE LCD_DISPLAY_arch OF lcd_controller IS
  type character_string is array ( 0 to 31 ) of STD_LOGIC_VECTOR( 7 downto 0 );
  
  type state_type is (hold, func_set, display_on, mode_set, print_string,
                      line2, return_home, drop_lcd_e, reset1, reset2,
                       reset3, display_off, display_clear);
                       
  signal state, next_command         : state_type;

  
  signal display_string          : character_string;

  signal s_bcd_zahl						 : std_logic_vector(3 DOWNTO 0);
  signal s_aiken_zahl					 : std_logic_vector(3 DOWNTO 0);
  signal s_gray_zahl						 : std_logic_vector(3 DOWNTO 0);
  
  signal data_bus_value, next_char   : STD_LOGIC_VECTOR(7 downto 0);
  signal clk_count_400hz             : STD_LOGIC_VECTOR(19 downto 0); -- zähle hoch bis zur Zahl 62.500
  
  signal char_count                  : STD_LOGIC_VECTOR(4 downto 0);
  signal clk_400hz_enable 				 : std_logic; -- "clock" mit Frequenz 50MHz/62.500 = 800 Hz
  signal lcd_rw_int						 : std_logic;
  
  signal data_bus                    : STD_LOGIC_VECTOR(7 downto 0);	
  signal LCD_CHAR_ARRAY              : STD_LOGIC_VECTOR(3 DOWNTO 0);
  
  
BEGIN
  


--===================================================--  
-- SIGNAL STD_LOGIC_VECTORS assigned to OUTPUT PORTS 
--===================================================--    

data_bus_0 <= data_bus(0);
data_bus_1 <= data_bus(1);
data_bus_2 <= data_bus(2);
data_bus_3 <= data_bus(3);
data_bus_4 <= data_bus(4);
data_bus_5 <= data_bus(5);
data_bus_6 <= data_bus(6);
data_bus_7 <= data_bus(7);
 
  
  
-------------------------------------------------------------
-- Zuweisung der bcd-, aiken- und gray-Zahlen Inputs an die entsprechenden Signale
-------------------------------------------------------------
 
 s_bcd_zahl <= BCD_ZAHL;
 s_aiken_zahl <= AIKEN_ZAHL;
 s_gray_zahl <= GRAY_ZAHL;
 
 
 
 
 
--------------- ASCII hex values for LCD Display -----------------
 


--   = x"20",



-- 0 = x"30",
-- 1 = x"31",


-- A = x"41",
-- B = x"42",
-- C = x"43",
-- D = x"44",
-- E = x"45",
-- F = x"46",
-- G = x"47",
-- H = x"48",
-- I = x"49",
-- J = x"4A",
-- K = x"4B",
-- L = x"4C",
-- M = x"4D",
-- N = x"4E",
-- O = x"4F",

-- P = x"50",
-- Q = x"51",
-- R = x"52",
-- S = x"53",
-- T = x"54",
-- U = x"55",
-- V = x"56",
-- W = x"57",
-- X = x"58",
-- Y = x"59",
-- Z = x"5A",





display_string(0 to 15) <= 
  (
-- Line 1 (display_string(0 to 15)) 	A     I     K     E     N           G     R     A     Y           B     C     D    
													x"41",x"49",x"4B",x"45",x"4E",x"20",x"47",x"52",x"41",x"59",x"20",x"42",x"43",x"44",x"20",x"20");
   
-- Line 2 (display_string(16 to 31))
					display_string(20) <= x"20"; 
					display_string(21) <= x"20"; -- 2 Leerzeichen zwischen aiken und gray-zahl
					display_string(26) <= x"20"; -- ein Leerzeichen zwischen gray und bcd
					display_string(31) <= x"20"; -- ein Leerzeichen am Ende
					
		--------------------------------------------------------------------
		-- Schreibe Hex-Werte für die AIKEN-Zahl in display_string(16 to 19)
		--------------------------------------------------------------------

		PROCESS (s_aiken_zahl)
		BEGIN

			  CASE (s_aiken_zahl) IS
					 
					 -- 0
				 WHEN "0000" => -- 			          0     0     0     0
						display_string(16 to 19) <= ( x"30",x"30",x"30",x"30" );
																										  
					 -- 1
				 WHEN "0001" => -- 			          0     0     0     1
						display_string(16 to 19) <= ( x"30",x"30",x"30",x"31" );
						
					 -- 2
				 WHEN "0010" => -- 			          0     0     1     0
						display_string(16 to 19) <= ( x"30",x"30",x"31",x"30" );         
				
					 -- 3
				 WHEN "0011" => -- 			          0     0     1     1
						display_string(16 to 19) <= ( x"30",x"30",x"31",x"31" );             
																																									 
					 -- 4
				 WHEN "0100" => -- 			          0     1     0     0
						display_string(16 to 19) <= ( x"30",x"31",x"30",x"30" );
																										  
					 -- 5
				 WHEN "1011" => -- 			          1     0     1     1
						display_string(16 to 19) <= ( x"31",x"30",x"31",x"31" );
						
					 -- 6
				 WHEN "1100" => -- 			          1     1     0     0
						display_string(16 to 19) <= ( x"31",x"31",x"30",x"30" );       
				
					 -- 7
				 WHEN "1101" => -- 			          1     1     0     1
						display_string(16 to 19) <= ( x"31",x"31",x"30",x"31" );        
			  
					 -- 8
				 WHEN "1110" => -- 			          1     1     1     0
						display_string(16 to 19) <= ( x"31",x"31",x"31",x"30" );
																										  
					 -- 9
				 WHEN "1111" => -- 			          1     1     1     1
						display_string(16 to 19) <= ( x"31",x"31",x"31",x"31" );
						
																																												 
							  -- OTHERS                                                                 
						WHEN OTHERS =>              
							display_string(16 to 19) <= ( x"45",x"52",x"52",x"20" );
																			  
				 END CASE;
		END PROCESS;




		--------------------------------------------------------------------
		-- Schreibe Hex-Werte für die GRAY-Zahl in display_string(22 to 25)
		--------------------------------------------------------------------

		PROCESS (s_gray_zahl)
		BEGIN

			  CASE (s_gray_zahl) IS
					 
					 -- 0
				 WHEN "0000" => -- 			          0     0     0     0
						display_string(22 to 25) <= ( x"30",x"30",x"30",x"30" );
																										  
					 -- 1
				 WHEN "0001" => -- 			          0     0     0     1
						display_string(22 to 25) <= ( x"30",x"30",x"30",x"31" );
						
					 -- 2
				 WHEN "0011" => -- 			          0     0     1     1
						display_string(22 to 25) <= ( x"30",x"30",x"31",x"31" );   
				
					 -- 3
				 WHEN "0010" => -- 			          0     0     1     0
						display_string(22 to 25) <= ( x"30",x"30",x"31",x"30" );         
																																									 
					 -- 4
				 WHEN "0110" => -- 			          0     1     1     0
						display_string(22 to 25) <= ( x"30",x"31",x"31",x"30" );
						
					 -- 5
				 WHEN "0111" => -- 			          0     1     1     1
						display_string(22 to 25) <= ( x"30",x"31",x"31",x"31" );   
				
					 -- 6
				 WHEN "0101" => -- 			          0     1     0     1
						display_string(22 to 25) <= ( x"30",x"31",x"30",x"31" );  

					 -- 7
				 WHEN "0100" => -- 			          0     1     0     0
						display_string(22 to 25) <= ( x"30",x"31",x"30",x"30" );
						
					 -- 8
				 WHEN "1100" => -- 			          1     1     0     0
						display_string(22 to 25) <= ( x"31",x"31",x"30",x"30" );   
				
					 -- 9
				 WHEN "1101" => -- 			          1     1     0     1
						display_string(22 to 25) <= ( x"31",x"31",x"30",x"31" );  
						
																																												 
							  -- OTHERS                                                                 
						WHEN OTHERS =>              
							display_string(22 to 25) <= ( x"45",x"52",x"52",x"20" );
																			  
				 END CASE;
		END PROCESS;



		--------------------------------------------------------------------
		-- Schreibe Hex-Werte für die BCD-Zahl in display_string(27 to 30)
		--------------------------------------------------------------------

		PROCESS (s_bcd_zahl)
		BEGIN

			  CASE (s_bcd_zahl) IS
					 
					 -- 0
				 WHEN "0000" => -- 			0     0     0     0
						display_string(27 to 30) <= ( x"30",x"30",x"30",x"30" );
																										  
					 -- 1                                                                                         
				 WHEN "0001" => --         0     0     0     1
						display_string(27 to 30) <= ( x"30",x"30",x"30",x"31" );
						
					 -- 2
				 WHEN "0010" => -- 			0     0     1     0
						display_string(27 to 30) <= ( x"30",x"30",x"31",x"30" );          
				
					 -- 3
				 WHEN "0011" => -- 			0     0     1     1
						display_string(27 to 30) <= ( x"30",x"30",x"31",x"31" );             
																																									 
					 -- 4
				 WHEN "0100" => -- 			0     1     0     0
						display_string(27 to 30) <= ( x"30",x"31",x"30",x"30" );
																										  
					 -- 5                                                                                         
				 WHEN "0101" => --         0     1     0     1
						display_string(27 to 30) <= ( x"30",x"31",x"30",x"31" );
						
					 -- 6
				 WHEN "0110" => -- 			0     1     1     0
						display_string(27 to 30) <= ( x"30",x"31",x"31",x"30" );          
				
					 -- 7
				 WHEN "0111" => -- 			0     1     1     1
						display_string(27 to 30) <= ( x"30",x"31",x"31",x"31" );          
			  
					 -- 8
				 WHEN "1000" => -- 			1     0     0     0
						display_string(27 to 30) <= ( x"31",x"30",x"30",x"30" );
																										  
					 -- 9                                                                                         
				 WHEN "1001" => --         1     0     0     1
						display_string(27 to 30) <= ( x"31",x"30",x"30",x"31" );
						
																																												 
							  -- OTHERS                                                                 
						WHEN OTHERS =>              
							display_string(27 to 30) <= ( x"45",x"52",x"52",x"20" );
																			  
				 END CASE;
		END PROCESS;
   


-------------------------------------------------------------------------------------------------------
-- BIDIRECTIONAL TRI STATE LCD DATA BUS
   data_bus <= data_bus_value when lcd_rw_int = '0' else "ZZZZZZZZ";
   
-- LCD_RW PORT is assigned to it matching SIGNAL 
 lcd_rw <= lcd_rw_int;
 
 
 
 
 
 
 
-------------------------------- NEXT CHARACTER SELECTION ------------------------------------


            next_char <= display_string(CONV_INTEGER(char_count));
      

 
 
--=====================================================================-- 
--======================= CLOCK #1 SIGNALS ============================--  
--=====================================================================-- 
process(clock_50)
begin
      if (rising_edge(clock_50)) then
         if (reset = '0') then
            clk_count_400hz <= x"00000";
            clk_400hz_enable <= '0';
         else
            if (clk_count_400hz <= x"0F424") then             
                   clk_count_400hz <= clk_count_400hz + 1;                                   
                   clk_400hz_enable <= '0';                
            else
                   clk_count_400hz <= x"00000";
                   clk_400hz_enable <= '1';
            end if;
         end if;
      end if;
end process;  
--==================================================================--    
  

 
  
  
  
  
--======================== LCD DRIVER CORE ==============================--   
--                     STATE MACHINE WITH RESET                          -- 
--===================================================-----===============--  
process (clock_50, reset)
begin
 
  
        if reset = '0' then
           state <= reset1;
           data_bus_value <= x"38"; -- RESET
           next_command <= reset2;
           lcd_e <= '1';
           lcd_rs <= '0';
           lcd_rw_int <= '0';  
        
    
    
        elsif rising_edge(clock_50) then
             if clk_400hz_enable = '1' then  
                 
                 
                 
              --========================================================--                 
              -- State Machine to send commands and data to LCD DISPLAY
              --========================================================--
                 case state is
                 -- Set Function to 8-bit transfer and 2 line display with 5x8 Font size
                 -- see Hitachi HD44780 family data sheet for LCD command and timing details
                       
                       
                       
--======================= INITIALIZATION START ============================--
                       when reset1 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= reset2;
                            char_count <= "00000";
  
                       when reset2 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= reset3;
                            
                       when reset3 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38"; -- EXTERNAL RESET
                            state <= drop_lcd_e;
                            next_command <= func_set;
            
            
                       -- Function Set
                       --==============--
                       when func_set =>                
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"38";  -- Set Function to 8-bit transfer, 2 line display and a 5x8 Font size
                            state <= drop_lcd_e;
                            next_command <= display_off;
                            
                            
                            
                       -- Turn off Display
                       --==============-- 
                       when display_off =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"08"; -- Turns OFF the Display, Cursor OFF and Blinking Cursor Position OFF.......(0F = Display ON and Cursor ON, Blinking cursor position ON)
                            state <= drop_lcd_e;
                            next_command <= display_clear;
                           
                           
                       -- Clear Display 
                       --==============--
                       when display_clear =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"01"; -- Clears the Display    
                            state <= drop_lcd_e;
                            next_command <= display_on;
                           
                           
                           
                       -- Turn on Display and Turn off cursor
                       --===================================--
                       when display_on =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"0C"; -- Turns on the Display (0E = Display ON, Cursor ON and Blinking cursor OFF) 
                            state <= drop_lcd_e;
                            next_command <= mode_set;
                          
                          
                       -- Set write mode to auto increment address and move cursor to the right
                       --====================================================================--
                       when mode_set =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"06"; -- Auto increment address and move cursor to the right
                            state <= drop_lcd_e;
                            next_command <= print_string; 
                            
                               
--======================= INITIALIZATION END ============================--                          
                          
                          
                          
                          
--=======================================================================--                           
--               Write ASCII hex character Data to the LCD
--=======================================================================--
                       when print_string =>          
                            state <= drop_lcd_e;
                            lcd_e <= '1';
                            lcd_rs <= '1';
                            lcd_rw_int <= '0';
                          
                          
                               -- ASCII character to output
                                  data_bus_value <= next_char;
                              
               
                          
                            -- Loop to send out 32 characters to LCD Display (16 by 2 lines)
                               if (char_count < 31) AND (next_char /= x"fe") then
                                   char_count <= char_count +1;                            
                               else
                                   char_count <= "00000";
                               end if;
                  
                  
                  
                            -- Jump to second line?
                               if char_count = 15 then 
                                  next_command <= line2;
                   
                   
                   
                            -- Return to first line?
                               elsif (char_count = 31) or (next_char = x"fe") then
                                     next_command <= return_home;
                               else 
                                     next_command <= print_string; 
                               end if; 
                 
                 
                 
                       -- Set write address to line 2 character 1
                       --======================================--
                       when line2 =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"c0";
                            state <= drop_lcd_e;
                            next_command <= print_string;      
                     
                     
                       -- Return write address to first character position on line 1
                       --=========================================================--
                       when return_home =>
                            lcd_e <= '1';
                            lcd_rs <= '0';
                            lcd_rw_int <= '0';
                            data_bus_value <= x"80";
                            state <= drop_lcd_e;
                            next_command <= print_string; 
                    
                    
                       -- lcd_e will match clk_CUSTOM_hz_enable line when instructed to go LOW, however, if the clk_CUSTOM_hz_enable source clock must be a lower count value or it will reset LOW anyhow.
                       -- The next states occur at the end of each command or data transfer to the LCD
                       -- Drop LCD E line - falling edge loads inst/data to LCD controller
                       --============================================================================--
                       when drop_lcd_e =>
                            lcd_e <= '0';
                            lcd_blon <= '1';
                            lcd_on   <= '1';
                            state <= hold;
                   
                       -- Hold LCD inst/data valid after falling edge of E line
                       --====================================================--
                       when hold =>
                            state <= next_command;
                            lcd_blon <= '1';
                            lcd_on   <= '1';
                       end case;




             end if;-- CLOSING STATEMENT FOR "IF clk_400hz_enable = '1' THEN"
             
      end if;-- CLOSING STATEMENT FOR "IF reset = '0' THEN" 
      
end process;                                                            
  
END ARCHITECTURE LCD_DISPLAY_arch;

