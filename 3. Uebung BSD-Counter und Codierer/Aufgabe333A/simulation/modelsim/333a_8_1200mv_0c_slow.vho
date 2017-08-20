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

-- DATE "07/07/2017 16:36:18"

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

ENTITY 	THREE_DIGITS IS
    PORT (
	CLK : IN std_logic;
	INIT : IN std_logic;
	Dsec : IN std_logic_vector(5 DOWNTO 0);
	Dmin : IN std_logic_vector(5 DOWNTO 0);
	SEVENSEG1 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEVENSEG2 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEVENSEG3 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEVENSEG4 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEVENSEG5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEVENSEG6 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END THREE_DIGITS;

-- Design Ports Information
-- SEVENSEG1[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG1[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG2[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG3[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG4[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG5[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEVENSEG6[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INIT	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[5]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dsec[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dmin[1]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF THREE_DIGITS IS
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
SIGNAL ww_Dsec : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Dmin : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SEVENSEG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEVENSEG2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEVENSEG3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEVENSEG4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEVENSEG5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEVENSEG6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seconds|FWD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \minutes|FWD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK1|clk_2Hz_i~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEVENSEG1[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG1[6]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG2[6]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG3[6]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG4[6]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG5[6]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[0]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[1]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[2]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[3]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[4]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[5]~output_o\ : std_logic;
SIGNAL \SEVENSEG6[6]~output_o\ : std_logic;
SIGNAL \Dsec[0]~input_o\ : std_logic;
SIGNAL \INIT~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK1|Add0~0_combout\ : std_logic;
SIGNAL \CLK1|Add0~3\ : std_logic;
SIGNAL \CLK1|Add0~4_combout\ : std_logic;
SIGNAL \CLK1|Add0~5\ : std_logic;
SIGNAL \CLK1|Add0~6_combout\ : std_logic;
SIGNAL \CLK1|prescaler~5_combout\ : std_logic;
SIGNAL \CLK1|Add0~7\ : std_logic;
SIGNAL \CLK1|Add0~8_combout\ : std_logic;
SIGNAL \CLK1|Add0~9\ : std_logic;
SIGNAL \CLK1|Add0~10_combout\ : std_logic;
SIGNAL \CLK1|Add0~11\ : std_logic;
SIGNAL \CLK1|Add0~12_combout\ : std_logic;
SIGNAL \CLK1|Add0~13\ : std_logic;
SIGNAL \CLK1|Add0~14_combout\ : std_logic;
SIGNAL \CLK1|prescaler~4_combout\ : std_logic;
SIGNAL \CLK1|Add0~15\ : std_logic;
SIGNAL \CLK1|Add0~17\ : std_logic;
SIGNAL \CLK1|Add0~18_combout\ : std_logic;
SIGNAL \CLK1|prescaler~2_combout\ : std_logic;
SIGNAL \CLK1|Add0~19\ : std_logic;
SIGNAL \CLK1|Add0~20_combout\ : std_logic;
SIGNAL \CLK1|Add0~21\ : std_logic;
SIGNAL \CLK1|Add0~22_combout\ : std_logic;
SIGNAL \CLK1|Add0~23\ : std_logic;
SIGNAL \CLK1|Add0~24_combout\ : std_logic;
SIGNAL \CLK1|prescaler~1_combout\ : std_logic;
SIGNAL \CLK1|Equal0~3_combout\ : std_logic;
SIGNAL \CLK1|Add0~25\ : std_logic;
SIGNAL \CLK1|Add0~26_combout\ : std_logic;
SIGNAL \CLK1|Add0~27\ : std_logic;
SIGNAL \CLK1|Add0~28_combout\ : std_logic;
SIGNAL \CLK1|Add0~29\ : std_logic;
SIGNAL \CLK1|Add0~30_combout\ : std_logic;
SIGNAL \CLK1|Add0~31\ : std_logic;
SIGNAL \CLK1|Add0~32_combout\ : std_logic;
SIGNAL \CLK1|Add0~33\ : std_logic;
SIGNAL \CLK1|Add0~34_combout\ : std_logic;
SIGNAL \CLK1|Add0~35\ : std_logic;
SIGNAL \CLK1|Add0~36_combout\ : std_logic;
SIGNAL \CLK1|Add0~37\ : std_logic;
SIGNAL \CLK1|Add0~38_combout\ : std_logic;
SIGNAL \CLK1|Add0~39\ : std_logic;
SIGNAL \CLK1|Add0~40_combout\ : std_logic;
SIGNAL \CLK1|Equal0~1_combout\ : std_logic;
SIGNAL \CLK1|Add0~41\ : std_logic;
SIGNAL \CLK1|Add0~42_combout\ : std_logic;
SIGNAL \CLK1|Add0~43\ : std_logic;
SIGNAL \CLK1|Add0~44_combout\ : std_logic;
SIGNAL \CLK1|Add0~45\ : std_logic;
SIGNAL \CLK1|Add0~46_combout\ : std_logic;
SIGNAL \CLK1|Equal0~0_combout\ : std_logic;
SIGNAL \CLK1|Equal0~2_combout\ : std_logic;
SIGNAL \CLK1|Equal0~4_combout\ : std_logic;
SIGNAL \CLK1|prescaler~0_combout\ : std_logic;
SIGNAL \CLK1|Add0~1\ : std_logic;
SIGNAL \CLK1|Add0~2_combout\ : std_logic;
SIGNAL \CLK1|Equal0~6_combout\ : std_logic;
SIGNAL \CLK1|Add0~16_combout\ : std_logic;
SIGNAL \CLK1|prescaler~3_combout\ : std_logic;
SIGNAL \CLK1|Equal0~5_combout\ : std_logic;
SIGNAL \CLK1|clk_2Hz_i~0_combout\ : std_logic;
SIGNAL \CLK1|clk_2Hz_i~feeder_combout\ : std_logic;
SIGNAL \CLK1|clk_2Hz_i~q\ : std_logic;
SIGNAL \CLK1|clk_2Hz_i~clkctrl_outclk\ : std_logic;
SIGNAL \seconds|Add1~0_combout\ : std_logic;
SIGNAL \Dsec[5]~input_o\ : std_logic;
SIGNAL \Dsec[4]~input_o\ : std_logic;
SIGNAL \Dsec[3]~input_o\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Dsec[2]~input_o\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dsec[1]~input_o\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \seconds|temp0[1]~5_combout\ : std_logic;
SIGNAL \seconds|Add1~1\ : std_logic;
SIGNAL \seconds|Add1~2_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \seconds|temp0[3]~13_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \seconds|temp0[2]~9_combout\ : std_logic;
SIGNAL \seconds|Add1~3\ : std_logic;
SIGNAL \seconds|Add1~4_combout\ : std_logic;
SIGNAL \seconds|temp0[2]~11_combout\ : std_logic;
SIGNAL \seconds|temp0[2]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[2]~10_combout\ : std_logic;
SIGNAL \seconds|Add1~5\ : std_logic;
SIGNAL \seconds|Add1~6_combout\ : std_logic;
SIGNAL \seconds|temp0[3]~15_combout\ : std_logic;
SIGNAL \seconds|temp0[3]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[3]~14_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \seconds|temp1[0]~1_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ : std_logic;
SIGNAL \seconds|temp0[5]~17_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ : std_logic;
SIGNAL \seconds|temp0[4]~21_combout\ : std_logic;
SIGNAL \seconds|Add1~7\ : std_logic;
SIGNAL \seconds|Add1~8_combout\ : std_logic;
SIGNAL \seconds|temp0[4]~23_combout\ : std_logic;
SIGNAL \seconds|temp0[4]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[4]~22_combout\ : std_logic;
SIGNAL \seconds|Add1~9\ : std_logic;
SIGNAL \seconds|Add1~10_combout\ : std_logic;
SIGNAL \seconds|temp0[5]~19_combout\ : std_logic;
SIGNAL \seconds|temp0[5]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[5]~18_combout\ : std_logic;
SIGNAL \seconds|Add1~11\ : std_logic;
SIGNAL \seconds|Add1~12_combout\ : std_logic;
SIGNAL \seconds|Add1~89_combout\ : std_logic;
SIGNAL \seconds|Add1~13\ : std_logic;
SIGNAL \seconds|Add1~14_combout\ : std_logic;
SIGNAL \seconds|Add1~88_combout\ : std_logic;
SIGNAL \seconds|Add1~15\ : std_logic;
SIGNAL \seconds|Add1~16_combout\ : std_logic;
SIGNAL \seconds|Add1~87_combout\ : std_logic;
SIGNAL \seconds|Add1~17\ : std_logic;
SIGNAL \seconds|Add1~18_combout\ : std_logic;
SIGNAL \seconds|Add1~86_combout\ : std_logic;
SIGNAL \seconds|Add1~19\ : std_logic;
SIGNAL \seconds|Add1~20_combout\ : std_logic;
SIGNAL \seconds|Add1~85_combout\ : std_logic;
SIGNAL \seconds|Add1~21\ : std_logic;
SIGNAL \seconds|Add1~22_combout\ : std_logic;
SIGNAL \seconds|Add1~84_combout\ : std_logic;
SIGNAL \seconds|Add1~23\ : std_logic;
SIGNAL \seconds|Add1~24_combout\ : std_logic;
SIGNAL \seconds|Add1~83_combout\ : std_logic;
SIGNAL \seconds|Add1~25\ : std_logic;
SIGNAL \seconds|Add1~26_combout\ : std_logic;
SIGNAL \seconds|Add1~82_combout\ : std_logic;
SIGNAL \seconds|Add1~27\ : std_logic;
SIGNAL \seconds|Add1~28_combout\ : std_logic;
SIGNAL \seconds|Add1~81_combout\ : std_logic;
SIGNAL \seconds|Add1~29\ : std_logic;
SIGNAL \seconds|Add1~30_combout\ : std_logic;
SIGNAL \seconds|Add1~80_combout\ : std_logic;
SIGNAL \seconds|Equal2~5_combout\ : std_logic;
SIGNAL \seconds|Equal2~6_combout\ : std_logic;
SIGNAL \seconds|Equal2~7_combout\ : std_logic;
SIGNAL \seconds|Equal2~8_combout\ : std_logic;
SIGNAL \seconds|Add1~31\ : std_logic;
SIGNAL \seconds|Add1~32_combout\ : std_logic;
SIGNAL \seconds|Add1~79_combout\ : std_logic;
SIGNAL \seconds|Add1~33\ : std_logic;
SIGNAL \seconds|Add1~34_combout\ : std_logic;
SIGNAL \seconds|Add1~78_combout\ : std_logic;
SIGNAL \seconds|Add1~35\ : std_logic;
SIGNAL \seconds|Add1~36_combout\ : std_logic;
SIGNAL \seconds|Add1~77_combout\ : std_logic;
SIGNAL \seconds|Add1~37\ : std_logic;
SIGNAL \seconds|Add1~38_combout\ : std_logic;
SIGNAL \seconds|Add1~76_combout\ : std_logic;
SIGNAL \seconds|Equal2~3_combout\ : std_logic;
SIGNAL \seconds|Add1~39\ : std_logic;
SIGNAL \seconds|Add1~40_combout\ : std_logic;
SIGNAL \seconds|Add1~75_combout\ : std_logic;
SIGNAL \seconds|Add1~41\ : std_logic;
SIGNAL \seconds|Add1~42_combout\ : std_logic;
SIGNAL \seconds|Add1~74_combout\ : std_logic;
SIGNAL \seconds|Add1~43\ : std_logic;
SIGNAL \seconds|Add1~44_combout\ : std_logic;
SIGNAL \seconds|Add1~73_combout\ : std_logic;
SIGNAL \seconds|Add1~45\ : std_logic;
SIGNAL \seconds|Add1~46_combout\ : std_logic;
SIGNAL \seconds|Add1~72_combout\ : std_logic;
SIGNAL \seconds|Add1~47\ : std_logic;
SIGNAL \seconds|Add1~48_combout\ : std_logic;
SIGNAL \seconds|Add1~71_combout\ : std_logic;
SIGNAL \seconds|Add1~49\ : std_logic;
SIGNAL \seconds|Add1~50_combout\ : std_logic;
SIGNAL \seconds|Add1~70_combout\ : std_logic;
SIGNAL \seconds|Add1~51\ : std_logic;
SIGNAL \seconds|Add1~52_combout\ : std_logic;
SIGNAL \seconds|Add1~69_combout\ : std_logic;
SIGNAL \seconds|Add1~53\ : std_logic;
SIGNAL \seconds|Add1~54_combout\ : std_logic;
SIGNAL \seconds|Add1~68_combout\ : std_logic;
SIGNAL \seconds|Add1~55\ : std_logic;
SIGNAL \seconds|Add1~56_combout\ : std_logic;
SIGNAL \seconds|Add1~67_combout\ : std_logic;
SIGNAL \seconds|Add1~57\ : std_logic;
SIGNAL \seconds|Add1~58_combout\ : std_logic;
SIGNAL \seconds|Add1~66_combout\ : std_logic;
SIGNAL \seconds|Add1~59\ : std_logic;
SIGNAL \seconds|Add1~60_combout\ : std_logic;
SIGNAL \seconds|Add1~65_combout\ : std_logic;
SIGNAL \seconds|Add1~61\ : std_logic;
SIGNAL \seconds|Add1~62_combout\ : std_logic;
SIGNAL \seconds|Add1~64_combout\ : std_logic;
SIGNAL \seconds|Equal2~0_combout\ : std_logic;
SIGNAL \seconds|Equal2~1_combout\ : std_logic;
SIGNAL \seconds|Equal2~2_combout\ : std_logic;
SIGNAL \seconds|Equal2~4_combout\ : std_logic;
SIGNAL \seconds|Equal2~9_combout\ : std_logic;
SIGNAL \seconds|temp0[0]~33_combout\ : std_logic;
SIGNAL \seconds|Add0~0_combout\ : std_logic;
SIGNAL \seconds|Add0~8_combout\ : std_logic;
SIGNAL \seconds|temp1[0]~3_combout\ : std_logic;
SIGNAL \seconds|temp1[0]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp1[0]~2_combout\ : std_logic;
SIGNAL \seconds|temp1[2]~9_combout\ : std_logic;
SIGNAL \seconds|temp1[1]~5_combout\ : std_logic;
SIGNAL \seconds|Add0~1\ : std_logic;
SIGNAL \seconds|Add0~2_combout\ : std_logic;
SIGNAL \seconds|Add0~9_combout\ : std_logic;
SIGNAL \seconds|temp1[1]~7_combout\ : std_logic;
SIGNAL \seconds|temp1[1]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp1[1]~6_combout\ : std_logic;
SIGNAL \seconds|Add0~3\ : std_logic;
SIGNAL \seconds|Add0~4_combout\ : std_logic;
SIGNAL \seconds|Add0~10_combout\ : std_logic;
SIGNAL \seconds|temp1[2]~11_combout\ : std_logic;
SIGNAL \seconds|temp1[2]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp1[2]~10_combout\ : std_logic;
SIGNAL \seconds|Add0~5\ : std_logic;
SIGNAL \seconds|Add0~6_combout\ : std_logic;
SIGNAL \seconds|temp1[3]~15_combout\ : std_logic;
SIGNAL \seconds|process_0~9_combout\ : std_logic;
SIGNAL \seconds|Add0~7\ : std_logic;
SIGNAL \seconds|Add0~11_combout\ : std_logic;
SIGNAL \seconds|temp1[4]~43_combout\ : std_logic;
SIGNAL \seconds|Add0~12\ : std_logic;
SIGNAL \seconds|Add0~13_combout\ : std_logic;
SIGNAL \seconds|temp1[5]~42_combout\ : std_logic;
SIGNAL \seconds|Add0~14\ : std_logic;
SIGNAL \seconds|Add0~15_combout\ : std_logic;
SIGNAL \seconds|temp1[6]~41_combout\ : std_logic;
SIGNAL \seconds|Add0~16\ : std_logic;
SIGNAL \seconds|Add0~17_combout\ : std_logic;
SIGNAL \seconds|temp1[7]~40_combout\ : std_logic;
SIGNAL \seconds|process_0~8_combout\ : std_logic;
SIGNAL \seconds|Add0~18\ : std_logic;
SIGNAL \seconds|Add0~19_combout\ : std_logic;
SIGNAL \seconds|temp1[8]~39_combout\ : std_logic;
SIGNAL \seconds|Add0~20\ : std_logic;
SIGNAL \seconds|Add0~21_combout\ : std_logic;
SIGNAL \seconds|temp1[9]~38_combout\ : std_logic;
SIGNAL \seconds|Add0~22\ : std_logic;
SIGNAL \seconds|Add0~23_combout\ : std_logic;
SIGNAL \seconds|temp1[10]~37_combout\ : std_logic;
SIGNAL \seconds|Add0~24\ : std_logic;
SIGNAL \seconds|Add0~25_combout\ : std_logic;
SIGNAL \seconds|temp1[11]~36_combout\ : std_logic;
SIGNAL \seconds|process_0~7_combout\ : std_logic;
SIGNAL \seconds|Add0~26\ : std_logic;
SIGNAL \seconds|Add0~27_combout\ : std_logic;
SIGNAL \seconds|temp1[12]~35_combout\ : std_logic;
SIGNAL \seconds|Add0~28\ : std_logic;
SIGNAL \seconds|Add0~29_combout\ : std_logic;
SIGNAL \seconds|temp1[13]~34_combout\ : std_logic;
SIGNAL \seconds|Add0~30\ : std_logic;
SIGNAL \seconds|Add0~31_combout\ : std_logic;
SIGNAL \seconds|temp1[14]~33_combout\ : std_logic;
SIGNAL \seconds|Add0~32\ : std_logic;
SIGNAL \seconds|Add0~33_combout\ : std_logic;
SIGNAL \seconds|temp1[15]~32_combout\ : std_logic;
SIGNAL \seconds|process_0~6_combout\ : std_logic;
SIGNAL \seconds|process_0~10_combout\ : std_logic;
SIGNAL \seconds|Add0~34\ : std_logic;
SIGNAL \seconds|Add0~35_combout\ : std_logic;
SIGNAL \seconds|temp1[16]~31_combout\ : std_logic;
SIGNAL \seconds|Add0~36\ : std_logic;
SIGNAL \seconds|Add0~37_combout\ : std_logic;
SIGNAL \seconds|temp1[17]~30_combout\ : std_logic;
SIGNAL \seconds|Add0~38\ : std_logic;
SIGNAL \seconds|Add0~39_combout\ : std_logic;
SIGNAL \seconds|temp1[18]~29_combout\ : std_logic;
SIGNAL \seconds|Add0~40\ : std_logic;
SIGNAL \seconds|Add0~41_combout\ : std_logic;
SIGNAL \seconds|temp1[19]~28_combout\ : std_logic;
SIGNAL \seconds|Add0~42\ : std_logic;
SIGNAL \seconds|Add0~43_combout\ : std_logic;
SIGNAL \seconds|temp1[20]~27_combout\ : std_logic;
SIGNAL \seconds|Add0~44\ : std_logic;
SIGNAL \seconds|Add0~45_combout\ : std_logic;
SIGNAL \seconds|temp1[21]~26_combout\ : std_logic;
SIGNAL \seconds|Add0~46\ : std_logic;
SIGNAL \seconds|Add0~47_combout\ : std_logic;
SIGNAL \seconds|temp1[22]~25_combout\ : std_logic;
SIGNAL \seconds|Add0~48\ : std_logic;
SIGNAL \seconds|Add0~49_combout\ : std_logic;
SIGNAL \seconds|temp1[23]~24_combout\ : std_logic;
SIGNAL \seconds|process_0~3_combout\ : std_logic;
SIGNAL \seconds|Add0~50\ : std_logic;
SIGNAL \seconds|Add0~51_combout\ : std_logic;
SIGNAL \seconds|temp1[24]~23_combout\ : std_logic;
SIGNAL \seconds|Add0~52\ : std_logic;
SIGNAL \seconds|Add0~53_combout\ : std_logic;
SIGNAL \seconds|temp1[25]~22_combout\ : std_logic;
SIGNAL \seconds|Add0~54\ : std_logic;
SIGNAL \seconds|Add0~55_combout\ : std_logic;
SIGNAL \seconds|temp1[26]~21_combout\ : std_logic;
SIGNAL \seconds|Add0~56\ : std_logic;
SIGNAL \seconds|Add0~57_combout\ : std_logic;
SIGNAL \seconds|temp1[27]~20_combout\ : std_logic;
SIGNAL \seconds|process_0~2_combout\ : std_logic;
SIGNAL \seconds|process_0~4_combout\ : std_logic;
SIGNAL \seconds|Add0~58\ : std_logic;
SIGNAL \seconds|Add0~59_combout\ : std_logic;
SIGNAL \seconds|temp1[28]~19_combout\ : std_logic;
SIGNAL \seconds|Add0~60\ : std_logic;
SIGNAL \seconds|Add0~61_combout\ : std_logic;
SIGNAL \seconds|temp1[29]~18_combout\ : std_logic;
SIGNAL \seconds|Add0~62\ : std_logic;
SIGNAL \seconds|Add0~63_combout\ : std_logic;
SIGNAL \seconds|temp1[30]~17_combout\ : std_logic;
SIGNAL \seconds|Add0~64\ : std_logic;
SIGNAL \seconds|Add0~65_combout\ : std_logic;
SIGNAL \seconds|temp1[31]~16_combout\ : std_logic;
SIGNAL \seconds|process_0~1_combout\ : std_logic;
SIGNAL \seconds|process_0~5_combout\ : std_logic;
SIGNAL \seconds|process_0~0_combout\ : std_logic;
SIGNAL \seconds|process_0~11_combout\ : std_logic;
SIGNAL \seconds|temp0[1]~7_combout\ : std_logic;
SIGNAL \seconds|temp0[1]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[1]~6_combout\ : std_logic;
SIGNAL \seconds|Equal2~10_combout\ : std_logic;
SIGNAL \seconds|temp0[0]~1_combout\ : std_logic;
SIGNAL \seconds|temp0[0]~3_combout\ : std_logic;
SIGNAL \seconds|temp0[0]~_emulated_q\ : std_logic;
SIGNAL \seconds|temp0[0]~2_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|Mux0~0_combout\ : std_logic;
SIGNAL \Dmin[0]~input_o\ : std_logic;
SIGNAL \seconds|FWD~q\ : std_logic;
SIGNAL \seconds|FWD~clkctrl_outclk\ : std_logic;
SIGNAL \minutes|Add1~1\ : std_logic;
SIGNAL \minutes|Add1~2_combout\ : std_logic;
SIGNAL \Dmin[5]~input_o\ : std_logic;
SIGNAL \Dmin[4]~input_o\ : std_logic;
SIGNAL \Dmin[3]~input_o\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Dmin[2]~input_o\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Dmin[1]~input_o\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \minutes|temp0[1]~5_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \minutes|temp0[2]~9_combout\ : std_logic;
SIGNAL \minutes|Add1~3\ : std_logic;
SIGNAL \minutes|Add1~4_combout\ : std_logic;
SIGNAL \minutes|temp0[2]~11_combout\ : std_logic;
SIGNAL \minutes|temp0[2]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[2]~10_combout\ : std_logic;
SIGNAL \minutes|Add1~5\ : std_logic;
SIGNAL \minutes|Add1~6_combout\ : std_logic;
SIGNAL \minutes|temp0[3]~13_combout\ : std_logic;
SIGNAL \minutes|temp0[3]~15_combout\ : std_logic;
SIGNAL \minutes|temp0[3]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[3]~14_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ : std_logic;
SIGNAL \minutes|temp0[5]~17_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ : std_logic;
SIGNAL \minutes|temp0[4]~21_combout\ : std_logic;
SIGNAL \minutes|Add1~7\ : std_logic;
SIGNAL \minutes|Add1~8_combout\ : std_logic;
SIGNAL \minutes|temp0[4]~23_combout\ : std_logic;
SIGNAL \minutes|temp0[4]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[4]~22_combout\ : std_logic;
SIGNAL \minutes|Add1~9\ : std_logic;
SIGNAL \minutes|Add1~10_combout\ : std_logic;
SIGNAL \minutes|temp0[5]~19_combout\ : std_logic;
SIGNAL \minutes|temp0[5]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[5]~18_combout\ : std_logic;
SIGNAL \minutes|Add1~11\ : std_logic;
SIGNAL \minutes|Add1~12_combout\ : std_logic;
SIGNAL \minutes|Add1~89_combout\ : std_logic;
SIGNAL \minutes|Add1~13\ : std_logic;
SIGNAL \minutes|Add1~14_combout\ : std_logic;
SIGNAL \minutes|Add1~88_combout\ : std_logic;
SIGNAL \minutes|Add1~15\ : std_logic;
SIGNAL \minutes|Add1~16_combout\ : std_logic;
SIGNAL \minutes|Add1~87_combout\ : std_logic;
SIGNAL \minutes|Add1~17\ : std_logic;
SIGNAL \minutes|Add1~18_combout\ : std_logic;
SIGNAL \minutes|Add1~86_combout\ : std_logic;
SIGNAL \minutes|Add1~19\ : std_logic;
SIGNAL \minutes|Add1~20_combout\ : std_logic;
SIGNAL \minutes|Add1~85_combout\ : std_logic;
SIGNAL \minutes|Add1~21\ : std_logic;
SIGNAL \minutes|Add1~22_combout\ : std_logic;
SIGNAL \minutes|Add1~84_combout\ : std_logic;
SIGNAL \minutes|Add1~23\ : std_logic;
SIGNAL \minutes|Add1~24_combout\ : std_logic;
SIGNAL \minutes|Add1~83_combout\ : std_logic;
SIGNAL \minutes|Add1~25\ : std_logic;
SIGNAL \minutes|Add1~26_combout\ : std_logic;
SIGNAL \minutes|Add1~82_combout\ : std_logic;
SIGNAL \minutes|Add1~27\ : std_logic;
SIGNAL \minutes|Add1~28_combout\ : std_logic;
SIGNAL \minutes|Add1~81_combout\ : std_logic;
SIGNAL \minutes|Add1~29\ : std_logic;
SIGNAL \minutes|Add1~30_combout\ : std_logic;
SIGNAL \minutes|Add1~80_combout\ : std_logic;
SIGNAL \minutes|Equal2~5_combout\ : std_logic;
SIGNAL \minutes|Equal2~6_combout\ : std_logic;
SIGNAL \minutes|Equal2~7_combout\ : std_logic;
SIGNAL \minutes|Equal2~8_combout\ : std_logic;
SIGNAL \minutes|Add1~31\ : std_logic;
SIGNAL \minutes|Add1~32_combout\ : std_logic;
SIGNAL \minutes|Add1~79_combout\ : std_logic;
SIGNAL \minutes|Add1~33\ : std_logic;
SIGNAL \minutes|Add1~34_combout\ : std_logic;
SIGNAL \minutes|Add1~78_combout\ : std_logic;
SIGNAL \minutes|Add1~35\ : std_logic;
SIGNAL \minutes|Add1~36_combout\ : std_logic;
SIGNAL \minutes|Add1~77_combout\ : std_logic;
SIGNAL \minutes|Add1~37\ : std_logic;
SIGNAL \minutes|Add1~38_combout\ : std_logic;
SIGNAL \minutes|Add1~76_combout\ : std_logic;
SIGNAL \minutes|Add1~39\ : std_logic;
SIGNAL \minutes|Add1~40_combout\ : std_logic;
SIGNAL \minutes|Add1~75_combout\ : std_logic;
SIGNAL \minutes|Add1~41\ : std_logic;
SIGNAL \minutes|Add1~42_combout\ : std_logic;
SIGNAL \minutes|Add1~74_combout\ : std_logic;
SIGNAL \minutes|Add1~43\ : std_logic;
SIGNAL \minutes|Add1~44_combout\ : std_logic;
SIGNAL \minutes|Add1~73_combout\ : std_logic;
SIGNAL \minutes|Add1~45\ : std_logic;
SIGNAL \minutes|Add1~46_combout\ : std_logic;
SIGNAL \minutes|Add1~72_combout\ : std_logic;
SIGNAL \minutes|Equal2~2_combout\ : std_logic;
SIGNAL \minutes|Add1~47\ : std_logic;
SIGNAL \minutes|Add1~48_combout\ : std_logic;
SIGNAL \minutes|Add1~71_combout\ : std_logic;
SIGNAL \minutes|Add1~49\ : std_logic;
SIGNAL \minutes|Add1~50_combout\ : std_logic;
SIGNAL \minutes|Add1~70_combout\ : std_logic;
SIGNAL \minutes|Add1~51\ : std_logic;
SIGNAL \minutes|Add1~52_combout\ : std_logic;
SIGNAL \minutes|Add1~69_combout\ : std_logic;
SIGNAL \minutes|Add1~53\ : std_logic;
SIGNAL \minutes|Add1~54_combout\ : std_logic;
SIGNAL \minutes|Add1~68_combout\ : std_logic;
SIGNAL \minutes|Add1~55\ : std_logic;
SIGNAL \minutes|Add1~56_combout\ : std_logic;
SIGNAL \minutes|Add1~67_combout\ : std_logic;
SIGNAL \minutes|Add1~57\ : std_logic;
SIGNAL \minutes|Add1~58_combout\ : std_logic;
SIGNAL \minutes|Add1~66_combout\ : std_logic;
SIGNAL \minutes|Add1~59\ : std_logic;
SIGNAL \minutes|Add1~60_combout\ : std_logic;
SIGNAL \minutes|Add1~65_combout\ : std_logic;
SIGNAL \minutes|Add1~61\ : std_logic;
SIGNAL \minutes|Add1~62_combout\ : std_logic;
SIGNAL \minutes|Add1~64_combout\ : std_logic;
SIGNAL \minutes|Equal2~0_combout\ : std_logic;
SIGNAL \minutes|Equal2~3_combout\ : std_logic;
SIGNAL \minutes|Equal2~1_combout\ : std_logic;
SIGNAL \minutes|Equal2~4_combout\ : std_logic;
SIGNAL \minutes|Equal2~9_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \minutes|temp1[1]~5_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \minutes|temp1[0]~1_combout\ : std_logic;
SIGNAL \minutes|Add0~0_combout\ : std_logic;
SIGNAL \minutes|Add0~8_combout\ : std_logic;
SIGNAL \minutes|temp0[2]~33_combout\ : std_logic;
SIGNAL \minutes|temp1[0]~3_combout\ : std_logic;
SIGNAL \minutes|temp1[0]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp1[0]~2_combout\ : std_logic;
SIGNAL \minutes|Add0~1\ : std_logic;
SIGNAL \minutes|Add0~2_combout\ : std_logic;
SIGNAL \minutes|Add0~9_combout\ : std_logic;
SIGNAL \minutes|temp1[1]~7_combout\ : std_logic;
SIGNAL \minutes|temp1[1]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp1[1]~6_combout\ : std_logic;
SIGNAL \minutes|Add0~3\ : std_logic;
SIGNAL \minutes|Add0~4_combout\ : std_logic;
SIGNAL \minutes|Add0~10_combout\ : std_logic;
SIGNAL \minutes|temp1[2]~9_combout\ : std_logic;
SIGNAL \minutes|temp1[2]~11_combout\ : std_logic;
SIGNAL \minutes|temp1[2]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp1[2]~10_combout\ : std_logic;
SIGNAL \minutes|Add0~5\ : std_logic;
SIGNAL \minutes|Add0~6_combout\ : std_logic;
SIGNAL \minutes|temp1[3]~15_combout\ : std_logic;
SIGNAL \minutes|process_0~9_combout\ : std_logic;
SIGNAL \minutes|Add0~7\ : std_logic;
SIGNAL \minutes|Add0~11_combout\ : std_logic;
SIGNAL \minutes|temp1[4]~43_combout\ : std_logic;
SIGNAL \minutes|Add0~12\ : std_logic;
SIGNAL \minutes|Add0~13_combout\ : std_logic;
SIGNAL \minutes|temp1[5]~42_combout\ : std_logic;
SIGNAL \minutes|Add0~14\ : std_logic;
SIGNAL \minutes|Add0~15_combout\ : std_logic;
SIGNAL \minutes|temp1[6]~41_combout\ : std_logic;
SIGNAL \minutes|Add0~16\ : std_logic;
SIGNAL \minutes|Add0~17_combout\ : std_logic;
SIGNAL \minutes|temp1[7]~40_combout\ : std_logic;
SIGNAL \minutes|process_0~8_combout\ : std_logic;
SIGNAL \minutes|Add0~18\ : std_logic;
SIGNAL \minutes|Add0~19_combout\ : std_logic;
SIGNAL \minutes|temp1[8]~39_combout\ : std_logic;
SIGNAL \minutes|Add0~20\ : std_logic;
SIGNAL \minutes|Add0~21_combout\ : std_logic;
SIGNAL \minutes|temp1[9]~38_combout\ : std_logic;
SIGNAL \minutes|Add0~22\ : std_logic;
SIGNAL \minutes|Add0~23_combout\ : std_logic;
SIGNAL \minutes|temp1[10]~37_combout\ : std_logic;
SIGNAL \minutes|Add0~24\ : std_logic;
SIGNAL \minutes|Add0~25_combout\ : std_logic;
SIGNAL \minutes|temp1[11]~36_combout\ : std_logic;
SIGNAL \minutes|process_0~7_combout\ : std_logic;
SIGNAL \minutes|Add0~26\ : std_logic;
SIGNAL \minutes|Add0~27_combout\ : std_logic;
SIGNAL \minutes|temp1[12]~35_combout\ : std_logic;
SIGNAL \minutes|Add0~28\ : std_logic;
SIGNAL \minutes|Add0~29_combout\ : std_logic;
SIGNAL \minutes|temp1[13]~34_combout\ : std_logic;
SIGNAL \minutes|Add0~30\ : std_logic;
SIGNAL \minutes|Add0~31_combout\ : std_logic;
SIGNAL \minutes|temp1[14]~33_combout\ : std_logic;
SIGNAL \minutes|Add0~32\ : std_logic;
SIGNAL \minutes|Add0~33_combout\ : std_logic;
SIGNAL \minutes|temp1[15]~32_combout\ : std_logic;
SIGNAL \minutes|process_0~6_combout\ : std_logic;
SIGNAL \minutes|process_0~10_combout\ : std_logic;
SIGNAL \minutes|process_0~0_combout\ : std_logic;
SIGNAL \minutes|Add0~34\ : std_logic;
SIGNAL \minutes|Add0~35_combout\ : std_logic;
SIGNAL \minutes|temp1[16]~31_combout\ : std_logic;
SIGNAL \minutes|Add0~36\ : std_logic;
SIGNAL \minutes|Add0~37_combout\ : std_logic;
SIGNAL \minutes|temp1[17]~30_combout\ : std_logic;
SIGNAL \minutes|Add0~38\ : std_logic;
SIGNAL \minutes|Add0~39_combout\ : std_logic;
SIGNAL \minutes|temp1[18]~29_combout\ : std_logic;
SIGNAL \minutes|Add0~40\ : std_logic;
SIGNAL \minutes|Add0~41_combout\ : std_logic;
SIGNAL \minutes|temp1[19]~28_combout\ : std_logic;
SIGNAL \minutes|Add0~42\ : std_logic;
SIGNAL \minutes|Add0~43_combout\ : std_logic;
SIGNAL \minutes|temp1[20]~27_combout\ : std_logic;
SIGNAL \minutes|Add0~44\ : std_logic;
SIGNAL \minutes|Add0~45_combout\ : std_logic;
SIGNAL \minutes|temp1[21]~26_combout\ : std_logic;
SIGNAL \minutes|Add0~46\ : std_logic;
SIGNAL \minutes|Add0~47_combout\ : std_logic;
SIGNAL \minutes|temp1[22]~25_combout\ : std_logic;
SIGNAL \minutes|Add0~48\ : std_logic;
SIGNAL \minutes|Add0~49_combout\ : std_logic;
SIGNAL \minutes|temp1[23]~24_combout\ : std_logic;
SIGNAL \minutes|process_0~3_combout\ : std_logic;
SIGNAL \minutes|Add0~50\ : std_logic;
SIGNAL \minutes|Add0~51_combout\ : std_logic;
SIGNAL \minutes|temp1[24]~23_combout\ : std_logic;
SIGNAL \minutes|Add0~52\ : std_logic;
SIGNAL \minutes|Add0~53_combout\ : std_logic;
SIGNAL \minutes|temp1[25]~22_combout\ : std_logic;
SIGNAL \minutes|Add0~54\ : std_logic;
SIGNAL \minutes|Add0~55_combout\ : std_logic;
SIGNAL \minutes|temp1[26]~21_combout\ : std_logic;
SIGNAL \minutes|Add0~56\ : std_logic;
SIGNAL \minutes|Add0~57_combout\ : std_logic;
SIGNAL \minutes|temp1[27]~20_combout\ : std_logic;
SIGNAL \minutes|Add0~58\ : std_logic;
SIGNAL \minutes|Add0~59_combout\ : std_logic;
SIGNAL \minutes|temp1[28]~19_combout\ : std_logic;
SIGNAL \minutes|Add0~60\ : std_logic;
SIGNAL \minutes|Add0~61_combout\ : std_logic;
SIGNAL \minutes|temp1[29]~18_combout\ : std_logic;
SIGNAL \minutes|Add0~62\ : std_logic;
SIGNAL \minutes|Add0~63_combout\ : std_logic;
SIGNAL \minutes|temp1[30]~17_combout\ : std_logic;
SIGNAL \minutes|Add0~64\ : std_logic;
SIGNAL \minutes|Add0~65_combout\ : std_logic;
SIGNAL \minutes|temp1[31]~16_combout\ : std_logic;
SIGNAL \minutes|process_0~1_combout\ : std_logic;
SIGNAL \minutes|process_0~4_combout\ : std_logic;
SIGNAL \minutes|process_0~2_combout\ : std_logic;
SIGNAL \minutes|process_0~5_combout\ : std_logic;
SIGNAL \minutes|process_0~11_combout\ : std_logic;
SIGNAL \minutes|temp0[1]~7_combout\ : std_logic;
SIGNAL \minutes|temp0[1]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[1]~6_combout\ : std_logic;
SIGNAL \minutes|Equal2~10_combout\ : std_logic;
SIGNAL \minutes|temp0[0]~1_combout\ : std_logic;
SIGNAL \minutes|Add1~0_combout\ : std_logic;
SIGNAL \minutes|temp0[0]~3_combout\ : std_logic;
SIGNAL \minutes|temp0[0]~_emulated_q\ : std_logic;
SIGNAL \minutes|temp0[0]~2_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|Mux0~0_combout\ : std_logic;
SIGNAL \minutes|FWD~q\ : std_logic;
SIGNAL \minutes|FWD~clkctrl_outclk\ : std_logic;
SIGNAL \hours|temp0[0]~7_combout\ : std_logic;
SIGNAL \hours|temp0~2_combout\ : std_logic;
SIGNAL \hours|Add1~0_combout\ : std_logic;
SIGNAL \hours|temp0~5_combout\ : std_logic;
SIGNAL \hours|process_0~0_combout\ : std_logic;
SIGNAL \hours|temp1[0]~0_combout\ : std_logic;
SIGNAL \hours|temp1[1]~1_combout\ : std_logic;
SIGNAL \hours|Add0~0_combout\ : std_logic;
SIGNAL \hours|temp1[2]~2_combout\ : std_logic;
SIGNAL \hours|Add0~1_combout\ : std_logic;
SIGNAL \hours|temp1[3]~3_combout\ : std_logic;
SIGNAL \hours|process_0~1_combout\ : std_logic;
SIGNAL \hours|temp0[0]~4_combout\ : std_logic;
SIGNAL \hours|temp0~6_combout\ : std_logic;
SIGNAL \hours|Equal2~0_combout\ : std_logic;
SIGNAL \hours|temp0~3_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux6~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux5~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux2~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sevenseg6_inst|Mux0~0_combout\ : std_logic;
SIGNAL \seconds|temp1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLK1|prescaler\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \minutes|temp1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hours|temp0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hours|temp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seconds|temp0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \minutes|temp0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \minutes|ALT_INV_FWD~clkctrl_outclk\ : std_logic;
SIGNAL \seconds|ALT_INV_FWD~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_INIT~input_o\ : std_logic;
SIGNAL \sevenseg6_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg5_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg4_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg3_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg2_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \sevenseg1_inst|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_INIT <= INIT;
ww_Dsec <= Dsec;
ww_Dmin <= Dmin;
SEVENSEG1 <= ww_SEVENSEG1;
SEVENSEG2 <= ww_SEVENSEG2;
SEVENSEG3 <= ww_SEVENSEG3;
SEVENSEG4 <= ww_SEVENSEG4;
SEVENSEG5 <= ww_SEVENSEG5;
SEVENSEG6 <= ww_SEVENSEG6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\seconds|FWD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \seconds|FWD~q\);

\minutes|FWD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \minutes|FWD~q\);

\CLK1|clk_2Hz_i~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK1|clk_2Hz_i~q\);
\minutes|ALT_INV_FWD~clkctrl_outclk\ <= NOT \minutes|FWD~clkctrl_outclk\;
\seconds|ALT_INV_FWD~clkctrl_outclk\ <= NOT \seconds|FWD~clkctrl_outclk\;
\ALT_INV_INIT~input_o\ <= NOT \INIT~input_o\;
\sevenseg6_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg6_inst|Mux0~0_combout\;
\sevenseg5_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg5_inst|Mux0~0_combout\;
\sevenseg4_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg4_inst|Mux0~0_combout\;
\sevenseg3_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg3_inst|Mux0~0_combout\;
\sevenseg2_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg2_inst|Mux0~0_combout\;
\sevenseg1_inst|ALT_INV_Mux0~0_combout\ <= NOT \sevenseg1_inst|Mux0~0_combout\;

-- Location: IOOBUF_X115_Y17_N9
\SEVENSEG1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\SEVENSEG1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\SEVENSEG1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\SEVENSEG1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\SEVENSEG1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\SEVENSEG1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\SEVENSEG1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG1[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\SEVENSEG2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\SEVENSEG2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\SEVENSEG2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\SEVENSEG2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\SEVENSEG2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\SEVENSEG2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\SEVENSEG2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\SEVENSEG3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\SEVENSEG3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\SEVENSEG3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\SEVENSEG3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\SEVENSEG3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\SEVENSEG3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\SEVENSEG3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG3[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\SEVENSEG4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\SEVENSEG4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\SEVENSEG4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\SEVENSEG4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\SEVENSEG4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\SEVENSEG4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\SEVENSEG4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG4[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\SEVENSEG5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\SEVENSEG5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\SEVENSEG5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\SEVENSEG5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\SEVENSEG5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\SEVENSEG5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\SEVENSEG5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG5[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\SEVENSEG6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\SEVENSEG6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\SEVENSEG6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\SEVENSEG6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\SEVENSEG6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\SEVENSEG6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\SEVENSEG6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg6_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEVENSEG6[6]~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\Dsec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(0),
	o => \Dsec[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\INIT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INIT,
	o => \INIT~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X114_Y18_N8
\CLK1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~0_combout\ = \CLK1|prescaler\(0) $ (VCC)
-- \CLK1|Add0~1\ = CARRY(\CLK1|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(0),
	datad => VCC,
	combout => \CLK1|Add0~0_combout\,
	cout => \CLK1|Add0~1\);

-- Location: LCCOMB_X114_Y18_N10
\CLK1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~2_combout\ = (\CLK1|prescaler\(1) & (!\CLK1|Add0~1\)) # (!\CLK1|prescaler\(1) & ((\CLK1|Add0~1\) # (GND)))
-- \CLK1|Add0~3\ = CARRY((!\CLK1|Add0~1\) # (!\CLK1|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(1),
	datad => VCC,
	cin => \CLK1|Add0~1\,
	combout => \CLK1|Add0~2_combout\,
	cout => \CLK1|Add0~3\);

-- Location: LCCOMB_X114_Y18_N12
\CLK1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~4_combout\ = (\CLK1|prescaler\(2) & (\CLK1|Add0~3\ $ (GND))) # (!\CLK1|prescaler\(2) & (!\CLK1|Add0~3\ & VCC))
-- \CLK1|Add0~5\ = CARRY((\CLK1|prescaler\(2) & !\CLK1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(2),
	datad => VCC,
	cin => \CLK1|Add0~3\,
	combout => \CLK1|Add0~4_combout\,
	cout => \CLK1|Add0~5\);

-- Location: FF_X114_Y18_N13
\CLK1|prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~4_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(2));

-- Location: LCCOMB_X114_Y18_N14
\CLK1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~6_combout\ = (\CLK1|prescaler\(3) & (!\CLK1|Add0~5\)) # (!\CLK1|prescaler\(3) & ((\CLK1|Add0~5\) # (GND)))
-- \CLK1|Add0~7\ = CARRY((!\CLK1|Add0~5\) # (!\CLK1|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(3),
	datad => VCC,
	cin => \CLK1|Add0~5\,
	combout => \CLK1|Add0~6_combout\,
	cout => \CLK1|Add0~7\);

-- Location: LCCOMB_X114_Y18_N2
\CLK1|prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~5_combout\ = (\CLK1|Add0~6_combout\ & (((!\CLK1|Equal0~4_combout\) # (!\CLK1|Equal0~5_combout\)) # (!\CLK1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~6_combout\,
	datab => \CLK1|Add0~6_combout\,
	datac => \CLK1|Equal0~5_combout\,
	datad => \CLK1|Equal0~4_combout\,
	combout => \CLK1|prescaler~5_combout\);

-- Location: FF_X114_Y18_N3
\CLK1|prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~5_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(3));

-- Location: LCCOMB_X114_Y18_N16
\CLK1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~8_combout\ = (\CLK1|prescaler\(4) & (\CLK1|Add0~7\ $ (GND))) # (!\CLK1|prescaler\(4) & (!\CLK1|Add0~7\ & VCC))
-- \CLK1|Add0~9\ = CARRY((\CLK1|prescaler\(4) & !\CLK1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(4),
	datad => VCC,
	cin => \CLK1|Add0~7\,
	combout => \CLK1|Add0~8_combout\,
	cout => \CLK1|Add0~9\);

-- Location: FF_X114_Y18_N17
\CLK1|prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~8_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(4));

-- Location: LCCOMB_X114_Y18_N18
\CLK1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~10_combout\ = (\CLK1|prescaler\(5) & (!\CLK1|Add0~9\)) # (!\CLK1|prescaler\(5) & ((\CLK1|Add0~9\) # (GND)))
-- \CLK1|Add0~11\ = CARRY((!\CLK1|Add0~9\) # (!\CLK1|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(5),
	datad => VCC,
	cin => \CLK1|Add0~9\,
	combout => \CLK1|Add0~10_combout\,
	cout => \CLK1|Add0~11\);

-- Location: FF_X114_Y18_N19
\CLK1|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~10_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(5));

-- Location: LCCOMB_X114_Y18_N20
\CLK1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~12_combout\ = (\CLK1|prescaler\(6) & (\CLK1|Add0~11\ $ (GND))) # (!\CLK1|prescaler\(6) & (!\CLK1|Add0~11\ & VCC))
-- \CLK1|Add0~13\ = CARRY((\CLK1|prescaler\(6) & !\CLK1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(6),
	datad => VCC,
	cin => \CLK1|Add0~11\,
	combout => \CLK1|Add0~12_combout\,
	cout => \CLK1|Add0~13\);

-- Location: FF_X114_Y18_N21
\CLK1|prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~12_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(6));

-- Location: LCCOMB_X114_Y18_N22
\CLK1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~14_combout\ = (\CLK1|prescaler\(7) & (!\CLK1|Add0~13\)) # (!\CLK1|prescaler\(7) & ((\CLK1|Add0~13\) # (GND)))
-- \CLK1|Add0~15\ = CARRY((!\CLK1|Add0~13\) # (!\CLK1|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(7),
	datad => VCC,
	cin => \CLK1|Add0~13\,
	combout => \CLK1|Add0~14_combout\,
	cout => \CLK1|Add0~15\);

-- Location: LCCOMB_X113_Y18_N24
\CLK1|prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~4_combout\ = (\CLK1|Add0~14_combout\ & (((!\CLK1|Equal0~6_combout\) # (!\CLK1|Equal0~4_combout\)) # (!\CLK1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~5_combout\,
	datab => \CLK1|Equal0~4_combout\,
	datac => \CLK1|Equal0~6_combout\,
	datad => \CLK1|Add0~14_combout\,
	combout => \CLK1|prescaler~4_combout\);

-- Location: FF_X113_Y18_N25
\CLK1|prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~4_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(7));

-- Location: LCCOMB_X114_Y18_N24
\CLK1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~16_combout\ = (\CLK1|prescaler\(8) & (\CLK1|Add0~15\ $ (GND))) # (!\CLK1|prescaler\(8) & (!\CLK1|Add0~15\ & VCC))
-- \CLK1|Add0~17\ = CARRY((\CLK1|prescaler\(8) & !\CLK1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(8),
	datad => VCC,
	cin => \CLK1|Add0~15\,
	combout => \CLK1|Add0~16_combout\,
	cout => \CLK1|Add0~17\);

-- Location: LCCOMB_X114_Y18_N26
\CLK1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~18_combout\ = (\CLK1|prescaler\(9) & (!\CLK1|Add0~17\)) # (!\CLK1|prescaler\(9) & ((\CLK1|Add0~17\) # (GND)))
-- \CLK1|Add0~19\ = CARRY((!\CLK1|Add0~17\) # (!\CLK1|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(9),
	datad => VCC,
	cin => \CLK1|Add0~17\,
	combout => \CLK1|Add0~18_combout\,
	cout => \CLK1|Add0~19\);

-- Location: LCCOMB_X113_Y18_N14
\CLK1|prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~2_combout\ = (\CLK1|Add0~18_combout\ & (((!\CLK1|Equal0~6_combout\) # (!\CLK1|Equal0~4_combout\)) # (!\CLK1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~5_combout\,
	datab => \CLK1|Equal0~4_combout\,
	datac => \CLK1|Equal0~6_combout\,
	datad => \CLK1|Add0~18_combout\,
	combout => \CLK1|prescaler~2_combout\);

-- Location: FF_X113_Y18_N15
\CLK1|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~2_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(9));

-- Location: LCCOMB_X114_Y18_N28
\CLK1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~20_combout\ = (\CLK1|prescaler\(10) & (\CLK1|Add0~19\ $ (GND))) # (!\CLK1|prescaler\(10) & (!\CLK1|Add0~19\ & VCC))
-- \CLK1|Add0~21\ = CARRY((\CLK1|prescaler\(10) & !\CLK1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(10),
	datad => VCC,
	cin => \CLK1|Add0~19\,
	combout => \CLK1|Add0~20_combout\,
	cout => \CLK1|Add0~21\);

-- Location: FF_X114_Y18_N29
\CLK1|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~20_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(10));

-- Location: LCCOMB_X114_Y18_N30
\CLK1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~22_combout\ = (\CLK1|prescaler\(11) & (!\CLK1|Add0~21\)) # (!\CLK1|prescaler\(11) & ((\CLK1|Add0~21\) # (GND)))
-- \CLK1|Add0~23\ = CARRY((!\CLK1|Add0~21\) # (!\CLK1|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(11),
	datad => VCC,
	cin => \CLK1|Add0~21\,
	combout => \CLK1|Add0~22_combout\,
	cout => \CLK1|Add0~23\);

-- Location: FF_X114_Y18_N31
\CLK1|prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~22_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(11));

-- Location: LCCOMB_X114_Y17_N0
\CLK1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~24_combout\ = (\CLK1|prescaler\(12) & (\CLK1|Add0~23\ $ (GND))) # (!\CLK1|prescaler\(12) & (!\CLK1|Add0~23\ & VCC))
-- \CLK1|Add0~25\ = CARRY((\CLK1|prescaler\(12) & !\CLK1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(12),
	datad => VCC,
	cin => \CLK1|Add0~23\,
	combout => \CLK1|Add0~24_combout\,
	cout => \CLK1|Add0~25\);

-- Location: LCCOMB_X114_Y17_N30
\CLK1|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~1_combout\ = (\CLK1|Add0~24_combout\ & (((!\CLK1|Equal0~6_combout\) # (!\CLK1|Equal0~4_combout\)) # (!\CLK1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~5_combout\,
	datab => \CLK1|Add0~24_combout\,
	datac => \CLK1|Equal0~4_combout\,
	datad => \CLK1|Equal0~6_combout\,
	combout => \CLK1|prescaler~1_combout\);

-- Location: FF_X114_Y17_N31
\CLK1|prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~1_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(12));

-- Location: LCCOMB_X113_Y18_N22
\CLK1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~3_combout\ = (!\CLK1|prescaler\(11) & (\CLK1|prescaler\(9) & (!\CLK1|prescaler\(10) & \CLK1|prescaler\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(11),
	datab => \CLK1|prescaler\(9),
	datac => \CLK1|prescaler\(10),
	datad => \CLK1|prescaler\(12),
	combout => \CLK1|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y17_N2
\CLK1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~26_combout\ = (\CLK1|prescaler\(13) & (!\CLK1|Add0~25\)) # (!\CLK1|prescaler\(13) & ((\CLK1|Add0~25\) # (GND)))
-- \CLK1|Add0~27\ = CARRY((!\CLK1|Add0~25\) # (!\CLK1|prescaler\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(13),
	datad => VCC,
	cin => \CLK1|Add0~25\,
	combout => \CLK1|Add0~26_combout\,
	cout => \CLK1|Add0~27\);

-- Location: FF_X114_Y17_N3
\CLK1|prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~26_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(13));

-- Location: LCCOMB_X114_Y17_N4
\CLK1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~28_combout\ = (\CLK1|prescaler\(14) & (\CLK1|Add0~27\ $ (GND))) # (!\CLK1|prescaler\(14) & (!\CLK1|Add0~27\ & VCC))
-- \CLK1|Add0~29\ = CARRY((\CLK1|prescaler\(14) & !\CLK1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(14),
	datad => VCC,
	cin => \CLK1|Add0~27\,
	combout => \CLK1|Add0~28_combout\,
	cout => \CLK1|Add0~29\);

-- Location: FF_X114_Y17_N5
\CLK1|prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~28_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(14));

-- Location: LCCOMB_X114_Y17_N6
\CLK1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~30_combout\ = (\CLK1|prescaler\(15) & (!\CLK1|Add0~29\)) # (!\CLK1|prescaler\(15) & ((\CLK1|Add0~29\) # (GND)))
-- \CLK1|Add0~31\ = CARRY((!\CLK1|Add0~29\) # (!\CLK1|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(15),
	datad => VCC,
	cin => \CLK1|Add0~29\,
	combout => \CLK1|Add0~30_combout\,
	cout => \CLK1|Add0~31\);

-- Location: FF_X114_Y17_N7
\CLK1|prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~30_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(15));

-- Location: LCCOMB_X114_Y17_N8
\CLK1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~32_combout\ = (\CLK1|prescaler\(16) & (\CLK1|Add0~31\ $ (GND))) # (!\CLK1|prescaler\(16) & (!\CLK1|Add0~31\ & VCC))
-- \CLK1|Add0~33\ = CARRY((\CLK1|prescaler\(16) & !\CLK1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(16),
	datad => VCC,
	cin => \CLK1|Add0~31\,
	combout => \CLK1|Add0~32_combout\,
	cout => \CLK1|Add0~33\);

-- Location: FF_X114_Y17_N9
\CLK1|prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~32_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(16));

-- Location: LCCOMB_X114_Y17_N10
\CLK1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~34_combout\ = (\CLK1|prescaler\(17) & (!\CLK1|Add0~33\)) # (!\CLK1|prescaler\(17) & ((\CLK1|Add0~33\) # (GND)))
-- \CLK1|Add0~35\ = CARRY((!\CLK1|Add0~33\) # (!\CLK1|prescaler\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(17),
	datad => VCC,
	cin => \CLK1|Add0~33\,
	combout => \CLK1|Add0~34_combout\,
	cout => \CLK1|Add0~35\);

-- Location: FF_X114_Y17_N11
\CLK1|prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~34_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(17));

-- Location: LCCOMB_X114_Y17_N12
\CLK1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~36_combout\ = (\CLK1|prescaler\(18) & (\CLK1|Add0~35\ $ (GND))) # (!\CLK1|prescaler\(18) & (!\CLK1|Add0~35\ & VCC))
-- \CLK1|Add0~37\ = CARRY((\CLK1|prescaler\(18) & !\CLK1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(18),
	datad => VCC,
	cin => \CLK1|Add0~35\,
	combout => \CLK1|Add0~36_combout\,
	cout => \CLK1|Add0~37\);

-- Location: FF_X114_Y17_N13
\CLK1|prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~36_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(18));

-- Location: LCCOMB_X114_Y17_N14
\CLK1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~38_combout\ = (\CLK1|prescaler\(19) & (!\CLK1|Add0~37\)) # (!\CLK1|prescaler\(19) & ((\CLK1|Add0~37\) # (GND)))
-- \CLK1|Add0~39\ = CARRY((!\CLK1|Add0~37\) # (!\CLK1|prescaler\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(19),
	datad => VCC,
	cin => \CLK1|Add0~37\,
	combout => \CLK1|Add0~38_combout\,
	cout => \CLK1|Add0~39\);

-- Location: FF_X114_Y17_N15
\CLK1|prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~38_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(19));

-- Location: LCCOMB_X114_Y17_N16
\CLK1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~40_combout\ = (\CLK1|prescaler\(20) & (\CLK1|Add0~39\ $ (GND))) # (!\CLK1|prescaler\(20) & (!\CLK1|Add0~39\ & VCC))
-- \CLK1|Add0~41\ = CARRY((\CLK1|prescaler\(20) & !\CLK1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(20),
	datad => VCC,
	cin => \CLK1|Add0~39\,
	combout => \CLK1|Add0~40_combout\,
	cout => \CLK1|Add0~41\);

-- Location: FF_X114_Y17_N17
\CLK1|prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~40_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(20));

-- Location: LCCOMB_X114_Y17_N26
\CLK1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~1_combout\ = (!\CLK1|prescaler\(18) & (!\CLK1|prescaler\(20) & (!\CLK1|prescaler\(19) & !\CLK1|prescaler\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(18),
	datab => \CLK1|prescaler\(20),
	datac => \CLK1|prescaler\(19),
	datad => \CLK1|prescaler\(17),
	combout => \CLK1|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y17_N18
\CLK1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~42_combout\ = (\CLK1|prescaler\(21) & (!\CLK1|Add0~41\)) # (!\CLK1|prescaler\(21) & ((\CLK1|Add0~41\) # (GND)))
-- \CLK1|Add0~43\ = CARRY((!\CLK1|Add0~41\) # (!\CLK1|prescaler\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(21),
	datad => VCC,
	cin => \CLK1|Add0~41\,
	combout => \CLK1|Add0~42_combout\,
	cout => \CLK1|Add0~43\);

-- Location: FF_X114_Y17_N19
\CLK1|prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~42_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(21));

-- Location: LCCOMB_X114_Y17_N20
\CLK1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~44_combout\ = (\CLK1|prescaler\(22) & (\CLK1|Add0~43\ $ (GND))) # (!\CLK1|prescaler\(22) & (!\CLK1|Add0~43\ & VCC))
-- \CLK1|Add0~45\ = CARRY((\CLK1|prescaler\(22) & !\CLK1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK1|prescaler\(22),
	datad => VCC,
	cin => \CLK1|Add0~43\,
	combout => \CLK1|Add0~44_combout\,
	cout => \CLK1|Add0~45\);

-- Location: FF_X114_Y17_N21
\CLK1|prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~44_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(22));

-- Location: LCCOMB_X114_Y17_N22
\CLK1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Add0~46_combout\ = \CLK1|prescaler\(23) $ (\CLK1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(23),
	cin => \CLK1|Add0~45\,
	combout => \CLK1|Add0~46_combout\);

-- Location: FF_X114_Y17_N23
\CLK1|prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~46_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(23));

-- Location: LCCOMB_X114_Y17_N24
\CLK1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~0_combout\ = (!\CLK1|prescaler\(23) & (!\CLK1|prescaler\(22) & (!\CLK1|prescaler\(21) & !\CLK1|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(23),
	datab => \CLK1|prescaler\(22),
	datac => \CLK1|prescaler\(21),
	datad => \CLK1|prescaler\(0),
	combout => \CLK1|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N28
\CLK1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~2_combout\ = (!\CLK1|prescaler\(15) & (!\CLK1|prescaler\(14) & (!\CLK1|prescaler\(16) & !\CLK1|prescaler\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(15),
	datab => \CLK1|prescaler\(14),
	datac => \CLK1|prescaler\(16),
	datad => \CLK1|prescaler\(13),
	combout => \CLK1|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y18_N20
\CLK1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~4_combout\ = (\CLK1|Equal0~3_combout\ & (\CLK1|Equal0~1_combout\ & (\CLK1|Equal0~0_combout\ & \CLK1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~3_combout\,
	datab => \CLK1|Equal0~1_combout\,
	datac => \CLK1|Equal0~0_combout\,
	datad => \CLK1|Equal0~2_combout\,
	combout => \CLK1|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y18_N0
\CLK1|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~0_combout\ = (\CLK1|Add0~0_combout\ & (((!\CLK1|Equal0~4_combout\) # (!\CLK1|Equal0~5_combout\)) # (!\CLK1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~6_combout\,
	datab => \CLK1|Add0~0_combout\,
	datac => \CLK1|Equal0~5_combout\,
	datad => \CLK1|Equal0~4_combout\,
	combout => \CLK1|prescaler~0_combout\);

-- Location: FF_X114_Y18_N1
\CLK1|prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~0_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(0));

-- Location: FF_X114_Y18_N11
\CLK1|prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|Add0~2_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(1));

-- Location: LCCOMB_X113_Y18_N30
\CLK1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~6_combout\ = (!\CLK1|prescaler\(1) & (\CLK1|prescaler\(3) & (!\CLK1|prescaler\(2) & !\CLK1|prescaler\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(1),
	datab => \CLK1|prescaler\(3),
	datac => \CLK1|prescaler\(2),
	datad => \CLK1|prescaler\(4),
	combout => \CLK1|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y18_N6
\CLK1|prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|prescaler~3_combout\ = (\CLK1|Add0~16_combout\ & (((!\CLK1|Equal0~4_combout\) # (!\CLK1|Equal0~5_combout\)) # (!\CLK1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~6_combout\,
	datab => \CLK1|Add0~16_combout\,
	datac => \CLK1|Equal0~5_combout\,
	datad => \CLK1|Equal0~4_combout\,
	combout => \CLK1|prescaler~3_combout\);

-- Location: FF_X114_Y18_N7
\CLK1|prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|prescaler~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|prescaler\(8));

-- Location: LCCOMB_X114_Y18_N4
\CLK1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|Equal0~5_combout\ = (\CLK1|prescaler\(8) & (!\CLK1|prescaler\(6) & (\CLK1|prescaler\(7) & !\CLK1|prescaler\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|prescaler\(8),
	datab => \CLK1|prescaler\(6),
	datac => \CLK1|prescaler\(7),
	datad => \CLK1|prescaler\(5),
	combout => \CLK1|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y18_N28
\CLK1|clk_2Hz_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|clk_2Hz_i~0_combout\ = \CLK1|clk_2Hz_i~q\ $ (((\CLK1|Equal0~5_combout\ & (\CLK1|Equal0~6_combout\ & \CLK1|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|Equal0~5_combout\,
	datab => \CLK1|Equal0~6_combout\,
	datac => \CLK1|clk_2Hz_i~q\,
	datad => \CLK1|Equal0~4_combout\,
	combout => \CLK1|clk_2Hz_i~0_combout\);

-- Location: LCCOMB_X113_Y18_N16
\CLK1|clk_2Hz_i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK1|clk_2Hz_i~feeder_combout\ = \CLK1|clk_2Hz_i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK1|clk_2Hz_i~0_combout\,
	combout => \CLK1|clk_2Hz_i~feeder_combout\);

-- Location: FF_X113_Y18_N17
\CLK1|clk_2Hz_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK1|clk_2Hz_i~feeder_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK1|clk_2Hz_i~q\);

-- Location: CLKCTRL_G6
\CLK1|clk_2Hz_i~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK1|clk_2Hz_i~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK1|clk_2Hz_i~clkctrl_outclk\);

-- Location: LCCOMB_X109_Y15_N0
\seconds|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~0_combout\ = \seconds|temp0[0]~2_combout\ $ (VCC)
-- \seconds|Add1~1\ = CARRY(\seconds|temp0[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0[0]~2_combout\,
	datad => VCC,
	combout => \seconds|Add1~0_combout\,
	cout => \seconds|Add1~1\);

-- Location: IOIBUF_X58_Y0_N1
\Dsec[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(5),
	o => \Dsec[5]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\Dsec[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(4),
	o => \Dsec[4]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\Dsec[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(3),
	o => \Dsec[3]~input_o\);

-- Location: LCCOMB_X110_Y16_N24
\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Dsec[3]~input_o\ $ (VCC)
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Dsec[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dsec[3]~input_o\,
	datad => VCC,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X110_Y16_N26
\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Dsec[4]~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Dsec[4]~input_o\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dsec[4]~input_o\ & !\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[4]~input_o\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X110_Y16_N28
\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dsec[5]~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Dsec[5]~input_o\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Dsec[5]~input_o\ & !\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dsec[5]~input_o\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X110_Y16_N30
\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X109_Y16_N30
\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X110_Y16_N12
\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dsec[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dsec[5]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X110_Y16_N6
\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Dsec[4]~input_o\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[4]~input_o\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X109_Y16_N24
\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X109_Y16_N26
\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X110_Y16_N16
\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Dsec[3]~input_o\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dsec[3]~input_o\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: IOIBUF_X115_Y15_N1
\Dsec[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(2),
	o => \Dsec[2]~input_o\);

-- Location: LCCOMB_X109_Y16_N12
\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dsec[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dsec[2]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X109_Y16_N14
\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dsec[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dsec[2]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X109_Y16_N0
\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X109_Y16_N2
\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X109_Y16_N4
\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X109_Y16_N6
\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X109_Y16_N8
\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: IOIBUF_X115_Y15_N8
\Dsec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dsec(1),
	o => \Dsec[1]~input_o\);

-- Location: LCCOMB_X111_Y16_N12
\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dsec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dsec[1]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X111_Y16_N14
\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dsec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dsec[1]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X111_Y16_N20
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X110_Y16_N14
\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X110_Y16_N18
\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Dsec[5]~input_o\)) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dsec[5]~input_o\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X110_Y16_N8
\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X110_Y16_N4
\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Dsec[4]~input_o\)) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[4]~input_o\,
	datab => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X110_Y16_N10
\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dsec[3]~input_o\))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Dsec[3]~input_o\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\);

-- Location: LCCOMB_X110_Y16_N22
\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X110_Y16_N20
\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X111_Y16_N0
\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dsec[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Dsec[2]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X111_Y16_N22
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X111_Y16_N24
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X111_Y16_N26
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- (!\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ & 
-- !\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X111_Y16_N28
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\))))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- ((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # (GND))))
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # ((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datad => VCC,
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X111_Y16_N30
\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X111_Y16_N6
\seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Dsec[1]~input_o\))) # 
-- (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dsec[1]~input_o\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X114_Y15_N22
\seconds|temp0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[1]~5_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \seconds|temp0[1]~5_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp0[1]~5_combout\);

-- Location: LCCOMB_X109_Y15_N2
\seconds|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~2_combout\ = (\seconds|temp0[1]~6_combout\ & (!\seconds|Add1~1\)) # (!\seconds|temp0[1]~6_combout\ & ((\seconds|Add1~1\) # (GND)))
-- \seconds|Add1~3\ = CARRY((!\seconds|Add1~1\) # (!\seconds|temp0[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[1]~6_combout\,
	datad => VCC,
	cin => \seconds|Add1~1\,
	combout => \seconds|Add1~2_combout\,
	cout => \seconds|Add1~3\);

-- Location: LCCOMB_X111_Y16_N10
\seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- ((\seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X114_Y15_N20
\seconds|temp0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[3]~13_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datac => \INIT~input_o\,
	datad => \seconds|temp0[3]~13_combout\,
	combout => \seconds|temp0[3]~13_combout\);

-- Location: LCCOMB_X111_Y16_N8
\seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- ((\seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X108_Y15_N28
\seconds|temp0[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[2]~9_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => \seconds|temp0[2]~9_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp0[2]~9_combout\);

-- Location: LCCOMB_X109_Y15_N4
\seconds|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~4_combout\ = (\seconds|temp0[2]~10_combout\ & (\seconds|Add1~3\ $ (GND))) # (!\seconds|temp0[2]~10_combout\ & (!\seconds|Add1~3\ & VCC))
-- \seconds|Add1~5\ = CARRY((\seconds|temp0[2]~10_combout\ & !\seconds|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0[2]~10_combout\,
	datad => VCC,
	cin => \seconds|Add1~3\,
	combout => \seconds|Add1~4_combout\,
	cout => \seconds|Add1~5\);

-- Location: LCCOMB_X108_Y15_N8
\seconds|temp0[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[2]~11_combout\ = \seconds|temp0[2]~9_combout\ $ (((!\seconds|Equal2~10_combout\ & (\seconds|Add1~4_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[2]~9_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~4_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[2]~11_combout\);

-- Location: FF_X108_Y15_N9
\seconds|temp0[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp0[2]~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[2]~_emulated_q\);

-- Location: LCCOMB_X108_Y15_N30
\seconds|temp0[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[2]~10_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[2]~_emulated_q\ $ (\seconds|temp0[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => \INIT~input_o\,
	datac => \seconds|temp0[2]~_emulated_q\,
	datad => \seconds|temp0[2]~9_combout\,
	combout => \seconds|temp0[2]~10_combout\);

-- Location: LCCOMB_X109_Y15_N6
\seconds|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~6_combout\ = (\seconds|temp0[3]~14_combout\ & (!\seconds|Add1~5\)) # (!\seconds|temp0[3]~14_combout\ & ((\seconds|Add1~5\) # (GND)))
-- \seconds|Add1~7\ = CARRY((!\seconds|Add1~5\) # (!\seconds|temp0[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0[3]~14_combout\,
	datad => VCC,
	cin => \seconds|Add1~5\,
	combout => \seconds|Add1~6_combout\,
	cout => \seconds|Add1~7\);

-- Location: LCCOMB_X114_Y15_N12
\seconds|temp0[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[3]~15_combout\ = \seconds|temp0[3]~13_combout\ $ (((\seconds|Add1~6_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~6_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp0[3]~13_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[3]~15_combout\);

-- Location: FF_X114_Y15_N13
\seconds|temp0[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp0[3]~15_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[3]~_emulated_q\);

-- Location: LCCOMB_X114_Y15_N26
\seconds|temp0[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[3]~14_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[3]~13_combout\ $ (\seconds|temp0[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \seconds|temp0[3]~13_combout\,
	datac => \INIT~input_o\,
	datad => \seconds|temp0[3]~_emulated_q\,
	combout => \seconds|temp0[3]~14_combout\);

-- Location: LCCOMB_X106_Y14_N12
\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Dsec[3]~input_o\ $ (VCC)
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Dsec[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dsec[3]~input_o\,
	datad => VCC,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y14_N14
\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Dsec[4]~input_o\ & (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Dsec[4]~input_o\ & 
-- (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dsec[4]~input_o\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[4]~input_o\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y14_N16
\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dsec[5]~input_o\ & (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Dsec[5]~input_o\ & 
-- (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Dsec[5]~input_o\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[5]~input_o\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y14_N18
\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y14_N2
\seconds|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X106_Y14_N28
\seconds|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\Dsec[5]~input_o\ & \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dsec[5]~input_o\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X106_Y14_N10
\seconds|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X106_Y14_N24
\seconds|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\Dsec[4]~input_o\ & \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dsec[4]~input_o\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X106_Y14_N26
\seconds|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X106_Y14_N20
\seconds|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dsec[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dsec[3]~input_o\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X107_Y14_N26
\seconds|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\Dsec[2]~input_o\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dsec[2]~input_o\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X107_Y14_N0
\seconds|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\Dsec[2]~input_o\ & \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dsec[2]~input_o\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X107_Y14_N14
\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X107_Y14_N16
\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X107_Y14_N18
\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X107_Y14_N20
\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\seconds|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y14_N22
\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y14_N8
\seconds|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Dsec[4]~input_o\)) # (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[4]~input_o\,
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X107_Y14_N28
\seconds|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X106_Y14_N6
\seconds|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dsec[3]~input_o\))) # (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dsec[3]~input_o\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X107_Y14_N2
\seconds|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X107_Y14_N30
\seconds|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X107_Y14_N24
\seconds|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\Dsec[2]~input_o\ & \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dsec[2]~input_o\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X107_Y15_N30
\seconds|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dsec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dsec[1]~input_o\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X107_Y15_N16
\seconds|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dsec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dsec[1]~input_o\,
	combout => \seconds|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X107_Y14_N4
\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\seconds|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\seconds|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X107_Y14_N6
\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\seconds|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X107_Y14_N8
\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\seconds|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\) # 
-- (\seconds|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X107_Y14_N10
\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\seconds|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\seconds|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y14_N12
\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X113_Y15_N6
\seconds|temp1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[0]~1_combout\ = (\INIT~input_o\ & ((!\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\INIT~input_o\ & (\seconds|temp1[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[0]~1_combout\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp1[0]~1_combout\);

-- Location: LCCOMB_X111_Y16_N4
\seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- ((\seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\);

-- Location: LCCOMB_X108_Y15_N26
\seconds|temp0[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[5]~17_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datac => \seconds|temp0[5]~17_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp0[5]~17_combout\);

-- Location: LCCOMB_X111_Y16_N18
\seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ = (\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- ((\seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))) # (!\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datac => \seconds|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \seconds|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	combout => \seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\);

-- Location: LCCOMB_X107_Y15_N20
\seconds|temp0[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[4]~21_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\,
	datac => \INIT~input_o\,
	datad => \seconds|temp0[4]~21_combout\,
	combout => \seconds|temp0[4]~21_combout\);

-- Location: LCCOMB_X109_Y15_N8
\seconds|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~8_combout\ = (\seconds|temp0[4]~22_combout\ & (\seconds|Add1~7\ $ (GND))) # (!\seconds|temp0[4]~22_combout\ & (!\seconds|Add1~7\ & VCC))
-- \seconds|Add1~9\ = CARRY((\seconds|temp0[4]~22_combout\ & !\seconds|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0[4]~22_combout\,
	datad => VCC,
	cin => \seconds|Add1~7\,
	combout => \seconds|Add1~8_combout\,
	cout => \seconds|Add1~9\);

-- Location: LCCOMB_X107_Y15_N26
\seconds|temp0[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[4]~23_combout\ = \seconds|temp0[4]~21_combout\ $ (((\seconds|Add1~8_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~8_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp0[4]~21_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[4]~23_combout\);

-- Location: FF_X108_Y15_N21
\seconds|temp0[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	asdata => \seconds|temp0[4]~23_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[4]~_emulated_q\);

-- Location: LCCOMB_X108_Y15_N20
\seconds|temp0[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[4]~22_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[4]~21_combout\ $ (\seconds|temp0[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\,
	datab => \seconds|temp0[4]~21_combout\,
	datac => \seconds|temp0[4]~_emulated_q\,
	datad => \INIT~input_o\,
	combout => \seconds|temp0[4]~22_combout\);

-- Location: LCCOMB_X109_Y15_N10
\seconds|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~10_combout\ = (\seconds|temp0[5]~18_combout\ & (!\seconds|Add1~9\)) # (!\seconds|temp0[5]~18_combout\ & ((\seconds|Add1~9\) # (GND)))
-- \seconds|Add1~11\ = CARRY((!\seconds|Add1~9\) # (!\seconds|temp0[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0[5]~18_combout\,
	datad => VCC,
	cin => \seconds|Add1~9\,
	combout => \seconds|Add1~10_combout\,
	cout => \seconds|Add1~11\);

-- Location: LCCOMB_X108_Y15_N0
\seconds|temp0[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[5]~19_combout\ = \seconds|temp0[5]~17_combout\ $ (((\seconds|Add1~10_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~10_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp0[5]~17_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[5]~19_combout\);

-- Location: FF_X108_Y15_N1
\seconds|temp0[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp0[5]~19_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[5]~_emulated_q\);

-- Location: LCCOMB_X108_Y15_N2
\seconds|temp0[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[5]~18_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[5]~17_combout\ $ (\seconds|temp0[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datab => \INIT~input_o\,
	datac => \seconds|temp0[5]~17_combout\,
	datad => \seconds|temp0[5]~_emulated_q\,
	combout => \seconds|temp0[5]~18_combout\);

-- Location: LCCOMB_X109_Y15_N12
\seconds|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~12_combout\ = (\seconds|temp0\(6) & (\seconds|Add1~11\ $ (GND))) # (!\seconds|temp0\(6) & (!\seconds|Add1~11\ & VCC))
-- \seconds|Add1~13\ = CARRY((\seconds|temp0\(6) & !\seconds|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(6),
	datad => VCC,
	cin => \seconds|Add1~11\,
	combout => \seconds|Add1~12_combout\,
	cout => \seconds|Add1~13\);

-- Location: LCCOMB_X108_Y15_N16
\seconds|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~89_combout\ = (\seconds|Add1~12_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~12_combout\,
	datab => \seconds|Equal2~10_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~89_combout\);

-- Location: FF_X108_Y15_N17
\seconds|temp0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~89_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(6));

-- Location: LCCOMB_X109_Y15_N14
\seconds|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~14_combout\ = (\seconds|temp0\(7) & (!\seconds|Add1~13\)) # (!\seconds|temp0\(7) & ((\seconds|Add1~13\) # (GND)))
-- \seconds|Add1~15\ = CARRY((!\seconds|Add1~13\) # (!\seconds|temp0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(7),
	datad => VCC,
	cin => \seconds|Add1~13\,
	combout => \seconds|Add1~14_combout\,
	cout => \seconds|Add1~15\);

-- Location: LCCOMB_X108_Y15_N22
\seconds|Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~88_combout\ = (\seconds|Add1~14_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~14_combout\,
	datab => \seconds|Equal2~10_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~88_combout\);

-- Location: FF_X108_Y15_N23
\seconds|temp0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~88_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(7));

-- Location: LCCOMB_X109_Y15_N16
\seconds|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~16_combout\ = (\seconds|temp0\(8) & (\seconds|Add1~15\ $ (GND))) # (!\seconds|temp0\(8) & (!\seconds|Add1~15\ & VCC))
-- \seconds|Add1~17\ = CARRY((\seconds|temp0\(8) & !\seconds|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(8),
	datad => VCC,
	cin => \seconds|Add1~15\,
	combout => \seconds|Add1~16_combout\,
	cout => \seconds|Add1~17\);

-- Location: LCCOMB_X110_Y15_N10
\seconds|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~87_combout\ = (\seconds|process_0~11_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~16_combout\,
	combout => \seconds|Add1~87_combout\);

-- Location: FF_X110_Y15_N11
\seconds|temp0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~87_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(8));

-- Location: LCCOMB_X109_Y15_N18
\seconds|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~18_combout\ = (\seconds|temp0\(9) & (!\seconds|Add1~17\)) # (!\seconds|temp0\(9) & ((\seconds|Add1~17\) # (GND)))
-- \seconds|Add1~19\ = CARRY((!\seconds|Add1~17\) # (!\seconds|temp0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(9),
	datad => VCC,
	cin => \seconds|Add1~17\,
	combout => \seconds|Add1~18_combout\,
	cout => \seconds|Add1~19\);

-- Location: LCCOMB_X110_Y15_N8
\seconds|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~86_combout\ = (\seconds|process_0~11_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~18_combout\,
	combout => \seconds|Add1~86_combout\);

-- Location: FF_X110_Y15_N9
\seconds|temp0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~86_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(9));

-- Location: LCCOMB_X109_Y15_N20
\seconds|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~20_combout\ = (\seconds|temp0\(10) & (\seconds|Add1~19\ $ (GND))) # (!\seconds|temp0\(10) & (!\seconds|Add1~19\ & VCC))
-- \seconds|Add1~21\ = CARRY((\seconds|temp0\(10) & !\seconds|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(10),
	datad => VCC,
	cin => \seconds|Add1~19\,
	combout => \seconds|Add1~20_combout\,
	cout => \seconds|Add1~21\);

-- Location: LCCOMB_X110_Y15_N6
\seconds|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~85_combout\ = (\seconds|process_0~11_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datad => \seconds|Add1~20_combout\,
	combout => \seconds|Add1~85_combout\);

-- Location: FF_X110_Y15_N7
\seconds|temp0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~85_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(10));

-- Location: LCCOMB_X109_Y15_N22
\seconds|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~22_combout\ = (\seconds|temp0\(11) & (!\seconds|Add1~21\)) # (!\seconds|temp0\(11) & ((\seconds|Add1~21\) # (GND)))
-- \seconds|Add1~23\ = CARRY((!\seconds|Add1~21\) # (!\seconds|temp0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(11),
	datad => VCC,
	cin => \seconds|Add1~21\,
	combout => \seconds|Add1~22_combout\,
	cout => \seconds|Add1~23\);

-- Location: LCCOMB_X110_Y15_N28
\seconds|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~84_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~22_combout\,
	combout => \seconds|Add1~84_combout\);

-- Location: FF_X110_Y15_N29
\seconds|temp0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~84_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(11));

-- Location: LCCOMB_X109_Y15_N24
\seconds|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~24_combout\ = (\seconds|temp0\(12) & (\seconds|Add1~23\ $ (GND))) # (!\seconds|temp0\(12) & (!\seconds|Add1~23\ & VCC))
-- \seconds|Add1~25\ = CARRY((\seconds|temp0\(12) & !\seconds|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(12),
	datad => VCC,
	cin => \seconds|Add1~23\,
	combout => \seconds|Add1~24_combout\,
	cout => \seconds|Add1~25\);

-- Location: LCCOMB_X110_Y15_N12
\seconds|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~83_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~24_combout\,
	combout => \seconds|Add1~83_combout\);

-- Location: FF_X110_Y15_N13
\seconds|temp0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~83_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(12));

-- Location: LCCOMB_X109_Y15_N26
\seconds|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~26_combout\ = (\seconds|temp0\(13) & (!\seconds|Add1~25\)) # (!\seconds|temp0\(13) & ((\seconds|Add1~25\) # (GND)))
-- \seconds|Add1~27\ = CARRY((!\seconds|Add1~25\) # (!\seconds|temp0\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(13),
	datad => VCC,
	cin => \seconds|Add1~25\,
	combout => \seconds|Add1~26_combout\,
	cout => \seconds|Add1~27\);

-- Location: LCCOMB_X110_Y15_N18
\seconds|Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~82_combout\ = (\seconds|process_0~11_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~26_combout\,
	combout => \seconds|Add1~82_combout\);

-- Location: FF_X110_Y15_N19
\seconds|temp0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~82_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(13));

-- Location: LCCOMB_X109_Y15_N28
\seconds|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~28_combout\ = (\seconds|temp0\(14) & (\seconds|Add1~27\ $ (GND))) # (!\seconds|temp0\(14) & (!\seconds|Add1~27\ & VCC))
-- \seconds|Add1~29\ = CARRY((\seconds|temp0\(14) & !\seconds|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(14),
	datad => VCC,
	cin => \seconds|Add1~27\,
	combout => \seconds|Add1~28_combout\,
	cout => \seconds|Add1~29\);

-- Location: LCCOMB_X110_Y15_N20
\seconds|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~81_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~28_combout\,
	combout => \seconds|Add1~81_combout\);

-- Location: FF_X110_Y15_N21
\seconds|temp0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~81_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(14));

-- Location: LCCOMB_X109_Y15_N30
\seconds|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~30_combout\ = (\seconds|temp0\(15) & (!\seconds|Add1~29\)) # (!\seconds|temp0\(15) & ((\seconds|Add1~29\) # (GND)))
-- \seconds|Add1~31\ = CARRY((!\seconds|Add1~29\) # (!\seconds|temp0\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(15),
	datad => VCC,
	cin => \seconds|Add1~29\,
	combout => \seconds|Add1~30_combout\,
	cout => \seconds|Add1~31\);

-- Location: LCCOMB_X110_Y15_N26
\seconds|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~80_combout\ = (\seconds|process_0~11_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~30_combout\,
	combout => \seconds|Add1~80_combout\);

-- Location: FF_X110_Y15_N27
\seconds|temp0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~80_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(15));

-- Location: LCCOMB_X110_Y15_N14
\seconds|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~5_combout\ = (!\seconds|temp0\(12) & (!\seconds|temp0\(13) & (!\seconds|temp0\(15) & !\seconds|temp0\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(12),
	datab => \seconds|temp0\(13),
	datac => \seconds|temp0\(15),
	datad => \seconds|temp0\(14),
	combout => \seconds|Equal2~5_combout\);

-- Location: LCCOMB_X110_Y15_N0
\seconds|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~6_combout\ = (!\seconds|temp0\(10) & (!\seconds|temp0\(11) & (!\seconds|temp0\(9) & !\seconds|temp0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(10),
	datab => \seconds|temp0\(11),
	datac => \seconds|temp0\(9),
	datad => \seconds|temp0\(8),
	combout => \seconds|Equal2~6_combout\);

-- Location: LCCOMB_X108_Y15_N10
\seconds|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~7_combout\ = (!\seconds|temp0[2]~10_combout\ & (!\seconds|temp0\(6) & (\seconds|temp0[0]~2_combout\ & !\seconds|temp0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[2]~10_combout\,
	datab => \seconds|temp0\(6),
	datac => \seconds|temp0[0]~2_combout\,
	datad => \seconds|temp0\(7),
	combout => \seconds|Equal2~7_combout\);

-- Location: LCCOMB_X108_Y15_N12
\seconds|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~8_combout\ = (\seconds|Equal2~7_combout\ & (!\seconds|temp0[5]~18_combout\ & !\seconds|temp0[4]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~7_combout\,
	datab => \seconds|temp0[5]~18_combout\,
	datac => \seconds|temp0[4]~22_combout\,
	combout => \seconds|Equal2~8_combout\);

-- Location: LCCOMB_X109_Y14_N0
\seconds|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~32_combout\ = (\seconds|temp0\(16) & (\seconds|Add1~31\ $ (GND))) # (!\seconds|temp0\(16) & (!\seconds|Add1~31\ & VCC))
-- \seconds|Add1~33\ = CARRY((\seconds|temp0\(16) & !\seconds|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(16),
	datad => VCC,
	cin => \seconds|Add1~31\,
	combout => \seconds|Add1~32_combout\,
	cout => \seconds|Add1~33\);

-- Location: LCCOMB_X110_Y15_N2
\seconds|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~79_combout\ = (\seconds|Add1~32_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~32_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~79_combout\);

-- Location: FF_X110_Y15_N3
\seconds|temp0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~79_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(16));

-- Location: LCCOMB_X109_Y14_N2
\seconds|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~34_combout\ = (\seconds|temp0\(17) & (!\seconds|Add1~33\)) # (!\seconds|temp0\(17) & ((\seconds|Add1~33\) # (GND)))
-- \seconds|Add1~35\ = CARRY((!\seconds|Add1~33\) # (!\seconds|temp0\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(17),
	datad => VCC,
	cin => \seconds|Add1~33\,
	combout => \seconds|Add1~34_combout\,
	cout => \seconds|Add1~35\);

-- Location: LCCOMB_X110_Y15_N16
\seconds|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~78_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~34_combout\,
	combout => \seconds|Add1~78_combout\);

-- Location: FF_X110_Y15_N17
\seconds|temp0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~78_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(17));

-- Location: LCCOMB_X109_Y14_N4
\seconds|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~36_combout\ = (\seconds|temp0\(18) & (\seconds|Add1~35\ $ (GND))) # (!\seconds|temp0\(18) & (!\seconds|Add1~35\ & VCC))
-- \seconds|Add1~37\ = CARRY((\seconds|temp0\(18) & !\seconds|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(18),
	datad => VCC,
	cin => \seconds|Add1~35\,
	combout => \seconds|Add1~36_combout\,
	cout => \seconds|Add1~37\);

-- Location: LCCOMB_X110_Y15_N22
\seconds|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~77_combout\ = (\seconds|Add1~36_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~36_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~77_combout\);

-- Location: FF_X110_Y15_N23
\seconds|temp0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~77_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(18));

-- Location: LCCOMB_X109_Y14_N6
\seconds|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~38_combout\ = (\seconds|temp0\(19) & (!\seconds|Add1~37\)) # (!\seconds|temp0\(19) & ((\seconds|Add1~37\) # (GND)))
-- \seconds|Add1~39\ = CARRY((!\seconds|Add1~37\) # (!\seconds|temp0\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(19),
	datad => VCC,
	cin => \seconds|Add1~37\,
	combout => \seconds|Add1~38_combout\,
	cout => \seconds|Add1~39\);

-- Location: LCCOMB_X110_Y15_N4
\seconds|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~76_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~38_combout\,
	combout => \seconds|Add1~76_combout\);

-- Location: FF_X110_Y15_N5
\seconds|temp0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~76_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(19));

-- Location: LCCOMB_X110_Y15_N24
\seconds|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~3_combout\ = (!\seconds|temp0\(18) & (!\seconds|temp0\(17) & (!\seconds|temp0\(19) & !\seconds|temp0\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(18),
	datab => \seconds|temp0\(17),
	datac => \seconds|temp0\(19),
	datad => \seconds|temp0\(16),
	combout => \seconds|Equal2~3_combout\);

-- Location: LCCOMB_X109_Y14_N8
\seconds|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~40_combout\ = (\seconds|temp0\(20) & (\seconds|Add1~39\ $ (GND))) # (!\seconds|temp0\(20) & (!\seconds|Add1~39\ & VCC))
-- \seconds|Add1~41\ = CARRY((\seconds|temp0\(20) & !\seconds|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(20),
	datad => VCC,
	cin => \seconds|Add1~39\,
	combout => \seconds|Add1~40_combout\,
	cout => \seconds|Add1~41\);

-- Location: LCCOMB_X108_Y14_N22
\seconds|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~75_combout\ = (\seconds|Add1~40_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Add1~40_combout\,
	datac => \seconds|Equal2~10_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~75_combout\);

-- Location: FF_X108_Y14_N23
\seconds|temp0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~75_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(20));

-- Location: LCCOMB_X109_Y14_N10
\seconds|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~42_combout\ = (\seconds|temp0\(21) & (!\seconds|Add1~41\)) # (!\seconds|temp0\(21) & ((\seconds|Add1~41\) # (GND)))
-- \seconds|Add1~43\ = CARRY((!\seconds|Add1~41\) # (!\seconds|temp0\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(21),
	datad => VCC,
	cin => \seconds|Add1~41\,
	combout => \seconds|Add1~42_combout\,
	cout => \seconds|Add1~43\);

-- Location: LCCOMB_X108_Y14_N16
\seconds|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~74_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~42_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~42_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~74_combout\);

-- Location: FF_X108_Y14_N17
\seconds|temp0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~74_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(21));

-- Location: LCCOMB_X109_Y14_N12
\seconds|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~44_combout\ = (\seconds|temp0\(22) & (\seconds|Add1~43\ $ (GND))) # (!\seconds|temp0\(22) & (!\seconds|Add1~43\ & VCC))
-- \seconds|Add1~45\ = CARRY((\seconds|temp0\(22) & !\seconds|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(22),
	datad => VCC,
	cin => \seconds|Add1~43\,
	combout => \seconds|Add1~44_combout\,
	cout => \seconds|Add1~45\);

-- Location: LCCOMB_X108_Y14_N14
\seconds|Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~73_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~44_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~44_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~73_combout\);

-- Location: FF_X108_Y14_N15
\seconds|temp0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~73_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(22));

-- Location: LCCOMB_X109_Y14_N14
\seconds|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~46_combout\ = (\seconds|temp0\(23) & (!\seconds|Add1~45\)) # (!\seconds|temp0\(23) & ((\seconds|Add1~45\) # (GND)))
-- \seconds|Add1~47\ = CARRY((!\seconds|Add1~45\) # (!\seconds|temp0\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(23),
	datad => VCC,
	cin => \seconds|Add1~45\,
	combout => \seconds|Add1~46_combout\,
	cout => \seconds|Add1~47\);

-- Location: LCCOMB_X108_Y14_N28
\seconds|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~72_combout\ = (\seconds|Add1~46_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Add1~46_combout\,
	datac => \seconds|Equal2~10_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~72_combout\);

-- Location: FF_X108_Y14_N29
\seconds|temp0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~72_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(23));

-- Location: LCCOMB_X109_Y14_N16
\seconds|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~48_combout\ = (\seconds|temp0\(24) & (\seconds|Add1~47\ $ (GND))) # (!\seconds|temp0\(24) & (!\seconds|Add1~47\ & VCC))
-- \seconds|Add1~49\ = CARRY((\seconds|temp0\(24) & !\seconds|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(24),
	datad => VCC,
	cin => \seconds|Add1~47\,
	combout => \seconds|Add1~48_combout\,
	cout => \seconds|Add1~49\);

-- Location: LCCOMB_X108_Y14_N20
\seconds|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~71_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~48_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~48_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~71_combout\);

-- Location: FF_X108_Y14_N21
\seconds|temp0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~71_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(24));

-- Location: LCCOMB_X109_Y14_N18
\seconds|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~50_combout\ = (\seconds|temp0\(25) & (!\seconds|Add1~49\)) # (!\seconds|temp0\(25) & ((\seconds|Add1~49\) # (GND)))
-- \seconds|Add1~51\ = CARRY((!\seconds|Add1~49\) # (!\seconds|temp0\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(25),
	datad => VCC,
	cin => \seconds|Add1~49\,
	combout => \seconds|Add1~50_combout\,
	cout => \seconds|Add1~51\);

-- Location: LCCOMB_X108_Y14_N18
\seconds|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~70_combout\ = (\seconds|Add1~50_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Add1~50_combout\,
	datac => \seconds|Equal2~10_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~70_combout\);

-- Location: FF_X108_Y14_N19
\seconds|temp0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~70_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(25));

-- Location: LCCOMB_X109_Y14_N20
\seconds|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~52_combout\ = (\seconds|temp0\(26) & (\seconds|Add1~51\ $ (GND))) # (!\seconds|temp0\(26) & (!\seconds|Add1~51\ & VCC))
-- \seconds|Add1~53\ = CARRY((\seconds|temp0\(26) & !\seconds|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(26),
	datad => VCC,
	cin => \seconds|Add1~51\,
	combout => \seconds|Add1~52_combout\,
	cout => \seconds|Add1~53\);

-- Location: LCCOMB_X108_Y14_N8
\seconds|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~69_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~52_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~52_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~69_combout\);

-- Location: FF_X108_Y14_N9
\seconds|temp0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~69_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(26));

-- Location: LCCOMB_X109_Y14_N22
\seconds|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~54_combout\ = (\seconds|temp0\(27) & (!\seconds|Add1~53\)) # (!\seconds|temp0\(27) & ((\seconds|Add1~53\) # (GND)))
-- \seconds|Add1~55\ = CARRY((!\seconds|Add1~53\) # (!\seconds|temp0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(27),
	datad => VCC,
	cin => \seconds|Add1~53\,
	combout => \seconds|Add1~54_combout\,
	cout => \seconds|Add1~55\);

-- Location: LCCOMB_X108_Y14_N26
\seconds|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~68_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~54_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~54_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~68_combout\);

-- Location: FF_X108_Y14_N27
\seconds|temp0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~68_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(27));

-- Location: LCCOMB_X109_Y14_N24
\seconds|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~56_combout\ = (\seconds|temp0\(28) & (\seconds|Add1~55\ $ (GND))) # (!\seconds|temp0\(28) & (!\seconds|Add1~55\ & VCC))
-- \seconds|Add1~57\ = CARRY((\seconds|temp0\(28) & !\seconds|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(28),
	datad => VCC,
	cin => \seconds|Add1~55\,
	combout => \seconds|Add1~56_combout\,
	cout => \seconds|Add1~57\);

-- Location: LCCOMB_X108_Y14_N6
\seconds|Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~67_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~56_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~56_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~67_combout\);

-- Location: FF_X108_Y14_N7
\seconds|temp0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~67_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(28));

-- Location: LCCOMB_X109_Y14_N26
\seconds|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~58_combout\ = (\seconds|temp0\(29) & (!\seconds|Add1~57\)) # (!\seconds|temp0\(29) & ((\seconds|Add1~57\) # (GND)))
-- \seconds|Add1~59\ = CARRY((!\seconds|Add1~57\) # (!\seconds|temp0\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(29),
	datad => VCC,
	cin => \seconds|Add1~57\,
	combout => \seconds|Add1~58_combout\,
	cout => \seconds|Add1~59\);

-- Location: LCCOMB_X108_Y14_N24
\seconds|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~66_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~58_combout\,
	combout => \seconds|Add1~66_combout\);

-- Location: FF_X108_Y14_N25
\seconds|temp0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~66_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(29));

-- Location: LCCOMB_X109_Y14_N28
\seconds|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~60_combout\ = (\seconds|temp0\(30) & (\seconds|Add1~59\ $ (GND))) # (!\seconds|temp0\(30) & (!\seconds|Add1~59\ & VCC))
-- \seconds|Add1~61\ = CARRY((\seconds|temp0\(30) & !\seconds|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp0\(30),
	datad => VCC,
	cin => \seconds|Add1~59\,
	combout => \seconds|Add1~60_combout\,
	cout => \seconds|Add1~61\);

-- Location: LCCOMB_X108_Y14_N30
\seconds|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~65_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & \seconds|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|process_0~11_combout\,
	datad => \seconds|Add1~60_combout\,
	combout => \seconds|Add1~65_combout\);

-- Location: FF_X108_Y14_N31
\seconds|temp0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~65_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(30));

-- Location: LCCOMB_X109_Y14_N30
\seconds|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~62_combout\ = \seconds|Add1~61\ $ (\seconds|temp0\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \seconds|temp0\(31),
	cin => \seconds|Add1~61\,
	combout => \seconds|Add1~62_combout\);

-- Location: LCCOMB_X108_Y14_N12
\seconds|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add1~64_combout\ = (!\seconds|Equal2~10_combout\ & (\seconds|Add1~62_combout\ & \seconds|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~62_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|Add1~64_combout\);

-- Location: FF_X108_Y14_N13
\seconds|temp0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|Add1~64_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0\(31));

-- Location: LCCOMB_X108_Y14_N0
\seconds|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~0_combout\ = (!\seconds|temp0\(28) & (!\seconds|temp0\(29) & (!\seconds|temp0\(30) & !\seconds|temp0\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(28),
	datab => \seconds|temp0\(29),
	datac => \seconds|temp0\(30),
	datad => \seconds|temp0\(31),
	combout => \seconds|Equal2~0_combout\);

-- Location: LCCOMB_X108_Y14_N10
\seconds|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~1_combout\ = (!\seconds|temp0\(27) & (!\seconds|temp0\(25) & (!\seconds|temp0\(26) & !\seconds|temp0\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(27),
	datab => \seconds|temp0\(25),
	datac => \seconds|temp0\(26),
	datad => \seconds|temp0\(24),
	combout => \seconds|Equal2~1_combout\);

-- Location: LCCOMB_X108_Y14_N4
\seconds|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~2_combout\ = (!\seconds|temp0\(20) & (!\seconds|temp0\(21) & (!\seconds|temp0\(22) & !\seconds|temp0\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0\(20),
	datab => \seconds|temp0\(21),
	datac => \seconds|temp0\(22),
	datad => \seconds|temp0\(23),
	combout => \seconds|Equal2~2_combout\);

-- Location: LCCOMB_X108_Y15_N24
\seconds|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~4_combout\ = (\seconds|Equal2~3_combout\ & (\seconds|Equal2~0_combout\ & (\seconds|Equal2~1_combout\ & \seconds|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~3_combout\,
	datab => \seconds|Equal2~0_combout\,
	datac => \seconds|Equal2~1_combout\,
	datad => \seconds|Equal2~2_combout\,
	combout => \seconds|Equal2~4_combout\);

-- Location: LCCOMB_X108_Y15_N14
\seconds|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~9_combout\ = (\seconds|Equal2~5_combout\ & (\seconds|Equal2~6_combout\ & (\seconds|Equal2~8_combout\ & \seconds|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~5_combout\,
	datab => \seconds|Equal2~6_combout\,
	datac => \seconds|Equal2~8_combout\,
	datad => \seconds|Equal2~4_combout\,
	combout => \seconds|Equal2~9_combout\);

-- Location: LCCOMB_X113_Y15_N26
\seconds|temp0[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[0]~33_combout\ = ((\seconds|temp0[3]~14_combout\ & (\seconds|Equal2~9_combout\ & !\seconds|temp0[1]~6_combout\))) # (!\seconds|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|Equal2~9_combout\,
	datac => \seconds|temp0[1]~6_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[0]~33_combout\);

-- Location: LCCOMB_X112_Y15_N0
\seconds|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~0_combout\ = \seconds|temp1[0]~2_combout\ $ (VCC)
-- \seconds|Add0~1\ = CARRY(\seconds|temp1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1[0]~2_combout\,
	datad => VCC,
	combout => \seconds|Add0~0_combout\,
	cout => \seconds|Add0~1\);

-- Location: LCCOMB_X113_Y15_N4
\seconds|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~8_combout\ = (!\seconds|temp0[1]~6_combout\ & (\seconds|Add0~0_combout\ & (\seconds|Equal2~9_combout\ & \seconds|temp0[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[1]~6_combout\,
	datab => \seconds|Add0~0_combout\,
	datac => \seconds|Equal2~9_combout\,
	datad => \seconds|temp0[3]~14_combout\,
	combout => \seconds|Add0~8_combout\);

-- Location: LCCOMB_X113_Y15_N10
\seconds|temp1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[0]~3_combout\ = \seconds|temp1[0]~1_combout\ $ (((\seconds|Add0~8_combout\) # ((!\seconds|temp0[0]~33_combout\ & \seconds|temp1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~33_combout\,
	datab => \seconds|temp1[0]~1_combout\,
	datac => \seconds|Add0~8_combout\,
	datad => \seconds|temp1[0]~2_combout\,
	combout => \seconds|temp1[0]~3_combout\);

-- Location: FF_X113_Y15_N11
\seconds|temp1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[0]~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1[0]~_emulated_q\);

-- Location: LCCOMB_X113_Y15_N12
\seconds|temp1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[0]~2_combout\ = (\INIT~input_o\ & (((!\seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\INIT~input_o\ & (\seconds|temp1[0]~1_combout\ $ (((\seconds|temp1[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[0]~1_combout\,
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \INIT~input_o\,
	datad => \seconds|temp1[0]~_emulated_q\,
	combout => \seconds|temp1[0]~2_combout\);

-- Location: LCCOMB_X113_Y15_N2
\seconds|temp1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[2]~9_combout\ = (\INIT~input_o\ & (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\INIT~input_o\ & ((\seconds|temp1[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \seconds|temp1[2]~9_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp1[2]~9_combout\);

-- Location: LCCOMB_X113_Y15_N0
\seconds|temp1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[1]~5_combout\ = (\INIT~input_o\ & ((!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\INIT~input_o\ & (\seconds|temp1[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1[1]~5_combout\,
	datac => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \INIT~input_o\,
	combout => \seconds|temp1[1]~5_combout\);

-- Location: LCCOMB_X112_Y15_N2
\seconds|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~2_combout\ = (\seconds|temp1[1]~6_combout\ & (!\seconds|Add0~1\)) # (!\seconds|temp1[1]~6_combout\ & ((\seconds|Add0~1\) # (GND)))
-- \seconds|Add0~3\ = CARRY((!\seconds|Add0~1\) # (!\seconds|temp1[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1[1]~6_combout\,
	datad => VCC,
	cin => \seconds|Add0~1\,
	combout => \seconds|Add0~2_combout\,
	cout => \seconds|Add0~3\);

-- Location: LCCOMB_X113_Y15_N14
\seconds|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~9_combout\ = (!\seconds|temp0[1]~6_combout\ & (\seconds|Equal2~9_combout\ & (\seconds|Add0~2_combout\ & \seconds|temp0[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[1]~6_combout\,
	datab => \seconds|Equal2~9_combout\,
	datac => \seconds|Add0~2_combout\,
	datad => \seconds|temp0[3]~14_combout\,
	combout => \seconds|Add0~9_combout\);

-- Location: LCCOMB_X113_Y15_N22
\seconds|temp1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[1]~7_combout\ = \seconds|temp1[1]~5_combout\ $ (((\seconds|Add0~9_combout\) # ((!\seconds|temp0[0]~33_combout\ & \seconds|temp1[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~33_combout\,
	datab => \seconds|temp1[1]~5_combout\,
	datac => \seconds|temp1[1]~6_combout\,
	datad => \seconds|Add0~9_combout\,
	combout => \seconds|temp1[1]~7_combout\);

-- Location: FF_X113_Y15_N23
\seconds|temp1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[1]~7_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1[1]~_emulated_q\);

-- Location: LCCOMB_X113_Y15_N16
\seconds|temp1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[1]~6_combout\ = (\INIT~input_o\ & (!\seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\INIT~input_o\ & ((\seconds|temp1[1]~_emulated_q\ $ (\seconds|temp1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \seconds|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \seconds|temp1[1]~_emulated_q\,
	datad => \seconds|temp1[1]~5_combout\,
	combout => \seconds|temp1[1]~6_combout\);

-- Location: LCCOMB_X112_Y15_N4
\seconds|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~4_combout\ = (\seconds|temp1[2]~10_combout\ & (\seconds|Add0~3\ $ (GND))) # (!\seconds|temp1[2]~10_combout\ & (!\seconds|Add0~3\ & VCC))
-- \seconds|Add0~5\ = CARRY((\seconds|temp1[2]~10_combout\ & !\seconds|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1[2]~10_combout\,
	datad => VCC,
	cin => \seconds|Add0~3\,
	combout => \seconds|Add0~4_combout\,
	cout => \seconds|Add0~5\);

-- Location: LCCOMB_X113_Y15_N20
\seconds|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~10_combout\ = (\seconds|Add0~4_combout\ & (\seconds|Equal2~9_combout\ & (!\seconds|temp0[1]~6_combout\ & \seconds|temp0[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~4_combout\,
	datab => \seconds|Equal2~9_combout\,
	datac => \seconds|temp0[1]~6_combout\,
	datad => \seconds|temp0[3]~14_combout\,
	combout => \seconds|Add0~10_combout\);

-- Location: LCCOMB_X113_Y15_N18
\seconds|temp1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[2]~11_combout\ = \seconds|temp1[2]~9_combout\ $ (((\seconds|Add0~10_combout\) # ((!\seconds|temp0[0]~33_combout\ & \seconds|temp1[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~33_combout\,
	datab => \seconds|temp1[2]~9_combout\,
	datac => \seconds|Add0~10_combout\,
	datad => \seconds|temp1[2]~10_combout\,
	combout => \seconds|temp1[2]~11_combout\);

-- Location: FF_X113_Y15_N19
\seconds|temp1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[2]~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1[2]~_emulated_q\);

-- Location: LCCOMB_X113_Y15_N24
\seconds|temp1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[2]~10_combout\ = (\INIT~input_o\ & (!\seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\INIT~input_o\ & ((\seconds|temp1[2]~9_combout\ $ (\seconds|temp1[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \seconds|temp1[2]~9_combout\,
	datac => \INIT~input_o\,
	datad => \seconds|temp1[2]~_emulated_q\,
	combout => \seconds|temp1[2]~10_combout\);

-- Location: LCCOMB_X112_Y15_N6
\seconds|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~6_combout\ = (\seconds|temp1\(3) & (!\seconds|Add0~5\)) # (!\seconds|temp1\(3) & ((\seconds|Add0~5\) # (GND)))
-- \seconds|Add0~7\ = CARRY((!\seconds|Add0~5\) # (!\seconds|temp1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(3),
	datad => VCC,
	cin => \seconds|Add0~5\,
	combout => \seconds|Add0~6_combout\,
	cout => \seconds|Add0~7\);

-- Location: LCCOMB_X113_Y15_N28
\seconds|temp1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[3]~15_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~6_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(3) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~6_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[3]~15_combout\);

-- Location: FF_X113_Y15_N29
\seconds|temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[3]~15_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(3));

-- Location: LCCOMB_X113_Y15_N8
\seconds|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~9_combout\ = (!\seconds|temp0[3]~14_combout\ & (\seconds|temp0[1]~6_combout\ & (!\seconds|temp1[0]~2_combout\ & !\seconds|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp1[0]~2_combout\,
	datad => \seconds|temp1\(3),
	combout => \seconds|process_0~9_combout\);

-- Location: LCCOMB_X112_Y15_N8
\seconds|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~11_combout\ = (\seconds|temp1\(4) & (\seconds|Add0~7\ $ (GND))) # (!\seconds|temp1\(4) & (!\seconds|Add0~7\ & VCC))
-- \seconds|Add0~12\ = CARRY((\seconds|temp1\(4) & !\seconds|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(4),
	datad => VCC,
	cin => \seconds|Add0~7\,
	combout => \seconds|Add0~11_combout\,
	cout => \seconds|Add0~12\);

-- Location: LCCOMB_X111_Y15_N12
\seconds|temp1[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[4]~43_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~11_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(4),
	datad => \seconds|Add0~11_combout\,
	combout => \seconds|temp1[4]~43_combout\);

-- Location: FF_X111_Y15_N13
\seconds|temp1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[4]~43_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(4));

-- Location: LCCOMB_X112_Y15_N10
\seconds|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~13_combout\ = (\seconds|temp1\(5) & (!\seconds|Add0~12\)) # (!\seconds|temp1\(5) & ((\seconds|Add0~12\) # (GND)))
-- \seconds|Add0~14\ = CARRY((!\seconds|Add0~12\) # (!\seconds|temp1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(5),
	datad => VCC,
	cin => \seconds|Add0~12\,
	combout => \seconds|Add0~13_combout\,
	cout => \seconds|Add0~14\);

-- Location: LCCOMB_X111_Y15_N2
\seconds|temp1[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[5]~42_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~13_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(5),
	datad => \seconds|Add0~13_combout\,
	combout => \seconds|temp1[5]~42_combout\);

-- Location: FF_X111_Y15_N3
\seconds|temp1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[5]~42_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(5));

-- Location: LCCOMB_X112_Y15_N12
\seconds|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~15_combout\ = (\seconds|temp1\(6) & (\seconds|Add0~14\ $ (GND))) # (!\seconds|temp1\(6) & (!\seconds|Add0~14\ & VCC))
-- \seconds|Add0~16\ = CARRY((\seconds|temp1\(6) & !\seconds|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(6),
	datad => VCC,
	cin => \seconds|Add0~14\,
	combout => \seconds|Add0~15_combout\,
	cout => \seconds|Add0~16\);

-- Location: LCCOMB_X111_Y15_N14
\seconds|temp1[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[6]~41_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~15_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(6),
	datad => \seconds|Add0~15_combout\,
	combout => \seconds|temp1[6]~41_combout\);

-- Location: FF_X111_Y15_N15
\seconds|temp1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[6]~41_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(6));

-- Location: LCCOMB_X112_Y15_N14
\seconds|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~17_combout\ = (\seconds|temp1\(7) & (!\seconds|Add0~16\)) # (!\seconds|temp1\(7) & ((\seconds|Add0~16\) # (GND)))
-- \seconds|Add0~18\ = CARRY((!\seconds|Add0~16\) # (!\seconds|temp1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(7),
	datad => VCC,
	cin => \seconds|Add0~16\,
	combout => \seconds|Add0~17_combout\,
	cout => \seconds|Add0~18\);

-- Location: LCCOMB_X111_Y15_N6
\seconds|temp1[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[7]~40_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~17_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(7),
	datad => \seconds|Add0~17_combout\,
	combout => \seconds|temp1[7]~40_combout\);

-- Location: FF_X111_Y15_N7
\seconds|temp1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[7]~40_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(7));

-- Location: LCCOMB_X111_Y15_N4
\seconds|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~8_combout\ = (!\seconds|temp1\(7) & (!\seconds|temp1\(4) & (!\seconds|temp1\(6) & !\seconds|temp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(7),
	datab => \seconds|temp1\(4),
	datac => \seconds|temp1\(6),
	datad => \seconds|temp1\(5),
	combout => \seconds|process_0~8_combout\);

-- Location: LCCOMB_X112_Y15_N16
\seconds|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~19_combout\ = (\seconds|temp1\(8) & (\seconds|Add0~18\ $ (GND))) # (!\seconds|temp1\(8) & (!\seconds|Add0~18\ & VCC))
-- \seconds|Add0~20\ = CARRY((\seconds|temp1\(8) & !\seconds|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(8),
	datad => VCC,
	cin => \seconds|Add0~18\,
	combout => \seconds|Add0~19_combout\,
	cout => \seconds|Add0~20\);

-- Location: LCCOMB_X111_Y15_N8
\seconds|temp1[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[8]~39_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~19_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(8),
	datad => \seconds|Add0~19_combout\,
	combout => \seconds|temp1[8]~39_combout\);

-- Location: FF_X111_Y15_N9
\seconds|temp1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[8]~39_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(8));

-- Location: LCCOMB_X112_Y15_N18
\seconds|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~21_combout\ = (\seconds|temp1\(9) & (!\seconds|Add0~20\)) # (!\seconds|temp1\(9) & ((\seconds|Add0~20\) # (GND)))
-- \seconds|Add0~22\ = CARRY((!\seconds|Add0~20\) # (!\seconds|temp1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(9),
	datad => VCC,
	cin => \seconds|Add0~20\,
	combout => \seconds|Add0~21_combout\,
	cout => \seconds|Add0~22\);

-- Location: LCCOMB_X111_Y15_N26
\seconds|temp1[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[9]~38_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~21_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(9) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~21_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(9),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[9]~38_combout\);

-- Location: FF_X111_Y15_N27
\seconds|temp1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[9]~38_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(9));

-- Location: LCCOMB_X112_Y15_N20
\seconds|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~23_combout\ = (\seconds|temp1\(10) & (\seconds|Add0~22\ $ (GND))) # (!\seconds|temp1\(10) & (!\seconds|Add0~22\ & VCC))
-- \seconds|Add0~24\ = CARRY((\seconds|temp1\(10) & !\seconds|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(10),
	datad => VCC,
	cin => \seconds|Add0~22\,
	combout => \seconds|Add0~23_combout\,
	cout => \seconds|Add0~24\);

-- Location: LCCOMB_X111_Y15_N16
\seconds|temp1[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[10]~37_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~23_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(10),
	datad => \seconds|Add0~23_combout\,
	combout => \seconds|temp1[10]~37_combout\);

-- Location: FF_X111_Y15_N17
\seconds|temp1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[10]~37_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(10));

-- Location: LCCOMB_X112_Y15_N22
\seconds|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~25_combout\ = (\seconds|temp1\(11) & (!\seconds|Add0~24\)) # (!\seconds|temp1\(11) & ((\seconds|Add0~24\) # (GND)))
-- \seconds|Add0~26\ = CARRY((!\seconds|Add0~24\) # (!\seconds|temp1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(11),
	datad => VCC,
	cin => \seconds|Add0~24\,
	combout => \seconds|Add0~25_combout\,
	cout => \seconds|Add0~26\);

-- Location: LCCOMB_X111_Y15_N24
\seconds|temp1[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[11]~36_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~25_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(11),
	datad => \seconds|Add0~25_combout\,
	combout => \seconds|temp1[11]~36_combout\);

-- Location: FF_X111_Y15_N25
\seconds|temp1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[11]~36_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(11));

-- Location: LCCOMB_X111_Y15_N30
\seconds|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~7_combout\ = (!\seconds|temp1\(9) & (!\seconds|temp1\(11) & (!\seconds|temp1\(8) & !\seconds|temp1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(9),
	datab => \seconds|temp1\(11),
	datac => \seconds|temp1\(8),
	datad => \seconds|temp1\(10),
	combout => \seconds|process_0~7_combout\);

-- Location: LCCOMB_X112_Y15_N24
\seconds|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~27_combout\ = (\seconds|temp1\(12) & (\seconds|Add0~26\ $ (GND))) # (!\seconds|temp1\(12) & (!\seconds|Add0~26\ & VCC))
-- \seconds|Add0~28\ = CARRY((\seconds|temp1\(12) & !\seconds|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(12),
	datad => VCC,
	cin => \seconds|Add0~26\,
	combout => \seconds|Add0~27_combout\,
	cout => \seconds|Add0~28\);

-- Location: LCCOMB_X111_Y15_N0
\seconds|temp1[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[12]~35_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~27_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(12),
	datad => \seconds|Add0~27_combout\,
	combout => \seconds|temp1[12]~35_combout\);

-- Location: FF_X111_Y15_N1
\seconds|temp1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[12]~35_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(12));

-- Location: LCCOMB_X112_Y15_N26
\seconds|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~29_combout\ = (\seconds|temp1\(13) & (!\seconds|Add0~28\)) # (!\seconds|temp1\(13) & ((\seconds|Add0~28\) # (GND)))
-- \seconds|Add0~30\ = CARRY((!\seconds|Add0~28\) # (!\seconds|temp1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(13),
	datad => VCC,
	cin => \seconds|Add0~28\,
	combout => \seconds|Add0~29_combout\,
	cout => \seconds|Add0~30\);

-- Location: LCCOMB_X111_Y15_N22
\seconds|temp1[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[13]~34_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~29_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(13),
	datad => \seconds|Add0~29_combout\,
	combout => \seconds|temp1[13]~34_combout\);

-- Location: FF_X111_Y15_N23
\seconds|temp1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[13]~34_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(13));

-- Location: LCCOMB_X112_Y15_N28
\seconds|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~31_combout\ = (\seconds|temp1\(14) & (\seconds|Add0~30\ $ (GND))) # (!\seconds|temp1\(14) & (!\seconds|Add0~30\ & VCC))
-- \seconds|Add0~32\ = CARRY((\seconds|temp1\(14) & !\seconds|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(14),
	datad => VCC,
	cin => \seconds|Add0~30\,
	combout => \seconds|Add0~31_combout\,
	cout => \seconds|Add0~32\);

-- Location: LCCOMB_X113_Y15_N30
\seconds|temp1[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[14]~33_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~31_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(14) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~31_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(14),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[14]~33_combout\);

-- Location: FF_X113_Y15_N31
\seconds|temp1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[14]~33_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(14));

-- Location: LCCOMB_X112_Y15_N30
\seconds|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~33_combout\ = (\seconds|temp1\(15) & (!\seconds|Add0~32\)) # (!\seconds|temp1\(15) & ((\seconds|Add0~32\) # (GND)))
-- \seconds|Add0~34\ = CARRY((!\seconds|Add0~32\) # (!\seconds|temp1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(15),
	datad => VCC,
	cin => \seconds|Add0~32\,
	combout => \seconds|Add0~33_combout\,
	cout => \seconds|Add0~34\);

-- Location: LCCOMB_X111_Y15_N10
\seconds|temp1[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[15]~32_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~33_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(15),
	datad => \seconds|Add0~33_combout\,
	combout => \seconds|temp1[15]~32_combout\);

-- Location: FF_X111_Y15_N11
\seconds|temp1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[15]~32_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(15));

-- Location: LCCOMB_X114_Y15_N24
\seconds|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~6_combout\ = (!\seconds|temp1\(13) & (!\seconds|temp1\(14) & (!\seconds|temp1\(12) & !\seconds|temp1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(13),
	datab => \seconds|temp1\(14),
	datac => \seconds|temp1\(12),
	datad => \seconds|temp1\(15),
	combout => \seconds|process_0~6_combout\);

-- Location: LCCOMB_X111_Y15_N18
\seconds|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~10_combout\ = (\seconds|process_0~9_combout\ & (\seconds|process_0~8_combout\ & (\seconds|process_0~7_combout\ & \seconds|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~9_combout\,
	datab => \seconds|process_0~8_combout\,
	datac => \seconds|process_0~7_combout\,
	datad => \seconds|process_0~6_combout\,
	combout => \seconds|process_0~10_combout\);

-- Location: LCCOMB_X112_Y14_N0
\seconds|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~35_combout\ = (\seconds|temp1\(16) & (\seconds|Add0~34\ $ (GND))) # (!\seconds|temp1\(16) & (!\seconds|Add0~34\ & VCC))
-- \seconds|Add0~36\ = CARRY((\seconds|temp1\(16) & !\seconds|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(16),
	datad => VCC,
	cin => \seconds|Add0~34\,
	combout => \seconds|Add0~35_combout\,
	cout => \seconds|Add0~36\);

-- Location: LCCOMB_X111_Y15_N28
\seconds|temp1[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[16]~31_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~35_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(16),
	datad => \seconds|Add0~35_combout\,
	combout => \seconds|temp1[16]~31_combout\);

-- Location: FF_X111_Y15_N29
\seconds|temp1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[16]~31_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(16));

-- Location: LCCOMB_X112_Y14_N2
\seconds|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~37_combout\ = (\seconds|temp1\(17) & (!\seconds|Add0~36\)) # (!\seconds|temp1\(17) & ((\seconds|Add0~36\) # (GND)))
-- \seconds|Add0~38\ = CARRY((!\seconds|Add0~36\) # (!\seconds|temp1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(17),
	datad => VCC,
	cin => \seconds|Add0~36\,
	combout => \seconds|Add0~37_combout\,
	cout => \seconds|Add0~38\);

-- Location: LCCOMB_X111_Y14_N26
\seconds|temp1[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[17]~30_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~37_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(17) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~37_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(17),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[17]~30_combout\);

-- Location: FF_X111_Y14_N27
\seconds|temp1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[17]~30_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(17));

-- Location: LCCOMB_X112_Y14_N4
\seconds|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~39_combout\ = (\seconds|temp1\(18) & (\seconds|Add0~38\ $ (GND))) # (!\seconds|temp1\(18) & (!\seconds|Add0~38\ & VCC))
-- \seconds|Add0~40\ = CARRY((\seconds|temp1\(18) & !\seconds|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(18),
	datad => VCC,
	cin => \seconds|Add0~38\,
	combout => \seconds|Add0~39_combout\,
	cout => \seconds|Add0~40\);

-- Location: LCCOMB_X111_Y14_N16
\seconds|temp1[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[18]~29_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~39_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(18) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~39_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(18),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[18]~29_combout\);

-- Location: FF_X111_Y14_N17
\seconds|temp1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[18]~29_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(18));

-- Location: LCCOMB_X112_Y14_N6
\seconds|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~41_combout\ = (\seconds|temp1\(19) & (!\seconds|Add0~40\)) # (!\seconds|temp1\(19) & ((\seconds|Add0~40\) # (GND)))
-- \seconds|Add0~42\ = CARRY((!\seconds|Add0~40\) # (!\seconds|temp1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(19),
	datad => VCC,
	cin => \seconds|Add0~40\,
	combout => \seconds|Add0~41_combout\,
	cout => \seconds|Add0~42\);

-- Location: LCCOMB_X111_Y14_N6
\seconds|temp1[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[19]~28_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~41_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(19) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~41_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(19),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[19]~28_combout\);

-- Location: FF_X111_Y14_N7
\seconds|temp1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[19]~28_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(19));

-- Location: LCCOMB_X112_Y14_N8
\seconds|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~43_combout\ = (\seconds|temp1\(20) & (\seconds|Add0~42\ $ (GND))) # (!\seconds|temp1\(20) & (!\seconds|Add0~42\ & VCC))
-- \seconds|Add0~44\ = CARRY((\seconds|temp1\(20) & !\seconds|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(20),
	datad => VCC,
	cin => \seconds|Add0~42\,
	combout => \seconds|Add0~43_combout\,
	cout => \seconds|Add0~44\);

-- Location: LCCOMB_X111_Y14_N14
\seconds|temp1[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[20]~27_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~43_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(20) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~43_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(20),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[20]~27_combout\);

-- Location: FF_X111_Y14_N15
\seconds|temp1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[20]~27_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(20));

-- Location: LCCOMB_X112_Y14_N10
\seconds|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~45_combout\ = (\seconds|temp1\(21) & (!\seconds|Add0~44\)) # (!\seconds|temp1\(21) & ((\seconds|Add0~44\) # (GND)))
-- \seconds|Add0~46\ = CARRY((!\seconds|Add0~44\) # (!\seconds|temp1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(21),
	datad => VCC,
	cin => \seconds|Add0~44\,
	combout => \seconds|Add0~45_combout\,
	cout => \seconds|Add0~46\);

-- Location: LCCOMB_X111_Y14_N0
\seconds|temp1[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[21]~26_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~45_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(21) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datab => \seconds|Add0~45_combout\,
	datac => \seconds|temp1\(21),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[21]~26_combout\);

-- Location: FF_X111_Y14_N1
\seconds|temp1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[21]~26_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(21));

-- Location: LCCOMB_X112_Y14_N12
\seconds|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~47_combout\ = (\seconds|temp1\(22) & (\seconds|Add0~46\ $ (GND))) # (!\seconds|temp1\(22) & (!\seconds|Add0~46\ & VCC))
-- \seconds|Add0~48\ = CARRY((\seconds|temp1\(22) & !\seconds|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(22),
	datad => VCC,
	cin => \seconds|Add0~46\,
	combout => \seconds|Add0~47_combout\,
	cout => \seconds|Add0~48\);

-- Location: LCCOMB_X111_Y14_N22
\seconds|temp1[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[22]~25_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~47_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(22) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~47_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(22),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[22]~25_combout\);

-- Location: FF_X111_Y14_N23
\seconds|temp1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[22]~25_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(22));

-- Location: LCCOMB_X112_Y14_N14
\seconds|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~49_combout\ = (\seconds|temp1\(23) & (!\seconds|Add0~48\)) # (!\seconds|temp1\(23) & ((\seconds|Add0~48\) # (GND)))
-- \seconds|Add0~50\ = CARRY((!\seconds|Add0~48\) # (!\seconds|temp1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(23),
	datad => VCC,
	cin => \seconds|Add0~48\,
	combout => \seconds|Add0~49_combout\,
	cout => \seconds|Add0~50\);

-- Location: LCCOMB_X111_Y14_N24
\seconds|temp1[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[23]~24_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~49_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(23) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~49_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(23),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[23]~24_combout\);

-- Location: FF_X111_Y14_N25
\seconds|temp1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[23]~24_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(23));

-- Location: LCCOMB_X111_Y14_N4
\seconds|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~3_combout\ = (!\seconds|temp1\(22) & (!\seconds|temp1\(23) & (!\seconds|temp1\(20) & !\seconds|temp1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(22),
	datab => \seconds|temp1\(23),
	datac => \seconds|temp1\(20),
	datad => \seconds|temp1\(21),
	combout => \seconds|process_0~3_combout\);

-- Location: LCCOMB_X112_Y14_N16
\seconds|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~51_combout\ = (\seconds|temp1\(24) & (\seconds|Add0~50\ $ (GND))) # (!\seconds|temp1\(24) & (!\seconds|Add0~50\ & VCC))
-- \seconds|Add0~52\ = CARRY((\seconds|temp1\(24) & !\seconds|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(24),
	datad => VCC,
	cin => \seconds|Add0~50\,
	combout => \seconds|Add0~51_combout\,
	cout => \seconds|Add0~52\);

-- Location: LCCOMB_X111_Y14_N30
\seconds|temp1[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[24]~23_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~51_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(24) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datab => \seconds|Add0~51_combout\,
	datac => \seconds|temp1\(24),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[24]~23_combout\);

-- Location: FF_X111_Y14_N31
\seconds|temp1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[24]~23_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(24));

-- Location: LCCOMB_X112_Y14_N18
\seconds|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~53_combout\ = (\seconds|temp1\(25) & (!\seconds|Add0~52\)) # (!\seconds|temp1\(25) & ((\seconds|Add0~52\) # (GND)))
-- \seconds|Add0~54\ = CARRY((!\seconds|Add0~52\) # (!\seconds|temp1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(25),
	datad => VCC,
	cin => \seconds|Add0~52\,
	combout => \seconds|Add0~53_combout\,
	cout => \seconds|Add0~54\);

-- Location: LCCOMB_X111_Y14_N28
\seconds|temp1[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[25]~22_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~53_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(25) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Equal2~10_combout\,
	datab => \seconds|Add0~53_combout\,
	datac => \seconds|temp1\(25),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[25]~22_combout\);

-- Location: FF_X111_Y14_N29
\seconds|temp1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[25]~22_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(25));

-- Location: LCCOMB_X112_Y14_N20
\seconds|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~55_combout\ = (\seconds|temp1\(26) & (\seconds|Add0~54\ $ (GND))) # (!\seconds|temp1\(26) & (!\seconds|Add0~54\ & VCC))
-- \seconds|Add0~56\ = CARRY((\seconds|temp1\(26) & !\seconds|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(26),
	datad => VCC,
	cin => \seconds|Add0~54\,
	combout => \seconds|Add0~55_combout\,
	cout => \seconds|Add0~56\);

-- Location: LCCOMB_X111_Y14_N2
\seconds|temp1[26]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[26]~21_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~55_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(26) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~55_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(26),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[26]~21_combout\);

-- Location: FF_X111_Y14_N3
\seconds|temp1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[26]~21_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(26));

-- Location: LCCOMB_X112_Y14_N22
\seconds|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~57_combout\ = (\seconds|temp1\(27) & (!\seconds|Add0~56\)) # (!\seconds|temp1\(27) & ((\seconds|Add0~56\) # (GND)))
-- \seconds|Add0~58\ = CARRY((!\seconds|Add0~56\) # (!\seconds|temp1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(27),
	datad => VCC,
	cin => \seconds|Add0~56\,
	combout => \seconds|Add0~57_combout\,
	cout => \seconds|Add0~58\);

-- Location: LCCOMB_X111_Y14_N20
\seconds|temp1[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[27]~20_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~57_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(27),
	datad => \seconds|Add0~57_combout\,
	combout => \seconds|temp1[27]~20_combout\);

-- Location: FF_X111_Y14_N21
\seconds|temp1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[27]~20_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(27));

-- Location: LCCOMB_X110_Y14_N18
\seconds|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~2_combout\ = (!\seconds|temp1\(27) & (!\seconds|temp1\(25) & (!\seconds|temp1\(24) & !\seconds|temp1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(27),
	datab => \seconds|temp1\(25),
	datac => \seconds|temp1\(24),
	datad => \seconds|temp1\(26),
	combout => \seconds|process_0~2_combout\);

-- Location: LCCOMB_X110_Y14_N4
\seconds|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~4_combout\ = (!\seconds|temp1\(19) & (!\seconds|temp1\(18) & (!\seconds|temp1\(16) & !\seconds|temp1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(19),
	datab => \seconds|temp1\(18),
	datac => \seconds|temp1\(16),
	datad => \seconds|temp1\(17),
	combout => \seconds|process_0~4_combout\);

-- Location: LCCOMB_X112_Y14_N24
\seconds|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~59_combout\ = (\seconds|temp1\(28) & (\seconds|Add0~58\ $ (GND))) # (!\seconds|temp1\(28) & (!\seconds|Add0~58\ & VCC))
-- \seconds|Add0~60\ = CARRY((\seconds|temp1\(28) & !\seconds|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds|temp1\(28),
	datad => VCC,
	cin => \seconds|Add0~58\,
	combout => \seconds|Add0~59_combout\,
	cout => \seconds|Add0~60\);

-- Location: LCCOMB_X111_Y14_N18
\seconds|temp1[28]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[28]~19_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~59_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(28),
	datad => \seconds|Add0~59_combout\,
	combout => \seconds|temp1[28]~19_combout\);

-- Location: FF_X111_Y14_N19
\seconds|temp1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[28]~19_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(28));

-- Location: LCCOMB_X112_Y14_N26
\seconds|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~61_combout\ = (\seconds|temp1\(29) & (!\seconds|Add0~60\)) # (!\seconds|temp1\(29) & ((\seconds|Add0~60\) # (GND)))
-- \seconds|Add0~62\ = CARRY((!\seconds|Add0~60\) # (!\seconds|temp1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(29),
	datad => VCC,
	cin => \seconds|Add0~60\,
	combout => \seconds|Add0~61_combout\,
	cout => \seconds|Add0~62\);

-- Location: LCCOMB_X111_Y14_N12
\seconds|temp1[29]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[29]~18_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~61_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(29),
	datad => \seconds|Add0~61_combout\,
	combout => \seconds|temp1[29]~18_combout\);

-- Location: FF_X111_Y14_N13
\seconds|temp1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[29]~18_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(29));

-- Location: LCCOMB_X112_Y14_N28
\seconds|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~63_combout\ = (\seconds|temp1\(30) & (\seconds|Add0~62\ $ (GND))) # (!\seconds|temp1\(30) & (!\seconds|Add0~62\ & VCC))
-- \seconds|Add0~64\ = CARRY((\seconds|temp1\(30) & !\seconds|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(30),
	datad => VCC,
	cin => \seconds|Add0~62\,
	combout => \seconds|Add0~63_combout\,
	cout => \seconds|Add0~64\);

-- Location: LCCOMB_X111_Y14_N10
\seconds|temp1[30]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[30]~17_combout\ = (\seconds|Equal2~10_combout\ & (((\seconds|Add0~63_combout\)))) # (!\seconds|Equal2~10_combout\ & (\seconds|process_0~11_combout\ & (\seconds|temp1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~11_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(30),
	datad => \seconds|Add0~63_combout\,
	combout => \seconds|temp1[30]~17_combout\);

-- Location: FF_X111_Y14_N11
\seconds|temp1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[30]~17_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(30));

-- Location: LCCOMB_X112_Y14_N30
\seconds|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Add0~65_combout\ = \seconds|Add0~64\ $ (\seconds|temp1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \seconds|temp1\(31),
	cin => \seconds|Add0~64\,
	combout => \seconds|Add0~65_combout\);

-- Location: LCCOMB_X111_Y14_N8
\seconds|temp1[31]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp1[31]~16_combout\ = (\seconds|Equal2~10_combout\ & (\seconds|Add0~65_combout\)) # (!\seconds|Equal2~10_combout\ & (((\seconds|temp1\(31) & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add0~65_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp1\(31),
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp1[31]~16_combout\);

-- Location: FF_X111_Y14_N9
\seconds|temp1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp1[31]~16_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp1\(31));

-- Location: LCCOMB_X110_Y14_N24
\seconds|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~1_combout\ = (!\seconds|temp1\(31) & (!\seconds|temp1\(30) & (!\seconds|temp1\(29) & !\seconds|temp1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1\(31),
	datab => \seconds|temp1\(30),
	datac => \seconds|temp1\(29),
	datad => \seconds|temp1\(28),
	combout => \seconds|process_0~1_combout\);

-- Location: LCCOMB_X110_Y14_N22
\seconds|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~5_combout\ = (\seconds|process_0~3_combout\ & (\seconds|process_0~2_combout\ & (\seconds|process_0~4_combout\ & \seconds|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~3_combout\,
	datab => \seconds|process_0~2_combout\,
	datac => \seconds|process_0~4_combout\,
	datad => \seconds|process_0~1_combout\,
	combout => \seconds|process_0~5_combout\);

-- Location: LCCOMB_X110_Y15_N30
\seconds|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~0_combout\ = (\seconds|temp1[1]~6_combout\ & !\seconds|temp1[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds|temp1[1]~6_combout\,
	datad => \seconds|temp1[2]~10_combout\,
	combout => \seconds|process_0~0_combout\);

-- Location: LCCOMB_X111_Y15_N20
\seconds|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|process_0~11_combout\ = (((!\seconds|process_0~0_combout\) # (!\seconds|process_0~5_combout\)) # (!\seconds|Equal2~9_combout\)) # (!\seconds|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|process_0~10_combout\,
	datab => \seconds|Equal2~9_combout\,
	datac => \seconds|process_0~5_combout\,
	datad => \seconds|process_0~0_combout\,
	combout => \seconds|process_0~11_combout\);

-- Location: LCCOMB_X114_Y15_N28
\seconds|temp0[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[1]~7_combout\ = \seconds|temp0[1]~5_combout\ $ (((!\seconds|Equal2~10_combout\ & (\seconds|Add1~2_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[1]~5_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|Add1~2_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[1]~7_combout\);

-- Location: FF_X114_Y15_N29
\seconds|temp0[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp0[1]~7_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[1]~_emulated_q\);

-- Location: LCCOMB_X114_Y15_N18
\seconds|temp0[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[1]~6_combout\ = (\INIT~input_o\ & (\seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)) # (!\INIT~input_o\ & ((\seconds|temp0[1]~5_combout\ $ (\seconds|temp0[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => \INIT~input_o\,
	datac => \seconds|temp0[1]~5_combout\,
	datad => \seconds|temp0[1]~_emulated_q\,
	combout => \seconds|temp0[1]~6_combout\);

-- Location: LCCOMB_X107_Y15_N28
\seconds|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|Equal2~10_combout\ = (!\seconds|temp0[1]~6_combout\ & (\seconds|Equal2~9_combout\ & \seconds|temp0[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[1]~6_combout\,
	datac => \seconds|Equal2~9_combout\,
	datad => \seconds|temp0[3]~14_combout\,
	combout => \seconds|Equal2~10_combout\);

-- Location: LCCOMB_X108_Y15_N6
\seconds|temp0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[0]~1_combout\ = (\INIT~input_o\ & ((\Dsec[0]~input_o\))) # (!\INIT~input_o\ & (\seconds|temp0[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~1_combout\,
	datab => \Dsec[0]~input_o\,
	datad => \INIT~input_o\,
	combout => \seconds|temp0[0]~1_combout\);

-- Location: LCCOMB_X108_Y15_N4
\seconds|temp0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[0]~3_combout\ = \seconds|temp0[0]~1_combout\ $ (((\seconds|Add1~0_combout\ & (!\seconds|Equal2~10_combout\ & \seconds|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|Add1~0_combout\,
	datab => \seconds|Equal2~10_combout\,
	datac => \seconds|temp0[0]~1_combout\,
	datad => \seconds|process_0~11_combout\,
	combout => \seconds|temp0[0]~3_combout\);

-- Location: FF_X108_Y15_N5
\seconds|temp0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|temp0[0]~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|temp0[0]~_emulated_q\);

-- Location: LCCOMB_X108_Y15_N18
\seconds|temp0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seconds|temp0[0]~2_combout\ = (\INIT~input_o\ & (\Dsec[0]~input_o\)) # (!\INIT~input_o\ & ((\seconds|temp0[0]~_emulated_q\ $ (\seconds|temp0[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dsec[0]~input_o\,
	datab => \INIT~input_o\,
	datac => \seconds|temp0[0]~_emulated_q\,
	datad => \seconds|temp0[0]~1_combout\,
	combout => \seconds|temp0[0]~2_combout\);

-- Location: LCCOMB_X113_Y17_N0
\sevenseg1_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux6~0_combout\ = (\seconds|temp0[1]~6_combout\ & (((\seconds|temp0[3]~14_combout\)))) # (!\seconds|temp0[1]~6_combout\ & (\seconds|temp0[2]~10_combout\ $ (((\seconds|temp0[0]~2_combout\ & !\seconds|temp0[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~2_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[3]~14_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y16_N12
\sevenseg1_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux5~0_combout\ = (\seconds|temp0[3]~14_combout\ & ((\seconds|temp0[1]~6_combout\) # ((\seconds|temp0[2]~10_combout\)))) # (!\seconds|temp0[3]~14_combout\ & (\seconds|temp0[2]~10_combout\ & (\seconds|temp0[1]~6_combout\ $ 
-- (\seconds|temp0[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[0]~2_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y16_N18
\sevenseg1_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux4~0_combout\ = (\seconds|temp0[2]~10_combout\ & (\seconds|temp0[3]~14_combout\)) # (!\seconds|temp0[2]~10_combout\ & (\seconds|temp0[1]~6_combout\ & ((\seconds|temp0[3]~14_combout\) # (!\seconds|temp0[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[0]~2_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y17_N10
\sevenseg1_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux3~0_combout\ = (\seconds|temp0[1]~6_combout\ & ((\seconds|temp0[3]~14_combout\) # ((\seconds|temp0[0]~2_combout\ & \seconds|temp0[2]~10_combout\)))) # (!\seconds|temp0[1]~6_combout\ & (\seconds|temp0[2]~10_combout\ $ 
-- (((\seconds|temp0[0]~2_combout\ & !\seconds|temp0[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~2_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[3]~14_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\sevenseg1_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux2~0_combout\ = (\seconds|temp0[0]~2_combout\) # ((\seconds|temp0[1]~6_combout\ & (\seconds|temp0[3]~14_combout\)) # (!\seconds|temp0[1]~6_combout\ & ((\seconds|temp0[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[0]~2_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y16_N14
\sevenseg1_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux1~0_combout\ = (\seconds|temp0[0]~2_combout\ & ((\seconds|temp0[1]~6_combout\) # (\seconds|temp0[3]~14_combout\ $ (!\seconds|temp0[2]~10_combout\)))) # (!\seconds|temp0[0]~2_combout\ & ((\seconds|temp0[2]~10_combout\ & 
-- (\seconds|temp0[3]~14_combout\)) # (!\seconds|temp0[2]~10_combout\ & ((\seconds|temp0[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[3]~14_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[0]~2_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y17_N4
\sevenseg1_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1_inst|Mux0~0_combout\ = (\seconds|temp0[1]~6_combout\ & (!\seconds|temp0[3]~14_combout\ & ((!\seconds|temp0[2]~10_combout\) # (!\seconds|temp0[0]~2_combout\)))) # (!\seconds|temp0[1]~6_combout\ & ((\seconds|temp0[3]~14_combout\ $ 
-- (\seconds|temp0[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp0[0]~2_combout\,
	datab => \seconds|temp0[1]~6_combout\,
	datac => \seconds|temp0[3]~14_combout\,
	datad => \seconds|temp0[2]~10_combout\,
	combout => \sevenseg1_inst|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N16
\sevenseg2_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux6~0_combout\ = (\seconds|temp1[1]~6_combout\ & (((\seconds|temp1\(3))))) # (!\seconds|temp1[1]~6_combout\ & (\seconds|temp1[2]~10_combout\ $ (((\seconds|temp1[0]~2_combout\ & !\seconds|temp1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[2]~10_combout\,
	datac => \seconds|temp1[0]~2_combout\,
	datad => \seconds|temp1\(3),
	combout => \sevenseg2_inst|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y15_N30
\sevenseg2_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux5~0_combout\ = (\seconds|temp1[2]~10_combout\ & ((\seconds|temp1\(3)) # (\seconds|temp1[1]~6_combout\ $ (\seconds|temp1[0]~2_combout\)))) # (!\seconds|temp1[2]~10_combout\ & (\seconds|temp1[1]~6_combout\ & ((\seconds|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[2]~10_combout\,
	datac => \seconds|temp1[0]~2_combout\,
	datad => \seconds|temp1\(3),
	combout => \sevenseg2_inst|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y14_N12
\sevenseg2_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux4~0_combout\ = (\seconds|temp1[2]~10_combout\ & (((\seconds|temp1\(3))))) # (!\seconds|temp1[2]~10_combout\ & (\seconds|temp1[1]~6_combout\ & ((\seconds|temp1\(3)) # (!\seconds|temp1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[0]~2_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|temp1[2]~10_combout\,
	combout => \sevenseg2_inst|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y14_N24
\sevenseg2_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux3~0_combout\ = (\seconds|temp1[1]~6_combout\ & ((\seconds|temp1\(3)) # ((\seconds|temp1[2]~10_combout\ & \seconds|temp1[0]~2_combout\)))) # (!\seconds|temp1[1]~6_combout\ & (\seconds|temp1[2]~10_combout\ $ (((!\seconds|temp1\(3) & 
-- \seconds|temp1[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[2]~10_combout\,
	datab => \seconds|temp1[1]~6_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|temp1[0]~2_combout\,
	combout => \sevenseg2_inst|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y14_N26
\sevenseg2_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux2~0_combout\ = (\seconds|temp1[0]~2_combout\) # ((\seconds|temp1[1]~6_combout\ & (\seconds|temp1\(3))) # (!\seconds|temp1[1]~6_combout\ & ((\seconds|temp1[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[0]~2_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|temp1[2]~10_combout\,
	combout => \sevenseg2_inst|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y14_N28
\sevenseg2_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux1~0_combout\ = (\seconds|temp1[0]~2_combout\ & ((\seconds|temp1[1]~6_combout\) # (\seconds|temp1\(3) $ (!\seconds|temp1[2]~10_combout\)))) # (!\seconds|temp1[0]~2_combout\ & ((\seconds|temp1[2]~10_combout\ & ((\seconds|temp1\(3)))) # 
-- (!\seconds|temp1[2]~10_combout\ & (\seconds|temp1[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[0]~2_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|temp1[2]~10_combout\,
	combout => \sevenseg2_inst|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y14_N10
\sevenseg2_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2_inst|Mux0~0_combout\ = (\seconds|temp1[1]~6_combout\ & (!\seconds|temp1\(3) & ((!\seconds|temp1[2]~10_combout\) # (!\seconds|temp1[0]~2_combout\)))) # (!\seconds|temp1[1]~6_combout\ & ((\seconds|temp1\(3) $ (\seconds|temp1[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds|temp1[1]~6_combout\,
	datab => \seconds|temp1[0]~2_combout\,
	datac => \seconds|temp1\(3),
	datad => \seconds|temp1[2]~10_combout\,
	combout => \sevenseg2_inst|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\Dmin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(0),
	o => \Dmin[0]~input_o\);

-- Location: FF_X111_Y15_N21
\seconds|FWD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK1|clk_2Hz_i~clkctrl_outclk\,
	d => \seconds|process_0~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds|FWD~q\);

-- Location: CLKCTRL_G9
\seconds|FWD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \seconds|FWD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \seconds|FWD~clkctrl_outclk\);

-- Location: LCCOMB_X107_Y13_N0
\minutes|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~0_combout\ = \minutes|temp0[0]~2_combout\ $ (VCC)
-- \minutes|Add1~1\ = CARRY(\minutes|temp0[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[0]~2_combout\,
	datad => VCC,
	combout => \minutes|Add1~0_combout\,
	cout => \minutes|Add1~1\);

-- Location: LCCOMB_X107_Y13_N2
\minutes|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~2_combout\ = (\minutes|temp0[1]~6_combout\ & (!\minutes|Add1~1\)) # (!\minutes|temp0[1]~6_combout\ & ((\minutes|Add1~1\) # (GND)))
-- \minutes|Add1~3\ = CARRY((!\minutes|Add1~1\) # (!\minutes|temp0[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datad => VCC,
	cin => \minutes|Add1~1\,
	combout => \minutes|Add1~2_combout\,
	cout => \minutes|Add1~3\);

-- Location: IOIBUF_X115_Y8_N15
\Dmin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(5),
	o => \Dmin[5]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\Dmin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(4),
	o => \Dmin[4]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\Dmin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(3),
	o => \Dmin[3]~input_o\);

-- Location: LCCOMB_X113_Y7_N24
\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Dmin[3]~input_o\ $ (VCC)
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Dmin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmin[3]~input_o\,
	datad => VCC,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X113_Y7_N26
\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Dmin[4]~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Dmin[4]~input_o\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dmin[4]~input_o\ & !\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dmin[4]~input_o\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X113_Y7_N28
\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dmin[5]~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Dmin[5]~input_o\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Dmin[5]~input_o\ & !\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dmin[5]~input_o\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X113_Y7_N30
\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X114_Y7_N6
\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X114_Y7_N12
\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[5]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X113_Y7_N12
\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X114_Y7_N8
\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Dmin[4]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X113_Y7_N10
\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Dmin[3]~input_o\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmin[3]~input_o\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X114_Y7_N10
\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: IOIBUF_X115_Y10_N1
\Dmin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(2),
	o => \Dmin[2]~input_o\);

-- Location: LCCOMB_X114_Y7_N4
\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[2]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X114_Y7_N22
\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[2]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X113_Y7_N14
\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X113_Y7_N16
\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X113_Y7_N18
\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X113_Y7_N20
\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X113_Y7_N22
\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: IOIBUF_X115_Y10_N8
\Dmin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dmin(1),
	o => \Dmin[1]~input_o\);

-- Location: LCCOMB_X110_Y10_N30
\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dmin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[1]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X110_Y10_N4
\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dmin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[1]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X110_Y10_N6
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X113_Y7_N0
\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dmin[5]~input_o\))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[5]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X110_Y10_N24
\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X113_Y7_N4
\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X113_Y7_N2
\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Dmin[4]~input_o\)) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Dmin[4]~input_o\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X113_Y7_N6
\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X113_Y7_N8
\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dmin[3]~input_o\))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Dmin[3]~input_o\,
	datad => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\);

-- Location: LCCOMB_X110_Y10_N22
\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\Dmin[2]~input_o\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dmin[2]~input_o\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X110_Y10_N28
\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (!\minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X110_Y10_N8
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X110_Y10_N10
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\)))))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X110_Y10_N12
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- (!\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ & 
-- !\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X110_Y10_N14
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\))))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- ((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # (GND))))
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # ((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X110_Y10_N16
\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X110_Y10_N26
\minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Dmin[1]~input_o\))) # 
-- (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Dmin[1]~input_o\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X112_Y13_N18
\minutes|temp0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[1]~5_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp0[1]~5_combout\,
	combout => \minutes|temp0[1]~5_combout\);

-- Location: LCCOMB_X111_Y7_N6
\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Dmin[3]~input_o\ $ (VCC)
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Dmin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmin[3]~input_o\,
	datad => VCC,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X111_Y7_N8
\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Dmin[4]~input_o\ & (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\Dmin[4]~input_o\ & 
-- (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Dmin[4]~input_o\ & !\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dmin[4]~input_o\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X111_Y7_N10
\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Dmin[5]~input_o\ & (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\Dmin[5]~input_o\ & 
-- (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Dmin[5]~input_o\ & !\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dmin[5]~input_o\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X111_Y7_N12
\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X110_Y10_N2
\minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X110_Y10_N0
\minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X106_Y13_N30
\minutes|temp0[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[2]~9_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \minutes|temp0[2]~9_combout\,
	datad => \INIT~input_o\,
	combout => \minutes|temp0[2]~9_combout\);

-- Location: LCCOMB_X107_Y13_N4
\minutes|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~4_combout\ = (\minutes|temp0[2]~10_combout\ & (\minutes|Add1~3\ $ (GND))) # (!\minutes|temp0[2]~10_combout\ & (!\minutes|Add1~3\ & VCC))
-- \minutes|Add1~5\ = CARRY((\minutes|temp0[2]~10_combout\ & !\minutes|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[2]~10_combout\,
	datad => VCC,
	cin => \minutes|Add1~3\,
	combout => \minutes|Add1~4_combout\,
	cout => \minutes|Add1~5\);

-- Location: LCCOMB_X106_Y13_N24
\minutes|temp0[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[2]~11_combout\ = \minutes|temp0[2]~9_combout\ $ (((!\minutes|Equal2~10_combout\ & (\minutes|Add1~4_combout\ & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datab => \minutes|Add1~4_combout\,
	datac => \minutes|temp0[2]~9_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp0[2]~11_combout\);

-- Location: FF_X106_Y13_N25
\minutes|temp0[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[2]~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[2]~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N10
\minutes|temp0[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[2]~10_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[2]~9_combout\ $ (\minutes|temp0[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \minutes|temp0[2]~9_combout\,
	datad => \minutes|temp0[2]~_emulated_q\,
	combout => \minutes|temp0[2]~10_combout\);

-- Location: LCCOMB_X107_Y13_N6
\minutes|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~6_combout\ = (\minutes|temp0[3]~14_combout\ & (!\minutes|Add1~5\)) # (!\minutes|temp0[3]~14_combout\ & ((\minutes|Add1~5\) # (GND)))
-- \minutes|Add1~7\ = CARRY((!\minutes|Add1~5\) # (!\minutes|temp0[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[3]~14_combout\,
	datad => VCC,
	cin => \minutes|Add1~5\,
	combout => \minutes|Add1~6_combout\,
	cout => \minutes|Add1~7\);

-- Location: LCCOMB_X112_Y13_N0
\minutes|temp0[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[3]~13_combout\ = (\INIT~input_o\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))) # (!\INIT~input_o\ & (\minutes|temp0[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[3]~13_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \INIT~input_o\,
	combout => \minutes|temp0[3]~13_combout\);

-- Location: LCCOMB_X112_Y13_N28
\minutes|temp0[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[3]~15_combout\ = \minutes|temp0[3]~13_combout\ $ (((\minutes|Add1~6_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~6_combout\,
	datab => \minutes|temp0[3]~13_combout\,
	datac => \minutes|process_0~11_combout\,
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp0[3]~15_combout\);

-- Location: FF_X112_Y13_N29
\minutes|temp0[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[3]~15_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[3]~_emulated_q\);

-- Location: LCCOMB_X112_Y13_N26
\minutes|temp0[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[3]~14_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[3]~_emulated_q\ $ (\minutes|temp0[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \minutes|temp0[3]~_emulated_q\,
	datac => \INIT~input_o\,
	datad => \minutes|temp0[3]~13_combout\,
	combout => \minutes|temp0[3]~14_combout\);

-- Location: LCCOMB_X110_Y10_N20
\minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- ((\minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\);

-- Location: LCCOMB_X106_Y13_N12
\minutes|temp0[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[5]~17_combout\ = (\INIT~input_o\ & ((\minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\))) # (!\INIT~input_o\ & (\minutes|temp0[5]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[5]~17_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datad => \INIT~input_o\,
	combout => \minutes|temp0[5]~17_combout\);

-- Location: LCCOMB_X110_Y10_N18
\minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ = (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- (\minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))) # (!\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datad => \minutes|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	combout => \minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\);

-- Location: LCCOMB_X106_Y13_N26
\minutes|temp0[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[4]~21_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\,
	datac => \minutes|temp0[4]~21_combout\,
	datad => \INIT~input_o\,
	combout => \minutes|temp0[4]~21_combout\);

-- Location: LCCOMB_X107_Y13_N8
\minutes|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~8_combout\ = (\minutes|temp0[4]~22_combout\ & (\minutes|Add1~7\ $ (GND))) # (!\minutes|temp0[4]~22_combout\ & (!\minutes|Add1~7\ & VCC))
-- \minutes|Add1~9\ = CARRY((\minutes|temp0[4]~22_combout\ & !\minutes|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[4]~22_combout\,
	datad => VCC,
	cin => \minutes|Add1~7\,
	combout => \minutes|Add1~8_combout\,
	cout => \minutes|Add1~9\);

-- Location: LCCOMB_X106_Y13_N0
\minutes|temp0[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[4]~23_combout\ = \minutes|temp0[4]~21_combout\ $ (((!\minutes|Equal2~10_combout\ & (\minutes|Add1~8_combout\ & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datab => \minutes|Add1~8_combout\,
	datac => \minutes|temp0[4]~21_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp0[4]~23_combout\);

-- Location: FF_X106_Y13_N1
\minutes|temp0[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[4]~23_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[4]~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N14
\minutes|temp0[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[4]~22_combout\ = (\INIT~input_o\ & (\minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\)) # (!\INIT~input_o\ & ((\minutes|temp0[4]~21_combout\ $ (\minutes|temp0[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\,
	datac => \minutes|temp0[4]~21_combout\,
	datad => \minutes|temp0[4]~_emulated_q\,
	combout => \minutes|temp0[4]~22_combout\);

-- Location: LCCOMB_X107_Y13_N10
\minutes|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~10_combout\ = (\minutes|temp0[5]~18_combout\ & (!\minutes|Add1~9\)) # (!\minutes|temp0[5]~18_combout\ & ((\minutes|Add1~9\) # (GND)))
-- \minutes|Add1~11\ = CARRY((!\minutes|Add1~9\) # (!\minutes|temp0[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[5]~18_combout\,
	datad => VCC,
	cin => \minutes|Add1~9\,
	combout => \minutes|Add1~10_combout\,
	cout => \minutes|Add1~11\);

-- Location: LCCOMB_X106_Y13_N28
\minutes|temp0[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[5]~19_combout\ = \minutes|temp0[5]~17_combout\ $ (((!\minutes|Equal2~10_combout\ & (\minutes|Add1~10_combout\ & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datab => \minutes|Add1~10_combout\,
	datac => \minutes|temp0[5]~17_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp0[5]~19_combout\);

-- Location: FF_X106_Y13_N29
\minutes|temp0[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[5]~19_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[5]~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N18
\minutes|temp0[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[5]~18_combout\ = (\INIT~input_o\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\)))) # (!\INIT~input_o\ & (\minutes|temp0[5]~17_combout\ $ (((\minutes|temp0[5]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[5]~17_combout\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp0[5]~_emulated_q\,
	combout => \minutes|temp0[5]~18_combout\);

-- Location: LCCOMB_X107_Y13_N12
\minutes|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~12_combout\ = (\minutes|temp0\(6) & (\minutes|Add1~11\ $ (GND))) # (!\minutes|temp0\(6) & (!\minutes|Add1~11\ & VCC))
-- \minutes|Add1~13\ = CARRY((\minutes|temp0\(6) & !\minutes|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(6),
	datad => VCC,
	cin => \minutes|Add1~11\,
	combout => \minutes|Add1~12_combout\,
	cout => \minutes|Add1~13\);

-- Location: LCCOMB_X106_Y13_N6
\minutes|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~89_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|Add1~12_combout\,
	combout => \minutes|Add1~89_combout\);

-- Location: FF_X106_Y13_N7
\minutes|temp0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~89_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(6));

-- Location: LCCOMB_X107_Y13_N14
\minutes|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~14_combout\ = (\minutes|temp0\(7) & (!\minutes|Add1~13\)) # (!\minutes|temp0\(7) & ((\minutes|Add1~13\) # (GND)))
-- \minutes|Add1~15\ = CARRY((!\minutes|Add1~13\) # (!\minutes|temp0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(7),
	datad => VCC,
	cin => \minutes|Add1~13\,
	combout => \minutes|Add1~14_combout\,
	cout => \minutes|Add1~15\);

-- Location: LCCOMB_X106_Y13_N16
\minutes|Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~88_combout\ = (\minutes|process_0~11_combout\ & (\minutes|Add1~14_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Add1~14_combout\,
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~88_combout\);

-- Location: FF_X106_Y13_N17
\minutes|temp0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~88_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(7));

-- Location: LCCOMB_X107_Y13_N16
\minutes|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~16_combout\ = (\minutes|temp0\(8) & (\minutes|Add1~15\ $ (GND))) # (!\minutes|temp0\(8) & (!\minutes|Add1~15\ & VCC))
-- \minutes|Add1~17\ = CARRY((\minutes|temp0\(8) & !\minutes|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(8),
	datad => VCC,
	cin => \minutes|Add1~15\,
	combout => \minutes|Add1~16_combout\,
	cout => \minutes|Add1~17\);

-- Location: LCCOMB_X108_Y13_N26
\minutes|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~87_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~16_combout\,
	combout => \minutes|Add1~87_combout\);

-- Location: FF_X108_Y13_N27
\minutes|temp0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~87_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(8));

-- Location: LCCOMB_X107_Y13_N18
\minutes|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~18_combout\ = (\minutes|temp0\(9) & (!\minutes|Add1~17\)) # (!\minutes|temp0\(9) & ((\minutes|Add1~17\) # (GND)))
-- \minutes|Add1~19\ = CARRY((!\minutes|Add1~17\) # (!\minutes|temp0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(9),
	datad => VCC,
	cin => \minutes|Add1~17\,
	combout => \minutes|Add1~18_combout\,
	cout => \minutes|Add1~19\);

-- Location: LCCOMB_X108_Y13_N28
\minutes|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~86_combout\ = (\minutes|Add1~18_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~18_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~86_combout\);

-- Location: FF_X108_Y13_N29
\minutes|temp0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~86_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(9));

-- Location: LCCOMB_X107_Y13_N20
\minutes|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~20_combout\ = (\minutes|temp0\(10) & (\minutes|Add1~19\ $ (GND))) # (!\minutes|temp0\(10) & (!\minutes|Add1~19\ & VCC))
-- \minutes|Add1~21\ = CARRY((\minutes|temp0\(10) & !\minutes|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(10),
	datad => VCC,
	cin => \minutes|Add1~19\,
	combout => \minutes|Add1~20_combout\,
	cout => \minutes|Add1~21\);

-- Location: LCCOMB_X108_Y13_N2
\minutes|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~85_combout\ = (\minutes|Add1~20_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~20_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~85_combout\);

-- Location: FF_X108_Y13_N3
\minutes|temp0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~85_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(10));

-- Location: LCCOMB_X107_Y13_N22
\minutes|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~22_combout\ = (\minutes|temp0\(11) & (!\minutes|Add1~21\)) # (!\minutes|temp0\(11) & ((\minutes|Add1~21\) # (GND)))
-- \minutes|Add1~23\ = CARRY((!\minutes|Add1~21\) # (!\minutes|temp0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(11),
	datad => VCC,
	cin => \minutes|Add1~21\,
	combout => \minutes|Add1~22_combout\,
	cout => \minutes|Add1~23\);

-- Location: LCCOMB_X108_Y13_N4
\minutes|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~84_combout\ = (\minutes|Add1~22_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~22_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~84_combout\);

-- Location: FF_X108_Y13_N5
\minutes|temp0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~84_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(11));

-- Location: LCCOMB_X107_Y13_N24
\minutes|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~24_combout\ = (\minutes|temp0\(12) & (\minutes|Add1~23\ $ (GND))) # (!\minutes|temp0\(12) & (!\minutes|Add1~23\ & VCC))
-- \minutes|Add1~25\ = CARRY((\minutes|temp0\(12) & !\minutes|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(12),
	datad => VCC,
	cin => \minutes|Add1~23\,
	combout => \minutes|Add1~24_combout\,
	cout => \minutes|Add1~25\);

-- Location: LCCOMB_X108_Y13_N12
\minutes|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~83_combout\ = (\minutes|Add1~24_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Add1~24_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~83_combout\);

-- Location: FF_X108_Y13_N13
\minutes|temp0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~83_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(12));

-- Location: LCCOMB_X107_Y13_N26
\minutes|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~26_combout\ = (\minutes|temp0\(13) & (!\minutes|Add1~25\)) # (!\minutes|temp0\(13) & ((\minutes|Add1~25\) # (GND)))
-- \minutes|Add1~27\ = CARRY((!\minutes|Add1~25\) # (!\minutes|temp0\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(13),
	datad => VCC,
	cin => \minutes|Add1~25\,
	combout => \minutes|Add1~26_combout\,
	cout => \minutes|Add1~27\);

-- Location: LCCOMB_X108_Y13_N6
\minutes|Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~82_combout\ = (\minutes|Add1~26_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Add1~26_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~82_combout\);

-- Location: FF_X108_Y13_N7
\minutes|temp0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~82_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(13));

-- Location: LCCOMB_X107_Y13_N28
\minutes|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~28_combout\ = (\minutes|temp0\(14) & (\minutes|Add1~27\ $ (GND))) # (!\minutes|temp0\(14) & (!\minutes|Add1~27\ & VCC))
-- \minutes|Add1~29\ = CARRY((\minutes|temp0\(14) & !\minutes|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(14),
	datad => VCC,
	cin => \minutes|Add1~27\,
	combout => \minutes|Add1~28_combout\,
	cout => \minutes|Add1~29\);

-- Location: LCCOMB_X108_Y13_N8
\minutes|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~81_combout\ = (\minutes|Add1~28_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~28_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~81_combout\);

-- Location: FF_X108_Y13_N9
\minutes|temp0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~81_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(14));

-- Location: LCCOMB_X107_Y13_N30
\minutes|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~30_combout\ = (\minutes|temp0\(15) & (!\minutes|Add1~29\)) # (!\minutes|temp0\(15) & ((\minutes|Add1~29\) # (GND)))
-- \minutes|Add1~31\ = CARRY((!\minutes|Add1~29\) # (!\minutes|temp0\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(15),
	datad => VCC,
	cin => \minutes|Add1~29\,
	combout => \minutes|Add1~30_combout\,
	cout => \minutes|Add1~31\);

-- Location: LCCOMB_X108_Y13_N22
\minutes|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~80_combout\ = (\minutes|Add1~30_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~30_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~80_combout\);

-- Location: FF_X108_Y13_N23
\minutes|temp0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~80_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(15));

-- Location: LCCOMB_X108_Y13_N10
\minutes|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~5_combout\ = (!\minutes|temp0\(12) & (!\minutes|temp0\(14) & (!\minutes|temp0\(15) & !\minutes|temp0\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(12),
	datab => \minutes|temp0\(14),
	datac => \minutes|temp0\(15),
	datad => \minutes|temp0\(13),
	combout => \minutes|Equal2~5_combout\);

-- Location: LCCOMB_X108_Y13_N20
\minutes|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~6_combout\ = (!\minutes|temp0\(8) & (!\minutes|temp0\(10) & (!\minutes|temp0\(11) & !\minutes|temp0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(8),
	datab => \minutes|temp0\(10),
	datac => \minutes|temp0\(11),
	datad => \minutes|temp0\(9),
	combout => \minutes|Equal2~6_combout\);

-- Location: LCCOMB_X106_Y13_N4
\minutes|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~7_combout\ = (!\minutes|temp0\(6) & (!\minutes|temp0\(7) & (\minutes|temp0[0]~2_combout\ & !\minutes|temp0[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(6),
	datab => \minutes|temp0\(7),
	datac => \minutes|temp0[0]~2_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \minutes|Equal2~7_combout\);

-- Location: LCCOMB_X106_Y13_N2
\minutes|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~8_combout\ = (!\minutes|temp0[5]~18_combout\ & (\minutes|Equal2~7_combout\ & !\minutes|temp0[4]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[5]~18_combout\,
	datac => \minutes|Equal2~7_combout\,
	datad => \minutes|temp0[4]~22_combout\,
	combout => \minutes|Equal2~8_combout\);

-- Location: LCCOMB_X107_Y12_N0
\minutes|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~32_combout\ = (\minutes|temp0\(16) & (\minutes|Add1~31\ $ (GND))) # (!\minutes|temp0\(16) & (!\minutes|Add1~31\ & VCC))
-- \minutes|Add1~33\ = CARRY((\minutes|temp0\(16) & !\minutes|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(16),
	datad => VCC,
	cin => \minutes|Add1~31\,
	combout => \minutes|Add1~32_combout\,
	cout => \minutes|Add1~33\);

-- Location: LCCOMB_X108_Y12_N24
\minutes|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~79_combout\ = (\minutes|Add1~32_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~32_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	combout => \minutes|Add1~79_combout\);

-- Location: FF_X108_Y12_N25
\minutes|temp0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~79_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(16));

-- Location: LCCOMB_X107_Y12_N2
\minutes|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~34_combout\ = (\minutes|temp0\(17) & (!\minutes|Add1~33\)) # (!\minutes|temp0\(17) & ((\minutes|Add1~33\) # (GND)))
-- \minutes|Add1~35\ = CARRY((!\minutes|Add1~33\) # (!\minutes|temp0\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(17),
	datad => VCC,
	cin => \minutes|Add1~33\,
	combout => \minutes|Add1~34_combout\,
	cout => \minutes|Add1~35\);

-- Location: LCCOMB_X108_Y12_N30
\minutes|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~78_combout\ = (\minutes|Add1~34_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~34_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~78_combout\);

-- Location: FF_X108_Y12_N31
\minutes|temp0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~78_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(17));

-- Location: LCCOMB_X107_Y12_N4
\minutes|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~36_combout\ = (\minutes|temp0\(18) & (\minutes|Add1~35\ $ (GND))) # (!\minutes|temp0\(18) & (!\minutes|Add1~35\ & VCC))
-- \minutes|Add1~37\ = CARRY((\minutes|temp0\(18) & !\minutes|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(18),
	datad => VCC,
	cin => \minutes|Add1~35\,
	combout => \minutes|Add1~36_combout\,
	cout => \minutes|Add1~37\);

-- Location: LCCOMB_X108_Y12_N12
\minutes|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~77_combout\ = (!\minutes|Equal2~10_combout\ & (\minutes|Add1~36_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|Add1~36_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~77_combout\);

-- Location: FF_X108_Y12_N13
\minutes|temp0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~77_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(18));

-- Location: LCCOMB_X107_Y12_N6
\minutes|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~38_combout\ = (\minutes|temp0\(19) & (!\minutes|Add1~37\)) # (!\minutes|temp0\(19) & ((\minutes|Add1~37\) # (GND)))
-- \minutes|Add1~39\ = CARRY((!\minutes|Add1~37\) # (!\minutes|temp0\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(19),
	datad => VCC,
	cin => \minutes|Add1~37\,
	combout => \minutes|Add1~38_combout\,
	cout => \minutes|Add1~39\);

-- Location: LCCOMB_X108_Y12_N18
\minutes|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~76_combout\ = (!\minutes|Equal2~10_combout\ & (\minutes|Add1~38_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|Add1~38_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~76_combout\);

-- Location: FF_X108_Y12_N19
\minutes|temp0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~76_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(19));

-- Location: LCCOMB_X107_Y12_N8
\minutes|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~40_combout\ = (\minutes|temp0\(20) & (\minutes|Add1~39\ $ (GND))) # (!\minutes|temp0\(20) & (!\minutes|Add1~39\ & VCC))
-- \minutes|Add1~41\ = CARRY((\minutes|temp0\(20) & !\minutes|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(20),
	datad => VCC,
	cin => \minutes|Add1~39\,
	combout => \minutes|Add1~40_combout\,
	cout => \minutes|Add1~41\);

-- Location: LCCOMB_X108_Y12_N26
\minutes|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~75_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~40_combout\,
	combout => \minutes|Add1~75_combout\);

-- Location: FF_X108_Y12_N27
\minutes|temp0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~75_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(20));

-- Location: LCCOMB_X107_Y12_N10
\minutes|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~42_combout\ = (\minutes|temp0\(21) & (!\minutes|Add1~41\)) # (!\minutes|temp0\(21) & ((\minutes|Add1~41\) # (GND)))
-- \minutes|Add1~43\ = CARRY((!\minutes|Add1~41\) # (!\minutes|temp0\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(21),
	datad => VCC,
	cin => \minutes|Add1~41\,
	combout => \minutes|Add1~42_combout\,
	cout => \minutes|Add1~43\);

-- Location: LCCOMB_X108_Y12_N20
\minutes|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~74_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~42_combout\,
	combout => \minutes|Add1~74_combout\);

-- Location: FF_X108_Y12_N21
\minutes|temp0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~74_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(21));

-- Location: LCCOMB_X107_Y12_N12
\minutes|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~44_combout\ = (\minutes|temp0\(22) & (\minutes|Add1~43\ $ (GND))) # (!\minutes|temp0\(22) & (!\minutes|Add1~43\ & VCC))
-- \minutes|Add1~45\ = CARRY((\minutes|temp0\(22) & !\minutes|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(22),
	datad => VCC,
	cin => \minutes|Add1~43\,
	combout => \minutes|Add1~44_combout\,
	cout => \minutes|Add1~45\);

-- Location: LCCOMB_X108_Y12_N22
\minutes|Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~73_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~44_combout\,
	combout => \minutes|Add1~73_combout\);

-- Location: FF_X108_Y12_N23
\minutes|temp0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~73_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(22));

-- Location: LCCOMB_X107_Y12_N14
\minutes|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~46_combout\ = (\minutes|temp0\(23) & (!\minutes|Add1~45\)) # (!\minutes|temp0\(23) & ((\minutes|Add1~45\) # (GND)))
-- \minutes|Add1~47\ = CARRY((!\minutes|Add1~45\) # (!\minutes|temp0\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(23),
	datad => VCC,
	cin => \minutes|Add1~45\,
	combout => \minutes|Add1~46_combout\,
	cout => \minutes|Add1~47\);

-- Location: LCCOMB_X108_Y12_N16
\minutes|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~72_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~46_combout\,
	combout => \minutes|Add1~72_combout\);

-- Location: FF_X108_Y12_N17
\minutes|temp0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~72_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(23));

-- Location: LCCOMB_X108_Y12_N28
\minutes|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~2_combout\ = (!\minutes|temp0\(22) & (!\minutes|temp0\(23) & (!\minutes|temp0\(20) & !\minutes|temp0\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(22),
	datab => \minutes|temp0\(23),
	datac => \minutes|temp0\(20),
	datad => \minutes|temp0\(21),
	combout => \minutes|Equal2~2_combout\);

-- Location: LCCOMB_X107_Y12_N16
\minutes|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~48_combout\ = (\minutes|temp0\(24) & (\minutes|Add1~47\ $ (GND))) # (!\minutes|temp0\(24) & (!\minutes|Add1~47\ & VCC))
-- \minutes|Add1~49\ = CARRY((\minutes|temp0\(24) & !\minutes|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(24),
	datad => VCC,
	cin => \minutes|Add1~47\,
	combout => \minutes|Add1~48_combout\,
	cout => \minutes|Add1~49\);

-- Location: LCCOMB_X109_Y12_N28
\minutes|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~71_combout\ = (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & \minutes|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datac => \minutes|process_0~11_combout\,
	datad => \minutes|Add1~48_combout\,
	combout => \minutes|Add1~71_combout\);

-- Location: FF_X109_Y12_N29
\minutes|temp0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~71_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(24));

-- Location: LCCOMB_X107_Y12_N18
\minutes|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~50_combout\ = (\minutes|temp0\(25) & (!\minutes|Add1~49\)) # (!\minutes|temp0\(25) & ((\minutes|Add1~49\) # (GND)))
-- \minutes|Add1~51\ = CARRY((!\minutes|Add1~49\) # (!\minutes|temp0\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(25),
	datad => VCC,
	cin => \minutes|Add1~49\,
	combout => \minutes|Add1~50_combout\,
	cout => \minutes|Add1~51\);

-- Location: LCCOMB_X109_Y12_N26
\minutes|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~70_combout\ = (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & \minutes|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datac => \minutes|process_0~11_combout\,
	datad => \minutes|Add1~50_combout\,
	combout => \minutes|Add1~70_combout\);

-- Location: FF_X109_Y12_N27
\minutes|temp0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~70_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(25));

-- Location: LCCOMB_X107_Y12_N20
\minutes|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~52_combout\ = (\minutes|temp0\(26) & (\minutes|Add1~51\ $ (GND))) # (!\minutes|temp0\(26) & (!\minutes|Add1~51\ & VCC))
-- \minutes|Add1~53\ = CARRY((\minutes|temp0\(26) & !\minutes|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(26),
	datad => VCC,
	cin => \minutes|Add1~51\,
	combout => \minutes|Add1~52_combout\,
	cout => \minutes|Add1~53\);

-- Location: LCCOMB_X108_Y12_N6
\minutes|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~69_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~52_combout\,
	combout => \minutes|Add1~69_combout\);

-- Location: FF_X108_Y12_N7
\minutes|temp0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~69_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(26));

-- Location: LCCOMB_X107_Y12_N22
\minutes|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~54_combout\ = (\minutes|temp0\(27) & (!\minutes|Add1~53\)) # (!\minutes|temp0\(27) & ((\minutes|Add1~53\) # (GND)))
-- \minutes|Add1~55\ = CARRY((!\minutes|Add1~53\) # (!\minutes|temp0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(27),
	datad => VCC,
	cin => \minutes|Add1~53\,
	combout => \minutes|Add1~54_combout\,
	cout => \minutes|Add1~55\);

-- Location: LCCOMB_X109_Y12_N16
\minutes|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~68_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datac => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~54_combout\,
	combout => \minutes|Add1~68_combout\);

-- Location: FF_X109_Y12_N17
\minutes|temp0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~68_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(27));

-- Location: LCCOMB_X107_Y12_N24
\minutes|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~56_combout\ = (\minutes|temp0\(28) & (\minutes|Add1~55\ $ (GND))) # (!\minutes|temp0\(28) & (!\minutes|Add1~55\ & VCC))
-- \minutes|Add1~57\ = CARRY((\minutes|temp0\(28) & !\minutes|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(28),
	datad => VCC,
	cin => \minutes|Add1~55\,
	combout => \minutes|Add1~56_combout\,
	cout => \minutes|Add1~57\);

-- Location: LCCOMB_X108_Y12_N14
\minutes|Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~67_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~56_combout\,
	combout => \minutes|Add1~67_combout\);

-- Location: FF_X108_Y12_N15
\minutes|temp0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~67_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(28));

-- Location: LCCOMB_X107_Y12_N26
\minutes|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~58_combout\ = (\minutes|temp0\(29) & (!\minutes|Add1~57\)) # (!\minutes|temp0\(29) & ((\minutes|Add1~57\) # (GND)))
-- \minutes|Add1~59\ = CARRY((!\minutes|Add1~57\) # (!\minutes|temp0\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(29),
	datad => VCC,
	cin => \minutes|Add1~57\,
	combout => \minutes|Add1~58_combout\,
	cout => \minutes|Add1~59\);

-- Location: LCCOMB_X108_Y12_N4
\minutes|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~66_combout\ = (!\minutes|Equal2~10_combout\ & (\minutes|Add1~58_combout\ & \minutes|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|Add1~58_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|Add1~66_combout\);

-- Location: FF_X108_Y12_N5
\minutes|temp0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~66_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(29));

-- Location: LCCOMB_X107_Y12_N28
\minutes|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~60_combout\ = (\minutes|temp0\(30) & (\minutes|Add1~59\ $ (GND))) # (!\minutes|temp0\(30) & (!\minutes|Add1~59\ & VCC))
-- \minutes|Add1~61\ = CARRY((\minutes|temp0\(30) & !\minutes|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(30),
	datad => VCC,
	cin => \minutes|Add1~59\,
	combout => \minutes|Add1~60_combout\,
	cout => \minutes|Add1~61\);

-- Location: LCCOMB_X108_Y12_N10
\minutes|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~65_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~60_combout\,
	combout => \minutes|Add1~65_combout\);

-- Location: FF_X108_Y12_N11
\minutes|temp0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~65_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(30));

-- Location: LCCOMB_X107_Y12_N30
\minutes|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~62_combout\ = \minutes|temp0\(31) $ (\minutes|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0\(31),
	cin => \minutes|Add1~61\,
	combout => \minutes|Add1~62_combout\);

-- Location: LCCOMB_X108_Y12_N8
\minutes|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add1~64_combout\ = (\minutes|process_0~11_combout\ & (!\minutes|Equal2~10_combout\ & \minutes|Add1~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datad => \minutes|Add1~62_combout\,
	combout => \minutes|Add1~64_combout\);

-- Location: FF_X108_Y12_N9
\minutes|temp0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|Add1~64_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0\(31));

-- Location: LCCOMB_X108_Y12_N0
\minutes|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~0_combout\ = (!\minutes|temp0\(31) & (!\minutes|temp0\(28) & (!\minutes|temp0\(29) & !\minutes|temp0\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(31),
	datab => \minutes|temp0\(28),
	datac => \minutes|temp0\(29),
	datad => \minutes|temp0\(30),
	combout => \minutes|Equal2~0_combout\);

-- Location: LCCOMB_X108_Y12_N2
\minutes|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~3_combout\ = (!\minutes|temp0\(18) & (!\minutes|temp0\(19) & (!\minutes|temp0\(17) & !\minutes|temp0\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(18),
	datab => \minutes|temp0\(19),
	datac => \minutes|temp0\(17),
	datad => \minutes|temp0\(16),
	combout => \minutes|Equal2~3_combout\);

-- Location: LCCOMB_X109_Y12_N6
\minutes|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~1_combout\ = (!\minutes|temp0\(25) & (!\minutes|temp0\(27) & (!\minutes|temp0\(26) & !\minutes|temp0\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0\(25),
	datab => \minutes|temp0\(27),
	datac => \minutes|temp0\(26),
	datad => \minutes|temp0\(24),
	combout => \minutes|Equal2~1_combout\);

-- Location: LCCOMB_X108_Y13_N24
\minutes|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~4_combout\ = (\minutes|Equal2~2_combout\ & (\minutes|Equal2~0_combout\ & (\minutes|Equal2~3_combout\ & \minutes|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~2_combout\,
	datab => \minutes|Equal2~0_combout\,
	datac => \minutes|Equal2~3_combout\,
	datad => \minutes|Equal2~1_combout\,
	combout => \minutes|Equal2~4_combout\);

-- Location: LCCOMB_X108_Y13_N14
\minutes|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~9_combout\ = (\minutes|Equal2~5_combout\ & (\minutes|Equal2~6_combout\ & (\minutes|Equal2~8_combout\ & \minutes|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~5_combout\,
	datab => \minutes|Equal2~6_combout\,
	datac => \minutes|Equal2~8_combout\,
	datad => \minutes|Equal2~4_combout\,
	combout => \minutes|Equal2~9_combout\);

-- Location: LCCOMB_X111_Y7_N16
\minutes|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X112_Y7_N24
\minutes|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Dmin[5]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X111_Y7_N26
\minutes|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[4]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X112_Y7_N2
\minutes|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X112_Y7_N6
\minutes|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X112_Y7_N4
\minutes|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[3]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X112_Y7_N10
\minutes|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[2]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X112_Y7_N8
\minutes|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Dmin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Dmin[2]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X112_Y7_N14
\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X112_Y7_N16
\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X112_Y7_N18
\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X112_Y7_N20
\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\minutes|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y7_N22
\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X111_Y13_N16
\minutes|temp1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[1]~5_combout\ = (\INIT~input_o\ & (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\INIT~input_o\ & ((\minutes|temp1[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp1[1]~5_combout\,
	combout => \minutes|temp1[1]~5_combout\);

-- Location: LCCOMB_X112_Y7_N12
\minutes|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Dmin[4]~input_o\)) # (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Dmin[4]~input_o\,
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X112_Y7_N0
\minutes|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X112_Y7_N28
\minutes|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X112_Y7_N26
\minutes|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Dmin[3]~input_o\))) # (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[3]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X112_Y7_N30
\minutes|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X112_Y8_N20
\minutes|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dmin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[2]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X112_Y8_N22
\minutes|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dmin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[1]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X112_Y8_N8
\minutes|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Dmin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Dmin[1]~input_o\,
	combout => \minutes|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X112_Y8_N10
\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\minutes|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\minutes|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y8_N12
\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\minutes|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & 
-- !\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y8_N14
\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\minutes|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\minutes|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y8_N16
\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\minutes|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\minutes|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \minutes|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y8_N18
\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X111_Y13_N2
\minutes|temp1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[0]~1_combout\ = (\INIT~input_o\ & (!\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\INIT~input_o\ & ((\minutes|temp1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp1[0]~1_combout\,
	combout => \minutes|temp1[0]~1_combout\);

-- Location: LCCOMB_X110_Y13_N0
\minutes|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~0_combout\ = \minutes|temp1[0]~2_combout\ $ (VCC)
-- \minutes|Add0~1\ = CARRY(\minutes|temp1[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[0]~2_combout\,
	datad => VCC,
	combout => \minutes|Add0~0_combout\,
	cout => \minutes|Add0~1\);

-- Location: LCCOMB_X111_Y13_N0
\minutes|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~8_combout\ = (!\minutes|temp0[1]~6_combout\ & (\minutes|temp0[3]~14_combout\ & (\minutes|Equal2~9_combout\ & \minutes|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|Equal2~9_combout\,
	datad => \minutes|Add0~0_combout\,
	combout => \minutes|Add0~8_combout\);

-- Location: LCCOMB_X111_Y13_N14
\minutes|temp0[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[2]~33_combout\ = ((\minutes|Equal2~9_combout\ & (!\minutes|temp0[1]~6_combout\ & \minutes|temp0[3]~14_combout\))) # (!\minutes|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~9_combout\,
	datab => \minutes|temp0[1]~6_combout\,
	datac => \minutes|process_0~11_combout\,
	datad => \minutes|temp0[3]~14_combout\,
	combout => \minutes|temp0[2]~33_combout\);

-- Location: LCCOMB_X111_Y13_N4
\minutes|temp1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[0]~3_combout\ = \minutes|temp1[0]~1_combout\ $ (((\minutes|Add0~8_combout\) # ((\minutes|temp1[0]~2_combout\ & !\minutes|temp0[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[0]~2_combout\,
	datab => \minutes|temp1[0]~1_combout\,
	datac => \minutes|Add0~8_combout\,
	datad => \minutes|temp0[2]~33_combout\,
	combout => \minutes|temp1[0]~3_combout\);

-- Location: FF_X111_Y13_N5
\minutes|temp1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[0]~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1[0]~_emulated_q\);

-- Location: LCCOMB_X111_Y13_N6
\minutes|temp1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[0]~2_combout\ = (\INIT~input_o\ & (!\minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\INIT~input_o\ & ((\minutes|temp1[0]~_emulated_q\ $ (\minutes|temp1[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \minutes|temp1[0]~_emulated_q\,
	datac => \INIT~input_o\,
	datad => \minutes|temp1[0]~1_combout\,
	combout => \minutes|temp1[0]~2_combout\);

-- Location: LCCOMB_X110_Y13_N2
\minutes|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~2_combout\ = (\minutes|temp1[1]~6_combout\ & (!\minutes|Add0~1\)) # (!\minutes|temp1[1]~6_combout\ & ((\minutes|Add0~1\) # (GND)))
-- \minutes|Add0~3\ = CARRY((!\minutes|Add0~1\) # (!\minutes|temp1[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datad => VCC,
	cin => \minutes|Add0~1\,
	combout => \minutes|Add0~2_combout\,
	cout => \minutes|Add0~3\);

-- Location: LCCOMB_X111_Y13_N22
\minutes|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~9_combout\ = (!\minutes|temp0[1]~6_combout\ & (\minutes|temp0[3]~14_combout\ & (\minutes|Add0~2_combout\ & \minutes|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|Add0~2_combout\,
	datad => \minutes|Equal2~9_combout\,
	combout => \minutes|Add0~9_combout\);

-- Location: LCCOMB_X111_Y13_N12
\minutes|temp1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[1]~7_combout\ = \minutes|temp1[1]~5_combout\ $ (((\minutes|Add0~9_combout\) # ((\minutes|temp1[1]~6_combout\ & !\minutes|temp0[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[1]~5_combout\,
	datac => \minutes|Add0~9_combout\,
	datad => \minutes|temp0[2]~33_combout\,
	combout => \minutes|temp1[1]~7_combout\);

-- Location: FF_X111_Y13_N13
\minutes|temp1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[1]~7_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1[1]~_emulated_q\);

-- Location: LCCOMB_X111_Y13_N30
\minutes|temp1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[1]~6_combout\ = (\INIT~input_o\ & (((!\minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\INIT~input_o\ & (\minutes|temp1[1]~_emulated_q\ $ (((\minutes|temp1[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~_emulated_q\,
	datab => \minutes|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp1[1]~5_combout\,
	combout => \minutes|temp1[1]~6_combout\);

-- Location: LCCOMB_X110_Y13_N4
\minutes|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~4_combout\ = (\minutes|temp1[2]~10_combout\ & (\minutes|Add0~3\ $ (GND))) # (!\minutes|temp1[2]~10_combout\ & (!\minutes|Add0~3\ & VCC))
-- \minutes|Add0~5\ = CARRY((\minutes|temp1[2]~10_combout\ & !\minutes|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1[2]~10_combout\,
	datad => VCC,
	cin => \minutes|Add0~3\,
	combout => \minutes|Add0~4_combout\,
	cout => \minutes|Add0~5\);

-- Location: LCCOMB_X111_Y13_N20
\minutes|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~10_combout\ = (!\minutes|temp0[1]~6_combout\ & (\minutes|temp0[3]~14_combout\ & (\minutes|Equal2~9_combout\ & \minutes|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|Equal2~9_combout\,
	datad => \minutes|Add0~4_combout\,
	combout => \minutes|Add0~10_combout\);

-- Location: LCCOMB_X111_Y13_N18
\minutes|temp1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[2]~9_combout\ = (\INIT~input_o\ & (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\INIT~input_o\ & ((\minutes|temp1[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp1[2]~9_combout\,
	combout => \minutes|temp1[2]~9_combout\);

-- Location: LCCOMB_X111_Y13_N8
\minutes|temp1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[2]~11_combout\ = \minutes|temp1[2]~9_combout\ $ (((\minutes|Add0~10_combout\) # ((\minutes|temp1[2]~10_combout\ & !\minutes|temp0[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~10_combout\,
	datab => \minutes|temp1[2]~9_combout\,
	datac => \minutes|temp1[2]~10_combout\,
	datad => \minutes|temp0[2]~33_combout\,
	combout => \minutes|temp1[2]~11_combout\);

-- Location: FF_X111_Y13_N9
\minutes|temp1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[2]~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1[2]~_emulated_q\);

-- Location: LCCOMB_X111_Y13_N26
\minutes|temp1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[2]~10_combout\ = (\INIT~input_o\ & (!\minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\INIT~input_o\ & ((\minutes|temp1[2]~_emulated_q\ $ (\minutes|temp1[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INIT~input_o\,
	datab => \minutes|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \minutes|temp1[2]~_emulated_q\,
	datad => \minutes|temp1[2]~9_combout\,
	combout => \minutes|temp1[2]~10_combout\);

-- Location: LCCOMB_X110_Y13_N6
\minutes|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~6_combout\ = (\minutes|temp1\(3) & (!\minutes|Add0~5\)) # (!\minutes|temp1\(3) & ((\minutes|Add0~5\) # (GND)))
-- \minutes|Add0~7\ = CARRY((!\minutes|Add0~5\) # (!\minutes|temp1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(3),
	datad => VCC,
	cin => \minutes|Add0~5\,
	combout => \minutes|Add0~6_combout\,
	cout => \minutes|Add0~7\);

-- Location: LCCOMB_X111_Y13_N28
\minutes|temp1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[3]~15_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~6_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|Add0~6_combout\,
	combout => \minutes|temp1[3]~15_combout\);

-- Location: FF_X111_Y13_N29
\minutes|temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[3]~15_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(3));

-- Location: LCCOMB_X112_Y13_N20
\minutes|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~9_combout\ = (\minutes|temp0[1]~6_combout\ & (!\minutes|temp1\(3) & (!\minutes|temp1[0]~2_combout\ & !\minutes|temp0[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datab => \minutes|temp1\(3),
	datac => \minutes|temp1[0]~2_combout\,
	datad => \minutes|temp0[3]~14_combout\,
	combout => \minutes|process_0~9_combout\);

-- Location: LCCOMB_X110_Y13_N8
\minutes|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~11_combout\ = (\minutes|temp1\(4) & (\minutes|Add0~7\ $ (GND))) # (!\minutes|temp1\(4) & (!\minutes|Add0~7\ & VCC))
-- \minutes|Add0~12\ = CARRY((\minutes|temp1\(4) & !\minutes|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(4),
	datad => VCC,
	cin => \minutes|Add0~7\,
	combout => \minutes|Add0~11_combout\,
	cout => \minutes|Add0~12\);

-- Location: LCCOMB_X109_Y12_N10
\minutes|temp1[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[4]~43_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~11_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(4),
	datad => \minutes|Add0~11_combout\,
	combout => \minutes|temp1[4]~43_combout\);

-- Location: FF_X109_Y12_N11
\minutes|temp1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[4]~43_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(4));

-- Location: LCCOMB_X110_Y13_N10
\minutes|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~13_combout\ = (\minutes|temp1\(5) & (!\minutes|Add0~12\)) # (!\minutes|temp1\(5) & ((\minutes|Add0~12\) # (GND)))
-- \minutes|Add0~14\ = CARRY((!\minutes|Add0~12\) # (!\minutes|temp1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(5),
	datad => VCC,
	cin => \minutes|Add0~12\,
	combout => \minutes|Add0~13_combout\,
	cout => \minutes|Add0~14\);

-- Location: LCCOMB_X109_Y12_N20
\minutes|temp1[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[5]~42_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~13_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(5),
	datad => \minutes|Add0~13_combout\,
	combout => \minutes|temp1[5]~42_combout\);

-- Location: FF_X109_Y12_N21
\minutes|temp1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[5]~42_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(5));

-- Location: LCCOMB_X110_Y13_N12
\minutes|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~15_combout\ = (\minutes|temp1\(6) & (\minutes|Add0~14\ $ (GND))) # (!\minutes|temp1\(6) & (!\minutes|Add0~14\ & VCC))
-- \minutes|Add0~16\ = CARRY((\minutes|temp1\(6) & !\minutes|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(6),
	datad => VCC,
	cin => \minutes|Add0~14\,
	combout => \minutes|Add0~15_combout\,
	cout => \minutes|Add0~16\);

-- Location: LCCOMB_X109_Y12_N14
\minutes|temp1[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[6]~41_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~15_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(6),
	datad => \minutes|Add0~15_combout\,
	combout => \minutes|temp1[6]~41_combout\);

-- Location: FF_X109_Y12_N15
\minutes|temp1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[6]~41_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(6));

-- Location: LCCOMB_X110_Y13_N14
\minutes|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~17_combout\ = (\minutes|temp1\(7) & (!\minutes|Add0~16\)) # (!\minutes|temp1\(7) & ((\minutes|Add0~16\) # (GND)))
-- \minutes|Add0~18\ = CARRY((!\minutes|Add0~16\) # (!\minutes|temp1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(7),
	datad => VCC,
	cin => \minutes|Add0~16\,
	combout => \minutes|Add0~17_combout\,
	cout => \minutes|Add0~18\);

-- Location: LCCOMB_X109_Y12_N8
\minutes|temp1[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[7]~40_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~17_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(7),
	datad => \minutes|Add0~17_combout\,
	combout => \minutes|temp1[7]~40_combout\);

-- Location: FF_X109_Y12_N9
\minutes|temp1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[7]~40_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(7));

-- Location: LCCOMB_X109_Y12_N0
\minutes|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~8_combout\ = (!\minutes|temp1\(4) & (!\minutes|temp1\(6) & (!\minutes|temp1\(7) & !\minutes|temp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(4),
	datab => \minutes|temp1\(6),
	datac => \minutes|temp1\(7),
	datad => \minutes|temp1\(5),
	combout => \minutes|process_0~8_combout\);

-- Location: LCCOMB_X110_Y13_N16
\minutes|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~19_combout\ = (\minutes|temp1\(8) & (\minutes|Add0~18\ $ (GND))) # (!\minutes|temp1\(8) & (!\minutes|Add0~18\ & VCC))
-- \minutes|Add0~20\ = CARRY((\minutes|temp1\(8) & !\minutes|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(8),
	datad => VCC,
	cin => \minutes|Add0~18\,
	combout => \minutes|Add0~19_combout\,
	cout => \minutes|Add0~20\);

-- Location: LCCOMB_X109_Y13_N6
\minutes|temp1[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[8]~39_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~19_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|temp1\(8) & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~19_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(8),
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp1[8]~39_combout\);

-- Location: FF_X109_Y13_N7
\minutes|temp1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[8]~39_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(8));

-- Location: LCCOMB_X110_Y13_N18
\minutes|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~21_combout\ = (\minutes|temp1\(9) & (!\minutes|Add0~20\)) # (!\minutes|temp1\(9) & ((\minutes|Add0~20\) # (GND)))
-- \minutes|Add0~22\ = CARRY((!\minutes|Add0~20\) # (!\minutes|temp1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(9),
	datad => VCC,
	cin => \minutes|Add0~20\,
	combout => \minutes|Add0~21_combout\,
	cout => \minutes|Add0~22\);

-- Location: LCCOMB_X109_Y13_N12
\minutes|temp1[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[9]~38_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~21_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(9),
	datad => \minutes|Add0~21_combout\,
	combout => \minutes|temp1[9]~38_combout\);

-- Location: FF_X109_Y13_N13
\minutes|temp1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[9]~38_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(9));

-- Location: LCCOMB_X110_Y13_N20
\minutes|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~23_combout\ = (\minutes|temp1\(10) & (\minutes|Add0~22\ $ (GND))) # (!\minutes|temp1\(10) & (!\minutes|Add0~22\ & VCC))
-- \minutes|Add0~24\ = CARRY((\minutes|temp1\(10) & !\minutes|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(10),
	datad => VCC,
	cin => \minutes|Add0~22\,
	combout => \minutes|Add0~23_combout\,
	cout => \minutes|Add0~24\);

-- Location: LCCOMB_X109_Y13_N16
\minutes|temp1[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[10]~37_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~23_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(10),
	datad => \minutes|Add0~23_combout\,
	combout => \minutes|temp1[10]~37_combout\);

-- Location: FF_X109_Y13_N17
\minutes|temp1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[10]~37_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(10));

-- Location: LCCOMB_X110_Y13_N22
\minutes|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~25_combout\ = (\minutes|temp1\(11) & (!\minutes|Add0~24\)) # (!\minutes|temp1\(11) & ((\minutes|Add0~24\) # (GND)))
-- \minutes|Add0~26\ = CARRY((!\minutes|Add0~24\) # (!\minutes|temp1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(11),
	datad => VCC,
	cin => \minutes|Add0~24\,
	combout => \minutes|Add0~25_combout\,
	cout => \minutes|Add0~26\);

-- Location: LCCOMB_X109_Y13_N0
\minutes|temp1[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[11]~36_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~25_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|temp1\(11) & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~25_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(11),
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp1[11]~36_combout\);

-- Location: FF_X109_Y13_N1
\minutes|temp1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[11]~36_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(11));

-- Location: LCCOMB_X109_Y13_N8
\minutes|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~7_combout\ = (!\minutes|temp1\(8) & (!\minutes|temp1\(11) & (!\minutes|temp1\(10) & !\minutes|temp1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(8),
	datab => \minutes|temp1\(11),
	datac => \minutes|temp1\(10),
	datad => \minutes|temp1\(9),
	combout => \minutes|process_0~7_combout\);

-- Location: LCCOMB_X110_Y13_N24
\minutes|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~27_combout\ = (\minutes|temp1\(12) & (\minutes|Add0~26\ $ (GND))) # (!\minutes|temp1\(12) & (!\minutes|Add0~26\ & VCC))
-- \minutes|Add0~28\ = CARRY((\minutes|temp1\(12) & !\minutes|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(12),
	datad => VCC,
	cin => \minutes|Add0~26\,
	combout => \minutes|Add0~27_combout\,
	cout => \minutes|Add0~28\);

-- Location: LCCOMB_X109_Y13_N18
\minutes|temp1[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[12]~35_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~27_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(12),
	datad => \minutes|Add0~27_combout\,
	combout => \minutes|temp1[12]~35_combout\);

-- Location: FF_X109_Y13_N19
\minutes|temp1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[12]~35_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(12));

-- Location: LCCOMB_X110_Y13_N26
\minutes|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~29_combout\ = (\minutes|temp1\(13) & (!\minutes|Add0~28\)) # (!\minutes|temp1\(13) & ((\minutes|Add0~28\) # (GND)))
-- \minutes|Add0~30\ = CARRY((!\minutes|Add0~28\) # (!\minutes|temp1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(13),
	datad => VCC,
	cin => \minutes|Add0~28\,
	combout => \minutes|Add0~29_combout\,
	cout => \minutes|Add0~30\);

-- Location: LCCOMB_X109_Y13_N14
\minutes|temp1[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[13]~34_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~29_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|temp1\(13) & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~29_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(13),
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp1[13]~34_combout\);

-- Location: FF_X109_Y13_N15
\minutes|temp1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[13]~34_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(13));

-- Location: LCCOMB_X110_Y13_N28
\minutes|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~31_combout\ = (\minutes|temp1\(14) & (\minutes|Add0~30\ $ (GND))) # (!\minutes|temp1\(14) & (!\minutes|Add0~30\ & VCC))
-- \minutes|Add0~32\ = CARRY((\minutes|temp1\(14) & !\minutes|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(14),
	datad => VCC,
	cin => \minutes|Add0~30\,
	combout => \minutes|Add0~31_combout\,
	cout => \minutes|Add0~32\);

-- Location: LCCOMB_X109_Y13_N22
\minutes|temp1[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[14]~33_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~31_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|temp1\(14) & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~31_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(14),
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp1[14]~33_combout\);

-- Location: FF_X109_Y13_N23
\minutes|temp1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[14]~33_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(14));

-- Location: LCCOMB_X110_Y13_N30
\minutes|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~33_combout\ = (\minutes|temp1\(15) & (!\minutes|Add0~32\)) # (!\minutes|temp1\(15) & ((\minutes|Add0~32\) # (GND)))
-- \minutes|Add0~34\ = CARRY((!\minutes|Add0~32\) # (!\minutes|temp1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(15),
	datad => VCC,
	cin => \minutes|Add0~32\,
	combout => \minutes|Add0~33_combout\,
	cout => \minutes|Add0~34\);

-- Location: LCCOMB_X109_Y13_N26
\minutes|temp1[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[15]~32_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~33_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(15),
	datad => \minutes|Add0~33_combout\,
	combout => \minutes|temp1[15]~32_combout\);

-- Location: FF_X109_Y13_N27
\minutes|temp1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[15]~32_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(15));

-- Location: LCCOMB_X109_Y13_N20
\minutes|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~6_combout\ = (!\minutes|temp1\(14) & (!\minutes|temp1\(13) & (!\minutes|temp1\(15) & !\minutes|temp1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(14),
	datab => \minutes|temp1\(13),
	datac => \minutes|temp1\(15),
	datad => \minutes|temp1\(12),
	combout => \minutes|process_0~6_combout\);

-- Location: LCCOMB_X109_Y13_N10
\minutes|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~10_combout\ = (\minutes|process_0~9_combout\ & (\minutes|process_0~8_combout\ & (\minutes|process_0~7_combout\ & \minutes|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~9_combout\,
	datab => \minutes|process_0~8_combout\,
	datac => \minutes|process_0~7_combout\,
	datad => \minutes|process_0~6_combout\,
	combout => \minutes|process_0~10_combout\);

-- Location: LCCOMB_X111_Y13_N24
\minutes|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~0_combout\ = (\minutes|temp1[1]~6_combout\ & !\minutes|temp1[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1[1]~6_combout\,
	datad => \minutes|temp1[2]~10_combout\,
	combout => \minutes|process_0~0_combout\);

-- Location: LCCOMB_X110_Y12_N0
\minutes|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~35_combout\ = (\minutes|temp1\(16) & (\minutes|Add0~34\ $ (GND))) # (!\minutes|temp1\(16) & (!\minutes|Add0~34\ & VCC))
-- \minutes|Add0~36\ = CARRY((\minutes|temp1\(16) & !\minutes|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(16),
	datad => VCC,
	cin => \minutes|Add0~34\,
	combout => \minutes|Add0~35_combout\,
	cout => \minutes|Add0~36\);

-- Location: LCCOMB_X111_Y12_N2
\minutes|temp1[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[16]~31_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~35_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(16),
	datad => \minutes|Add0~35_combout\,
	combout => \minutes|temp1[16]~31_combout\);

-- Location: FF_X111_Y12_N3
\minutes|temp1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[16]~31_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(16));

-- Location: LCCOMB_X110_Y12_N2
\minutes|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~37_combout\ = (\minutes|temp1\(17) & (!\minutes|Add0~36\)) # (!\minutes|temp1\(17) & ((\minutes|Add0~36\) # (GND)))
-- \minutes|Add0~38\ = CARRY((!\minutes|Add0~36\) # (!\minutes|temp1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(17),
	datad => VCC,
	cin => \minutes|Add0~36\,
	combout => \minutes|Add0~37_combout\,
	cout => \minutes|Add0~38\);

-- Location: LCCOMB_X111_Y12_N0
\minutes|temp1[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[17]~30_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~37_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|process_0~11_combout\ & \minutes|temp1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~37_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|temp1\(17),
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp1[17]~30_combout\);

-- Location: FF_X111_Y12_N1
\minutes|temp1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[17]~30_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(17));

-- Location: LCCOMB_X110_Y12_N4
\minutes|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~39_combout\ = (\minutes|temp1\(18) & (\minutes|Add0~38\ $ (GND))) # (!\minutes|temp1\(18) & (!\minutes|Add0~38\ & VCC))
-- \minutes|Add0~40\ = CARRY((\minutes|temp1\(18) & !\minutes|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(18),
	datad => VCC,
	cin => \minutes|Add0~38\,
	combout => \minutes|Add0~39_combout\,
	cout => \minutes|Add0~40\);

-- Location: LCCOMB_X111_Y12_N14
\minutes|temp1[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[18]~29_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~39_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & ((\minutes|temp1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Add0~39_combout\,
	datac => \minutes|temp1\(18),
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp1[18]~29_combout\);

-- Location: FF_X111_Y12_N15
\minutes|temp1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[18]~29_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(18));

-- Location: LCCOMB_X110_Y12_N6
\minutes|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~41_combout\ = (\minutes|temp1\(19) & (!\minutes|Add0~40\)) # (!\minutes|temp1\(19) & ((\minutes|Add0~40\) # (GND)))
-- \minutes|Add0~42\ = CARRY((!\minutes|Add0~40\) # (!\minutes|temp1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(19),
	datad => VCC,
	cin => \minutes|Add0~40\,
	combout => \minutes|Add0~41_combout\,
	cout => \minutes|Add0~42\);

-- Location: LCCOMB_X111_Y12_N12
\minutes|temp1[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[19]~28_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~41_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & ((\minutes|temp1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Add0~41_combout\,
	datac => \minutes|temp1\(19),
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp1[19]~28_combout\);

-- Location: FF_X111_Y12_N13
\minutes|temp1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[19]~28_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(19));

-- Location: LCCOMB_X110_Y12_N8
\minutes|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~43_combout\ = (\minutes|temp1\(20) & (\minutes|Add0~42\ $ (GND))) # (!\minutes|temp1\(20) & (!\minutes|Add0~42\ & VCC))
-- \minutes|Add0~44\ = CARRY((\minutes|temp1\(20) & !\minutes|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(20),
	datad => VCC,
	cin => \minutes|Add0~42\,
	combout => \minutes|Add0~43_combout\,
	cout => \minutes|Add0~44\);

-- Location: LCCOMB_X111_Y12_N16
\minutes|temp1[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[20]~27_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~43_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(20),
	datad => \minutes|Add0~43_combout\,
	combout => \minutes|temp1[20]~27_combout\);

-- Location: FF_X111_Y12_N17
\minutes|temp1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[20]~27_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(20));

-- Location: LCCOMB_X110_Y12_N10
\minutes|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~45_combout\ = (\minutes|temp1\(21) & (!\minutes|Add0~44\)) # (!\minutes|temp1\(21) & ((\minutes|Add0~44\) # (GND)))
-- \minutes|Add0~46\ = CARRY((!\minutes|Add0~44\) # (!\minutes|temp1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(21),
	datad => VCC,
	cin => \minutes|Add0~44\,
	combout => \minutes|Add0~45_combout\,
	cout => \minutes|Add0~46\);

-- Location: LCCOMB_X111_Y12_N6
\minutes|temp1[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[21]~26_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~45_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(21),
	datad => \minutes|Add0~45_combout\,
	combout => \minutes|temp1[21]~26_combout\);

-- Location: FF_X111_Y12_N7
\minutes|temp1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[21]~26_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(21));

-- Location: LCCOMB_X110_Y12_N12
\minutes|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~47_combout\ = (\minutes|temp1\(22) & (\minutes|Add0~46\ $ (GND))) # (!\minutes|temp1\(22) & (!\minutes|Add0~46\ & VCC))
-- \minutes|Add0~48\ = CARRY((\minutes|temp1\(22) & !\minutes|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(22),
	datad => VCC,
	cin => \minutes|Add0~46\,
	combout => \minutes|Add0~47_combout\,
	cout => \minutes|Add0~48\);

-- Location: LCCOMB_X111_Y12_N24
\minutes|temp1[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[22]~25_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~47_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(22),
	datad => \minutes|Add0~47_combout\,
	combout => \minutes|temp1[22]~25_combout\);

-- Location: FF_X111_Y12_N25
\minutes|temp1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[22]~25_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(22));

-- Location: LCCOMB_X110_Y12_N14
\minutes|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~49_combout\ = (\minutes|temp1\(23) & (!\minutes|Add0~48\)) # (!\minutes|temp1\(23) & ((\minutes|Add0~48\) # (GND)))
-- \minutes|Add0~50\ = CARRY((!\minutes|Add0~48\) # (!\minutes|temp1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(23),
	datad => VCC,
	cin => \minutes|Add0~48\,
	combout => \minutes|Add0~49_combout\,
	cout => \minutes|Add0~50\);

-- Location: LCCOMB_X111_Y12_N26
\minutes|temp1[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[23]~24_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~49_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(23),
	datad => \minutes|Add0~49_combout\,
	combout => \minutes|temp1[23]~24_combout\);

-- Location: FF_X111_Y12_N27
\minutes|temp1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[23]~24_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(23));

-- Location: LCCOMB_X111_Y12_N30
\minutes|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~3_combout\ = (!\minutes|temp1\(21) & (!\minutes|temp1\(22) & (!\minutes|temp1\(23) & !\minutes|temp1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(21),
	datab => \minutes|temp1\(22),
	datac => \minutes|temp1\(23),
	datad => \minutes|temp1\(20),
	combout => \minutes|process_0~3_combout\);

-- Location: LCCOMB_X110_Y12_N16
\minutes|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~51_combout\ = (\minutes|temp1\(24) & (\minutes|Add0~50\ $ (GND))) # (!\minutes|temp1\(24) & (!\minutes|Add0~50\ & VCC))
-- \minutes|Add0~52\ = CARRY((\minutes|temp1\(24) & !\minutes|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(24),
	datad => VCC,
	cin => \minutes|Add0~50\,
	combout => \minutes|Add0~51_combout\,
	cout => \minutes|Add0~52\);

-- Location: LCCOMB_X111_Y12_N10
\minutes|temp1[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[24]~23_combout\ = (\minutes|Equal2~10_combout\ & (\minutes|Add0~51_combout\)) # (!\minutes|Equal2~10_combout\ & (((\minutes|process_0~11_combout\ & \minutes|temp1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add0~51_combout\,
	datab => \minutes|process_0~11_combout\,
	datac => \minutes|temp1\(24),
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp1[24]~23_combout\);

-- Location: FF_X111_Y12_N11
\minutes|temp1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[24]~23_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(24));

-- Location: LCCOMB_X110_Y12_N18
\minutes|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~53_combout\ = (\minutes|temp1\(25) & (!\minutes|Add0~52\)) # (!\minutes|temp1\(25) & ((\minutes|Add0~52\) # (GND)))
-- \minutes|Add0~54\ = CARRY((!\minutes|Add0~52\) # (!\minutes|temp1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(25),
	datad => VCC,
	cin => \minutes|Add0~52\,
	combout => \minutes|Add0~53_combout\,
	cout => \minutes|Add0~54\);

-- Location: LCCOMB_X111_Y12_N20
\minutes|temp1[25]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[25]~22_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~53_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(25),
	datad => \minutes|Add0~53_combout\,
	combout => \minutes|temp1[25]~22_combout\);

-- Location: FF_X111_Y12_N21
\minutes|temp1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[25]~22_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(25));

-- Location: LCCOMB_X110_Y12_N20
\minutes|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~55_combout\ = (\minutes|temp1\(26) & (\minutes|Add0~54\ $ (GND))) # (!\minutes|temp1\(26) & (!\minutes|Add0~54\ & VCC))
-- \minutes|Add0~56\ = CARRY((\minutes|temp1\(26) & !\minutes|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(26),
	datad => VCC,
	cin => \minutes|Add0~54\,
	combout => \minutes|Add0~55_combout\,
	cout => \minutes|Add0~56\);

-- Location: LCCOMB_X111_Y12_N18
\minutes|temp1[26]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[26]~21_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~55_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(26),
	datad => \minutes|Add0~55_combout\,
	combout => \minutes|temp1[26]~21_combout\);

-- Location: FF_X111_Y12_N19
\minutes|temp1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[26]~21_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(26));

-- Location: LCCOMB_X110_Y12_N22
\minutes|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~57_combout\ = (\minutes|temp1\(27) & (!\minutes|Add0~56\)) # (!\minutes|temp1\(27) & ((\minutes|Add0~56\) # (GND)))
-- \minutes|Add0~58\ = CARRY((!\minutes|Add0~56\) # (!\minutes|temp1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(27),
	datad => VCC,
	cin => \minutes|Add0~56\,
	combout => \minutes|Add0~57_combout\,
	cout => \minutes|Add0~58\);

-- Location: LCCOMB_X111_Y12_N8
\minutes|temp1[27]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[27]~20_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~57_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(27),
	datad => \minutes|Add0~57_combout\,
	combout => \minutes|temp1[27]~20_combout\);

-- Location: FF_X111_Y12_N9
\minutes|temp1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[27]~20_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(27));

-- Location: LCCOMB_X110_Y12_N24
\minutes|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~59_combout\ = (\minutes|temp1\(28) & (\minutes|Add0~58\ $ (GND))) # (!\minutes|temp1\(28) & (!\minutes|Add0~58\ & VCC))
-- \minutes|Add0~60\ = CARRY((\minutes|temp1\(28) & !\minutes|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(28),
	datad => VCC,
	cin => \minutes|Add0~58\,
	combout => \minutes|Add0~59_combout\,
	cout => \minutes|Add0~60\);

-- Location: LCCOMB_X109_Y12_N18
\minutes|temp1[28]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[28]~19_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~59_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(28),
	datad => \minutes|Add0~59_combout\,
	combout => \minutes|temp1[28]~19_combout\);

-- Location: FF_X109_Y12_N19
\minutes|temp1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[28]~19_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(28));

-- Location: LCCOMB_X110_Y12_N26
\minutes|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~61_combout\ = (\minutes|temp1\(29) & (!\minutes|Add0~60\)) # (!\minutes|temp1\(29) & ((\minutes|Add0~60\) # (GND)))
-- \minutes|Add0~62\ = CARRY((!\minutes|Add0~60\) # (!\minutes|temp1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(29),
	datad => VCC,
	cin => \minutes|Add0~60\,
	combout => \minutes|Add0~61_combout\,
	cout => \minutes|Add0~62\);

-- Location: LCCOMB_X109_Y12_N24
\minutes|temp1[29]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[29]~18_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~61_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(29),
	datad => \minutes|Add0~61_combout\,
	combout => \minutes|temp1[29]~18_combout\);

-- Location: FF_X109_Y12_N25
\minutes|temp1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[29]~18_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(29));

-- Location: LCCOMB_X110_Y12_N28
\minutes|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~63_combout\ = (\minutes|temp1\(30) & (\minutes|Add0~62\ $ (GND))) # (!\minutes|temp1\(30) & (!\minutes|Add0~62\ & VCC))
-- \minutes|Add0~64\ = CARRY((\minutes|temp1\(30) & !\minutes|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp1\(30),
	datad => VCC,
	cin => \minutes|Add0~62\,
	combout => \minutes|Add0~63_combout\,
	cout => \minutes|Add0~64\);

-- Location: LCCOMB_X109_Y12_N30
\minutes|temp1[30]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[30]~17_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~63_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(30),
	datad => \minutes|Add0~63_combout\,
	combout => \minutes|temp1[30]~17_combout\);

-- Location: FF_X109_Y12_N31
\minutes|temp1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[30]~17_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(30));

-- Location: LCCOMB_X110_Y12_N30
\minutes|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Add0~65_combout\ = \minutes|Add0~64\ $ (\minutes|temp1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \minutes|temp1\(31),
	cin => \minutes|Add0~64\,
	combout => \minutes|Add0~65_combout\);

-- Location: LCCOMB_X109_Y12_N12
\minutes|temp1[31]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp1[31]~16_combout\ = (\minutes|Equal2~10_combout\ & (((\minutes|Add0~65_combout\)))) # (!\minutes|Equal2~10_combout\ & (\minutes|process_0~11_combout\ & (\minutes|temp1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~11_combout\,
	datab => \minutes|Equal2~10_combout\,
	datac => \minutes|temp1\(31),
	datad => \minutes|Add0~65_combout\,
	combout => \minutes|temp1[31]~16_combout\);

-- Location: FF_X109_Y12_N13
\minutes|temp1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp1[31]~16_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp1\(31));

-- Location: LCCOMB_X109_Y12_N4
\minutes|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~1_combout\ = (!\minutes|temp1\(31) & (!\minutes|temp1\(29) & (!\minutes|temp1\(30) & !\minutes|temp1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(31),
	datab => \minutes|temp1\(29),
	datac => \minutes|temp1\(30),
	datad => \minutes|temp1\(28),
	combout => \minutes|process_0~1_combout\);

-- Location: LCCOMB_X111_Y12_N28
\minutes|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~4_combout\ = (!\minutes|temp1\(19) & (!\minutes|temp1\(17) & (!\minutes|temp1\(18) & !\minutes|temp1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(19),
	datab => \minutes|temp1\(17),
	datac => \minutes|temp1\(18),
	datad => \minutes|temp1\(16),
	combout => \minutes|process_0~4_combout\);

-- Location: LCCOMB_X111_Y12_N4
\minutes|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~2_combout\ = (!\minutes|temp1\(24) & (!\minutes|temp1\(25) & (!\minutes|temp1\(27) & !\minutes|temp1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1\(24),
	datab => \minutes|temp1\(25),
	datac => \minutes|temp1\(27),
	datad => \minutes|temp1\(26),
	combout => \minutes|process_0~2_combout\);

-- Location: LCCOMB_X109_Y12_N22
\minutes|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~5_combout\ = (\minutes|process_0~3_combout\ & (\minutes|process_0~1_combout\ & (\minutes|process_0~4_combout\ & \minutes|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~3_combout\,
	datab => \minutes|process_0~1_combout\,
	datac => \minutes|process_0~4_combout\,
	datad => \minutes|process_0~2_combout\,
	combout => \minutes|process_0~5_combout\);

-- Location: LCCOMB_X109_Y13_N30
\minutes|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|process_0~11_combout\ = (((!\minutes|Equal2~9_combout\) # (!\minutes|process_0~5_combout\)) # (!\minutes|process_0~0_combout\)) # (!\minutes|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|process_0~10_combout\,
	datab => \minutes|process_0~0_combout\,
	datac => \minutes|process_0~5_combout\,
	datad => \minutes|Equal2~9_combout\,
	combout => \minutes|process_0~11_combout\);

-- Location: LCCOMB_X112_Y13_N12
\minutes|temp0[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[1]~7_combout\ = \minutes|temp0[1]~5_combout\ $ (((\minutes|Add1~2_combout\ & (\minutes|process_0~11_combout\ & !\minutes|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Add1~2_combout\,
	datab => \minutes|temp0[1]~5_combout\,
	datac => \minutes|process_0~11_combout\,
	datad => \minutes|Equal2~10_combout\,
	combout => \minutes|temp0[1]~7_combout\);

-- Location: FF_X112_Y13_N13
\minutes|temp0[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[1]~7_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[1]~_emulated_q\);

-- Location: LCCOMB_X112_Y13_N22
\minutes|temp0[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[1]~6_combout\ = (\INIT~input_o\ & (((\minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # (!\INIT~input_o\ & (\minutes|temp0[1]~_emulated_q\ $ (((\minutes|temp0[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~_emulated_q\,
	datab => \minutes|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \INIT~input_o\,
	datad => \minutes|temp0[1]~5_combout\,
	combout => \minutes|temp0[1]~6_combout\);

-- Location: LCCOMB_X108_Y13_N16
\minutes|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|Equal2~10_combout\ = (!\minutes|temp0[1]~6_combout\ & (\minutes|Equal2~9_combout\ & \minutes|temp0[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[1]~6_combout\,
	datac => \minutes|Equal2~9_combout\,
	datad => \minutes|temp0[3]~14_combout\,
	combout => \minutes|Equal2~10_combout\);

-- Location: LCCOMB_X106_Y13_N20
\minutes|temp0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[0]~1_combout\ = (\INIT~input_o\ & ((\Dmin[0]~input_o\))) # (!\INIT~input_o\ & (\minutes|temp0[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minutes|temp0[0]~1_combout\,
	datac => \Dmin[0]~input_o\,
	datad => \INIT~input_o\,
	combout => \minutes|temp0[0]~1_combout\);

-- Location: LCCOMB_X106_Y13_N8
\minutes|temp0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[0]~3_combout\ = \minutes|temp0[0]~1_combout\ $ (((!\minutes|Equal2~10_combout\ & (\minutes|Add1~0_combout\ & \minutes|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|Equal2~10_combout\,
	datab => \minutes|temp0[0]~1_combout\,
	datac => \minutes|Add1~0_combout\,
	datad => \minutes|process_0~11_combout\,
	combout => \minutes|temp0[0]~3_combout\);

-- Location: FF_X106_Y13_N9
\minutes|temp0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	d => \minutes|temp0[0]~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|temp0[0]~_emulated_q\);

-- Location: LCCOMB_X106_Y13_N22
\minutes|temp0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \minutes|temp0[0]~2_combout\ = (\INIT~input_o\ & (\Dmin[0]~input_o\)) # (!\INIT~input_o\ & ((\minutes|temp0[0]~_emulated_q\ $ (\minutes|temp0[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dmin[0]~input_o\,
	datab => \INIT~input_o\,
	datac => \minutes|temp0[0]~_emulated_q\,
	datad => \minutes|temp0[0]~1_combout\,
	combout => \minutes|temp0[0]~2_combout\);

-- Location: LCCOMB_X99_Y10_N4
\sevenseg3_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux6~0_combout\ = (\minutes|temp0[1]~6_combout\ & (((\minutes|temp0[3]~14_combout\)))) # (!\minutes|temp0[1]~6_combout\ & (\minutes|temp0[2]~10_combout\ $ (((\minutes|temp0[0]~2_combout\ & !\minutes|temp0[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y10_N22
\sevenseg3_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux5~0_combout\ = (\minutes|temp0[3]~14_combout\ & (((\minutes|temp0[1]~6_combout\) # (\minutes|temp0[2]~10_combout\)))) # (!\minutes|temp0[3]~14_combout\ & (\minutes|temp0[2]~10_combout\ & (\minutes|temp0[0]~2_combout\ $ 
-- (\minutes|temp0[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y10_N12
\sevenseg3_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux4~0_combout\ = (\minutes|temp0[2]~10_combout\ & (((\minutes|temp0[3]~14_combout\)))) # (!\minutes|temp0[2]~10_combout\ & (\minutes|temp0[1]~6_combout\ & ((\minutes|temp0[3]~14_combout\) # (!\minutes|temp0[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y10_N6
\sevenseg3_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux3~0_combout\ = (\minutes|temp0[1]~6_combout\ & ((\minutes|temp0[3]~14_combout\) # ((\minutes|temp0[0]~2_combout\ & \minutes|temp0[2]~10_combout\)))) # (!\minutes|temp0[1]~6_combout\ & (\minutes|temp0[2]~10_combout\ $ 
-- (((\minutes|temp0[0]~2_combout\ & !\minutes|temp0[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y10_N24
\sevenseg3_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux2~0_combout\ = (\minutes|temp0[0]~2_combout\) # ((\minutes|temp0[1]~6_combout\ & (\minutes|temp0[3]~14_combout\)) # (!\minutes|temp0[1]~6_combout\ & ((\minutes|temp0[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y10_N10
\sevenseg3_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux1~0_combout\ = (\minutes|temp0[0]~2_combout\ & ((\minutes|temp0[1]~6_combout\) # (\minutes|temp0[3]~14_combout\ $ (!\minutes|temp0[2]~10_combout\)))) # (!\minutes|temp0[0]~2_combout\ & ((\minutes|temp0[2]~10_combout\ & 
-- (\minutes|temp0[3]~14_combout\)) # (!\minutes|temp0[2]~10_combout\ & ((\minutes|temp0[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y10_N20
\sevenseg3_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3_inst|Mux0~0_combout\ = (\minutes|temp0[1]~6_combout\ & (!\minutes|temp0[3]~14_combout\ & ((!\minutes|temp0[2]~10_combout\) # (!\minutes|temp0[0]~2_combout\)))) # (!\minutes|temp0[1]~6_combout\ & ((\minutes|temp0[3]~14_combout\ $ 
-- (\minutes|temp0[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp0[0]~2_combout\,
	datab => \minutes|temp0[3]~14_combout\,
	datac => \minutes|temp0[1]~6_combout\,
	datad => \minutes|temp0[2]~10_combout\,
	combout => \sevenseg3_inst|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y13_N16
\sevenseg4_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux6~0_combout\ = (\minutes|temp1[1]~6_combout\ & (((\minutes|temp1\(3))))) # (!\minutes|temp1[1]~6_combout\ & (\minutes|temp1[2]~10_combout\ $ (((!\minutes|temp1\(3) & \minutes|temp1[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y13_N30
\sevenseg4_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux5~0_combout\ = (\minutes|temp1[2]~10_combout\ & ((\minutes|temp1\(3)) # (\minutes|temp1[1]~6_combout\ $ (\minutes|temp1[0]~2_combout\)))) # (!\minutes|temp1[2]~10_combout\ & (\minutes|temp1[1]~6_combout\ & (\minutes|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y13_N8
\sevenseg4_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux4~0_combout\ = (\minutes|temp1[2]~10_combout\ & (((\minutes|temp1\(3))))) # (!\minutes|temp1[2]~10_combout\ & (\minutes|temp1[1]~6_combout\ & ((\minutes|temp1\(3)) # (!\minutes|temp1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y13_N14
\sevenseg4_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux3~0_combout\ = (\minutes|temp1[1]~6_combout\ & ((\minutes|temp1\(3)) # ((\minutes|temp1[2]~10_combout\ & \minutes|temp1[0]~2_combout\)))) # (!\minutes|temp1[1]~6_combout\ & (\minutes|temp1[2]~10_combout\ $ (((!\minutes|temp1\(3) & 
-- \minutes|temp1[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y13_N24
\sevenseg4_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux2~0_combout\ = (\minutes|temp1[0]~2_combout\) # ((\minutes|temp1[1]~6_combout\ & ((\minutes|temp1\(3)))) # (!\minutes|temp1[1]~6_combout\ & (\minutes|temp1[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y13_N10
\sevenseg4_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux1~0_combout\ = (\minutes|temp1[0]~2_combout\ & ((\minutes|temp1[1]~6_combout\) # (\minutes|temp1[2]~10_combout\ $ (!\minutes|temp1\(3))))) # (!\minutes|temp1[0]~2_combout\ & ((\minutes|temp1[2]~10_combout\ & ((\minutes|temp1\(3)))) # 
-- (!\minutes|temp1[2]~10_combout\ & (\minutes|temp1[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[0]~2_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1[1]~6_combout\,
	datad => \minutes|temp1\(3),
	combout => \sevenseg4_inst|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y13_N10
\sevenseg4_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4_inst|Mux0~0_combout\ = (\minutes|temp1[1]~6_combout\ & (!\minutes|temp1\(3) & ((!\minutes|temp1[0]~2_combout\) # (!\minutes|temp1[2]~10_combout\)))) # (!\minutes|temp1[1]~6_combout\ & (\minutes|temp1[2]~10_combout\ $ ((\minutes|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minutes|temp1[1]~6_combout\,
	datab => \minutes|temp1[2]~10_combout\,
	datac => \minutes|temp1\(3),
	datad => \minutes|temp1[0]~2_combout\,
	combout => \sevenseg4_inst|Mux0~0_combout\);

-- Location: FF_X109_Y13_N3
\minutes|FWD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds|ALT_INV_FWD~clkctrl_outclk\,
	asdata => \minutes|process_0~11_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minutes|FWD~q\);

-- Location: CLKCTRL_G8
\minutes|FWD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \minutes|FWD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \minutes|FWD~clkctrl_outclk\);

-- Location: LCCOMB_X95_Y10_N28
\hours|temp0[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0[0]~7_combout\ = !\hours|temp0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hours|temp0\(0),
	combout => \hours|temp0[0]~7_combout\);

-- Location: FF_X95_Y10_N29
\hours|temp0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp0[0]~7_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp0\(0));

-- Location: LCCOMB_X95_Y10_N6
\hours|temp0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0~2_combout\ = \hours|temp0\(1) $ (\hours|temp0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hours|temp0\(1),
	datad => \hours|temp0\(0),
	combout => \hours|temp0~2_combout\);

-- Location: LCCOMB_X95_Y10_N24
\hours|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|Add1~0_combout\ = (\hours|temp0\(1) & \hours|temp0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hours|temp0\(1),
	datad => \hours|temp0\(0),
	combout => \hours|Add1~0_combout\);

-- Location: LCCOMB_X95_Y10_N30
\hours|temp0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0~5_combout\ = (!\hours|temp0[0]~4_combout\ & (\hours|temp0\(3) $ (((\hours|temp0\(2) & \hours|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(2),
	datab => \hours|Add1~0_combout\,
	datac => \hours|temp0\(3),
	datad => \hours|temp0[0]~4_combout\,
	combout => \hours|temp0~5_combout\);

-- Location: FF_X95_Y10_N31
\hours|temp0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp0~5_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp0\(3));

-- Location: LCCOMB_X95_Y10_N26
\hours|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|process_0~0_combout\ = (!\hours|temp0\(2) & (!\hours|temp1\(0) & (!\hours|temp0\(3) & \hours|temp0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(2),
	datab => \hours|temp1\(0),
	datac => \hours|temp0\(3),
	datad => \hours|temp0\(0),
	combout => \hours|process_0~0_combout\);

-- Location: LCCOMB_X95_Y10_N4
\hours|temp1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp1[0]~0_combout\ = (\hours|temp1\(0) & (!\hours|Equal2~0_combout\ & ((!\hours|process_0~1_combout\) # (!\hours|process_0~0_combout\)))) # (!\hours|temp1\(0) & (((\hours|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|process_0~0_combout\,
	datab => \hours|process_0~1_combout\,
	datac => \hours|temp1\(0),
	datad => \hours|Equal2~0_combout\,
	combout => \hours|temp1[0]~0_combout\);

-- Location: FF_X95_Y10_N5
\hours|temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp1[0]~0_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp1\(0));

-- Location: LCCOMB_X95_Y10_N2
\hours|temp1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp1[1]~1_combout\ = (\hours|temp1\(1) & (((\hours|Equal2~0_combout\ & !\hours|temp1\(0))) # (!\hours|temp0[0]~4_combout\))) # (!\hours|temp1\(1) & (\hours|Equal2~0_combout\ & (\hours|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|Equal2~0_combout\,
	datab => \hours|temp1\(0),
	datac => \hours|temp1\(1),
	datad => \hours|temp0[0]~4_combout\,
	combout => \hours|temp1[1]~1_combout\);

-- Location: FF_X95_Y10_N3
\hours|temp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp1[1]~1_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp1\(1));

-- Location: LCCOMB_X95_Y10_N0
\hours|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|Add0~0_combout\ = \hours|temp1\(2) $ (((\hours|temp1\(1) & \hours|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hours|temp1\(2),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \hours|Add0~0_combout\);

-- Location: LCCOMB_X95_Y10_N8
\hours|temp1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp1[2]~2_combout\ = (\hours|Equal2~0_combout\ & ((\hours|Add0~0_combout\) # ((\hours|temp1\(2) & !\hours|temp0[0]~4_combout\)))) # (!\hours|Equal2~0_combout\ & (((\hours|temp1\(2) & !\hours|temp0[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|Equal2~0_combout\,
	datab => \hours|Add0~0_combout\,
	datac => \hours|temp1\(2),
	datad => \hours|temp0[0]~4_combout\,
	combout => \hours|temp1[2]~2_combout\);

-- Location: FF_X95_Y10_N9
\hours|temp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp1[2]~2_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp1\(2));

-- Location: LCCOMB_X95_Y10_N14
\hours|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|Add0~1_combout\ = \hours|temp1\(3) $ (((\hours|temp1\(2) & (\hours|temp1\(1) & \hours|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(3),
	datab => \hours|temp1\(2),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \hours|Add0~1_combout\);

-- Location: LCCOMB_X95_Y10_N18
\hours|temp1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp1[3]~3_combout\ = (\hours|Equal2~0_combout\ & ((\hours|Add0~1_combout\) # ((\hours|temp1\(3) & !\hours|temp0[0]~4_combout\)))) # (!\hours|Equal2~0_combout\ & (((\hours|temp1\(3) & !\hours|temp0[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|Equal2~0_combout\,
	datab => \hours|Add0~1_combout\,
	datac => \hours|temp1\(3),
	datad => \hours|temp0[0]~4_combout\,
	combout => \hours|temp1[3]~3_combout\);

-- Location: FF_X95_Y10_N19
\hours|temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp1[3]~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp1\(3));

-- Location: LCCOMB_X95_Y10_N20
\hours|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|process_0~1_combout\ = (!\hours|temp1\(2) & (\hours|temp1\(1) & (\hours|temp0\(1) & !\hours|temp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(1),
	datac => \hours|temp0\(1),
	datad => \hours|temp1\(3),
	combout => \hours|process_0~1_combout\);

-- Location: LCCOMB_X95_Y10_N10
\hours|temp0[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0[0]~4_combout\ = (\hours|Equal2~0_combout\) # ((\hours|process_0~1_combout\ & \hours|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hours|process_0~1_combout\,
	datac => \hours|process_0~0_combout\,
	datad => \hours|Equal2~0_combout\,
	combout => \hours|temp0[0]~4_combout\);

-- Location: LCCOMB_X95_Y10_N16
\hours|temp0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0~6_combout\ = (!\hours|temp0[0]~4_combout\ & (\hours|temp0\(2) $ (((\hours|temp0\(1) & \hours|temp0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(1),
	datab => \hours|temp0\(0),
	datac => \hours|temp0\(2),
	datad => \hours|temp0[0]~4_combout\,
	combout => \hours|temp0~6_combout\);

-- Location: FF_X95_Y10_N17
\hours|temp0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp0~6_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp0\(2));

-- Location: LCCOMB_X95_Y10_N12
\hours|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|Equal2~0_combout\ = (!\hours|temp0\(1) & (!\hours|temp0\(2) & (\hours|temp0\(3) & \hours|temp0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(1),
	datab => \hours|temp0\(2),
	datac => \hours|temp0\(3),
	datad => \hours|temp0\(0),
	combout => \hours|Equal2~0_combout\);

-- Location: LCCOMB_X95_Y10_N22
\hours|temp0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hours|temp0~3_combout\ = (\hours|temp0~2_combout\ & (!\hours|Equal2~0_combout\ & ((!\hours|process_0~1_combout\) # (!\hours|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0~2_combout\,
	datab => \hours|Equal2~0_combout\,
	datac => \hours|process_0~0_combout\,
	datad => \hours|process_0~1_combout\,
	combout => \hours|temp0~3_combout\);

-- Location: FF_X95_Y10_N23
\hours|temp0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \minutes|ALT_INV_FWD~clkctrl_outclk\,
	d => \hours|temp0~3_combout\,
	clrn => \ALT_INV_INIT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hours|temp0\(1));

-- Location: LCCOMB_X92_Y2_N24
\sevenseg5_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux6~0_combout\ = (\hours|temp0\(1) & (((\hours|temp0\(3))))) # (!\hours|temp0\(1) & (\hours|temp0\(2) $ (((\hours|temp0\(0) & !\hours|temp0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux6~0_combout\);

-- Location: LCCOMB_X92_Y2_N10
\sevenseg5_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux5~0_combout\ = (\hours|temp0\(2) & ((\hours|temp0\(3)) # (\hours|temp0\(0) $ (\hours|temp0\(1))))) # (!\hours|temp0\(2) & (((\hours|temp0\(1) & \hours|temp0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux5~0_combout\);

-- Location: LCCOMB_X92_Y2_N12
\sevenseg5_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux4~0_combout\ = (\hours|temp0\(2) & (((\hours|temp0\(3))))) # (!\hours|temp0\(2) & (\hours|temp0\(1) & ((\hours|temp0\(3)) # (!\hours|temp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux4~0_combout\);

-- Location: LCCOMB_X92_Y2_N26
\sevenseg5_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux3~0_combout\ = (\hours|temp0\(1) & ((\hours|temp0\(3)) # ((\hours|temp0\(0) & \hours|temp0\(2))))) # (!\hours|temp0\(1) & (\hours|temp0\(2) $ (((\hours|temp0\(0) & !\hours|temp0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux3~0_combout\);

-- Location: LCCOMB_X92_Y2_N0
\sevenseg5_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux2~0_combout\ = (\hours|temp0\(0)) # ((\hours|temp0\(1) & ((\hours|temp0\(3)))) # (!\hours|temp0\(1) & (\hours|temp0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux2~0_combout\);

-- Location: LCCOMB_X92_Y2_N6
\sevenseg5_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux1~0_combout\ = (\hours|temp0\(0) & ((\hours|temp0\(1)) # (\hours|temp0\(2) $ (!\hours|temp0\(3))))) # (!\hours|temp0\(0) & ((\hours|temp0\(2) & ((\hours|temp0\(3)))) # (!\hours|temp0\(2) & (\hours|temp0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux1~0_combout\);

-- Location: LCCOMB_X92_Y2_N28
\sevenseg5_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5_inst|Mux0~0_combout\ = (\hours|temp0\(1) & (!\hours|temp0\(3) & ((!\hours|temp0\(2)) # (!\hours|temp0\(0))))) # (!\hours|temp0\(1) & ((\hours|temp0\(2) $ (\hours|temp0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp0\(0),
	datab => \hours|temp0\(1),
	datac => \hours|temp0\(2),
	datad => \hours|temp0\(3),
	combout => \sevenseg5_inst|Mux0~0_combout\);

-- Location: LCCOMB_X90_Y3_N20
\sevenseg6_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux6~0_combout\ = (\hours|temp1\(1) & (((\hours|temp1\(3))))) # (!\hours|temp1\(1) & (\hours|temp1\(2) $ (((!\hours|temp1\(3) & \hours|temp1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y3_N10
\sevenseg6_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux5~0_combout\ = (\hours|temp1\(2) & ((\hours|temp1\(3)) # (\hours|temp1\(1) $ (\hours|temp1\(0))))) # (!\hours|temp1\(2) & (\hours|temp1\(3) & (\hours|temp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y3_N16
\sevenseg6_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux4~0_combout\ = (\hours|temp1\(2) & (\hours|temp1\(3))) # (!\hours|temp1\(2) & (\hours|temp1\(1) & ((\hours|temp1\(3)) # (!\hours|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y3_N2
\sevenseg6_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux3~0_combout\ = (\hours|temp1\(1) & ((\hours|temp1\(3)) # ((\hours|temp1\(2) & \hours|temp1\(0))))) # (!\hours|temp1\(1) & (\hours|temp1\(2) $ (((!\hours|temp1\(3) & \hours|temp1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y3_N12
\sevenseg6_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux2~0_combout\ = (\hours|temp1\(0)) # ((\hours|temp1\(1) & ((\hours|temp1\(3)))) # (!\hours|temp1\(1) & (\hours|temp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y3_N18
\sevenseg6_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux1~0_combout\ = (\hours|temp1\(2) & ((\hours|temp1\(3)) # ((\hours|temp1\(1) & \hours|temp1\(0))))) # (!\hours|temp1\(2) & ((\hours|temp1\(1)) # ((!\hours|temp1\(3) & \hours|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y3_N4
\sevenseg6_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg6_inst|Mux0~0_combout\ = (\hours|temp1\(2) & (!\hours|temp1\(3) & ((!\hours|temp1\(0)) # (!\hours|temp1\(1))))) # (!\hours|temp1\(2) & (\hours|temp1\(3) $ ((\hours|temp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hours|temp1\(2),
	datab => \hours|temp1\(3),
	datac => \hours|temp1\(1),
	datad => \hours|temp1\(0),
	combout => \sevenseg6_inst|Mux0~0_combout\);

ww_SEVENSEG1(0) <= \SEVENSEG1[0]~output_o\;

ww_SEVENSEG1(1) <= \SEVENSEG1[1]~output_o\;

ww_SEVENSEG1(2) <= \SEVENSEG1[2]~output_o\;

ww_SEVENSEG1(3) <= \SEVENSEG1[3]~output_o\;

ww_SEVENSEG1(4) <= \SEVENSEG1[4]~output_o\;

ww_SEVENSEG1(5) <= \SEVENSEG1[5]~output_o\;

ww_SEVENSEG1(6) <= \SEVENSEG1[6]~output_o\;

ww_SEVENSEG2(0) <= \SEVENSEG2[0]~output_o\;

ww_SEVENSEG2(1) <= \SEVENSEG2[1]~output_o\;

ww_SEVENSEG2(2) <= \SEVENSEG2[2]~output_o\;

ww_SEVENSEG2(3) <= \SEVENSEG2[3]~output_o\;

ww_SEVENSEG2(4) <= \SEVENSEG2[4]~output_o\;

ww_SEVENSEG2(5) <= \SEVENSEG2[5]~output_o\;

ww_SEVENSEG2(6) <= \SEVENSEG2[6]~output_o\;

ww_SEVENSEG3(0) <= \SEVENSEG3[0]~output_o\;

ww_SEVENSEG3(1) <= \SEVENSEG3[1]~output_o\;

ww_SEVENSEG3(2) <= \SEVENSEG3[2]~output_o\;

ww_SEVENSEG3(3) <= \SEVENSEG3[3]~output_o\;

ww_SEVENSEG3(4) <= \SEVENSEG3[4]~output_o\;

ww_SEVENSEG3(5) <= \SEVENSEG3[5]~output_o\;

ww_SEVENSEG3(6) <= \SEVENSEG3[6]~output_o\;

ww_SEVENSEG4(0) <= \SEVENSEG4[0]~output_o\;

ww_SEVENSEG4(1) <= \SEVENSEG4[1]~output_o\;

ww_SEVENSEG4(2) <= \SEVENSEG4[2]~output_o\;

ww_SEVENSEG4(3) <= \SEVENSEG4[3]~output_o\;

ww_SEVENSEG4(4) <= \SEVENSEG4[4]~output_o\;

ww_SEVENSEG4(5) <= \SEVENSEG4[5]~output_o\;

ww_SEVENSEG4(6) <= \SEVENSEG4[6]~output_o\;

ww_SEVENSEG5(0) <= \SEVENSEG5[0]~output_o\;

ww_SEVENSEG5(1) <= \SEVENSEG5[1]~output_o\;

ww_SEVENSEG5(2) <= \SEVENSEG5[2]~output_o\;

ww_SEVENSEG5(3) <= \SEVENSEG5[3]~output_o\;

ww_SEVENSEG5(4) <= \SEVENSEG5[4]~output_o\;

ww_SEVENSEG5(5) <= \SEVENSEG5[5]~output_o\;

ww_SEVENSEG5(6) <= \SEVENSEG5[6]~output_o\;

ww_SEVENSEG6(0) <= \SEVENSEG6[0]~output_o\;

ww_SEVENSEG6(1) <= \SEVENSEG6[1]~output_o\;

ww_SEVENSEG6(2) <= \SEVENSEG6[2]~output_o\;

ww_SEVENSEG6(3) <= \SEVENSEG6[3]~output_o\;

ww_SEVENSEG6(4) <= \SEVENSEG6[4]~output_o\;

ww_SEVENSEG6(5) <= \SEVENSEG6[5]~output_o\;

ww_SEVENSEG6(6) <= \SEVENSEG6[6]~output_o\;
END structure;


