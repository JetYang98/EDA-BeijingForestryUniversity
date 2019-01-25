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

-- DATE "05/24/2018 11:03:37"

-- 
-- Device: Altera EP2S15F484C3 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, stratixii;
USE IEEE.std_logic_1164.all;
USE stratixii.stratixii_components.all;

ENTITY 	alu_circuit IS
    PORT (
	s : IN std_logic_vector(2 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	d : OUT std_logic_vector(7 DOWNTO 0)
	);
END alu_circuit;

ARCHITECTURE structure OF alu_circuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~6_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Add0~6_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~10_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~18_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~22_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~26_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~30_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \ALT_INV_s~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_b~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_s <= s;
ww_a <= a;
ww_b <= b;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~6_sumout\ <= NOT \Add0~6_sumout\;
\ALT_INV_Add0~10_sumout\ <= NOT \Add0~10_sumout\;
\ALT_INV_Add0~14_sumout\ <= NOT \Add0~14_sumout\;
\ALT_INV_Add0~18_sumout\ <= NOT \Add0~18_sumout\;
\ALT_INV_Add0~22_sumout\ <= NOT \Add0~22_sumout\;
\ALT_INV_Add0~26_sumout\ <= NOT \Add0~26_sumout\;
\ALT_INV_Add0~30_sumout\ <= NOT \Add0~30_sumout\;
\ALT_INV_Add0~34_sumout\ <= NOT \Add0~34_sumout\;
\ALT_INV_s~combout\(1) <= NOT \s~combout\(1);
\ALT_INV_a~combout\(0) <= NOT \a~combout\(0);
\ALT_INV_b~combout\(0) <= NOT \b~combout\(0);
\ALT_INV_s~combout\(2) <= NOT \s~combout\(2);
\ALT_INV_s~combout\(0) <= NOT \s~combout\(0);
\ALT_INV_a~combout\(1) <= NOT \a~combout\(1);
\ALT_INV_b~combout\(1) <= NOT \b~combout\(1);
\ALT_INV_b~combout\(2) <= NOT \b~combout\(2);
\ALT_INV_a~combout\(2) <= NOT \a~combout\(2);
\ALT_INV_b~combout\(3) <= NOT \b~combout\(3);
\ALT_INV_a~combout\(3) <= NOT \a~combout\(3);
\ALT_INV_b~combout\(4) <= NOT \b~combout\(4);
\ALT_INV_a~combout\(4) <= NOT \a~combout\(4);
\ALT_INV_b~combout\(5) <= NOT \b~combout\(5);
\ALT_INV_a~combout\(5) <= NOT \a~combout\(5);
\ALT_INV_b~combout\(6) <= NOT \b~combout\(6);
\ALT_INV_a~combout\(6) <= NOT \a~combout\(6);
\ALT_INV_b~combout\(7) <= NOT \b~combout\(7);
\ALT_INV_a~combout\(7) <= NOT \a~combout\(7);

\s[2]~I\ : stratixii_io
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
	padio => ww_s(2),
	combout => \s~combout\(2));

\a[0]~I\ : stratixii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

\b[0]~I\ : stratixii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

\s[0]~I\ : stratixii_io
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
	padio => ww_s(0),
	combout => \s~combout\(0));

