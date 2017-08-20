-- libs
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- entity
ENTITY siso IS
	PORT ( 	clk, clr, d : IN std_logic := 'U';
				o 				: OUT std_logic := 'U');
END ENTITY;

-- architecture
ARCHITECTURE behavorial OF siso IS
-- signals
	SIGNAL q_m : std_logic_vector(3 DOWNTO 0); -- Master Ausgang
	SIGNAL q_s : std_logic_vector(3 DOWNTO 0); -- Slave Ausgang

-- architecture body
BEGIN
	PROCESS(clk, clr)
	BEGIN
		IF clr = '1' THEN
			q_m <= "0000";
			q_s <= "0000";
		ELSIF rising_edge(clk) THEN
			 q_m(0) <= d;
			 q_m(3 DOWNTO 1) <= q_m(2 DOWNTO 0);
		ELSIF falling_edge(clk) THEN
			q_s <= q_m;
		ELSE
			null;
		END IF;
	END PROCESS;
	o <= q_s(3); -- Ausgang <= Slave_Ausgang
END ARCHITECTURE; 