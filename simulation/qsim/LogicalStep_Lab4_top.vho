-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "03/26/2024 22:41:39"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic;
	smout : OUT std_logic;
	blinkout : OUT std_logic;
	nsgreen : OUT std_logic;
	nsamber : OUT std_logic;
	nsred : OUT std_logic;
	ewgreen : OUT std_logic;
	ewamber : OUT std_logic;
	ewred : OUT std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL ww_smout : std_logic;
SIGNAL ww_blinkout : std_logic;
SIGNAL ww_nsgreen : std_logic;
SIGNAL ww_nsamber : std_logic;
SIGNAL ww_nsred : std_logic;
SIGNAL ww_ewgreen : std_logic;
SIGNAL ww_ewamber : std_logic;
SIGNAL ww_ewred : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \smout~output_o\ : std_logic;
SIGNAL \blinkout~output_o\ : std_logic;
SIGNAL \nsgreen~output_o\ : std_logic;
SIGNAL \nsamber~output_o\ : std_logic;
SIGNAL \nsred~output_o\ : std_logic;
SIGNAL \ewgreen~output_o\ : std_logic;
SIGNAL \ewamber~output_o\ : std_logic;
SIGNAL \ewred~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST1|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST1|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \INST7|remember~0_combout\ : std_logic;
SIGNAL \INST7|sreg~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST1|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \INST8|remember~0_combout\ : std_logic;
SIGNAL \INST8|sreg~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST3|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST3|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST3|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \INST3|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \INST3|sm_clken~combout\ : std_logic;
SIGNAL \INST9|current_state~48_combout\ : std_logic;
SIGNAL \INST9|current_state.s15~q\ : std_logic;
SIGNAL \INST9|current_state~45_combout\ : std_logic;
SIGNAL \INST9|current_state.s0~q\ : std_logic;
SIGNAL \INST9|next_state.s1~0_combout\ : std_logic;
SIGNAL \INST9|current_state~35_combout\ : std_logic;
SIGNAL \INST9|current_state.s1~q\ : std_logic;
SIGNAL \INST9|next_state.s2~0_combout\ : std_logic;
SIGNAL \INST9|current_state.s2~q\ : std_logic;
SIGNAL \INST9|current_state~34_combout\ : std_logic;
SIGNAL \INST9|current_state.s3~q\ : std_logic;
SIGNAL \INST9|current_state~36_combout\ : std_logic;
SIGNAL \INST9|current_state.s4~q\ : std_logic;
SIGNAL \INST9|current_state~37_combout\ : std_logic;
SIGNAL \INST9|current_state.s5~q\ : std_logic;
SIGNAL \INST9|Selector2~2_combout\ : std_logic;
SIGNAL \INST9|current_state~41_combout\ : std_logic;
SIGNAL \INST9|current_state~42_combout\ : std_logic;
SIGNAL \INST9|current_state.s6~q\ : std_logic;
SIGNAL \INST9|current_state~47_combout\ : std_logic;
SIGNAL \INST9|current_state.s7~q\ : std_logic;
SIGNAL \INST9|current_state~46_combout\ : std_logic;
SIGNAL \INST9|current_state.s8~q\ : std_logic;
SIGNAL \INST9|next_state.s9~0_combout\ : std_logic;
SIGNAL \INST9|current_state.s9~q\ : std_logic;
SIGNAL \INST9|next_state.s10~0_combout\ : std_logic;
SIGNAL \INST9|current_state.s10~q\ : std_logic;
SIGNAL \INST9|current_state~38_combout\ : std_logic;
SIGNAL \INST9|current_state.s11~q\ : std_logic;
SIGNAL \INST9|current_state~39_combout\ : std_logic;
SIGNAL \INST9|current_state.s12~q\ : std_logic;
SIGNAL \INST9|current_state~40_combout\ : std_logic;
SIGNAL \INST9|current_state.s13~q\ : std_logic;
SIGNAL \INST9|WideOr7~0_combout\ : std_logic;
SIGNAL \INST9|current_state~43_combout\ : std_logic;
SIGNAL \INST9|current_state~44_combout\ : std_logic;
SIGNAL \INST9|current_state.s14~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST10|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST9|WideOr2~1_combout\ : std_logic;
SIGNAL \INST10|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \INST9|WideOr3~combout\ : std_logic;
SIGNAL \INST9|WideOr6~0_combout\ : std_logic;
SIGNAL \INST9|WideOr9~0_combout\ : std_logic;
SIGNAL \INST9|WideOr8~0_combout\ : std_logic;
SIGNAL \INST9|WideOr9~combout\ : std_logic;
SIGNAL \INST9|WideOr8~1_combout\ : std_logic;
SIGNAL \INST9|WideOr8~combout\ : std_logic;
SIGNAL \INST9|WideOr2~0_combout\ : std_logic;
SIGNAL \INST9|WideOr7~combout\ : std_logic;
SIGNAL \INST9|WideOr2~combout\ : std_logic;
SIGNAL \INST10|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST3|blink_sig~0_combout\ : std_logic;
SIGNAL \INST3|blink_sig~q\ : std_logic;
SIGNAL \INST9|Selector2~3_combout\ : std_logic;
SIGNAL \INST9|Selector3~2_combout\ : std_logic;
SIGNAL \INST10|DOUT[3]~1_combout\ : std_logic;
SIGNAL \INST9|ew_amber~combout\ : std_logic;
SIGNAL \INST6|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST4|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST5|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST1|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST3|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST1|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST1|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST9|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \INST9|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \INST9|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \INST9|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \INST9|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \INST10|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
smout <= ww_smout;
blinkout <= ww_blinkout;
nsgreen <= ww_nsgreen;
nsamber <= ww_nsamber;
nsred <= ww_nsred;
ewgreen <= ww_ewgreen;
ewamber <= ww_ewamber;
ewred <= ww_ewred;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\INST9|ALT_INV_WideOr2~combout\ <= NOT \INST9|WideOr2~combout\;
\INST9|ALT_INV_WideOr2~1_combout\ <= NOT \INST9|WideOr2~1_combout\;
\INST9|ALT_INV_WideOr7~combout\ <= NOT \INST9|WideOr7~combout\;
\INST9|ALT_INV_WideOr8~combout\ <= NOT \INST9|WideOr8~combout\;
\INST9|ALT_INV_WideOr9~combout\ <= NOT \INST9|WideOr9~combout\;
\INST10|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST10|clk_proc:COUNT[10]~q\;

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST10|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|WideOr3~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|sreg~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST10|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST10|DOUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST10|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST10|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\smout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|sm_clken~combout\,
	devoe => ww_devoe,
	o => \smout~output_o\);