\Add0~3\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(( VCC ) + ( !\s~combout\(1) & \s~combout\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	dataf => \ALT_INV_s~combout\(0),
	cin => GND,
	cout => \Add0~3_cout\);

\Add0~6\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~6_sumout\ = SUM(( !\s~combout\(0) $ !\b~combout\(0) # \s~combout\(1) ) + ( \a~combout\(0) ) + ( \Add0~3_cout\ ))
-- \Add0~7\ = CARRY(( !\s~combout\(0) $ !\b~combout\(0) # \s~combout\(1) ) + ( \a~combout\(0) ) + ( \Add0~3_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datac => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_b~combout\(0),
	dataf => \ALT_INV_a~combout\(0),
	cin => \Add0~3_cout\,
	sumout => \Add0~6_sumout\,
	cout => \Add0~7\);

\s[1]~I\ : stratixii_io
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
	padio => ww_s(1),
	combout => \s~combout\(1));

\Mux7~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = \Add0~6_sumout\ & \s~combout\(1) & ( !\s~combout\(2) # !\a~combout\(0) & \b~combout\(0) # \a~combout\(0) & (!\b~combout\(0) # !\s~combout\(0)) ) # !\Add0~6_sumout\ & \s~combout\(1) & ( \s~combout\(2) & (!\a~combout\(0) & \b~combout\(0) 
-- # \a~combout\(0) & (!\b~combout\(0) # !\s~combout\(0))) ) # \Add0~6_sumout\ & !\s~combout\(1) & ( !\s~combout\(2) # !\a~combout\(0) & (!\s~combout\(0)) # \a~combout\(0) & \b~combout\(0) & \s~combout\(0) ) # !\Add0~6_sumout\ & !\s~combout\(1) & ( 
-- \s~combout\(2) & (!\a~combout\(0) & (!\s~combout\(0)) # \a~combout\(0) & \b~combout\(0) & \s~combout\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000001111011101010101100010101000101001011111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(2),
	datab => \ALT_INV_a~combout\(0),
	datac => \ALT_INV_b~combout\(0),
	datad => \ALT_INV_s~combout\(0),
	datae => \ALT_INV_Add0~6_sumout\,
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux7~0_combout\);

\a[1]~I\ : stratixii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

\b[1]~I\ : stratixii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

\Add0~10\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~10_sumout\ = SUM(( \a~combout\(1) ) + ( !\s~combout\(0) $ (!\b~combout\(1) # \s~combout\(1)) ) + ( \Add0~7\ ))
-- \Add0~11\ = CARRY(( \a~combout\(1) ) + ( !\s~combout\(0) $ (!\b~combout\(1) # \s~combout\(1)) ) + ( \Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_a~combout\(1),
	dataf => \ALT_INV_b~combout\(1),
	cin => \Add0~7\,
	sumout => \Add0~10_sumout\,
	cout => \Add0~11\);

\Mux6~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = \a~combout\(1) & \s~combout\(1) & ( !\s~combout\(2) & (\Add0~10_sumout\) # \s~combout\(2) & (!\s~combout\(0) # !\b~combout\(1)) ) # !\a~combout\(1) & \s~combout\(1) & ( !\s~combout\(2) & \Add0~10_sumout\ # \s~combout\(2) & 
-- (\b~combout\(1)) ) # \a~combout\(1) & !\s~combout\(1) & ( !\s~combout\(2) & (\Add0~10_sumout\) # \s~combout\(2) & \s~combout\(0) & (\b~combout\(1)) ) # !\a~combout\(1) & !\s~combout\(1) & ( !\s~combout\(2) & (\Add0~10_sumout\) # \s~combout\(2) & 
-- !\s~combout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110000010100001101100001010010111110101111101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(2),
	datab => \ALT_INV_s~combout\(0),
	datac => \ALT_INV_Add0~10_sumout\,
	datad => \ALT_INV_b~combout\(1),
	datae => \ALT_INV_a~combout\(1),
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux6~0_combout\);

\a[2]~I\ : stratixii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

\b[2]~I\ : stratixii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

\Add0~14\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~14_sumout\ = SUM(( \a~combout\(2) ) + ( !\s~combout\(0) $ (!\b~combout\(2) # \s~combout\(1)) ) + ( \Add0~11\ ))
-- \Add0~15\ = CARRY(( \a~combout\(2) ) + ( !\s~combout\(0) $ (!\b~combout\(2) # \s~combout\(1)) ) + ( \Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_a~combout\(2),
	dataf => \ALT_INV_b~combout\(2),
	cin => \Add0~11\,
	sumout => \Add0~14_sumout\,
	cout => \Add0~15\);

\Mux5~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = \s~combout\(2) & \s~combout\(1) & ( !\a~combout\(2) & \b~combout\(2) # \a~combout\(2) & (!\b~combout\(2) # !\s~combout\(0)) ) # !\s~combout\(2) & \s~combout\(1) & ( \Add0~14_sumout\ ) # \s~combout\(2) & !\s~combout\(1) & ( 
-- !\a~combout\(2) & (!\s~combout\(0)) # \a~combout\(2) & \b~combout\(2) & \s~combout\(0) ) # !\s~combout\(2) & !\s~combout\(1) & ( \Add0~14_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101000011010000100000000111111110111011001110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a~combout\(2),
	datab => \ALT_INV_b~combout\(2),
	datac => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_Add0~14_sumout\,
	datae => \ALT_INV_s~combout\(2),
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux5~0_combout\);

\b[3]~I\ : stratixii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

\a[3]~I\ : stratixii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

\Add0~18\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~18_sumout\ = SUM(( \a~combout\(3) ) + ( !\s~combout\(0) $ (!\b~combout\(3) # \s~combout\(1)) ) + ( \Add0~15\ ))
-- \Add0~19\ = CARRY(( \a~combout\(3) ) + ( !\s~combout\(0) $ (!\b~combout\(3) # \s~combout\(1)) ) + ( \Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001101100011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datac => \ALT_INV_b~combout\(3),
	datad => \ALT_INV_a~combout\(3),
	cin => \Add0~15\,
	sumout => \Add0~18_sumout\,
	cout => \Add0~19\);

\Mux4~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = \b~combout\(3) & \s~combout\(1) & ( !\s~combout\(2) & \Add0~18_sumout\ # \s~combout\(2) & (!\s~combout\(0) # !\a~combout\(3)) ) # !\b~combout\(3) & \s~combout\(1) & ( !\s~combout\(2) & \Add0~18_sumout\ # \s~combout\(2) & 
-- (\a~combout\(3)) ) # \b~combout\(3) & !\s~combout\(1) & ( !\s~combout\(2) & \Add0~18_sumout\ # \s~combout\(2) & (!\s~combout\(0) $ \a~combout\(3)) ) # !\b~combout\(3) & !\s~combout\(1) & ( !\s~combout\(2) & \Add0~18_sumout\ # \s~combout\(2) & 
-- (!\s~combout\(0) & !\a~combout\(3)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001010000010111000101001101010000010111110101111101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~18_sumout\,
	datab => \ALT_INV_s~combout\(0),
	datac => \ALT_INV_s~combout\(2),
	datad => \ALT_INV_a~combout\(3),
	datae => \ALT_INV_b~combout\(3),
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux4~0_combout\);

\b[4]~I\ : stratixii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

\a[4]~I\ : stratixii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

\Add0~22\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~22_sumout\ = SUM(( !\s~combout\(0) $ (!\b~combout\(4) # \s~combout\(1)) ) + ( \a~combout\(4) ) + ( \Add0~19\ ))
-- \Add0~23\ = CARRY(( !\s~combout\(0) $ (!\b~combout\(4) # \s~combout\(1)) ) + ( \a~combout\(4) ) + ( \Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_b~combout\(4),
	dataf => \ALT_INV_a~combout\(4),
	cin => \Add0~19\,
	sumout => \Add0~22_sumout\,
	cout => \Add0~23\);

\Mux3~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = \s~combout\(2) & \s~combout\(0) & ( !\s~combout\(1) & \b~combout\(4) & \a~combout\(4) # \s~combout\(1) & (!\b~combout\(4) $ !\a~combout\(4)) ) # !\s~combout\(2) & \s~combout\(0) & ( \Add0~22_sumout\ ) # \s~combout\(2) & !\s~combout\(0) 
-- & ( !\s~combout\(1) & (!\a~combout\(4)) # \s~combout\(1) & (\a~combout\(4) # \b~combout\(4)) ) # !\s~combout\(2) & !\s~combout\(0) & ( \Add0~22_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101101011011010100000000111111110001011000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_b~combout\(4),
	datac => \ALT_INV_a~combout\(4),
	datad => \ALT_INV_Add0~22_sumout\,
	datae => \ALT_INV_s~combout\(2),
	dataf => \ALT_INV_s~combout\(0),
	combout => \Mux3~0_combout\);

\b[5]~I\ : stratixii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

\a[5]~I\ : stratixii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

\Add0~26\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~26_sumout\ = SUM(( !\s~combout\(0) $ (!\b~combout\(5) # \s~combout\(1)) ) + ( \a~combout\(5) ) + ( \Add0~23\ ))
-- \Add0~27\ = CARRY(( !\s~combout\(0) $ (!\b~combout\(5) # \s~combout\(1)) ) + ( \a~combout\(5) ) + ( \Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_b~combout\(5),
	dataf => \ALT_INV_a~combout\(5),
	cin => \Add0~23\,
	sumout => \Add0~26_sumout\,
	cout => \Add0~27\);

\Mux2~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \Add0~26_sumout\ & \s~combout\(1) & ( !\s~combout\(2) # !\b~combout\(5) & \a~combout\(5) # \b~combout\(5) & (!\a~combout\(5) # !\s~combout\(0)) ) # !\Add0~26_sumout\ & \s~combout\(1) & ( \s~combout\(2) & (!\b~combout\(5) & 
-- \a~combout\(5) # \b~combout\(5) & (!\a~combout\(5) # !\s~combout\(0))) ) # \Add0~26_sumout\ & !\s~combout\(1) & ( !\s~combout\(2) # !\a~combout\(5) & (!\s~combout\(0)) # \a~combout\(5) & \b~combout\(5) & \s~combout\(0) ) # !\Add0~26_sumout\ & 
-- !\s~combout\(1) & ( \s~combout\(2) & (!\a~combout\(5) & (!\s~combout\(0)) # \a~combout\(5) & \b~combout\(5) & \s~combout\(0)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000001111110101010101100010101000101001011111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(2),
	datab => \ALT_INV_b~combout\(5),
	datac => \ALT_INV_a~combout\(5),
	datad => \ALT_INV_s~combout\(0),
	datae => \ALT_INV_Add0~26_sumout\,
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux2~0_combout\);

\b[6]~I\ : stratixii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

\a[6]~I\ : stratixii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

\Add0~30\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~30_sumout\ = SUM(( !\s~combout\(0) $ (!\b~combout\(6) # \s~combout\(1)) ) + ( \a~combout\(6) ) + ( \Add0~27\ ))
-- \Add0~31\ = CARRY(( !\s~combout\(0) $ (!\b~combout\(6) # \s~combout\(1)) ) + ( \a~combout\(6) ) + ( \Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011100100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_s~combout\(0),
	datac => \ALT_INV_b~combout\(6),
	dataf => \ALT_INV_a~combout\(6),
	cin => \Add0~27\,
	sumout => \Add0~30_sumout\,
	cout => \Add0~31\);

\Mux1~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \s~combout\(2) & \s~combout\(0) & ( !\s~combout\(1) & \a~combout\(6) & \b~combout\(6) # \s~combout\(1) & (!\a~combout\(6) $ !\b~combout\(6)) ) # !\s~combout\(2) & \s~combout\(0) & ( \Add0~30_sumout\ ) # \s~combout\(2) & !\s~combout\(0) 
-- & ( !\s~combout\(1) & !\a~combout\(6) # \s~combout\(1) & (\b~combout\(6) # \a~combout\(6)) ) # !\s~combout\(2) & !\s~combout\(0) & ( \Add0~30_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101001011111010100110011001100110000010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(1),
	datab => \ALT_INV_Add0~30_sumout\,
	datac => \ALT_INV_a~combout\(6),
	datad => \ALT_INV_b~combout\(6),
	datae => \ALT_INV_s~combout\(2),
	dataf => \ALT_INV_s~combout\(0),
	combout => \Mux1~0_combout\);

\b[7]~I\ : stratixii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

\a[7]~I\ : stratixii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

\Add0~34\ : stratixii_lcell_comb
-- Equation(s):
-- \Add0~34_sumout\ = SUM(( \a~combout\(7) ) + ( !\s~combout\(0) $ (!\b~combout\(7) # \s~combout\(1)) ) + ( \Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a~combout\(7),
	datab => \ALT_INV_s~combout\(0),
	datac => \ALT_INV_s~combout\(1),
	dataf => \ALT_INV_b~combout\(7),
	cin => \Add0~31\,
	sumout => \Add0~34_sumout\);

\Mux0~0\ : stratixii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = \Add0~34_sumout\ & \s~combout\(1) & ( !\s~combout\(2) # !\b~combout\(7) & (\a~combout\(7)) # \b~combout\(7) & (!\s~combout\(0) # !\a~combout\(7)) ) # !\Add0~34_sumout\ & \s~combout\(1) & ( \s~combout\(2) & (!\b~combout\(7) & 
-- (\a~combout\(7)) # \b~combout\(7) & (!\s~combout\(0) # !\a~combout\(7))) ) # \Add0~34_sumout\ & !\s~combout\(1) & ( !\s~combout\(2) # !\s~combout\(0) & (!\a~combout\(7)) # \s~combout\(0) & \b~combout\(7) & \a~combout\(7) ) # !\Add0~34_sumout\ & 
-- !\s~combout\(1) & ( \s~combout\(2) & (!\s~combout\(0) & (!\a~combout\(7)) # \s~combout\(0) & \b~combout\(7) & \a~combout\(7)) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000001111110101010101100010001010101001011101111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~combout\(2),
	datab => \ALT_INV_b~combout\(7),
	datac => \ALT_INV_s~combout\(0),
	datad => \ALT_INV_a~combout\(7),
	datae => \ALT_INV_Add0~34_sumout\,
	dataf => \ALT_INV_s~combout\(1),
	combout => \Mux0~0_combout\);

\d[0]~I\ : stratixii_io
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
	datain => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(0));

\d[1]~I\ : stratixii_io
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
	datain => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(1));

\d[2]~I\ : stratixii_io
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
	datain => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(2));

\d[3]~I\ : stratixii_io
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
	datain => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(3));

\d[4]~I\ : stratixii_io
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
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(4));

\d[5]~I\ : stratixii_io
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
	datain => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(5));

\d[6]~I\ : stratixii_io
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
	datain => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(6));

\d[7]~I\ : stratixii_io
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
	datain => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d(7));
END structure;


