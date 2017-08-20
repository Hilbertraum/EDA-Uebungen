-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/22/2017 13:19:55"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_bit_ripple_carry_adder_subber IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	c_i : IN std_logic;
	mode : IN std_logic;
	c_o : BUFFER std_logic;
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	x_o : BUFFER std_logic_vector(3 DOWNTO 0);
	y_o : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END four_bit_ripple_carry_adder_subber;

-- Design Ports Information
-- c_o	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_o[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_o[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_o[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_o[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_o[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_o[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_o[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_o[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_i	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_ripple_carry_adder_subber IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_c_i : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_c_o : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x_o : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y_o : std_logic_vector(3 DOWNTO 0);
SIGNAL \c_o~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \x_o[0]~output_o\ : std_logic;
SIGNAL \x_o[1]~output_o\ : std_logic;
SIGNAL \x_o[2]~output_o\ : std_logic;
SIGNAL \x_o[3]~output_o\ : std_logic;
SIGNAL \y_o[0]~output_o\ : std_logic;
SIGNAL \y_o[1]~output_o\ : std_logic;
SIGNAL \y_o[2]~output_o\ : std_logic;
SIGNAL \y_o[3]~output_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \c_i~input_o\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \adder_subber_1|c_o~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \adder_subber_2|c_o~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \adder_subber_3|c_o~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \adder_subber_4|c_o~0_combout\ : std_logic;
SIGNAL \adder_subber_1|s~0_combout\ : std_logic;
SIGNAL \adder_subber_2|s~0_combout\ : std_logic;
SIGNAL \adder_subber_3|s~0_combout\ : std_logic;
SIGNAL \adder_subber_4|s~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_c_i <= c_i;
ww_mode <= mode;
c_o <= ww_c_o;
s <= ww_s;
x_o <= ww_x_o;
y_o <= ww_y_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X72_Y73_N16
\c_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_subber_4|c_o~0_combout\,
	devoe => ww_devoe,
	o => \c_o~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_subber_1|s~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_subber_2|s~0_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_subber_3|s~0_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_subber_4|s~0_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\x_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[0]~input_o\,
	devoe => ww_devoe,
	o => \x_o[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\x_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[1]~input_o\,
	devoe => ww_devoe,
	o => \x_o[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\x_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[2]~input_o\,
	devoe => ww_devoe,
	o => \x_o[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\x_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \x_o[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\y_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[0]~input_o\,
	devoe => ww_devoe,
	o => \y_o[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\y_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[1]~input_o\,
	devoe => ww_devoe,
	o => \y_o[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\y_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[2]~input_o\,
	devoe => ww_devoe,
	o => \y_o[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\y_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y[3]~input_o\,
	devoe => ww_devoe,
	o => \y_o[3]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\c_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_i,
	o => \c_i~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X108_Y72_N24
\adder_subber_1|c_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_1|c_o~0_combout\ = (\c_i~input_o\ & ((\y[0]~input_o\) # (\mode~input_o\ $ (\x[0]~input_o\)))) # (!\c_i~input_o\ & (\y[0]~input_o\ & (\mode~input_o\ $ (\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_i~input_o\,
	datab => \mode~input_o\,
	datac => \y[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \adder_subber_1|c_o~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X108_Y72_N26
\adder_subber_2|c_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_2|c_o~0_combout\ = (\adder_subber_1|c_o~0_combout\ & ((\y[1]~input_o\) # (\x[1]~input_o\ $ (\mode~input_o\)))) # (!\adder_subber_1|c_o~0_combout\ & (\y[1]~input_o\ & (\x[1]~input_o\ $ (\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \adder_subber_1|c_o~0_combout\,
	datac => \y[1]~input_o\,
	datad => \mode~input_o\,
	combout => \adder_subber_2|c_o~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X108_Y72_N12
\adder_subber_3|c_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_3|c_o~0_combout\ = (\adder_subber_2|c_o~0_combout\ & ((\y[2]~input_o\) # (\mode~input_o\ $ (\x[2]~input_o\)))) # (!\adder_subber_2|c_o~0_combout\ & (\y[2]~input_o\ & (\mode~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subber_2|c_o~0_combout\,
	datab => \mode~input_o\,
	datac => \x[2]~input_o\,
	datad => \y[2]~input_o\,
	combout => \adder_subber_3|c_o~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X108_Y72_N22
\adder_subber_4|c_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_4|c_o~0_combout\ = (\adder_subber_3|c_o~0_combout\ & ((\y[3]~input_o\) # (\x[3]~input_o\ $ (\mode~input_o\)))) # (!\adder_subber_3|c_o~0_combout\ & (\y[3]~input_o\ & (\x[3]~input_o\ $ (\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subber_3|c_o~0_combout\,
	datab => \x[3]~input_o\,
	datac => \mode~input_o\,
	datad => \y[3]~input_o\,
	combout => \adder_subber_4|c_o~0_combout\);

-- Location: LCCOMB_X108_Y72_N0
\adder_subber_1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_1|s~0_combout\ = \c_i~input_o\ $ (\y[0]~input_o\ $ (\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_i~input_o\,
	datac => \y[0]~input_o\,
	datad => \x[0]~input_o\,
	combout => \adder_subber_1|s~0_combout\);

-- Location: LCCOMB_X108_Y72_N10
\adder_subber_2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_2|s~0_combout\ = \x[1]~input_o\ $ (\adder_subber_1|c_o~0_combout\ $ (\y[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \adder_subber_1|c_o~0_combout\,
	datac => \y[1]~input_o\,
	combout => \adder_subber_2|s~0_combout\);

-- Location: LCCOMB_X108_Y72_N28
\adder_subber_3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_3|s~0_combout\ = \adder_subber_2|c_o~0_combout\ $ (\y[2]~input_o\ $ (\x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subber_2|c_o~0_combout\,
	datab => \y[2]~input_o\,
	datac => \x[2]~input_o\,
	combout => \adder_subber_3|s~0_combout\);

-- Location: LCCOMB_X108_Y72_N30
\adder_subber_4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subber_4|s~0_combout\ = \adder_subber_3|c_o~0_combout\ $ (\x[3]~input_o\ $ (\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subber_3|c_o~0_combout\,
	datab => \x[3]~input_o\,
	datad => \y[3]~input_o\,
	combout => \adder_subber_4|s~0_combout\);

ww_c_o <= \c_o~output_o\;

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_x_o(0) <= \x_o[0]~output_o\;

ww_x_o(1) <= \x_o[1]~output_o\;

ww_x_o(2) <= \x_o[2]~output_o\;

ww_x_o(3) <= \x_o[3]~output_o\;

ww_y_o(0) <= \y_o[0]~output_o\;

ww_y_o(1) <= \y_o[1]~output_o\;

ww_y_o(2) <= \y_o[2]~output_o\;

ww_y_o(3) <= \y_o[3]~output_o\;
END structure;


