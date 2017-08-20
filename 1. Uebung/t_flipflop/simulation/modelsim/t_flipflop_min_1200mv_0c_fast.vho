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

-- DATE "05/15/2017 21:20:09"

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

ENTITY 	t_flipflop IS
    PORT (
	q : OUT std_logic;
	t : IN std_logic
	);
END t_flipflop;

-- Design Ports Information
-- q	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF t_flipflop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \t~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \ALT_INV_inst1~combout\ : std_logic;

BEGIN

q <= ww_q;
ww_t <= t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst1~combout\ <= NOT \inst1~combout\;

-- Location: IOOBUF_X0_Y62_N16
\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOIBUF_X0_Y62_N22
\t~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t,
	o => \t~input_o\);

-- Location: LCCOMB_X1_Y62_N16
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (!\t~input_o\ & \inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t~input_o\,
	datad => \inst1~combout\,
	combout => \inst1~combout\);

ww_q <= \q~output_o\;
END structure;