\blinkout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|blink_sig~q\,
	devoe => ww_devoe,
	o => \blinkout~output_o\);

\nsgreen~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|Selector2~3_combout\,
	devoe => ww_devoe,
	o => \nsgreen~output_o\);

\nsamber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \nsamber~output_o\);

\nsred~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \nsred~output_o\);

\ewgreen~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \ewgreen~output_o\);

\ewamber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ew_amber~combout\,
	devoe => ww_devoe,
	o => \ewamber~output_o\);

\ewred~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|WideOr2~combout\,
	devoe => ww_devoe,
	o => \ewred~output_o\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\INST1|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg0\(0));

\INST1|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg0\(1));

\INST1|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg0\(2));

\INST1|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg0\(3));

\INST1|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|pb_n_filtered[0]~0_combout\ = (!\INST1|sreg0\(1) & (!\INST1|sreg0\(2) & !\INST1|sreg0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sreg0\(1),
	datab => \INST1|sreg0\(2),
	datac => \INST1|sreg0\(3),
	combout => \INST1|pb_n_filtered[0]~0_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\INST1|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg4\(0));

\INST1|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg4\(1));

\INST1|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg4\(2));

\INST1|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg4\(3));

\INST1|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|rst_n_filtered~0_combout\ = (!\INST1|sreg4\(1) & (!\INST1|sreg4\(2) & !\INST1|sreg4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sreg4\(1),
	datab => \INST1|sreg4\(2),
	datac => \INST1|sreg4\(3),
	combout => \INST1|rst_n_filtered~0_combout\);

\INST4|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|rst_n_filtered~0_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(0));

