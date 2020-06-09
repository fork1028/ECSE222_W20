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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/07/2020 14:37:58"
                                                            
-- Vhdl Test Bench template for design  :  clock_divider
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_divider_vhd_tst IS
END clock_divider_vhd_tst;
ARCHITECTURE clock_divider_arch OF clock_divider_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en_out : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT clock_divider
	PORT (
	clk : IN STD_LOGIC;
	en_out : OUT STD_LOGIC;
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock_divider
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en_out => en_out,
	enable => enable,
	reset => reset
	);

	
clock_generation: process
begin 
	clk <= '1';
	wait for 50 ms;
	clk <= '0';
	wait for 50 ms;
end process clock_generation; 
	
always : PROCESS                                                                                 
BEGIN                                                         
	reset <= '0';
	enable <= '0';
	wait for 100 ms;		-- Initialize the dlock divider(or, down-counter)
	
	reset <= '1';			
	enable <= '1';			-- start down counting at 2nd cycle
	wait for 100 ms;
	
--	reset <= '1';			-- start counting at 3rd clk cycle
--	enable <= '1';
--	wait for 100 ms;

	wait ;
WAIT;                                                        
END PROCESS always;                                        
END clock_divider_arch;

