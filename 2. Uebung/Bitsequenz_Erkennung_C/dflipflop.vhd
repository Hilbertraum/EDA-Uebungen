library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is
    port (D, CLK, RST, SET: in std_logic;
        Q: out std_logic);
end dflipflop;

architecture behavior of dflipflop is

begin

process(CLK)

begin
    if (rising_edge(CLK)) then 
      if (RST = '0') then
			Q <= '0';
		elsif (SET = '0') then
			Q <= '1';
		else
			Q <= D;
		end if;
	 end if;
end process;

end ARCHITECTURE;