\INST4|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST4|sreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(1));

\INST5|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|pb_n_filtered[0]~0_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|sreg\(0));

\INST5|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST5|sreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|sreg\(1));

\INST7|remember~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|remember~0_combout\ = (!\INST9|current_state.s14~q\ & ((\INST7|sreg~q\) # (\INST5|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|sreg~q\,
	datab => \INST5|sreg\(1),
	datad => \INST9|current_state.s14~q\,
	combout => \INST7|remember~0_combout\);

\INST7|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST7|remember~0_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg~q\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\INST1|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg1\(0));

\INST1|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg1\(1));

\INST1|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg1\(2));

\INST1|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|sreg1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|sreg1\(3));

\INST1|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|pb_n_filtered[1]~1_combout\ = (!\INST1|sreg1\(1) & (!\INST1|sreg1\(2) & !\INST1|sreg1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|sreg1\(1),
	datab => \INST1|sreg1\(2),
	datac => \INST1|sreg1\(3),
	combout => \INST1|pb_n_filtered[1]~1_combout\);

\INST6|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST1|pb_n_filtered[1]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(0));

\INST6|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST6|sreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(1));

\INST8|remember~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|remember~0_combout\ = (!\INST9|current_state.s6~q\ & ((\INST8|sreg~q\) # (\INST6|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|sreg~q\,
	datab => \INST6|sreg\(1),
	datad => \INST9|current_state.s6~q\,
	combout => \INST8|remember~0_combout\);

\INST8|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|remember~0_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|sreg~q\);

\INST3|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[0]~1_combout\ = \INST3|clk_divider:counter[0]~q\ $ (VCC)
-- \INST3|clk_divider:counter[0]~2\ = CARRY(\INST3|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST3|clk_divider:counter[0]~1_combout\,
	cout => \INST3|clk_divider:counter[0]~2\);

\INST3|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[0]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[0]~q\);

\INST3|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[1]~1_combout\ = (\INST3|clk_divider:counter[1]~q\ & (!\INST3|clk_divider:counter[0]~2\)) # (!\INST3|clk_divider:counter[1]~q\ & ((\INST3|clk_divider:counter[0]~2\) # (GND)))
-- \INST3|clk_divider:counter[1]~2\ = CARRY((!\INST3|clk_divider:counter[0]~2\) # (!\INST3|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[0]~2\,
	combout => \INST3|clk_divider:counter[1]~1_combout\,
	cout => \INST3|clk_divider:counter[1]~2\);

\INST3|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[1]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[1]~q\);

\INST3|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[2]~1_combout\ = (\INST3|clk_divider:counter[2]~q\ & (\INST3|clk_divider:counter[1]~2\ $ (GND))) # (!\INST3|clk_divider:counter[2]~q\ & (!\INST3|clk_divider:counter[1]~2\ & VCC))
-- \INST3|clk_divider:counter[2]~2\ = CARRY((\INST3|clk_divider:counter[2]~q\ & !\INST3|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[1]~2\,
	combout => \INST3|clk_divider:counter[2]~1_combout\,
	cout => \INST3|clk_divider:counter[2]~2\);

\INST3|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[2]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[2]~q\);

\INST3|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[3]~1_combout\ = (\INST3|clk_divider:counter[3]~q\ & (!\INST3|clk_divider:counter[2]~2\)) # (!\INST3|clk_divider:counter[3]~q\ & ((\INST3|clk_divider:counter[2]~2\) # (GND)))
-- \INST3|clk_divider:counter[3]~2\ = CARRY((!\INST3|clk_divider:counter[2]~2\) # (!\INST3|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST3|clk_divider:counter[2]~2\,
	combout => \INST3|clk_divider:counter[3]~1_combout\,
	cout => \INST3|clk_divider:counter[3]~2\);

\INST3|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[3]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[3]~q\);

