-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "01/27/2020 17:05:18"
                                                            
-- Vhdl Test Bench template for design  :  MUX_structural
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_structural_vhd_tst IS
END MUX_structural_vhd_tst;
ARCHITECTURE MUX_structural_arch OF MUX_structural_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT MUX_structural
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	S : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MUX_structural
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S,
	Y => Y
	);
                                      
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	A<='0';
	B<='0';
	S<='0';
	WAIT FOR 10 ns;
	A<='1';
	B<='0';
	S<='0';
	WAIT FOR 10 ns;
	A<='1';
	B<='1';
	S<='0';
	WAIT FOR 10 ns;
	A<='0';
	B<='1';
	S<='0';
	WAIT FOR 10 ns;
	A<='0';
	B<='0';
	S<='1';
	WAIT FOR 10 ns;
	A<='1';
	B<='0';
	S<='1';
	WAIT FOR 10 ns;
	A<='1';
	B<='1';
	S<='1';
	WAIT FOR 10 ns;
	A<='1';
	B<='0';
	S<='1';
	WAIT FOR 10 ns;		  
WAIT;                                                        
END PROCESS always;                                          
END MUX_structural_arch;
