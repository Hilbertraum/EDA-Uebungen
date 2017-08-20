library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity bcd_counter is
   port( 
 	 CLK :  in std_logic;
	 RESET : in std_logic;
	 D 	: in std_logic_vector(5 downto 0);
	 FWD : out std_logic;
	 DIGIT0: out std_logic_vector(3 downto 0);
	 DIGIT1: out std_logic_vector(3 downto 0));
end bcd_counter;
 
architecture Behavioral of bcd_counter is
	shared variable Dint, temp0 , temp1 : integer;
begin   
process(CLK,RESET)
   begin
      if RESET='1' then
			Dint := to_integer(unsigned(D));
			temp0 := Dint mod 10;
			temp1 := Dint / 10;
			fwd <= '1';
			
      elsif(rising_edge(CLK)) then
				if temp1= 2 and temp0= 3 then
					fwd <= '1';
					temp1:= 0;
					temp0:= 0;
            elsif temp0= 9 then
					fwd <= '0';
               temp0 := 0;
					temp1 := temp1 +1;
            else
					fwd <= '0';
               temp0 := temp0 + 1;
				end if;
      end if;
	end process;
DIGIT0 <= std_logic_vector(to_unsigned(temp0, DIGIT0'length));
DIGIT1 <= std_logic_vector(to_unsigned(temp1, DIGIT1'length));
 
end Behavioral;