\INST3|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_divider:counter[4]~1_combout\ = \INST3|clk_divider:counter[4]~q\ $ (!\INST3|clk_divider:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[4]~q\,
	cin => \INST3|clk_divider:counter[3]~2\,
	combout => \INST3|clk_divider:counter[4]~1_combout\);

\INST3|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_divider:counter[4]~1_combout\,
	sclr => \INST4|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_divider:counter[4]~q\);

\INST3|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~0_combout\ = (\INST3|clk_divider:counter[4]~q\ & !\INST4|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[4]~q\,
	datad => \INST4|sreg\(1),
	combout => \INST3|clk_reg_extend~0_combout\);

\INST3|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(0));

\INST3|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|clk_reg_extend~1_combout\ = (\INST3|clk_reg_extend\(0) & !\INST4|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_reg_extend\(0),
	datad => \INST4|sreg\(1),
	combout => \INST3|clk_reg_extend~1_combout\);

\INST3|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|clk_reg_extend\(1));

\INST3|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sm_clken~combout\ = (\INST3|clk_reg_extend\(0) & !\INST3|clk_reg_extend\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_reg_extend\(0),
	datad => \INST3|clk_reg_extend\(1),
	combout => \INST3|sm_clken~combout\);

\INST9|current_state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~48_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s14~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s14~q\,
	datab => \INST9|current_state.s15~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~48_combout\);

\INST9|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s15~q\);

\INST9|current_state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~45_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (!\INST9|current_state.s15~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|sreg\(1),
	datab => \INST9|current_state.s15~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST9|current_state.s0~q\,
	combout => \INST9|current_state~45_combout\);

\INST9|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s0~q\);

\INST9|next_state.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|next_state.s1~0_combout\ = (!\INST9|current_state.s0~q\ & ((\INST7|sreg~q\) # (!\INST8|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|sreg~q\,
	datac => \INST8|sreg~q\,
	datad => \INST9|current_state.s0~q\,
	combout => \INST9|next_state.s1~0_combout\);

\INST9|current_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~35_combout\ = (\INST4|sreg\(1)) # ((\INST3|clk_reg_extend\(0) & !\INST3|clk_reg_extend\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|sreg\(1),
	datab => \INST3|clk_reg_extend\(0),
	datad => \INST3|clk_reg_extend\(1),
	combout => \INST9|current_state~35_combout\);

\INST9|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|next_state.s1~0_combout\,
	sclr => \INST4|sreg\(1),
	ena => \INST9|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s1~q\);

\INST9|next_state.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|next_state.s2~0_combout\ = (\INST9|current_state.s1~q\ & ((\INST7|sreg~q\) # (!\INST8|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s1~q\,
	datab => \INST7|sreg~q\,
	datad => \INST8|sreg~q\,
	combout => \INST9|next_state.s2~0_combout\);

\INST9|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|next_state.s2~0_combout\,
	sclr => \INST4|sreg\(1),
	ena => \INST9|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s2~q\);

\INST9|current_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~34_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s2~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s2~q\,
	datab => \INST9|current_state.s3~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~34_combout\);

\INST9|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s3~q\);

\INST9|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~36_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s3~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s3~q\,
	datab => \INST9|current_state.s4~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~36_combout\);

\INST9|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s4~q\);

\INST9|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~37_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s4~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s4~q\,
	datab => \INST9|current_state.s5~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~37_combout\);

\INST9|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s5~q\);

\INST9|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Selector2~2_combout\ = (\INST9|current_state.s0~q\ & !\INST9|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s0~q\,
	datad => \INST9|current_state.s1~q\,
	combout => \INST9|Selector2~2_combout\);

\INST9|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~41_combout\ = (\INST9|current_state.s5~q\) # ((\INST8|sreg~q\ & (!\INST7|sreg~q\ & !\INST9|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s5~q\,
	datab => \INST8|sreg~q\,
	datac => \INST7|sreg~q\,
	datad => \INST9|Selector2~2_combout\,
	combout => \INST9|current_state~41_combout\);

\INST9|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~42_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state~41_combout\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state~41_combout\,
	datab => \INST9|current_state.s6~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~42_combout\);

