-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
-- CREATED		"Thu Dec 29 19:26:19 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SEG IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		en : IN STD_LOGIC;
		start :  IN  STD_LOGIC;
		data0 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data1 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data2 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data3 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data4 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		data5 :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		cs :  OUT  STD_LOGIC_VECTOR(0 TO 5);
		seg :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END SEG;

ARCHITECTURE bdf_type OF SEG IS 

COMPONENT segdata
	PORT(clk_sys : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 data_flow : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT segdisp
	PORT(clk_sys : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 cs : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 disp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT seginpu
	PORT(clk_sys : IN STD_LOGIC;
		 start : IN STD_LOGIC;
		 data0 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data2 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data3 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data4 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data5 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 rst : OUT STD_LOGIC;
		 data_in : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT segclk
GENERIC (N : INTEGER
			);
	PORT(clk_sys : IN STD_LOGIC;
		 clk_fix : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(5 DOWNTO 0);


BEGIN 



b2v_inst : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_2,
		 data_out => SYNTHESIZED_WIRE_14);


b2v_inst1 : segdisp
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 en => en,
		 data => SYNTHESIZED_WIRE_26,
		 cs => cs,
		 disp => seg);


b2v_inst10 : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_8,
		 data_out => SYNTHESIZED_WIRE_23);



b2v_inst14 : seginpu
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 start => start,
		 data0 => data0,
		 data1 => data1,
		 data2 => data2,
		 data3 => data3,
		 data4 => data4,
		 data5 => data5,
		 rst => SYNTHESIZED_WIRE_25,
		 data_in => SYNTHESIZED_WIRE_10);


b2v_inst4 : segclk
GENERIC MAP(N => 5000
			)
PORT MAP(clk_sys => clk,
		 clk_fix => SYNTHESIZED_WIRE_24);


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_26;


b2v_inst6 : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_14,
		 data_out => SYNTHESIZED_WIRE_17);


b2v_inst7 : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_17,
		 data_out => SYNTHESIZED_WIRE_8);


b2v_inst8 : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_20,
		 data_out => SYNTHESIZED_WIRE_26);


b2v_inst9 : segdata
PORT MAP(clk_sys => SYNTHESIZED_WIRE_24,
		 rst => SYNTHESIZED_WIRE_25,
		 data_flow => SYNTHESIZED_WIRE_23,
		 data_out => SYNTHESIZED_WIRE_20);


END bdf_type;