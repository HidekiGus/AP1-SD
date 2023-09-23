-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/23/2023 17:06:03"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decodificadorBCD7Seg IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	abcdefg : OUT std_logic_vector(6 DOWNTO 0)
	);
END decodificadorBCD7Seg;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decodificadorBCD7Seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_abcdefg : std_logic_vector(6 DOWNTO 0);
SIGNAL \abcdefg[0]~output_o\ : std_logic;
SIGNAL \abcdefg[1]~output_o\ : std_logic;
SIGNAL \abcdefg[2]~output_o\ : std_logic;
SIGNAL \abcdefg[3]~output_o\ : std_logic;
SIGNAL \abcdefg[4]~output_o\ : std_logic;
SIGNAL \abcdefg[5]~output_o\ : std_logic;
SIGNAL \abcdefg[6]~output_o\ : std_logic;
SIGNAL \bcd[3]~input_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_bcd <= bcd;
abcdefg <= ww_abcdefg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y6_N23
\abcdefg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\abcdefg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\abcdefg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\abcdefg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\abcdefg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\abcdefg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\abcdefg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[6]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\bcd[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\bcd[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\bcd[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\bcd[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N16
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\bcd[3]~input_o\) # ((\bcd[2]~input_o\ & ((!\bcd[1]~input_o\) # (!\bcd[0]~input_o\))) # (!\bcd[2]~input_o\ & ((\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y7_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\bcd[3]~input_o\ & ((\bcd[2]~input_o\ & (\bcd[0]~input_o\ & \bcd[1]~input_o\)) # (!\bcd[2]~input_o\ & ((\bcd[0]~input_o\) # (\bcd[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y7_N4
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bcd[0]~input_o\) # ((\bcd[1]~input_o\ & (\bcd[3]~input_o\)) # (!\bcd[1]~input_o\ & ((\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\bcd[3]~input_o\ & ((\bcd[2]~input_o\ & (\bcd[0]~input_o\ $ (!\bcd[1]~input_o\))) # (!\bcd[2]~input_o\ & (\bcd[0]~input_o\ & !\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y7_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\bcd[3]~input_o\ & (!\bcd[2]~input_o\ & (!\bcd[0]~input_o\ & \bcd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\bcd[3]~input_o\ & (\bcd[2]~input_o\ & (\bcd[0]~input_o\ $ (\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y7_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\bcd[3]~input_o\ & (!\bcd[1]~input_o\ & (\bcd[2]~input_o\ $ (\bcd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[2]~input_o\,
	datac => \bcd[0]~input_o\,
	datad => \bcd[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;
END structure;