\INST9|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s6~q\);

\INST9|current_state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~47_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s6~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s6~q\,
	datab => \INST9|current_state.s7~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~47_combout\);

\INST9|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s7~q\);

\INST9|current_state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~46_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s7~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s7~q\,
	datab => \INST9|current_state.s8~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~46_combout\);

\INST9|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s8~q\);

\INST9|next_state.s9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|next_state.s9~0_combout\ = (\INST9|current_state.s8~q\ & ((\INST8|sreg~q\) # (!\INST7|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s8~q\,
	datab => \INST8|sreg~q\,
	datad => \INST7|sreg~q\,
	combout => \INST9|next_state.s9~0_combout\);

\INST9|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|next_state.s9~0_combout\,
	sclr => \INST4|sreg\(1),
	ena => \INST9|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s9~q\);

\INST9|next_state.s10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|next_state.s10~0_combout\ = (\INST9|current_state.s9~q\ & ((\INST8|sreg~q\) # (!\INST7|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s9~q\,
	datab => \INST8|sreg~q\,
	datad => \INST7|sreg~q\,
	combout => \INST9|next_state.s10~0_combout\);

\INST9|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|next_state.s10~0_combout\,
	sclr => \INST4|sreg\(1),
	ena => \INST9|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s10~q\);

\INST9|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~38_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s10~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s10~q\,
	datab => \INST9|current_state.s11~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~38_combout\);

\INST9|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s11~q\);

\INST9|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~39_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s11~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s11~q\,
	datab => \INST9|current_state.s12~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~39_combout\);

\INST9|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s12~q\);

\INST9|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~40_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state.s12~q\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s13~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s12~q\,
	datab => \INST9|current_state.s13~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~40_combout\);

\INST9|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s13~q\);

\INST9|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr7~0_combout\ = (!\INST9|current_state.s8~q\ & !\INST9|current_state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST9|current_state.s8~q\,
	datad => \INST9|current_state.s9~q\,
	combout => \INST9|WideOr7~0_combout\);

\INST9|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~43_combout\ = (\INST9|current_state.s13~q\) # ((\INST7|sreg~q\ & (!\INST8|sreg~q\ & !\INST9|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s13~q\,
	datab => \INST7|sreg~q\,
	datac => \INST8|sreg~q\,
	datad => \INST9|WideOr7~0_combout\,
	combout => \INST9|current_state~43_combout\);

\INST9|current_state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|current_state~44_combout\ = (!\INST4|sreg\(1) & ((\INST3|sm_clken~combout\ & (\INST9|current_state~43_combout\)) # (!\INST3|sm_clken~combout\ & ((\INST9|current_state.s14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state~43_combout\,
	datab => \INST9|current_state.s14~q\,
	datac => \INST3|sm_clken~combout\,
	datad => \INST4|sreg\(1),
	combout => \INST9|current_state~44_combout\);

\INST9|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|current_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|current_state.s14~q\);

\INST10|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[0]~0_combout\ = !\INST10|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[0]~q\,
	combout => \INST10|clk_proc:COUNT[0]~0_combout\);

\INST10|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[0]~q\);

\INST10|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[1]~1_combout\ = (\INST10|clk_proc:COUNT[1]~q\ & (\INST10|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST10|clk_proc:COUNT[1]~q\ & (\INST10|clk_proc:COUNT[0]~q\ & VCC))
-- \INST10|clk_proc:COUNT[1]~2\ = CARRY((\INST10|clk_proc:COUNT[1]~q\ & \INST10|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[1]~q\,
	datab => \INST10|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST10|clk_proc:COUNT[1]~1_combout\,
	cout => \INST10|clk_proc:COUNT[1]~2\);

\INST10|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[1]~q\);

\INST10|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[2]~1_combout\ = (\INST10|clk_proc:COUNT[2]~q\ & (!\INST10|clk_proc:COUNT[1]~2\)) # (!\INST10|clk_proc:COUNT[2]~q\ & ((\INST10|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST10|clk_proc:COUNT[2]~2\ = CARRY((!\INST10|clk_proc:COUNT[1]~2\) # (!\INST10|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[1]~2\,
	combout => \INST10|clk_proc:COUNT[2]~1_combout\,
	cout => \INST10|clk_proc:COUNT[2]~2\);

