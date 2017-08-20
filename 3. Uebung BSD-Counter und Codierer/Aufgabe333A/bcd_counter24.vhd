library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_counter24 is
   port( 
 	 CLK :  in std_logic;
	 RESET : in std_logic;
	 DIGIT0: out std_logic_vector(3 downto 0);
	 DIGIT1: out std_logic_vector(3 downto 0));
end bcd_counter24;
 
architecture Behavioral of bcd_counter24 is
   signal temp0, temp1: std_logic_vector(3 downto 0);
begin   
process(CLK,RESET)
   begin
      if RESET='1' then
         temp0 <= "0000";
			temp1 <= "0000";
			
      elsif(rising_edge(CLK)) then
				if temp1="0010" and temp0="0011" then
					temp1<="0000";
					temp0<="0000";
            elsif temp0="1001" then
               temp0<="0000";
					temp1 <= temp1 +1;
            else
               temp0 <= temp0 + 1;
				end if;
      end if;
	end process;
DIGIT0 <= temp0;
DIGIT1 <= temp1;
 
end Behavioral;