library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_counter is
   port( 
 	 CLK :  in std_logic;
 	 INIT:  in std_logic;
	 D:     in std_logic_vector(3 downto 0);
 	 AUSGANG: out std_logic_vector(3 downto 0));
end bcd_counter;
 
architecture Behavioral of bcd_counter is
   signal temp: std_logic_vector(3 downto 0);
begin   process(CLK,INIT)
   begin
      if INIT='1' then
         temp <= D;
      elsif(rising_edge(CLK)) then
            if temp="1001" then
               temp<="0000";
            else
               temp <= temp + 1;
				end if;
      end if;
   end process;
   AUSGANG <= temp;
end Behavioral;