\INST10|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[2]~q\);

\INST10|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[3]~1_combout\ = (\INST10|clk_proc:COUNT[3]~q\ & (\INST10|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST10|clk_proc:COUNT[3]~q\ & (!\INST10|clk_proc:COUNT[2]~2\ & VCC))
-- \INST10|clk_proc:COUNT[3]~2\ = CARRY((\INST10|clk_proc:COUNT[3]~q\ & !\INST10|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[2]~2\,
	combout => \INST10|clk_proc:COUNT[3]~1_combout\,
	cout => \INST10|clk_proc:COUNT[3]~2\);

\INST10|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[3]~q\);

\INST10|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[4]~1_combout\ = (\INST10|clk_proc:COUNT[4]~q\ & (!\INST10|clk_proc:COUNT[3]~2\)) # (!\INST10|clk_proc:COUNT[4]~q\ & ((\INST10|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST10|clk_proc:COUNT[4]~2\ = CARRY((!\INST10|clk_proc:COUNT[3]~2\) # (!\INST10|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[3]~2\,
	combout => \INST10|clk_proc:COUNT[4]~1_combout\,
	cout => \INST10|clk_proc:COUNT[4]~2\);

\INST10|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[4]~q\);

\INST10|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[5]~1_combout\ = (\INST10|clk_proc:COUNT[5]~q\ & (\INST10|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST10|clk_proc:COUNT[5]~q\ & (!\INST10|clk_proc:COUNT[4]~2\ & VCC))
-- \INST10|clk_proc:COUNT[5]~2\ = CARRY((\INST10|clk_proc:COUNT[5]~q\ & !\INST10|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[4]~2\,
	combout => \INST10|clk_proc:COUNT[5]~1_combout\,
	cout => \INST10|clk_proc:COUNT[5]~2\);

\INST10|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[5]~q\);

\INST10|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[6]~1_combout\ = (\INST10|clk_proc:COUNT[6]~q\ & (!\INST10|clk_proc:COUNT[5]~2\)) # (!\INST10|clk_proc:COUNT[6]~q\ & ((\INST10|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST10|clk_proc:COUNT[6]~2\ = CARRY((!\INST10|clk_proc:COUNT[5]~2\) # (!\INST10|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[5]~2\,
	combout => \INST10|clk_proc:COUNT[6]~1_combout\,
	cout => \INST10|clk_proc:COUNT[6]~2\);

\INST10|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[6]~q\);

\INST10|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[7]~1_combout\ = (\INST10|clk_proc:COUNT[7]~q\ & (\INST10|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST10|clk_proc:COUNT[7]~q\ & (!\INST10|clk_proc:COUNT[6]~2\ & VCC))
-- \INST10|clk_proc:COUNT[7]~2\ = CARRY((\INST10|clk_proc:COUNT[7]~q\ & !\INST10|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[6]~2\,
	combout => \INST10|clk_proc:COUNT[7]~1_combout\,
	cout => \INST10|clk_proc:COUNT[7]~2\);

\INST10|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[7]~q\);

\INST10|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[8]~1_combout\ = (\INST10|clk_proc:COUNT[8]~q\ & (!\INST10|clk_proc:COUNT[7]~2\)) # (!\INST10|clk_proc:COUNT[8]~q\ & ((\INST10|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST10|clk_proc:COUNT[8]~2\ = CARRY((!\INST10|clk_proc:COUNT[7]~2\) # (!\INST10|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[7]~2\,
	combout => \INST10|clk_proc:COUNT[8]~1_combout\,
	cout => \INST10|clk_proc:COUNT[8]~2\);

\INST10|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[8]~q\);

