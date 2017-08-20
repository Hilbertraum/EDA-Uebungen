-- libs
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Entity
ENTITY pipo IS
	PORT( clk, clr, en : IN STD_LOGIC := 'U';
			d : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := "UUUU";
			q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "UUUU"
			);
END ENTITY;

-- Architecture
ARCHITECTURE behavorial OF pipo IS
	-- Signals
	SIGNAL q_i : STD_LOGIC_VECTOR (3 downto 0) := "UUUU";
	SIGNAL q_o : STD_LOGIC_VECTOR (3 downto 0) := "UUUU";

-- Architecture body
BEGIN
	PROCESS ( clk , clr )
	BEGIN
		IF ( clr= '1') THEN -- asynchroner reset
			q_i <= "0000"; 
			q_o <= "0000";
		ELSIF rising_edge(clk) AND en='1' THEN
			q_i <= d; -- -- Signalübertragung: Eingang -> Master
		ELSIF  falling_edge(clk) AND en='1'  THEN 
			q_o <= q_i; -- Signalübertragung: Master -> Slave
		ELSE 
			null;
		END IF;
	END PROCESS;
	q <= q_o ; -- Signalübertragung: Slave -> Ausgang
END behavorial ;