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

-- DATE "06/09/2017 22:43:28"

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

ENTITY 	piso IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	d : IN std_logic_vector(3 DOWNTO 0);
	q_out : BUFFER std_logic
	);
END piso;

-- Design Ports Information
-- q_out	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF piso IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q_out : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|cnt[0]~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|cnt[1]~0_combout\ : std_logic;
SIGNAL \ctrl|ld~0_combout\ : std_logic;
SIGNAL \ctrl|ld~q\ : std_logic;
SIGNAL \reg|transfer_or_shift~0_combout\ : std_logic;
SIGNAL \reg|transfer_or_shift~q\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \reg|q_m[0]~feeder_combout\ : std_logic;
SIGNAL \reg|q_s~3_combout\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \reg|q_s~2_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \reg|q_m[2]~feeder_combout\ : std_logic;
SIGNAL \reg|q_s~1_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \reg|q_m[3]~feeder_combout\ : std_logic;
SIGNAL \reg|q_s~0_combout\ : std_logic;
SIGNAL \reg|q_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg|q_m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ctrl|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctrl|ALT_INV_ld~q\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_d <= d;
q_out <= ww_q_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ctrl|ALT_INV_ld~q\ <= NOT \ctrl|ld~q\;

-- Location: IOOBUF_X58_Y73_N16
\q_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|q_s\(3),
	devoe => ww_devoe,
	o => \q_out~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y55_N28
\ctrl|cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|cnt[0]~2_combout\ = !\ctrl|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|cnt\(0),
	combout => \ctrl|cnt[0]~2_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X59_Y55_N29
\ctrl|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ctrl|cnt[0]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|cnt\(0));

-- Location: LCCOMB_X59_Y55_N26
\ctrl|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|cnt[1]~0_combout\ = \ctrl|cnt\(1) $ (!\ctrl|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl|cnt\(1),
	datad => \ctrl|cnt\(0),
	combout => \ctrl|cnt[1]~0_combout\);

-- Location: FF_X59_Y55_N27
\ctrl|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ctrl|cnt[1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|cnt\(1));

-- Location: LCCOMB_X59_Y55_N6
\ctrl|ld~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl|ld~0_combout\ = (\rst~input_o\ & (((\ctrl|ld~q\)))) # (!\rst~input_o\ & (!\ctrl|cnt\(1) & ((!\ctrl|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl|cnt\(1),
	datab => \rst~input_o\,
	datac => \ctrl|ld~q\,
	datad => \ctrl|cnt\(0),
	combout => \ctrl|ld~0_combout\);

-- Location: FF_X59_Y55_N7
\ctrl|ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ctrl|ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl|ld~q\);

-- Location: LCCOMB_X59_Y55_N4
\reg|transfer_or_shift~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|transfer_or_shift~0_combout\ = !\ctrl|ld~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl|ld~q\,
	combout => \reg|transfer_or_shift~0_combout\);

-- Location: FF_X59_Y55_N5
\reg|transfer_or_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|transfer_or_shift~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|transfer_or_shift~q\);

-- Location: IOIBUF_X60_Y73_N8
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X60_Y55_N26
\reg|q_m[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_m[0]~feeder_combout\ = \d[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[0]~input_o\,
	combout => \reg|q_m[0]~feeder_combout\);

-- Location: FF_X60_Y55_N27
\reg|q_m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_m[0]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_m\(0));

-- Location: LCCOMB_X59_Y55_N30
\reg|q_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_s~3_combout\ = (!\reg|transfer_or_shift~q\ & \reg|q_m\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg|transfer_or_shift~q\,
	datad => \reg|q_m\(0),
	combout => \reg|q_s~3_combout\);

-- Location: FF_X59_Y55_N31
\reg|q_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_s~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ALT_INV_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_s\(0));

-- Location: IOIBUF_X60_Y73_N15
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: FF_X60_Y55_N5
\reg|q_m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \d[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ctrl|ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_m\(1));

-- Location: LCCOMB_X59_Y55_N24
\reg|q_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_s~2_combout\ = (\reg|transfer_or_shift~q\ & (\reg|q_s\(0))) # (!\reg|transfer_or_shift~q\ & ((\reg|q_m\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|q_s\(0),
	datac => \reg|transfer_or_shift~q\,
	datad => \reg|q_m\(1),
	combout => \reg|q_s~2_combout\);

-- Location: FF_X59_Y55_N25
\reg|q_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_s~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ALT_INV_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_s\(1));

-- Location: IOIBUF_X60_Y73_N22
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X60_Y55_N6
\reg|q_m[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_m[2]~feeder_combout\ = \d[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[2]~input_o\,
	combout => \reg|q_m[2]~feeder_combout\);

-- Location: FF_X60_Y55_N7
\reg|q_m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_m[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_m\(2));

-- Location: LCCOMB_X59_Y55_N22
\reg|q_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_s~1_combout\ = (\reg|transfer_or_shift~q\ & (\reg|q_s\(1))) # (!\reg|transfer_or_shift~q\ & ((\reg|q_m\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|q_s\(1),
	datac => \reg|transfer_or_shift~q\,
	datad => \reg|q_m\(2),
	combout => \reg|q_s~1_combout\);

-- Location: FF_X59_Y55_N23
\reg|q_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_s~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ALT_INV_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_s\(2));

-- Location: IOIBUF_X60_Y73_N1
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X60_Y55_N28
\reg|q_m[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_m[3]~feeder_combout\ = \d[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[3]~input_o\,
	combout => \reg|q_m[3]~feeder_combout\);

-- Location: FF_X60_Y55_N29
\reg|q_m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_m[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_m\(3));

-- Location: LCCOMB_X59_Y55_N8
\reg|q_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|q_s~0_combout\ = (\reg|transfer_or_shift~q\ & (\reg|q_s\(2))) # (!\reg|transfer_or_shift~q\ & ((\reg|q_m\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|q_s\(2),
	datac => \reg|transfer_or_shift~q\,
	datad => \reg|q_m\(3),
	combout => \reg|q_s~0_combout\);

-- Location: FF_X59_Y55_N9
\reg|q_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|q_s~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ctrl|ALT_INV_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|q_s\(3));

ww_q_out <= \q_out~output_o\;
END structure;


