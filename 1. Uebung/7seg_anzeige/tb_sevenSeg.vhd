LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_sevenSeg IS
END tb_sevenSeg;

ARCHITECTURE tb_sevenSegArch OF tb_sevenSeg IS
	COMPONENT sevenSeg IS
	PORT(	Bin: IN std_logic_vector(3 downto 0);
			BTN: IN std_logic;
			LTN: IN std_logic;
			Bout: OUT std_logic_vector(6 downto 0));
	END COMPONENT;


SIGNAL Bin_s       :std_logic_vector(3 downto 0);
SIGNAL BTN_s, LTN_s:std_logic;
SIGNAL Bout_s      :std_logic_vector(6 downto 0);

BEGIN
	DUT : sevenSeg PORT MAP (Bin_s, BTN_s, LTN_s, Bout_s);
	PROCESS
	BEGIN
		Bin_s <= "0000"; BTN_s <= '1'; LTN_s <= '0';
		WAIT FOR 10 ns;
		Bin_s <= "0000"; BTN_s <= '0'; LTN_s <= '0';
		WAIT FOR 10 ns;
		Bin_s <= "0000"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0001"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0010"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0011"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0100"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0101"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0110"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "0111"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1000"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1001"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1010"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1011"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1100"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1101"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1110"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
		Bin_s <= "1111"; BTN_s <= '0'; LTN_s <= '1';
		WAIT FOR 10 ns;
	END PROCESS;
END tb_sevenSegArch;