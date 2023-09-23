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

-- DATE "09/23/2023 16:22:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decodificadorBCD7Seg IS
    PORT (
	bcd : IN std_logic_vector(3 DOWNTO 0);
	abcdefg : OUT std_logic_vector(6 DOWNTO 0)
	);
END decodificadorBCD7Seg;

-- Design Ports Information
-- abcdefg[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcdefg[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \bcd[0]~input_o\ : std_logic;
SIGNAL \bcd[1]~input_o\ : std_logic;
SIGNAL \bcd[2]~input_o\ : std_logic;
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

-- Location: IOOBUF_X24_Y0_N9
\abcdefg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\abcdefg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\abcdefg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[2]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\abcdefg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\abcdefg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\abcdefg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\abcdefg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \abcdefg[6]~output_o\);

-- Location: IOIBUF_X33_Y16_N15
\bcd[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(3),
	o => \bcd[3]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\bcd[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(0),
	o => \bcd[0]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\bcd[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(1),
	o => \bcd[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\bcd[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcd(2),
	o => \bcd[2]~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\bcd[3]~input_o\) # ((\bcd[1]~input_o\ & ((!\bcd[2]~input_o\) # (!\bcd[0]~input_o\))) # (!\bcd[1]~input_o\ & ((\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\bcd[3]~input_o\ & ((\bcd[0]~input_o\ & ((\bcd[1]~input_o\) # (!\bcd[2]~input_o\))) # (!\bcd[0]~input_o\ & (\bcd[1]~input_o\ & !\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y1_N12
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bcd[0]~input_o\) # ((\bcd[1]~input_o\ & (\bcd[3]~input_o\)) # (!\bcd[1]~input_o\ & ((\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y1_N30
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\bcd[3]~input_o\ & ((\bcd[0]~input_o\ & (\bcd[1]~input_o\ $ (!\bcd[2]~input_o\))) # (!\bcd[0]~input_o\ & (!\bcd[1]~input_o\ & \bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y1_N8
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\bcd[3]~input_o\ & (!\bcd[0]~input_o\ & (\bcd[1]~input_o\ & !\bcd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X25_Y1_N26
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\bcd[3]~input_o\ & (\bcd[2]~input_o\ & (\bcd[0]~input_o\ $ (\bcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y1_N28
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\bcd[3]~input_o\ & (!\bcd[1]~input_o\ & (\bcd[0]~input_o\ $ (\bcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd[3]~input_o\,
	datab => \bcd[0]~input_o\,
	datac => \bcd[1]~input_o\,
	datad => \bcd[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_abcdefg(0) <= \abcdefg[0]~output_o\;

ww_abcdefg(1) <= \abcdefg[1]~output_o\;

ww_abcdefg(2) <= \abcdefg[2]~output_o\;

ww_abcdefg(3) <= \abcdefg[3]~output_o\;

ww_abcdefg(4) <= \abcdefg[4]~output_o\;

ww_abcdefg(5) <= \abcdefg[5]~output_o\;

ww_abcdefg(6) <= \abcdefg[6]~output_o\;
END structure;


