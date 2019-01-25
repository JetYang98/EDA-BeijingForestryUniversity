-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "05/31/2018 11:36:22"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	D_clock IS
    PORT (
	QHa : OUT std_logic_vector(0 TO 6);
	LDN : IN std_logic;
	CLK : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(2 DOWNTO 0);
	QHb : OUT std_logic_vector(0 TO 6);
	QMa : OUT std_logic_vector(0 TO 6);
	QMb : OUT std_logic_vector(0 TO 6);
	QSa : OUT std_logic_vector(0 TO 6);
	QSb : OUT std_logic_vector(0 TO 6)
	);
END D_clock;

ARCHITECTURE structure OF D_clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_QHa : std_logic_vector(0 TO 6);
SIGNAL ww_LDN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_QHb : std_logic_vector(0 TO 6);
SIGNAL ww_QMa : std_logic_vector(0 TO 6);
SIGNAL ww_QMb : std_logic_vector(0 TO 6);
SIGNAL ww_QSa : std_logic_vector(0 TO 6);
SIGNAL ww_QSb : std_logic_vector(0 TO 6);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|CNT[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|op_1~1_sumout\ : std_logic;
SIGNAL \inst4|op_1~2\ : std_logic;
SIGNAL \inst4|op_1~5_sumout\ : std_logic;
SIGNAL \inst4|op_1~6\ : std_logic;
SIGNAL \inst4|op_1~9_sumout\ : std_logic;
SIGNAL \inst4|op_1~10\ : std_logic;
SIGNAL \inst4|op_1~13_sumout\ : std_logic;
SIGNAL \inst4|op_1~14\ : std_logic;
SIGNAL \inst4|op_1~17_sumout\ : std_logic;
SIGNAL \inst4|op_1~18\ : std_logic;
SIGNAL \inst4|op_1~21_sumout\ : std_logic;
SIGNAL \inst4|op_1~22\ : std_logic;
SIGNAL \inst4|op_1~25_sumout\ : std_logic;
SIGNAL \inst4|op_1~26\ : std_logic;
SIGNAL \inst4|op_1~29_sumout\ : std_logic;
SIGNAL \inst4|op_1~30\ : std_logic;
SIGNAL \inst4|op_1~33_sumout\ : std_logic;
SIGNAL \inst4|op_1~34\ : std_logic;
SIGNAL \inst4|op_1~37_sumout\ : std_logic;
SIGNAL \inst4|op_1~38\ : std_logic;
SIGNAL \inst4|op_1~41_sumout\ : std_logic;
SIGNAL \inst4|op_1~42\ : std_logic;
SIGNAL \inst4|op_1~45_sumout\ : std_logic;
SIGNAL \inst4|op_1~46\ : std_logic;
SIGNAL \inst4|op_1~49_sumout\ : std_logic;
SIGNAL \inst4|op_1~50\ : std_logic;
SIGNAL \inst4|op_1~53_sumout\ : std_logic;
SIGNAL \inst4|op_1~54\ : std_logic;
SIGNAL \inst4|op_1~57_sumout\ : std_logic;
SIGNAL \inst4|op_1~58\ : std_logic;
SIGNAL \inst4|op_1~61_sumout\ : std_logic;
SIGNAL \inst4|op_1~62\ : std_logic;
SIGNAL \inst4|op_1~65_sumout\ : std_logic;
SIGNAL \inst4|op_1~66\ : std_logic;
SIGNAL \inst4|op_1~69_sumout\ : std_logic;
SIGNAL \inst4|op_1~70\ : std_logic;
SIGNAL \inst4|op_1~73_sumout\ : std_logic;
SIGNAL \inst4|op_1~74\ : std_logic;
SIGNAL \inst4|op_1~77_sumout\ : std_logic;
SIGNAL \inst4|op_1~78\ : std_logic;
SIGNAL \inst4|op_1~81_sumout\ : std_logic;
SIGNAL \inst4|op_1~82\ : std_logic;
SIGNAL \inst4|op_1~85_sumout\ : std_logic;
SIGNAL \inst4|op_1~86\ : std_logic;
SIGNAL \inst4|op_1~89_sumout\ : std_logic;
SIGNAL \inst4|op_1~90\ : std_logic;
SIGNAL \inst4|op_1~93_sumout\ : std_logic;
SIGNAL \inst4|_~37_combout\ : std_logic;
SIGNAL \inst4|_~38_combout\ : std_logic;
SIGNAL \inst4|_~39_combout\ : std_logic;
SIGNAL \inst4|_~40_combout\ : std_logic;
SIGNAL \inst4|_~41_combout\ : std_logic;
SIGNAL \inst4|_~42_combout\ : std_logic;
SIGNAL \inst4|CNT[0]~25_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|CNT[24]~clkctrl_outclk\ : std_logic;
SIGNAL \LDN~combout\ : std_logic;
SIGNAL \inst|tmpb~4_combout\ : std_logic;
SIGNAL \inst3|MA[0]~20_combout\ : std_logic;
SIGNAL \inst3|MA[0]~21_combout\ : std_logic;
SIGNAL \inst1|tmpa[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst2|tmpa~12_combout\ : std_logic;
SIGNAL \inst2|tmpa[2]~13_combout\ : std_logic;
SIGNAL \inst3|SA[0]~12_combout\ : std_logic;
SIGNAL \inst2|tmpa[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst2|tmpa~14_combout\ : std_logic;
SIGNAL \inst2|tmpa~15_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|tmpa~16_combout\ : std_logic;
SIGNAL \inst3|SB[0]~9_combout\ : std_logic;
SIGNAL \inst2|tmpb[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst2|tmpb[0]~14_combout\ : std_logic;
SIGNAL \inst2|tmpb~15_combout\ : std_logic;
SIGNAL \inst2|tmpb~12_combout\ : std_logic;
SIGNAL \inst2|tmpb~13_combout\ : std_logic;
SIGNAL \inst2|tmpb~16_combout\ : std_logic;
SIGNAL \inst2|RCO~4_combout\ : std_logic;
SIGNAL \inst1|tmpa[0]~15_combout\ : std_logic;
SIGNAL \inst1|tmpa~14DUPLICATE_combout\ : std_logic;
SIGNAL \inst1|tmpa[1]~DUPLICATE_regout\ : std_logic;
SIGNAL \inst1|tmpa~13_combout\ : std_logic;
SIGNAL \inst1|tmpa~16_combout\ : std_logic;
SIGNAL \inst1|tmpb~12_combout\ : std_logic;
SIGNAL \inst3|MB[0]~9_combout\ : std_logic;
SIGNAL \inst1|tmpb[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst1|tmpa[0]~12_combout\ : std_logic;
SIGNAL \inst1|tmpb[1]~16_combout\ : std_logic;
SIGNAL \inst1|tmpb~14_combout\ : std_logic;
SIGNAL \inst1|tmpb~15_combout\ : std_logic;
SIGNAL \inst1|tmpb~13_combout\ : std_logic;
SIGNAL \inst1|RCO~4_combout\ : std_logic;
SIGNAL \inst|tmpa[0]~19_combout\ : std_logic;
SIGNAL \inst|tmpa[0]~20_combout\ : std_logic;
SIGNAL \inst|tmpa[1]~21_combout\ : std_logic;
SIGNAL \inst|tmpa~17_combout\ : std_logic;
SIGNAL \inst|tmpb~5_combout\ : std_logic;
SIGNAL \inst|tmpb~regout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|tmpa~16_combout\ : std_logic;
SIGNAL \inst|tmpa~18_combout\ : std_logic;
SIGNAL \inst9|Mux0~5_combout\ : std_logic;
SIGNAL \inst9|Mux1~6_combout\ : std_logic;
SIGNAL \inst9|Mux2~6_combout\ : std_logic;
SIGNAL \inst9|Mux3~6_combout\ : std_logic;
SIGNAL \inst9|Mux4~6_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~6_combout\ : std_logic;
SIGNAL \inst7|Mux0~5_combout\ : std_logic;
SIGNAL \inst1|tmpa~14_combout\ : std_logic;
SIGNAL \inst7|Mux1~6_combout\ : std_logic;
SIGNAL \inst7|Mux2~6_combout\ : std_logic;
SIGNAL \inst7|Mux3~6_combout\ : std_logic;
SIGNAL \inst7|Mux4~6_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~6_combout\ : std_logic;
SIGNAL \inst8|Mux0~5_combout\ : std_logic;
SIGNAL \inst8|Mux1~6_combout\ : std_logic;
SIGNAL \inst8|Mux2~6_combout\ : std_logic;
SIGNAL \inst8|Mux3~6_combout\ : std_logic;
SIGNAL \inst8|Mux4~6_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~6_combout\ : std_logic;
SIGNAL \inst5|Mux0~5_combout\ : std_logic;
SIGNAL \inst5|Mux1~6_combout\ : std_logic;
SIGNAL \inst5|Mux2~6_combout\ : std_logic;
SIGNAL \inst5|Mux3~6_combout\ : std_logic;
SIGNAL \inst5|Mux4~6_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~6_combout\ : std_logic;
SIGNAL \inst6|Mux0~5_combout\ : std_logic;
SIGNAL \inst6|Mux1~6_combout\ : std_logic;
SIGNAL \inst6|Mux2~6_combout\ : std_logic;
SIGNAL \inst6|Mux3~6_combout\ : std_logic;
SIGNAL \inst6|Mux4~6_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~6_combout\ : std_logic;
SIGNAL \inst4|CNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst1|tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|tmpb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|tmpb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|ALT_INV_tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_tmpb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_tmpb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|ALT_INV_CNT\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|ALT_INV_tmpa\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tmpb~regout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_tmpa~12_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_tmpa[2]~13_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_tmpb~12_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_tmpb~15_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_tmpb~12_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_tmpb~14_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_RCO~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_tmpa[0]~12_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_MA[0]~20_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tmpb~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_RCO~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tmpa~16_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tmpa[0]~19_combout\ : std_logic;
SIGNAL \inst4|ALT_INV__~37_combout\ : std_logic;
SIGNAL \inst4|ALT_INV__~38_combout\ : std_logic;
SIGNAL \inst4|ALT_INV__~39_combout\ : std_logic;
SIGNAL \inst4|ALT_INV__~40_combout\ : std_logic;
SIGNAL \inst4|ALT_INV__~41_combout\ : std_logic;
SIGNAL \ALT_INV_LDN~combout\ : std_logic;
SIGNAL \ALT_INV_S~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_I~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\ : std_logic;

BEGIN

QHa <= ww_QHa;
ww_LDN <= LDN;
ww_CLK <= CLK;
ww_I <= I;
ww_S <= S;
QHb <= ww_QHb;
QMa <= ww_QMa;
QMb <= ww_QMb;
QSa <= ww_QSa;
QSb <= ww_QSb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\inst4|CNT[24]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|CNT\(24));
\inst1|ALT_INV_tmpa\(0) <= NOT \inst1|tmpa\(0);
\inst1|ALT_INV_tmpb\(0) <= NOT \inst1|tmpb\(0);
\inst2|ALT_INV_tmpa\(0) <= NOT \inst2|tmpa\(0);
\inst2|ALT_INV_tmpb\(0) <= NOT \inst2|tmpb\(0);
\inst4|ALT_INV_CNT\(24) <= NOT \inst4|CNT\(24);
\inst4|ALT_INV_CNT\(23) <= NOT \inst4|CNT\(23);
\inst4|ALT_INV_CNT\(22) <= NOT \inst4|CNT\(22);
\inst4|ALT_INV_CNT\(21) <= NOT \inst4|CNT\(21);
\inst4|ALT_INV_CNT\(20) <= NOT \inst4|CNT\(20);
\inst4|ALT_INV_CNT\(19) <= NOT \inst4|CNT\(19);
\inst4|ALT_INV_CNT\(18) <= NOT \inst4|CNT\(18);
\inst4|ALT_INV_CNT\(17) <= NOT \inst4|CNT\(17);
\inst4|ALT_INV_CNT\(16) <= NOT \inst4|CNT\(16);
\inst4|ALT_INV_CNT\(15) <= NOT \inst4|CNT\(15);
\inst4|ALT_INV_CNT\(14) <= NOT \inst4|CNT\(14);
\inst4|ALT_INV_CNT\(13) <= NOT \inst4|CNT\(13);
\inst4|ALT_INV_CNT\(12) <= NOT \inst4|CNT\(12);
\inst4|ALT_INV_CNT\(11) <= NOT \inst4|CNT\(11);
\inst4|ALT_INV_CNT\(10) <= NOT \inst4|CNT\(10);
\inst4|ALT_INV_CNT\(9) <= NOT \inst4|CNT\(9);
\inst4|ALT_INV_CNT\(8) <= NOT \inst4|CNT\(8);
\inst4|ALT_INV_CNT\(7) <= NOT \inst4|CNT\(7);
\inst4|ALT_INV_CNT\(6) <= NOT \inst4|CNT\(6);
\inst4|ALT_INV_CNT\(5) <= NOT \inst4|CNT\(5);
\inst4|ALT_INV_CNT\(4) <= NOT \inst4|CNT\(4);
\inst4|ALT_INV_CNT\(3) <= NOT \inst4|CNT\(3);
\inst4|ALT_INV_CNT\(2) <= NOT \inst4|CNT\(2);
\inst4|ALT_INV_CNT\(1) <= NOT \inst4|CNT\(1);
\inst|ALT_INV_tmpa\(0) <= NOT \inst|tmpa\(0);
\inst|ALT_INV_tmpa\(1) <= NOT \inst|tmpa\(1);
\inst|ALT_INV_tmpa\(2) <= NOT \inst|tmpa\(2);
\inst|ALT_INV_tmpa\(3) <= NOT \inst|tmpa\(3);
\inst9|ALT_INV_Mux0~5_combout\ <= NOT \inst9|Mux0~5_combout\;
\inst9|ALT_INV_Mux1~6_combout\ <= NOT \inst9|Mux1~6_combout\;
\inst9|ALT_INV_Mux2~6_combout\ <= NOT \inst9|Mux2~6_combout\;
\inst9|ALT_INV_Mux3~6_combout\ <= NOT \inst9|Mux3~6_combout\;
\inst9|ALT_INV_Mux4~6_combout\ <= NOT \inst9|Mux4~6_combout\;
\inst|ALT_INV_tmpb~regout\ <= NOT \inst|tmpb~regout\;
\inst1|ALT_INV_tmpa\(1) <= NOT \inst1|tmpa\(1);
\inst1|ALT_INV_tmpa\(2) <= NOT \inst1|tmpa\(2);
\inst1|ALT_INV_tmpa\(3) <= NOT \inst1|tmpa\(3);
\inst7|ALT_INV_Mux0~5_combout\ <= NOT \inst7|Mux0~5_combout\;
\inst7|ALT_INV_Mux1~6_combout\ <= NOT \inst7|Mux1~6_combout\;
\inst7|ALT_INV_Mux2~6_combout\ <= NOT \inst7|Mux2~6_combout\;
\inst7|ALT_INV_Mux3~6_combout\ <= NOT \inst7|Mux3~6_combout\;
\inst7|ALT_INV_Mux4~6_combout\ <= NOT \inst7|Mux4~6_combout\;
\inst1|ALT_INV_tmpb\(1) <= NOT \inst1|tmpb\(1);
\inst1|ALT_INV_tmpb\(2) <= NOT \inst1|tmpb\(2);
\inst8|ALT_INV_Mux1~6_combout\ <= NOT \inst8|Mux1~6_combout\;
\inst2|ALT_INV_tmpa\(1) <= NOT \inst2|tmpa\(1);
\inst2|ALT_INV_tmpa\(2) <= NOT \inst2|tmpa\(2);
\inst2|ALT_INV_tmpa\(3) <= NOT \inst2|tmpa\(3);
\inst5|ALT_INV_Mux0~5_combout\ <= NOT \inst5|Mux0~5_combout\;
\inst5|ALT_INV_Mux1~6_combout\ <= NOT \inst5|Mux1~6_combout\;
\inst5|ALT_INV_Mux2~6_combout\ <= NOT \inst5|Mux2~6_combout\;
\inst5|ALT_INV_Mux3~6_combout\ <= NOT \inst5|Mux3~6_combout\;
\inst5|ALT_INV_Mux4~6_combout\ <= NOT \inst5|Mux4~6_combout\;
\inst2|ALT_INV_tmpb\(1) <= NOT \inst2|tmpb\(1);
\inst2|ALT_INV_tmpb\(2) <= NOT \inst2|tmpb\(2);
\inst6|ALT_INV_Mux1~6_combout\ <= NOT \inst6|Mux1~6_combout\;
\inst2|ALT_INV_tmpa~12_combout\ <= NOT \inst2|tmpa~12_combout\;
\inst2|ALT_INV_tmpa[2]~13_combout\ <= NOT \inst2|tmpa[2]~13_combout\;
\inst2|ALT_INV_Add1~0_combout\ <= NOT \inst2|Add1~0_combout\;
\inst2|ALT_INV_tmpb~12_combout\ <= NOT \inst2|tmpb~12_combout\;
\inst2|ALT_INV_tmpb~15_combout\ <= NOT \inst2|tmpb~15_combout\;
\inst4|ALT_INV_CNT\(0) <= NOT \inst4|CNT\(0);
\inst1|ALT_INV_tmpb~12_combout\ <= NOT \inst1|tmpb~12_combout\;
\inst1|ALT_INV_tmpb~14_combout\ <= NOT \inst1|tmpb~14_combout\;
\inst2|ALT_INV_RCO~4_combout\ <= NOT \inst2|RCO~4_combout\;
\inst1|ALT_INV_tmpa[0]~12_combout\ <= NOT \inst1|tmpa[0]~12_combout\;
\inst3|ALT_INV_MA[0]~20_combout\ <= NOT \inst3|MA[0]~20_combout\;
\inst|ALT_INV_tmpb~4_combout\ <= NOT \inst|tmpb~4_combout\;
\inst1|ALT_INV_RCO~4_combout\ <= NOT \inst1|RCO~4_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_tmpa~16_combout\ <= NOT \inst|tmpa~16_combout\;
\inst|ALT_INV_tmpa[0]~19_combout\ <= NOT \inst|tmpa[0]~19_combout\;
\inst4|ALT_INV__~37_combout\ <= NOT \inst4|_~37_combout\;
\inst4|ALT_INV__~38_combout\ <= NOT \inst4|_~38_combout\;
\inst4|ALT_INV__~39_combout\ <= NOT \inst4|_~39_combout\;
\inst4|ALT_INV__~40_combout\ <= NOT \inst4|_~40_combout\;
\inst4|ALT_INV__~41_combout\ <= NOT \inst4|_~41_combout\;
\ALT_INV_LDN~combout\ <= NOT \LDN~combout\;
\ALT_INV_S~combout\(2) <= NOT \S~combout\(2);
\ALT_INV_S~combout\(0) <= NOT \S~combout\(0);
\ALT_INV_I~combout\(0) <= NOT \I~combout\(0);
\ALT_INV_S~combout\(1) <= NOT \S~combout\(1);
\ALT_INV_I~combout\(1) <= NOT \I~combout\(1);
\ALT_INV_I~combout\(2) <= NOT \I~combout\(2);
\ALT_INV_I~combout\(3) <= NOT \I~combout\(3);
\inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\ <= NOT \inst1|tmpa[1]~DUPLICATE_regout\;

\inst4|CNT[24]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \inst4|op_1~93_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(24));

\inst4|CNT[23]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~89_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(23));

\inst4|CNT[22]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~85_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(22));

\inst4|CNT[21]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~81_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(21));

