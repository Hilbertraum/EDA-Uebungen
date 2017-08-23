LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY bitsequenzerkennung_A IS 
	PORT (X		: IN std_logic;
			RST 	: IN std_logic;
			CLK	: IN std_logic;
			OUTPUT: OUT std_logic;
			FF_OUT: OUT std_logic_vector (8 DOWNTO 0));
END ENTITY;


ARCHITECTURE behavior OF bitsequenzerkennung_A IS
    
	 -- component declaration
	COMPONENT dflipflop 
		PORT (D, CLK, RST, SET: in std_logic; 
            Q: out std_logic);
   END COMPONENT;

	-- signal declarations
   SIGNAL d, q: std_logic_vector(8 downto 0); -- d... FF-Eingänge, q... FF-Ausgänge

	BEGIN
   dff0: dflipflop 
		PORT MAP (d(0), CLK, not RST, '1', q(0));
   
   dff1: dflipflop 
		PORT MAP (d(1), CLK, RST, '1', q(1));
   
   dff2: dflipflop 
		PORT MAP (d(2), CLK, RST, '1', q(2));
   
	dff3: dflipflop 
		PORT MAP (d(3), CLK, RST, '1', q(3));
   
   dff4: dflipflop 
		PORT MAP (d(4), CLK, RST, '1', q(4));
   
   dff5: dflipflop 
		PORT MAP (d(5), CLK, RST, '1', q(5));
   
   dff6: dflipflop 
		PORT MAP (d(6), CLK, RST, '1', q(6));
   
   dff7: dflipflop 
		PORT MAP (d(7), CLK, RST, '1', q(7));
    
   dff8: dflipflop 
		PORT MAP (d(8), CLK, RST, '1', q(8));

	d(0) <= RST;	
	d(1) <= (q(0) or q(5) or q(6) or q(7) or q(8)) and (not X);
	d(2) <= q(1) and (not X);
	d(3) <= q(2) and (not X);
	d(4) <= (q(3) or q(4)) and (not X);
	d(5) <= (q(0) or q(1) or q(2) or q(3) or q(4)) and X;
	d(6) <= q(5) and X;
	d(7) <= q(6) and X;
	d(8) <= (q(7) or q(8)) and X;
	
	FF_OUT <= q;
	OUTPUT <= q(4) or q(8);


END ARCHITECTURE;