\INST10|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[9]~1_combout\ = (\INST10|clk_proc:COUNT[9]~q\ & (\INST10|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST10|clk_proc:COUNT[9]~q\ & (!\INST10|clk_proc:COUNT[8]~2\ & VCC))
-- \INST10|clk_proc:COUNT[9]~2\ = CARRY((\INST10|clk_proc:COUNT[9]~q\ & !\INST10|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST10|clk_proc:COUNT[8]~2\,
	combout => \INST10|clk_proc:COUNT[9]~1_combout\,
	cout => \INST10|clk_proc:COUNT[9]~2\);

\INST10|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[9]~q\);

\INST10|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|clk_proc:COUNT[10]~1_combout\ = \INST10|clk_proc:COUNT[10]~q\ $ (\INST10|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|clk_proc:COUNT[10]~q\,
	cin => \INST10|clk_proc:COUNT[9]~2\,
	combout => \INST10|clk_proc:COUNT[10]~1_combout\);

\INST10|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST10|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|clk_proc:COUNT[10]~q\);

\INST9|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr2~1_combout\ = (!\INST9|current_state.s6~q\ & !\INST9|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST9|current_state.s6~q\,
	datad => \INST9|current_state.s7~q\,
	combout => \INST9|WideOr2~1_combout\);

\INST10|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|DOUT_TEMP[6]~0_combout\ = (\INST10|clk_proc:COUNT[10]~q\ & (((!\INST9|WideOr2~1_combout\)))) # (!\INST10|clk_proc:COUNT[10]~q\ & ((\INST9|current_state.s14~q\) # ((\INST9|current_state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s14~q\,
	datab => \INST9|current_state.s15~q\,
	datac => \INST10|clk_proc:COUNT[10]~q\,
	datad => \INST9|WideOr2~1_combout\,
	combout => \INST10|DOUT_TEMP[6]~0_combout\);

\INST9|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr3~combout\ = (\INST9|current_state.s3~q\) # ((\INST9|current_state.s2~q\) # ((\INST9|current_state.s4~q\) # (\INST9|current_state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s3~q\,
	datab => \INST9|current_state.s2~q\,
	datac => \INST9|current_state.s4~q\,
	datad => \INST9|current_state.s5~q\,
	combout => \INST9|WideOr3~combout\);

\INST9|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr6~0_combout\ = (\INST9|current_state.s11~q\) # ((\INST9|current_state.s10~q\) # ((\INST9|current_state.s12~q\) # (\INST9|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s11~q\,
	datab => \INST9|current_state.s10~q\,
	datac => \INST9|current_state.s12~q\,
	datad => \INST9|current_state.s13~q\,
	combout => \INST9|WideOr6~0_combout\);

\INST9|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr9~0_combout\ = (\INST9|current_state.s2~q\) # ((\INST9|current_state.s10~q\) # ((\INST9|current_state.s6~q\) # (\INST9|current_state.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s2~q\,
	datab => \INST9|current_state.s10~q\,
	datac => \INST9|current_state.s6~q\,
	datad => \INST9|current_state.s14~q\,
	combout => \INST9|WideOr9~0_combout\);

\INST9|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr8~0_combout\ = (\INST9|current_state.s0~q\ & (!\INST9|current_state.s4~q\ & (!\INST9|current_state.s12~q\ & !\INST9|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s0~q\,
	datab => \INST9|current_state.s4~q\,
	datac => \INST9|current_state.s12~q\,
	datad => \INST9|current_state.s8~q\,
	combout => \INST9|WideOr8~0_combout\);

\INST9|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr9~combout\ = (\INST9|WideOr9~0_combout\) # (!\INST9|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|WideOr9~0_combout\,
	datad => \INST9|WideOr8~0_combout\,
	combout => \INST9|WideOr9~combout\);

\INST9|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr8~1_combout\ = (\INST9|current_state.s5~q\) # ((\INST9|current_state.s13~q\) # ((\INST9|current_state.s1~q\) # (\INST9|current_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s5~q\,
	datab => \INST9|current_state.s13~q\,
	datac => \INST9|current_state.s1~q\,
	datad => \INST9|current_state.s9~q\,
	combout => \INST9|WideOr8~1_combout\);