\inst4|CNT[20]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~77_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(20));

\inst4|CNT[19]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~73_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(19));

\inst4|CNT[18]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~69_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(18));

\inst4|CNT[17]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~65_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(17));

\inst4|CNT[16]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~61_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(16));

\inst4|CNT[15]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~57_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(15));

\inst4|CNT[14]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~53_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(14));

\inst4|CNT[13]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~49_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(13));

\inst4|CNT[12]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~45_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(12));

\inst4|CNT[11]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~41_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(11));

\inst4|CNT[10]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~37_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(10));

\inst4|CNT[9]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~33_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(9));

\inst4|CNT[8]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~29_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(8));

\inst4|CNT[7]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~25_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(7));

\inst4|CNT[6]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~21_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(6));

\inst4|CNT[5]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~17_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(5));

\inst4|CNT[4]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~13_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(4));

\inst4|CNT[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~9_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(3));

\inst4|CNT[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~5_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(2));

\inst4|CNT[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|op_1~1_sumout\,
	sclr => \inst4|_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(1));

\inst4|op_1~1\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~1_sumout\ = SUM(( \inst4|CNT\(1) ) + ( \inst4|CNT\(0) ) + ( !VCC ))
-- \inst4|op_1~2\ = CARRY(( \inst4|CNT\(1) ) + ( \inst4|CNT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(1),
	dataf => \inst4|ALT_INV_CNT\(0),
	cin => GND,
	sumout => \inst4|op_1~1_sumout\,
	cout => \inst4|op_1~2\);

\inst4|op_1~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~5_sumout\ = SUM(( \inst4|CNT\(2) ) + ( GND ) + ( \inst4|op_1~2\ ))
-- \inst4|op_1~6\ = CARRY(( \inst4|CNT\(2) ) + ( GND ) + ( \inst4|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(2),
	cin => \inst4|op_1~2\,
	sumout => \inst4|op_1~5_sumout\,
	cout => \inst4|op_1~6\);

\inst4|op_1~9\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~9_sumout\ = SUM(( \inst4|CNT\(3) ) + ( GND ) + ( \inst4|op_1~6\ ))
-- \inst4|op_1~10\ = CARRY(( \inst4|CNT\(3) ) + ( GND ) + ( \inst4|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(3),
	cin => \inst4|op_1~6\,
	sumout => \inst4|op_1~9_sumout\,
	cout => \inst4|op_1~10\);

\inst4|op_1~13\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~13_sumout\ = SUM(( \inst4|CNT\(4) ) + ( GND ) + ( \inst4|op_1~10\ ))
-- \inst4|op_1~14\ = CARRY(( \inst4|CNT\(4) ) + ( GND ) + ( \inst4|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(4),
	cin => \inst4|op_1~10\,
	sumout => \inst4|op_1~13_sumout\,
	cout => \inst4|op_1~14\);

\inst4|op_1~17\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~17_sumout\ = SUM(( \inst4|CNT\(5) ) + ( GND ) + ( \inst4|op_1~14\ ))
-- \inst4|op_1~18\ = CARRY(( \inst4|CNT\(5) ) + ( GND ) + ( \inst4|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(5),
	cin => \inst4|op_1~14\,
	sumout => \inst4|op_1~17_sumout\,
	cout => \inst4|op_1~18\);

\inst4|op_1~21\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~21_sumout\ = SUM(( \inst4|CNT\(6) ) + ( GND ) + ( \inst4|op_1~18\ ))
-- \inst4|op_1~22\ = CARRY(( \inst4|CNT\(6) ) + ( GND ) + ( \inst4|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(6),
	cin => \inst4|op_1~18\,
	sumout => \inst4|op_1~21_sumout\,
	cout => \inst4|op_1~22\);

\inst4|op_1~25\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~25_sumout\ = SUM(( \inst4|CNT\(7) ) + ( GND ) + ( \inst4|op_1~22\ ))
-- \inst4|op_1~26\ = CARRY(( \inst4|CNT\(7) ) + ( GND ) + ( \inst4|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(7),
	cin => \inst4|op_1~22\,
	sumout => \inst4|op_1~25_sumout\,
	cout => \inst4|op_1~26\);

\inst4|op_1~29\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~29_sumout\ = SUM(( \inst4|CNT\(8) ) + ( GND ) + ( \inst4|op_1~26\ ))
-- \inst4|op_1~30\ = CARRY(( \inst4|CNT\(8) ) + ( GND ) + ( \inst4|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(8),
	cin => \inst4|op_1~26\,
	sumout => \inst4|op_1~29_sumout\,
	cout => \inst4|op_1~30\);

\inst4|op_1~33\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~33_sumout\ = SUM(( \inst4|CNT\(9) ) + ( GND ) + ( \inst4|op_1~30\ ))
-- \inst4|op_1~34\ = CARRY(( \inst4|CNT\(9) ) + ( GND ) + ( \inst4|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(9),
	cin => \inst4|op_1~30\,
	sumout => \inst4|op_1~33_sumout\,
	cout => \inst4|op_1~34\);

\inst4|op_1~37\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~37_sumout\ = SUM(( \inst4|CNT\(10) ) + ( GND ) + ( \inst4|op_1~34\ ))
-- \inst4|op_1~38\ = CARRY(( \inst4|CNT\(10) ) + ( GND ) + ( \inst4|op_1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(10),
	cin => \inst4|op_1~34\,
	sumout => \inst4|op_1~37_sumout\,
	cout => \inst4|op_1~38\);

\inst4|op_1~41\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~41_sumout\ = SUM(( \inst4|CNT\(11) ) + ( GND ) + ( \inst4|op_1~38\ ))
-- \inst4|op_1~42\ = CARRY(( \inst4|CNT\(11) ) + ( GND ) + ( \inst4|op_1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(11),
	cin => \inst4|op_1~38\,
	sumout => \inst4|op_1~41_sumout\,
	cout => \inst4|op_1~42\);

\inst4|op_1~45\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~45_sumout\ = SUM(( \inst4|CNT\(12) ) + ( GND ) + ( \inst4|op_1~42\ ))
-- \inst4|op_1~46\ = CARRY(( \inst4|CNT\(12) ) + ( GND ) + ( \inst4|op_1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(12),
	cin => \inst4|op_1~42\,
	sumout => \inst4|op_1~45_sumout\,
	cout => \inst4|op_1~46\);

\inst4|op_1~49\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~49_sumout\ = SUM(( \inst4|CNT\(13) ) + ( GND ) + ( \inst4|op_1~46\ ))
-- \inst4|op_1~50\ = CARRY(( \inst4|CNT\(13) ) + ( GND ) + ( \inst4|op_1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(13),
	cin => \inst4|op_1~46\,
	sumout => \inst4|op_1~49_sumout\,
	cout => \inst4|op_1~50\);

\inst4|op_1~53\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~53_sumout\ = SUM(( \inst4|CNT\(14) ) + ( GND ) + ( \inst4|op_1~50\ ))
-- \inst4|op_1~54\ = CARRY(( \inst4|CNT\(14) ) + ( GND ) + ( \inst4|op_1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(14),
	cin => \inst4|op_1~50\,
	sumout => \inst4|op_1~53_sumout\,
	cout => \inst4|op_1~54\);

\inst4|op_1~57\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~57_sumout\ = SUM(( \inst4|CNT\(15) ) + ( GND ) + ( \inst4|op_1~54\ ))
-- \inst4|op_1~58\ = CARRY(( \inst4|CNT\(15) ) + ( GND ) + ( \inst4|op_1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(15),
	cin => \inst4|op_1~54\,
	sumout => \inst4|op_1~57_sumout\,
	cout => \inst4|op_1~58\);

\inst4|op_1~61\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~61_sumout\ = SUM(( \inst4|CNT\(16) ) + ( GND ) + ( \inst4|op_1~58\ ))
-- \inst4|op_1~62\ = CARRY(( \inst4|CNT\(16) ) + ( GND ) + ( \inst4|op_1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(16),
	cin => \inst4|op_1~58\,
	sumout => \inst4|op_1~61_sumout\,
	cout => \inst4|op_1~62\);

\inst4|op_1~65\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~65_sumout\ = SUM(( \inst4|CNT\(17) ) + ( GND ) + ( \inst4|op_1~62\ ))
-- \inst4|op_1~66\ = CARRY(( \inst4|CNT\(17) ) + ( GND ) + ( \inst4|op_1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(17),
	cin => \inst4|op_1~62\,
	sumout => \inst4|op_1~65_sumout\,
	cout => \inst4|op_1~66\);

\inst4|op_1~69\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~69_sumout\ = SUM(( \inst4|CNT\(18) ) + ( GND ) + ( \inst4|op_1~66\ ))
-- \inst4|op_1~70\ = CARRY(( \inst4|CNT\(18) ) + ( GND ) + ( \inst4|op_1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(18),
	cin => \inst4|op_1~66\,
	sumout => \inst4|op_1~69_sumout\,
	cout => \inst4|op_1~70\);

\inst4|op_1~73\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~73_sumout\ = SUM(( \inst4|CNT\(19) ) + ( GND ) + ( \inst4|op_1~70\ ))
-- \inst4|op_1~74\ = CARRY(( \inst4|CNT\(19) ) + ( GND ) + ( \inst4|op_1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(19),
	cin => \inst4|op_1~70\,
	sumout => \inst4|op_1~73_sumout\,
	cout => \inst4|op_1~74\);

\inst4|op_1~77\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~77_sumout\ = SUM(( \inst4|CNT\(20) ) + ( GND ) + ( \inst4|op_1~74\ ))
-- \inst4|op_1~78\ = CARRY(( \inst4|CNT\(20) ) + ( GND ) + ( \inst4|op_1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(20),
	cin => \inst4|op_1~74\,
	sumout => \inst4|op_1~77_sumout\,
	cout => \inst4|op_1~78\);

\inst4|op_1~81\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~81_sumout\ = SUM(( \inst4|CNT\(21) ) + ( GND ) + ( \inst4|op_1~78\ ))
-- \inst4|op_1~82\ = CARRY(( \inst4|CNT\(21) ) + ( GND ) + ( \inst4|op_1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(21),
	cin => \inst4|op_1~78\,
	sumout => \inst4|op_1~81_sumout\,
	cout => \inst4|op_1~82\);

\inst4|op_1~85\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~85_sumout\ = SUM(( \inst4|CNT\(22) ) + ( GND ) + ( \inst4|op_1~82\ ))
-- \inst4|op_1~86\ = CARRY(( \inst4|CNT\(22) ) + ( GND ) + ( \inst4|op_1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(22),
	cin => \inst4|op_1~82\,
	sumout => \inst4|op_1~85_sumout\,
	cout => \inst4|op_1~86\);

\inst4|op_1~89\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~89_sumout\ = SUM(( \inst4|CNT\(23) ) + ( GND ) + ( \inst4|op_1~86\ ))
-- \inst4|op_1~90\ = CARRY(( \inst4|CNT\(23) ) + ( GND ) + ( \inst4|op_1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(23),
	cin => \inst4|op_1~86\,
	sumout => \inst4|op_1~89_sumout\,
	cout => \inst4|op_1~90\);

\inst4|op_1~93\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|op_1~93_sumout\ = SUM(( \inst4|CNT\(24) ) + ( GND ) + ( \inst4|op_1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst4|ALT_INV_CNT\(24),
	cin => \inst4|op_1~90\,
	sumout => \inst4|op_1~93_sumout\);

\inst4|CNT[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst4|CNT[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|CNT\(0));

\inst4|_~37\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~37_combout\ = \inst4|CNT\(10) & \inst4|CNT\(13) & ( !\inst4|CNT\(22) & !\inst4|CNT\(18) & \inst4|CNT\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_CNT\(22),
	datac => \inst4|ALT_INV_CNT\(18),
	datad => \inst4|ALT_INV_CNT\(24),
	datae => \inst4|ALT_INV_CNT\(10),
	dataf => \inst4|ALT_INV_CNT\(13),
	combout => \inst4|_~37_combout\);

\inst4|_~38\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~38_combout\ = \inst4|CNT\(21) & \inst4|_~37_combout\ & ( !\inst4|CNT\(19) & \inst4|CNT\(7) & !\inst4|CNT\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_CNT\(19),
	datac => \inst4|ALT_INV_CNT\(7),
	datad => \inst4|ALT_INV_CNT\(17),
	datae => \inst4|ALT_INV_CNT\(21),
	dataf => \inst4|ALT_INV__~37_combout\,
	combout => \inst4|_~38_combout\);

\inst4|_~39\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~39_combout\ = \inst4|CNT\(20) & \inst4|CNT\(1) & ( !\inst4|CNT\(14) & \inst4|CNT\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_CNT\(14),
	datad => \inst4|ALT_INV_CNT\(16),
	datae => \inst4|ALT_INV_CNT\(20),
	dataf => \inst4|ALT_INV_CNT\(1),
	combout => \inst4|_~39_combout\);

\inst4|_~40\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~40_combout\ = !\inst4|CNT\(15) & \inst4|CNT\(11) & ( !\inst4|CNT\(23) & \inst4|CNT\(3) & \inst4|CNT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_CNT\(23),
	datac => \inst4|ALT_INV_CNT\(3),
	datad => \inst4|ALT_INV_CNT\(0),
	datae => \inst4|ALT_INV_CNT\(15),
	dataf => \inst4|ALT_INV_CNT\(11),
	combout => \inst4|_~40_combout\);

\inst4|_~41\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~41_combout\ = \inst4|_~40_combout\ & \inst4|_~39_combout\ & ( !\inst4|CNT\(8) & \inst4|CNT\(5) & \inst4|CNT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_CNT\(8),
	datac => \inst4|ALT_INV_CNT\(5),
	datad => \inst4|ALT_INV_CNT\(6),
	datae => \inst4|ALT_INV__~40_combout\,
	dataf => \inst4|ALT_INV__~39_combout\,
	combout => \inst4|_~41_combout\);

\inst4|_~42\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|_~42_combout\ = \inst4|_~38_combout\ & \inst4|_~41_combout\ & ( \inst4|CNT\(2) & !\inst4|CNT\(12) & !\inst4|CNT\(9) & \inst4|CNT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_CNT\(2),
	datab => \inst4|ALT_INV_CNT\(12),
	datac => \inst4|ALT_INV_CNT\(9),
	datad => \inst4|ALT_INV_CNT\(4),
	datae => \inst4|ALT_INV__~38_combout\,
	dataf => \inst4|ALT_INV__~41_combout\,
	combout => \inst4|_~42_combout\);

\inst4|CNT[0]~25\ : stratixii_lcell_comb
-- Equation(s):
-- \inst4|CNT[0]~25_combout\ = !\inst4|CNT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst4|ALT_INV_CNT\(0),
	combout => \inst4|CNT[0]~25_combout\);

\CLK~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

\CLK~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

\inst4|CNT[24]~clkctrl\ : stratixii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|CNT[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|CNT[24]~clkctrl_outclk\);

\LDN~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LDN,
	combout => \LDN~combout\);

\S[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(2),
	combout => \S~combout\(2));

\S[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(0),
	combout => \S~combout\(0));

\I[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_I(0),
	combout => \I~combout\(0));

\inst|tmpb~4\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpb~4_combout\ = !\S~combout\(1) & \S~combout\(2) & \S~combout\(0) & \I~combout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~combout\(1),
	datab => \ALT_INV_S~combout\(2),
	datac => \ALT_INV_S~combout\(0),
	datad => \ALT_INV_I~combout\(0),
	combout => \inst|tmpb~4_combout\);

\S[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(1),
	combout => \S~combout\(1));

\inst3|MA[0]~20\ : stratixii_lcell_comb
-- Equation(s):
-- \inst3|MA[0]~20_combout\ = \S~combout\(2) & ( !\S~combout\(1) & !\S~combout\(0) ) # !\S~combout\(2) & ( \S~combout\(1) & !\S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_S~combout\(1),
	datad => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_S~combout\(2),
	combout => \inst3|MA[0]~20_combout\);

\inst3|MA[0]~21\ : stratixii_lcell_comb
-- Equation(s):
-- \inst3|MA[0]~21_combout\ = \I~combout\(0) & ( \inst3|MA[0]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_MA[0]~20_combout\,
	dataf => \ALT_INV_I~combout\(0),
	combout => \inst3|MA[0]~21_combout\);

\inst1|tmpa[0]~_wirecell\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa[0]~_wirecell_combout\ = !\inst1|tmpa\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_tmpa\(0),
	combout => \inst1|tmpa[0]~_wirecell_combout\);

\inst2|tmpa~12\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa~12_combout\ = !\LDN~combout\ & ( !\S~combout\(1) & !\S~combout\(2) & !\S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~combout\(1),
	datab => \ALT_INV_S~combout\(2),
	datac => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_LDN~combout\,
	combout => \inst2|tmpa~12_combout\);

\I[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_I(3),
	combout => \I~combout\(3));

\inst2|tmpa[2]~13\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa[2]~13_combout\ = !\inst2|tmpa\(2) & ( \inst2|tmpa\(0) & \inst2|tmpa\(3) & !\inst2|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datac => \inst2|ALT_INV_tmpa\(3),
	datad => \inst2|ALT_INV_tmpa\(1),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst2|tmpa[2]~13_combout\);

\inst3|SA[0]~12\ : stratixii_lcell_comb
-- Equation(s):
-- \inst3|SA[0]~12_combout\ = !\S~combout\(2) & ( \I~combout\(0) & !\S~combout\(1) & !\S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I~combout\(0),
	datab => \ALT_INV_S~combout\(1),
	datac => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_S~combout\(2),
	combout => \inst3|SA[0]~12_combout\);

\inst2|tmpa[0]~_wirecell\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa[0]~_wirecell_combout\ = !\inst2|tmpa\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst2|ALT_INV_tmpa\(0),
	combout => \inst2|tmpa[0]~_wirecell_combout\);

\inst2|tmpa[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst3|SA[0]~12_combout\,
	adatasdata => \inst2|tmpa[0]~_wirecell_combout\,
	sload => \LDN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpa\(0));

\inst2|tmpa~14\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa~14_combout\ = \inst2|tmpa\(1) & \LDN~combout\ & ( !\inst2|tmpa[2]~13_combout\ & (!\inst2|tmpa\(0) # \I~combout\(1) & \inst2|tmpa~12_combout\) ) # !\inst2|tmpa\(1) & \LDN~combout\ & ( !\inst2|tmpa[2]~13_combout\ & (\I~combout\(1) & 
-- \inst2|tmpa~12_combout\ # \inst2|tmpa\(0)) ) # \inst2|tmpa\(1) & !\LDN~combout\ & ( \I~combout\(1) & \inst2|tmpa~12_combout\ ) # !\inst2|tmpa\(1) & !\LDN~combout\ & ( \I~combout\(1) & \inst2|tmpa~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010000111100001111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I~combout\(1),
	datab => \inst2|ALT_INV_tmpa~12_combout\,
	datac => \inst2|ALT_INV_tmpa[2]~13_combout\,
	datad => \inst2|ALT_INV_tmpa\(0),
	datae => \inst2|ALT_INV_tmpa\(1),
	dataf => \ALT_INV_LDN~combout\,
	combout => \inst2|tmpa~14_combout\);

\inst2|tmpa[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst2|tmpa~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpa\(1));

\I[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_I(2),
	combout => \I~combout\(2));

\inst2|tmpa~15\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa~15_combout\ = \inst2|tmpa\(2) & \inst2|tmpa~12_combout\ & ( \LDN~combout\ & (!\inst2|tmpa\(1) # !\inst2|tmpa\(0)) # \I~combout\(2) ) # !\inst2|tmpa\(2) & \inst2|tmpa~12_combout\ & ( \LDN~combout\ & \inst2|tmpa\(1) & \inst2|tmpa\(0) # 
-- \I~combout\(2) ) # \inst2|tmpa\(2) & !\inst2|tmpa~12_combout\ & ( \LDN~combout\ & (!\inst2|tmpa\(1) # !\inst2|tmpa\(0)) ) # !\inst2|tmpa\(2) & !\inst2|tmpa~12_combout\ & ( \LDN~combout\ & \inst2|tmpa\(1) & \inst2|tmpa\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101000101010000000001111111110101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LDN~combout\,
	datab => \inst2|ALT_INV_tmpa\(1),
	datac => \inst2|ALT_INV_tmpa\(0),
	datad => \ALT_INV_I~combout\(2),
	datae => \inst2|ALT_INV_tmpa\(2),
	dataf => \inst2|ALT_INV_tmpa~12_combout\,
	combout => \inst2|tmpa~15_combout\);

\inst2|tmpa[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst2|tmpa~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpa\(2));

\inst2|Add1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|tmpa\(1) & ( !\inst2|tmpa\(3) $ (!\inst2|tmpa\(2) # !\inst2|tmpa\(0)) ) # !\inst2|tmpa\(1) & ( \inst2|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_tmpa\(2),
	datac => \inst2|ALT_INV_tmpa\(0),
	datad => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(1),
	combout => \inst2|Add1~0_combout\);

\inst2|tmpa~16\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpa~16_combout\ = \inst2|Add1~0_combout\ & ( !\LDN~combout\ & (\inst2|tmpa~12_combout\ & \I~combout\(3)) # \LDN~combout\ & !\inst2|tmpa[2]~13_combout\ ) # !\inst2|Add1~0_combout\ & ( \inst2|tmpa~12_combout\ & \I~combout\(3) & 
-- (!\inst2|tmpa[2]~13_combout\ # !\LDN~combout\) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011101010100000001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa[2]~13_combout\,
	datab => \inst2|ALT_INV_tmpa~12_combout\,
	datac => \ALT_INV_I~combout\(3),
	datad => \ALT_INV_LDN~combout\,
	dataf => \inst2|ALT_INV_Add1~0_combout\,
	combout => \inst2|tmpa~16_combout\);

\inst2|tmpa[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst2|tmpa~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpa\(3));

\inst3|SB[0]~9\ : stratixii_lcell_comb
-- Equation(s):
-- \inst3|SB[0]~9_combout\ = \S~combout\(0) & ( \I~combout\(0) & !\S~combout\(1) & !\S~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I~combout\(0),
	datab => \ALT_INV_S~combout\(1),
	datac => \ALT_INV_S~combout\(2),
	dataf => \ALT_INV_S~combout\(0),
	combout => \inst3|SB[0]~9_combout\);

\inst2|tmpb[0]~_wirecell\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb[0]~_wirecell_combout\ = !\inst2|tmpb\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_tmpb\(0),
	combout => \inst2|tmpb[0]~_wirecell_combout\);

\inst2|tmpb[0]~14\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb[0]~14_combout\ = \inst2|tmpa[2]~13_combout\ # !\inst2|tmpa[2]~13_combout\ & ( !\LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LDN~combout\,
	dataf => \inst2|ALT_INV_tmpa[2]~13_combout\,
	combout => \inst2|tmpb[0]~14_combout\);

\inst2|tmpb[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst3|SB[0]~9_combout\,
	adatasdata => \inst2|tmpb[0]~_wirecell_combout\,
	sload => \LDN~combout\,
	ena => \inst2|tmpb[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpb\(0));

\inst2|tmpb~15\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb~15_combout\ = !\S~combout\(1) & ( \S~combout\(0) & !\S~combout\(2) & !\LDN~combout\ & \I~combout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~combout\(0),
	datab => \ALT_INV_S~combout\(2),
	datac => \ALT_INV_LDN~combout\,
	datad => \ALT_INV_I~combout\(2),
	dataf => \ALT_INV_S~combout\(1),
	combout => \inst2|tmpb~15_combout\);

\I[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_I(1),
	combout => \I~combout\(1));

\inst2|tmpb~12\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb~12_combout\ = !\LDN~combout\ & ( !\S~combout\(1) & !\S~combout\(2) & \I~combout\(1) & \S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~combout\(1),
	datab => \ALT_INV_S~combout\(2),
	datac => \ALT_INV_I~combout\(1),
	datad => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_LDN~combout\,
	combout => \inst2|tmpb~12_combout\);

\inst2|tmpb~13\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb~13_combout\ = \inst2|tmpb\(0) & ( \LDN~combout\ & !\inst2|tmpb\(2) & !\inst2|tmpb\(1) # \inst2|tmpb~12_combout\ ) # !\inst2|tmpb\(0) & ( \LDN~combout\ & \inst2|tmpb\(1) # \inst2|tmpb~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101001111000011110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LDN~combout\,
	datab => \inst2|ALT_INV_tmpb\(2),
	datac => \inst2|ALT_INV_tmpb~12_combout\,
	datad => \inst2|ALT_INV_tmpb\(1),
	dataf => \inst2|ALT_INV_tmpb\(0),
	combout => \inst2|tmpb~13_combout\);

\inst2|tmpb[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst2|tmpb~13_combout\,
	ena => \inst2|tmpb[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpb\(1));

\inst2|tmpb~16\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|tmpb~16_combout\ = \inst2|tmpb\(1) & ( \LDN~combout\ & (!\inst2|tmpb\(0) $ !\inst2|tmpb\(2)) # \inst2|tmpb~15_combout\ ) # !\inst2|tmpb\(1) & ( !\inst2|tmpb\(0) & \LDN~combout\ & \inst2|tmpb\(2) # \inst2|tmpb~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100011111001011110001111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \ALT_INV_LDN~combout\,
	datac => \inst2|ALT_INV_tmpb~15_combout\,
	datad => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst2|tmpb~16_combout\);

\inst2|tmpb[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst2|tmpb~16_combout\,
	ena => \inst2|tmpb[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tmpb\(2));

\inst2|RCO~4\ : stratixii_lcell_comb
-- Equation(s):
-- \inst2|RCO~4_combout\ = \inst2|tmpb\(2) & ( \inst2|tmpa\(3) & \inst2|tmpa\(0) & \inst2|tmpb\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_tmpa\(3),
	datac => \inst2|ALT_INV_tmpa\(0),
	datad => \inst2|ALT_INV_tmpb\(0),
	dataf => \inst2|ALT_INV_tmpb\(2),
	combout => \inst2|RCO~4_combout\);

\inst1|tmpa[0]~15\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa[0]~15_combout\ = \inst2|RCO~4_combout\ # !\inst2|RCO~4_combout\ & ( !\LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LDN~combout\,
	dataf => \inst2|ALT_INV_RCO~4_combout\,
	combout => \inst1|tmpa[0]~15_combout\);

\inst1|tmpa[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst3|MA[0]~21_combout\,
	adatasdata => \inst1|tmpa[0]~_wirecell_combout\,
	sload => \LDN~combout\,
	ena => \inst1|tmpa[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpa\(0));

\inst1|tmpa~14DUPLICATE\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa~14DUPLICATE_combout\ = \inst1|tmpa[1]~DUPLICATE_regout\ & \inst1|tmpa\(0) & ( !\LDN~combout\ & \I~combout\(1) & \inst3|MA[0]~20_combout\ ) # !\inst1|tmpa[1]~DUPLICATE_regout\ & \inst1|tmpa\(0) & ( !\LDN~combout\ & (\I~combout\(1) & 
-- \inst3|MA[0]~20_combout\) # \LDN~combout\ & !\inst1|tmpa[0]~12_combout\ ) # \inst1|tmpa[1]~DUPLICATE_regout\ & !\inst1|tmpa\(0) & ( !\LDN~combout\ & (\I~combout\(1) & \inst3|MA[0]~20_combout\) # \LDN~combout\ & !\inst1|tmpa[0]~12_combout\ ) # 
-- !\inst1|tmpa[1]~DUPLICATE_regout\ & !\inst1|tmpa\(0) & ( !\LDN~combout\ & \I~combout\(1) & \inst3|MA[0]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001000100010111000100010001011100000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa[0]~12_combout\,
	datab => \ALT_INV_LDN~combout\,
	datac => \ALT_INV_I~combout\(1),
	datad => \inst3|ALT_INV_MA[0]~20_combout\,
	datae => \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\,
	dataf => \inst1|ALT_INV_tmpa\(0),
	combout => \inst1|tmpa~14DUPLICATE_combout\);

\inst1|tmpa[1]~DUPLICATE\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpa~14DUPLICATE_combout\,
	ena => \inst1|tmpa[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpa[1]~DUPLICATE_regout\);

\inst1|tmpa~13\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa~13_combout\ = \inst1|tmpa\(2) & \I~combout\(2) & ( !\LDN~combout\ & \inst3|MA[0]~20_combout\ # \LDN~combout\ & (!\inst1|tmpa[1]~DUPLICATE_regout\ # !\inst1|tmpa\(0)) ) # !\inst1|tmpa\(2) & \I~combout\(2) & ( !\LDN~combout\ & 
-- \inst3|MA[0]~20_combout\ # \LDN~combout\ & (\inst1|tmpa[1]~DUPLICATE_regout\ & \inst1|tmpa\(0)) ) # \inst1|tmpa\(2) & !\I~combout\(2) & ( \LDN~combout\ & (!\inst1|tmpa[1]~DUPLICATE_regout\ # !\inst1|tmpa\(0)) ) # !\inst1|tmpa\(2) & !\I~combout\(2) & ( 
-- \inst1|tmpa[1]~DUPLICATE_regout\ & \inst1|tmpa\(0) & \LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001111110001010101000000110101010111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_MA[0]~20_combout\,
	datab => \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\,
	datac => \inst1|ALT_INV_tmpa\(0),
	datad => \ALT_INV_LDN~combout\,
	datae => \inst1|ALT_INV_tmpa\(2),
	dataf => \ALT_INV_I~combout\(2),
	combout => \inst1|tmpa~13_combout\);

\inst1|tmpa[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpa~13_combout\,
	ena => \inst1|tmpa[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpa\(2));

\inst1|tmpa~16\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa~16_combout\ = !\LDN~combout\ & ( \inst3|MA[0]~20_combout\ & (\I~combout\(3)) ) # \LDN~combout\ & ( !\inst1|tmpa\(0) & \inst1|tmpa\(3) # \inst1|tmpa\(0) & (!\inst1|tmpa\(3) & \inst1|tmpa[1]~DUPLICATE_regout\ & \inst1|tmpa\(2) # \inst1|tmpa\(3) 
-- & (!\inst1|tmpa[1]~DUPLICATE_regout\ $ !\inst1|tmpa\(2))) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000011000000111100000101000001010000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_MA[0]~20_combout\,
	datab => \inst1|ALT_INV_tmpa\(0),
	datac => \inst1|ALT_INV_tmpa\(3),
	datad => \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\,
	datae => \ALT_INV_LDN~combout\,
	dataf => \inst1|ALT_INV_tmpa\(2),
	datag => \ALT_INV_I~combout\(3),
	combout => \inst1|tmpa~16_combout\);

\inst1|tmpa[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpa~16_combout\,
	ena => \inst1|tmpa[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpa\(3));

\inst1|tmpb~12\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb~12_combout\ = !\S~combout\(2) & ( \I~combout\(2) & \S~combout\(1) & \S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I~combout\(2),
	datac => \ALT_INV_S~combout\(1),
	datad => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_S~combout\(2),
	combout => \inst1|tmpb~12_combout\);

\inst3|MB[0]~9\ : stratixii_lcell_comb
-- Equation(s):
-- \inst3|MB[0]~9_combout\ = !\S~combout\(2) & ( \S~combout\(1) & \I~combout\(0) & \S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S~combout\(1),
	datac => \ALT_INV_I~combout\(0),
	datad => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_S~combout\(2),
	combout => \inst3|MB[0]~9_combout\);

\inst1|tmpb[0]~_wirecell\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb[0]~_wirecell_combout\ = !\inst1|tmpb\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_tmpb\(0),
	combout => \inst1|tmpb[0]~_wirecell_combout\);

\inst1|tmpa[0]~12\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa[0]~12_combout\ = \inst1|tmpa\(3) & ( !\inst1|tmpa[1]~DUPLICATE_regout\ & !\inst1|tmpa\(2) & \inst1|tmpa\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\,
	datac => \inst1|ALT_INV_tmpa\(2),
	datad => \inst1|ALT_INV_tmpa\(0),
	dataf => \inst1|ALT_INV_tmpa\(3),
	combout => \inst1|tmpa[0]~12_combout\);

\inst1|tmpb[1]~16\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb[1]~16_combout\ = \inst1|tmpa[0]~12_combout\ & ( !\LDN~combout\ # \inst2|RCO~4_combout\ ) # !\inst1|tmpa[0]~12_combout\ & ( !\LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_RCO~4_combout\,
	datad => \ALT_INV_LDN~combout\,
	dataf => \inst1|ALT_INV_tmpa[0]~12_combout\,
	combout => \inst1|tmpb[1]~16_combout\);

\inst1|tmpb[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst3|MB[0]~9_combout\,
	adatasdata => \inst1|tmpb[0]~_wirecell_combout\,
	sload => \LDN~combout\,
	ena => \inst1|tmpb[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpb\(0));

\inst1|tmpb~14\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb~14_combout\ = \S~combout\(1) & ( !\S~combout\(2) & \I~combout\(1) & \S~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S~combout\(2),
	datac => \ALT_INV_I~combout\(1),
	datad => \ALT_INV_S~combout\(0),
	dataf => \ALT_INV_S~combout\(1),
	combout => \inst1|tmpb~14_combout\);

\inst1|tmpb~15\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb~15_combout\ = \LDN~combout\ & ( !\inst1|tmpb\(0) & (\inst1|tmpb\(1)) # \inst1|tmpb\(0) & !\inst1|tmpb\(2) & !\inst1|tmpb\(1) ) # !\LDN~combout\ & ( \inst1|tmpb~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010110011000010001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(2),
	datab => \inst1|ALT_INV_tmpb\(0),
	datac => \inst1|ALT_INV_tmpb~14_combout\,
	datad => \inst1|ALT_INV_tmpb\(1),
	dataf => \ALT_INV_LDN~combout\,
	combout => \inst1|tmpb~15_combout\);

\inst1|tmpb[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpb~15_combout\,
	ena => \inst1|tmpb[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpb\(1));

\inst1|tmpb~13\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpb~13_combout\ = \inst1|tmpb\(1) & ( !\LDN~combout\ & (\inst1|tmpb~12_combout\) # \LDN~combout\ & (!\inst1|tmpb\(0) $ (!\inst1|tmpb\(2))) ) # !\inst1|tmpb\(1) & ( !\LDN~combout\ & (\inst1|tmpb~12_combout\) # \LDN~combout\ & !\inst1|tmpb\(0) & 
-- (\inst1|tmpb\(2)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001100000011101000110101001110100011010100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb~12_combout\,
	datac => \ALT_INV_LDN~combout\,
	datad => \inst1|ALT_INV_tmpb\(2),
	dataf => \inst1|ALT_INV_tmpb\(1),
	combout => \inst1|tmpb~13_combout\);

\inst1|tmpb[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpb~13_combout\,
	ena => \inst1|tmpb[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpb\(2));

\inst1|RCO~4\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|RCO~4_combout\ = \inst2|RCO~4_combout\ & ( \inst1|tmpa\(0) & \inst1|tmpa\(3) & \inst1|tmpb\(2) & \inst1|tmpb\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa\(0),
	datab => \inst1|ALT_INV_tmpa\(3),
	datac => \inst1|ALT_INV_tmpb\(2),
	datad => \inst1|ALT_INV_tmpb\(0),
	dataf => \inst2|ALT_INV_RCO~4_combout\,
	combout => \inst1|RCO~4_combout\);

\inst|tmpa[0]~19\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa[0]~19_combout\ = \inst1|RCO~4_combout\ # !\inst1|RCO~4_combout\ & ( !\LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LDN~combout\,
	dataf => \inst1|ALT_INV_RCO~4_combout\,
	combout => \inst|tmpa[0]~19_combout\);

\inst|tmpa[0]~20\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa[0]~20_combout\ = \inst|tmpa[0]~19_combout\ & ( \LDN~combout\ & !\inst|tmpa\(0) ) # !\inst|tmpa[0]~19_combout\ & ( \inst|tmpa\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LDN~combout\,
	datad => \inst|ALT_INV_tmpa\(0),
	dataf => \inst|ALT_INV_tmpa[0]~19_combout\,
	combout => \inst|tmpa[0]~20_combout\);

\inst|tmpa[0]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst|tmpa[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tmpa\(0));

\inst|tmpa[1]~21\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa[1]~21_combout\ = \inst|tmpa~16_combout\ & ( !\inst|tmpa\(1) $ (!\inst|tmpa\(0) # !\inst|tmpa[0]~19_combout\) ) # !\inst|tmpa~16_combout\ & ( !\inst|tmpa[0]~19_combout\ & \inst|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(0),
	datac => \inst|ALT_INV_tmpa[0]~19_combout\,
	datad => \inst|ALT_INV_tmpa\(1),
	dataf => \inst|ALT_INV_tmpa~16_combout\,
	combout => \inst|tmpa[1]~21_combout\);

\inst|tmpa[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst|tmpa[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tmpa\(1));

\inst|tmpa~17\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa~17_combout\ = \inst|tmpa~16_combout\ & ( !\inst|tmpa\(3) $ (!\inst|tmpa\(2) # !\inst|tmpa\(0) # !\inst|tmpa\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datab => \inst|ALT_INV_tmpa\(0),
	datac => \inst|ALT_INV_tmpa\(1),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa~16_combout\,
	combout => \inst|tmpa~17_combout\);

\inst|tmpa[3]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst|tmpa~17_combout\,
	ena => \inst|tmpa[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tmpa\(3));

\inst|tmpb~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpb~5_combout\ = \inst|tmpb~regout\ & \inst|tmpa\(3) & ( !\LDN~combout\ & (\inst|tmpb~4_combout\) # \LDN~combout\ & (!\inst|Equal0~0_combout\ # !\inst1|RCO~4_combout\) ) # !\inst|tmpb~regout\ & \inst|tmpa\(3) & ( !\LDN~combout\ & 
-- (\inst|tmpb~4_combout\) # \LDN~combout\ & \inst|Equal0~0_combout\ & (\inst1|RCO~4_combout\) ) # \inst|tmpb~regout\ & !\inst|tmpa\(3) & ( !\LDN~combout\ & (\inst|tmpb~4_combout\) # \LDN~combout\ & (!\inst|Equal0~0_combout\ # !\inst1|RCO~4_combout\) ) # 
-- !\inst|tmpb~regout\ & !\inst|tmpa\(3) & ( \inst|tmpb~4_combout\ & !\LDN~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011101000110000001101010011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal0~0_combout\,
	datab => \inst|ALT_INV_tmpb~4_combout\,
	datac => \ALT_INV_LDN~combout\,
	datad => \inst1|ALT_INV_RCO~4_combout\,
	datae => \inst|ALT_INV_tmpb~regout\,
	dataf => \inst|ALT_INV_tmpa\(3),
	combout => \inst|tmpb~5_combout\);

\inst|tmpb\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst|tmpb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tmpb~regout\);

\inst|Equal0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = !\inst|tmpa\(1) & ( \inst|tmpa\(0) & !\inst|tmpa\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(2),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst|Equal0~0_combout\);

\inst|tmpa~16\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa~16_combout\ = \inst|tmpa\(3) & ( \LDN~combout\ & !\inst|Equal0~0_combout\ ) # !\inst|tmpa\(3) & ( \LDN~combout\ & (!\inst|tmpb~regout\ # !\inst|Equal0~0_combout\) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LDN~combout\,
	datac => \inst|ALT_INV_tmpb~regout\,
	datad => \inst|ALT_INV_Equal0~0_combout\,
	dataf => \inst|ALT_INV_tmpa\(3),
	combout => \inst|tmpa~16_combout\);

\inst|tmpa~18\ : stratixii_lcell_comb
-- Equation(s):
-- \inst|tmpa~18_combout\ = \inst|tmpa\(0) & ( \inst|tmpa~16_combout\ & (!\inst|tmpa\(1) $ !\inst|tmpa\(2)) ) # !\inst|tmpa\(0) & ( \inst|tmpa~16_combout\ & \inst|tmpa\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(1),
	datac => \inst|ALT_INV_tmpa~16_combout\,
	datad => \inst|ALT_INV_tmpa\(2),
	dataf => \inst|ALT_INV_tmpa\(0),
	combout => \inst|tmpa~18_combout\);

\inst|tmpa[2]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst|tmpa~18_combout\,
	ena => \inst|tmpa[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tmpa\(2));

\inst9|Mux0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux0~5_combout\ = !\inst|tmpa\(1) & ( !\inst|tmpa\(3) & (!\inst|tmpa\(2) $ !\inst|tmpa\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datac => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux0~5_combout\);

\inst9|Mux1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~6_combout\ = \inst|tmpa\(1) & ( \inst|tmpa\(2) & !\inst|tmpa\(0) & !\inst|tmpa\(3) ) # !\inst|tmpa\(1) & ( \inst|tmpa\(0) & !\inst|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datac => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux1~6_combout\);

\inst9|Mux2~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~6_combout\ = \inst|tmpa\(1) & ( !\inst|tmpa\(2) & !\inst|tmpa\(0) & !\inst|tmpa\(3) ) # !\inst|tmpa\(1) & ( !\inst|tmpa\(2) & \inst|tmpa\(0) & !\inst|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datab => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux2~6_combout\);

\inst9|Mux3~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~6_combout\ = \inst|tmpa\(1) & ( \inst|tmpa\(2) & \inst|tmpa\(0) & !\inst|tmpa\(3) ) # !\inst|tmpa\(1) & ( !\inst|tmpa\(3) & (!\inst|tmpa\(2) $ !\inst|tmpa\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datab => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux3~6_combout\);

\inst9|Mux4~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux4~6_combout\ = \inst|tmpa\(1) & ( \inst|tmpa\(3) # \inst|tmpa\(0) ) # !\inst|tmpa\(1) & ( \inst|tmpa\(0) & \inst|tmpa\(3) # \inst|tmpa\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datac => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux4~6_combout\);

\inst9|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = \inst|tmpa\(2) & \inst|tmpa\(1) & ( !\inst|tmpa\(0) ) # \inst|tmpa\(2) & !\inst|tmpa\(1) # !\inst|tmpa\(2) & !\inst|tmpa\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_tmpa\(0),
	datae => \inst|ALT_INV_tmpa\(2),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux5~0_combout\);

\inst9|Mux6~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst9|Mux6~6_combout\ = \inst|tmpa\(1) & ( !\inst|tmpa\(2) # !\inst|tmpa\(0) # \inst|tmpa\(3) ) # !\inst|tmpa\(1) & ( \inst|tmpa\(3) # \inst|tmpa\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_tmpa\(2),
	datab => \inst|ALT_INV_tmpa\(0),
	datad => \inst|ALT_INV_tmpa\(3),
	dataf => \inst|ALT_INV_tmpa\(1),
	combout => \inst9|Mux6~6_combout\);

\inst7|Mux0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~5_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(0) & !\inst1|tmpa[1]~DUPLICATE_regout\ & !\inst1|tmpa\(3) ) # !\inst1|tmpa\(2) & ( \inst1|tmpa\(0) & !\inst1|tmpa[1]~DUPLICATE_regout\ & !\inst1|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_tmpa\(0),
	datac => \inst1|ALT_INV_tmpa[1]~DUPLICATE_regout\,
	datad => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux0~5_combout\);

\inst1|tmpa~14\ : stratixii_lcell_comb
-- Equation(s):
-- \inst1|tmpa~14_combout\ = \inst1|tmpa\(1) & \inst1|tmpa\(0) & ( !\LDN~combout\ & \inst3|MA[0]~20_combout\ & \I~combout\(1) ) # !\inst1|tmpa\(1) & \inst1|tmpa\(0) & ( !\LDN~combout\ & (\inst3|MA[0]~20_combout\ & \I~combout\(1)) # \LDN~combout\ & 
-- !\inst1|tmpa[0]~12_combout\ ) # \inst1|tmpa\(1) & !\inst1|tmpa\(0) & ( !\LDN~combout\ & (\inst3|MA[0]~20_combout\ & \I~combout\(1)) # \LDN~combout\ & !\inst1|tmpa[0]~12_combout\ ) # !\inst1|tmpa\(1) & !\inst1|tmpa\(0) & ( !\LDN~combout\ & 
-- \inst3|MA[0]~20_combout\ & \I~combout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100001000100010111000100010001011100000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa[0]~12_combout\,
	datab => \ALT_INV_LDN~combout\,
	datac => \inst3|ALT_INV_MA[0]~20_combout\,
	datad => \ALT_INV_I~combout\(1),
	datae => \inst1|ALT_INV_tmpa\(1),
	dataf => \inst1|ALT_INV_tmpa\(0),
	combout => \inst1|tmpa~14_combout\);

\inst1|tmpa[1]\ : stratixii_lcell_ff
PORT MAP (
	clk => \inst4|CNT[24]~clkctrl_outclk\,
	datain => \inst1|tmpa~14_combout\,
	ena => \inst1|tmpa[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|tmpa\(1));

\inst7|Mux1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~6_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(3) & (!\inst1|tmpa\(0) $ !\inst1|tmpa\(1)) ) # !\inst1|tmpa\(2) & ( \inst1|tmpa\(0) & !\inst1|tmpa\(1) & !\inst1|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_tmpa\(0),
	datac => \inst1|ALT_INV_tmpa\(1),
	datad => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux1~6_combout\);

\inst7|Mux2~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~6_combout\ = !\inst1|tmpa\(2) & ( !\inst1|tmpa\(3) & (!\inst1|tmpa\(1) $ !\inst1|tmpa\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa\(1),
	datab => \inst1|ALT_INV_tmpa\(0),
	datac => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux2~6_combout\);

\inst7|Mux3~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~6_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(3) & (!\inst1|tmpa\(1) $ \inst1|tmpa\(0)) ) # !\inst1|tmpa\(2) & ( !\inst1|tmpa\(1) & \inst1|tmpa\(0) & !\inst1|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa\(1),
	datac => \inst1|ALT_INV_tmpa\(0),
	datad => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux3~6_combout\);

\inst7|Mux4~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~6_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(1) # \inst1|tmpa\(3) # \inst1|tmpa\(0) ) # !\inst1|tmpa\(2) & ( !\inst1|tmpa\(1) & \inst1|tmpa\(0) & \inst1|tmpa\(3) # \inst1|tmpa\(1) & (\inst1|tmpa\(3) # \inst1|tmpa\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa\(1),
	datab => \inst1|ALT_INV_tmpa\(0),
	datad => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux4~6_combout\);

\inst7|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(0) # !\inst1|tmpa\(1) ) # !\inst1|tmpa\(2) & ( !\inst1|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ALT_INV_tmpa\(0),
	datad => \inst1|ALT_INV_tmpa\(1),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux5~0_combout\);

\inst7|Mux6~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~6_combout\ = \inst1|tmpa\(2) & ( !\inst1|tmpa\(1) # !\inst1|tmpa\(0) # \inst1|tmpa\(3) ) # !\inst1|tmpa\(2) & ( \inst1|tmpa\(3) # \inst1|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpa\(1),
	datab => \inst1|ALT_INV_tmpa\(0),
	datac => \inst1|ALT_INV_tmpa\(3),
	dataf => \inst1|ALT_INV_tmpa\(2),
	combout => \inst7|Mux6~6_combout\);

\inst8|Mux0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~5_combout\ = \inst1|tmpb\(1) # !\inst1|tmpb\(1) & ( !\inst1|tmpb\(0) $ \inst1|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datad => \inst1|ALT_INV_tmpb\(2),
	dataf => \inst1|ALT_INV_tmpb\(1),
	combout => \inst8|Mux0~5_combout\);

\inst8|Mux1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~6_combout\ = \inst1|tmpb\(2) & ( !\inst1|tmpb\(0) $ !\inst1|tmpb\(1) ) # !\inst1|tmpb\(2) & ( \inst1|tmpb\(0) & !\inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux1~6_combout\);

\inst8|Mux2~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~6_combout\ = \inst1|tmpb\(2) # !\inst1|tmpb\(2) & ( !\inst1|tmpb\(0) $ \inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux2~6_combout\);

\inst8|Mux3~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~6_combout\ = \inst1|tmpb\(2) & ( !\inst1|tmpb\(0) $ !\inst1|tmpb\(1) ) # !\inst1|tmpb\(2) & ( !\inst1|tmpb\(0) # \inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux3~6_combout\);

\inst8|Mux4~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~6_combout\ = \inst1|tmpb\(2) & ( !\inst1|tmpb\(0) & \inst1|tmpb\(1) ) # !\inst1|tmpb\(2) & ( !\inst1|tmpb\(0) # !\inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux4~6_combout\);

\inst8|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = \inst1|tmpb\(2) & ( !\inst1|tmpb\(0) # !\inst1|tmpb\(1) ) # !\inst1|tmpb\(2) & ( !\inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux5~0_combout\);

\inst8|Mux6~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~6_combout\ = \inst1|tmpb\(2) & ( !\inst1|tmpb\(0) # !\inst1|tmpb\(1) ) # !\inst1|tmpb\(2) & ( \inst1|tmpb\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_tmpb\(0),
	datab => \inst1|ALT_INV_tmpb\(1),
	dataf => \inst1|ALT_INV_tmpb\(2),
	combout => \inst8|Mux6~6_combout\);

\inst5|Mux0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~5_combout\ = !\inst2|tmpa\(1) & ( !\inst2|tmpa\(3) & (!\inst2|tmpa\(0) $ !\inst2|tmpa\(2)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(3),
	datac => \inst2|ALT_INV_tmpa\(2),
	dataf => \inst2|ALT_INV_tmpa\(1),
	combout => \inst5|Mux0~5_combout\);

\inst5|Mux1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~6_combout\ = \inst2|tmpa\(2) & ( !\inst2|tmpa\(3) & (!\inst2|tmpa\(0) $ !\inst2|tmpa\(1)) ) # !\inst2|tmpa\(2) & ( \inst2|tmpa\(0) & !\inst2|tmpa\(1) & !\inst2|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	datad => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux1~6_combout\);

\inst5|Mux2~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~6_combout\ = !\inst2|tmpa\(2) & ( !\inst2|tmpa\(3) & (!\inst2|tmpa\(0) $ !\inst2|tmpa\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	datad => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux2~6_combout\);

\inst5|Mux3~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~6_combout\ = \inst2|tmpa\(2) & ( !\inst2|tmpa\(3) & (!\inst2|tmpa\(0) $ \inst2|tmpa\(1)) ) # !\inst2|tmpa\(2) & ( \inst2|tmpa\(0) & !\inst2|tmpa\(1) & !\inst2|tmpa\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000010011001000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	datad => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux3~6_combout\);

\inst5|Mux4~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~6_combout\ = \inst2|tmpa\(2) & ( !\inst2|tmpa\(1) # \inst2|tmpa\(3) # \inst2|tmpa\(0) ) # !\inst2|tmpa\(2) & ( !\inst2|tmpa\(0) & \inst2|tmpa\(1) & \inst2|tmpa\(3) # \inst2|tmpa\(0) & (\inst2|tmpa\(3) # \inst2|tmpa\(1)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	datad => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux4~6_combout\);

\inst5|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = \inst2|tmpa\(2) & ( !\inst2|tmpa\(0) # !\inst2|tmpa\(1) ) # !\inst2|tmpa\(2) & ( !\inst2|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux5~0_combout\);

\inst5|Mux6~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~6_combout\ = \inst2|tmpa\(2) & ( !\inst2|tmpa\(0) # !\inst2|tmpa\(1) # \inst2|tmpa\(3) ) # !\inst2|tmpa\(2) & ( \inst2|tmpa\(3) # \inst2|tmpa\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpa\(0),
	datab => \inst2|ALT_INV_tmpa\(1),
	datac => \inst2|ALT_INV_tmpa\(3),
	dataf => \inst2|ALT_INV_tmpa\(2),
	combout => \inst5|Mux6~6_combout\);

\inst6|Mux0~5\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~5_combout\ = \inst2|tmpb\(1) # !\inst2|tmpb\(1) & ( !\inst2|tmpb\(0) $ \inst2|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datac => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux0~5_combout\);

\inst6|Mux1~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~6_combout\ = \inst2|tmpb\(1) & ( !\inst2|tmpb\(0) & \inst2|tmpb\(2) ) # !\inst2|tmpb\(1) & ( \inst2|tmpb\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux1~6_combout\);

\inst6|Mux2~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~6_combout\ = \inst2|tmpb\(1) & ( \inst2|tmpb\(2) # \inst2|tmpb\(0) ) # !\inst2|tmpb\(1) & ( !\inst2|tmpb\(0) # \inst2|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux2~6_combout\);

\inst6|Mux3~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~6_combout\ = \inst2|tmpb\(1) & ( !\inst2|tmpb\(0) # !\inst2|tmpb\(2) ) # !\inst2|tmpb\(1) & ( !\inst2|tmpb\(0) $ \inst2|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux3~6_combout\);

\inst6|Mux4~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~6_combout\ = \inst2|tmpb\(1) & ( !\inst2|tmpb\(0) ) # !\inst2|tmpb\(1) & ( !\inst2|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux4~6_combout\);

\inst6|Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = \inst2|tmpb\(1) & ( !\inst2|tmpb\(0) & \inst2|tmpb\(2) ) # !\inst2|tmpb\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux5~0_combout\);

\inst6|Mux6~6\ : stratixii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~6_combout\ = \inst2|tmpb\(1) & ( !\inst2|tmpb\(0) # !\inst2|tmpb\(2) ) # !\inst2|tmpb\(1) & ( \inst2|tmpb\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_tmpb\(0),
	datab => \inst2|ALT_INV_tmpb\(2),
	dataf => \inst2|ALT_INV_tmpb\(1),
	combout => \inst6|Mux6~6_combout\);

\QHa[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(0));

\QHa[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(1));

\QHa[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(2));

\QHa[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(3));

\QHa[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(4));

\QHa[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(5));

\QHa[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHa(6));

\QHb[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_tmpb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(0));

\QHb[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_tmpb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(1));

\QHb[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_tmpb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(2));

\QHb[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_tmpb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(3));

\QHb[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(4));

\QHb[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(5));

\QHb[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QHb(6));

\QMa[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(0));

\QMa[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(1));

\QMa[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(2));

\QMa[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(3));

\QMa[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|ALT_INV_Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(4));

\QMa[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(5));

\QMa[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMa(6));

\QMb[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(0));

\QMb[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(1));

\QMb[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(2));

\QMb[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(3));

\QMb[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(4));

\QMb[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(5));

\QMb[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QMb(6));

\QSa[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(0));

\QSa[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(1));

\QSa[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(2));

\QSa[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(3));

\QSa[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|ALT_INV_Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(4));

\QSa[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(5));

\QSa[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst5|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSa(6));

\QSb[0]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(0));

\QSb[1]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|ALT_INV_Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(1));

\QSb[2]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(2));

\QSb[3]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(3));

\QSb[4]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(4));

\QSb[5]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(5));

\QSb[6]~I\ : stratixii_io
-- pragma translate_off
GENERIC MAP (
	ddio_mode => "none",
	ddioinclk_input => "negated_inclk",
	dqs_delay_buffer_mode => "none",
	dqs_out_mode => "none",
	inclk_input => "normal",
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none",
	sim_dqs_delay_increment => 0,
	sim_dqs_intrinsic_delay => 0,
	sim_dqs_offset_increment => 0)
-- pragma translate_on
PORT MAP (
	datain => \inst6|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QSb(6));
END structure;


