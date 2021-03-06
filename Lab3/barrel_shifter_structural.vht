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
-- Generated on "01/29/2020 14:58:39"
                                                            
-- Vhdl Test Bench template for design  :  barrel_shifter_structural
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                                

ENTITY barrel_shifter_structural_vhd_tst IS
END barrel_shifter_structural_vhd_tst;
ARCHITECTURE barrel_shifter_structural_arch OF barrel_shifter_structural_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT barrel_shifter_structural
	PORT (
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : barrel_shifter_structural
	PORT MAP (
-- list connections between master ports and signals
	sel => sel,
	X => X,
	Y => Y
	);
                                       
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	FOR i IN 0 to 3 LOOP
	sel <= std_logic_vector(to_unsigned(i,2));
	FOR j IN 0 to 15 LOOP
        X <= std_logic_vector(to_unsigned(j,4));
     
     WAIT FOR 10 ns;
     END LOOP;
     END LOOP;
		  
WAIT;                                                        
END PROCESS always;                                          
END barrel_shifter_structural_arch;