\INST9|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr8~combout\ = (\INST9|WideOr8~1_combout\) # (!\INST9|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|WideOr8~1_combout\,
	datad => \INST9|WideOr8~0_combout\,
	combout => \INST9|WideOr8~combout\);

\INST9|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr2~0_combout\ = (\INST9|current_state.s0~q\ & (!\INST9|current_state.s3~q\ & (!\INST9|current_state.s2~q\ & !\INST9|current_state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s0~q\,
	datab => \INST9|current_state.s3~q\,
	datac => \INST9|current_state.s2~q\,
	datad => \INST9|current_state.s1~q\,
	combout => \INST9|WideOr2~0_combout\);

\INST9|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr7~combout\ = (\INST9|current_state.s11~q\) # ((\INST9|current_state.s10~q\) # ((!\INST9|WideOr7~0_combout\) # (!\INST9|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s11~q\,
	datab => \INST9|current_state.s10~q\,
	datac => \INST9|WideOr2~0_combout\,
	datad => \INST9|WideOr7~0_combout\,
	combout => \INST9|WideOr7~combout\);

\INST9|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|WideOr2~combout\ = (\INST9|current_state.s4~q\) # ((\INST9|current_state.s5~q\) # ((!\INST9|WideOr2~1_combout\) # (!\INST9|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s4~q\,
	datab => \INST9|current_state.s5~q\,
	datac => \INST9|WideOr2~0_combout\,
	datad => \INST9|WideOr2~1_combout\,
	combout => \INST9|WideOr2~combout\);

\INST10|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|DOUT[0]~0_combout\ = \INST9|WideOr2~combout\ $ (\INST10|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST9|WideOr2~combout\,
	datad => \INST10|clk_proc:COUNT[10]~q\,
	combout => \INST10|DOUT[0]~0_combout\);

\INST3|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|blink_sig~0_combout\ = (\INST3|clk_divider:counter[2]~q\ & !\INST4|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|clk_divider:counter[2]~q\,
	datad => \INST4|sreg\(1),
	combout => \INST3|blink_sig~0_combout\);

\INST3|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|blink_sig~q\);

\INST9|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Selector2~3_combout\ = (\INST9|WideOr3~combout\) # ((\INST3|blink_sig~q\ & ((\INST9|current_state.s1~q\) # (!\INST9|current_state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s0~q\,
	datab => \INST9|current_state.s1~q\,
	datac => \INST9|WideOr3~combout\,
	datad => \INST3|blink_sig~q\,
	combout => \INST9|Selector2~3_combout\);

\INST9|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|Selector3~2_combout\ = (\INST9|WideOr6~0_combout\) # ((\INST3|blink_sig~q\ & ((\INST9|current_state.s8~q\) # (\INST9|current_state.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s8~q\,
	datab => \INST9|current_state.s9~q\,
	datac => \INST9|WideOr6~0_combout\,
	datad => \INST3|blink_sig~q\,
	combout => \INST9|Selector3~2_combout\);

\INST10|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|DOUT[3]~1_combout\ = (\INST10|clk_proc:COUNT[10]~q\ & (\INST9|Selector2~3_combout\)) # (!\INST10|clk_proc:COUNT[10]~q\ & ((\INST9|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|Selector2~3_combout\,
	datab => \INST9|Selector3~2_combout\,
	datad => \INST10|clk_proc:COUNT[10]~q\,
	combout => \INST10|DOUT[3]~1_combout\);

\INST9|ew_amber\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|ew_amber~combout\ = (\INST9|current_state.s14~q\) # (\INST9|current_state.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|current_state.s14~q\,
	datab => \INST9|current_state.s15~q\,
	combout => \INST9|ew_amber~combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;

ww_smout <= \smout~output_o\;

ww_blinkout <= \blinkout~output_o\;

ww_nsgreen <= \nsgreen~output_o\;

ww_nsamber <= \nsamber~output_o\;

ww_nsred <= \nsred~output_o\;

ww_ewgreen <= \ewgreen~output_o\;

ww_ewamber <= \ewamber~output_o\;

ww_ewred <= \ewred~output_o\;
END structure;


