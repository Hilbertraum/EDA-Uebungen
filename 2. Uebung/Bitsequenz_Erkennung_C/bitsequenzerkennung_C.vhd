LIBRARY ieee;
USE ieee.std_logic_1164.all;

 
ENTITY bitsequenzerkennung_C IS
	PORT (X		: IN std_logic;
			RST 	: IN std_logic;
			CLK	: IN std_logic;
			OUTPUT: OUT std_logic;
			FF_OUT: OUT std_logic_vector (8 DOWNTO 0));
END ENTITY;


ARCHITECTURE Behavior OF bitsequenzerkennung_C IS

	-- Signale
	TYPE State_type IS (A , B , C , D , E , F , G , H , I ) ;
	SIGNAL z_Q , z_D : State_type ; -- z_Q... present state, z_D... next state
	
BEGIN

	PROCESS (x , z_Q ) -- state table
	BEGIN
		CASE z_Q IS
			WHEN A => 
				IF (x='0') THEN z_D <= B ;
				ELSE z_D <= F ;
				END IF ;
			WHEN B =>
				IF (x='0') THEN z_D <= C ;
				ELSE z_D <= F ;
				END IF ;
			WHEN C =>
				IF (x='0') THEN z_D <= D ;
				ELSE z_D <= F ;
				END IF ;
			WHEN D =>
				IF (x='0') THEN z_D <= E ;
				ELSE z_D <= F ;
				END IF ;
			WHEN E =>
				IF (x='0') THEN z_D <= E ;
				ELSE z_D <= F ;
				END IF ;
			WHEN F =>
				IF (x='1') THEN z_D <= G ;
				ELSE z_D <= B ;
				END IF ;
			WHEN G =>
				IF (x='1') THEN z_D <= H ;
				ELSE z_D <= B ;
				END IF ;			
			WHEN H =>
				IF (x='1') THEN z_D <= I ;
				ELSE z_D <= B ;
				END IF ;
			WHEN I =>
				IF (x='1') THEN z_D <= I ;
				ELSE z_D <= B ;
				END IF ;
		END CASE;
	END PROCESS;


	PROCESS (CLK) -- state flipflop
	BEGIN
		IF RST='1' THEN
			z_Q <= A;
		ELSE 
			z_Q <= z_D;
		END IF;
	END PROCESS;
	
	PROCESS (z_Q) -- state flipflop
	BEGIN
		IF ((z_Q = E) or (z_Q = I)) THEN
			OUTPUT <= '1';
		ELSE 
			OUTPUT <= '0';
		END IF;
		
		CASE z_Q IS
			WHEN A =>
				FF_OUT(0) <= '1';
				FF_OUT(8 DOWNTO 1) <= "00000000";
			WHEN B =>
				FF_OUT(1) <= '1';
				FF_OUT(0) <= '0'; 
				FF_OUT(8 DOWNTO 2) <= "0000000";				
			WHEN C =>
				FF_OUT(2) <= '1';
				FF_OUT(1 DOWNTO 0) <= "00"; 
				FF_OUT(8 DOWNTO 3) <= "000000";	
			WHEN D =>
				FF_OUT(3) <= '1';
				FF_OUT(2 DOWNTO 0) <= "000";
				FF_OUT(8 DOWNTO 4) <= "00000";	
			WHEN E =>
				FF_OUT(4) <= '1';
				FF_OUT(3 DOWNTO 0) <= "0000";
				FF_OUT(8 DOWNTO 5) <= "0000";	
			WHEN F =>
				FF_OUT(5) <= '1';
				FF_OUT(4 DOWNTO 0) <= "00000";
				FF_OUT(8 DOWNTO 6) <= "000";
			WHEN G =>
				FF_OUT(6) <= '1';
				FF_OUT(5 DOWNTO 0) <= "000000";
				FF_OUT(8 DOWNTO 7) <= "00";		
			WHEN H =>
				FF_OUT(7) <= '1';
				FF_OUT(6 DOWNTO 0) <= "0000000"; 
				FF_OUT(8) <= '0';
			WHEN I =>
				FF_OUT(8) <= '1';
				FF_OUT(7 DOWNTO 0) <= "00000000";	
		END CASE;
		
	END PROCESS;

-- assignments f o r output y and the LEDs
END ARCHITECTURE;