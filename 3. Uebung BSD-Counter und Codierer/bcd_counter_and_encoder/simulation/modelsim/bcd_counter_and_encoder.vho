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

-- DATE "06/23/2017 22:38:06"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_counter_and_encoder IS
    PORT (
	CLK : IN std_logic;
	INIT : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	AUSGANG : OUT std_logic_vector(3 DOWNTO 0)
	);
END bcd_counter_and_encoder;

-- Design Ports Information
-- AUSGANG[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUSGANG[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUSGANG[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUSGANG[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INIT	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_counter_and_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INIT : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AUSGANG : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AUSGANG[0]~output_o\ : std_logic;
SIGNAL \AUSGANG[1]~output_o\ : std_logic;
SIGNAL \AUSGANG[2]~output_o\ : std_logic;
SIGNAL \AUSGANG[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \INIT~input_o\ : std_logic;
SIGNAL \ff0|tmp~0_combout\ : std_logic;
SIGNAL \ff0|tmp~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \ff1|tmp~0_combout\ : std_logic;
SIGNAL \ff1|tmp~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \ff2|tmp~0_combout\ : std_logic;
SIGNAL \ff2|tmp~1_combout\ : std_logic;
SIGNAL \ff2|tmp~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \ff3|tmp~0_combout\ : std_logic;
SIGNAL \ff3|tmp~1_combout\ : std_logic;
SIGNAL \ff3|tmp~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_INIT <= INIT;
ww_D <= D;
AUSGANG <= ww_AUSGANG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y59_N23
\AUSGANG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff0|tmp~q\,
	devoe => ww_devoe,
	o => \AUSGANG[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\AUSGANG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff1|tmp~q\,
	devoe => ww_devoe,
	o => \AUSGANG[1]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AUSGANG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff2|tmp~q\,
	devoe => ww_devoe,
	o => \AUSGANG[2]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\AUSGANG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff3|tmp~q\,
	devoe => ww_devoe,
	o => \AUSGANG[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y57_N15
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\INIT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INIT,
	o => \INIT~input_o\);

-- Location: LCCOMB_X1_Y59_N8
\ff0|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff0|tmp~0_combout\ = (\INIT~input_o\ & (\D[0]~input_o\)) # (!\INIT~input_o\ & ((!\ff0|tmp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \ff0|tmp~q\,
	datad => \INIT~input_o\,
	combout => \ff0|tmp~0_combout\);

-- Location: FF_X1_Y59_N9
\ff0|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff0|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff0|tmp~q\);

-- Location: IOIBUF_X0_Y55_N22
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X1_Y59_N6
\ff1|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1|tmp~0_combout\ = (\INIT~input_o\ & (\D[1]~input_o\)) # (!\INIT~input_o\ & ((\ff1|tmp~q\ $ (\ff0|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \D[1]~input_o\,
	datac => \ff1|tmp~q\,
	datad => \ff0|tmp~q\,
	combout => \ff1|tmp~0_combout\);

-- Location: FF_X1_Y59_N7
\ff1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1|tmp~q\);

-- Location: IOIBUF_X0_Y57_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X1_Y59_N28
\ff2|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|tmp~0_combout\ = (\ff0|tmp~q\ & \ff1|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ff0|tmp~q\,
	datad => \ff1|tmp~q\,
	combout => \ff2|tmp~0_combout\);

-- Location: LCCOMB_X1_Y59_N20
\ff2|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2|tmp~1_combout\ = (\INIT~input_o\ & (\D[2]~input_o\)) # (!\INIT~input_o\ & ((\ff2|tmp~q\ $ (\ff2|tmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \D[2]~input_o\,
	datac => \ff2|tmp~q\,
	datad => \ff2|tmp~0_combout\,
	combout => \ff2|tmp~1_combout\);

-- Location: FF_X1_Y59_N21
\ff2|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff2|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2|tmp~q\);

-- Location: IOIBUF_X0_Y58_N15
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X1_Y59_N18
\ff3|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|tmp~0_combout\ = (\INIT~input_o\ & (\D[3]~input_o\)) # (!\INIT~input_o\ & (((!\ff2|tmp~q\) # (!\ff0|tmp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \D[3]~input_o\,
	datac => \ff0|tmp~q\,
	datad => \ff2|tmp~q\,
	combout => \ff3|tmp~0_combout\);

-- Location: LCCOMB_X1_Y59_N26
\ff3|tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff3|tmp~1_combout\ = (\INIT~input_o\ & (((\ff3|tmp~0_combout\)))) # (!\INIT~input_o\ & (\ff3|tmp~q\ $ (((\ff1|tmp~q\ & !\ff3|tmp~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \ff1|tmp~q\,
	datac => \ff3|tmp~q\,
	datad => \ff3|tmp~0_combout\,
	combout => \ff3|tmp~1_combout\);

-- Location: FF_X1_Y59_N27
\ff3|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ff3|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff3|tmp~q\);

ww_AUSGANG(0) <= \AUSGANG[0]~output_o\;

ww_AUSGANG(1) <= \AUSGANG[1]~output_o\;

ww_AUSGANG(2) <= \AUSGANG[2]~output_o\;

ww_AUSGANG(3) <= \AUSGANG[3]~output_o\;
END structure;


