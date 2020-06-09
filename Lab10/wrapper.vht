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
-- Generated on "04/07/2020 15:33:01"
                                                            
-- Vhdl Test Bench template for design  :  wrapper
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY wrapper_vhd_tst IS
END wrapper_vhd_tst;
ARCHITECTURE wrapper_arch OF wrapper_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT wrapper
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : wrapper
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	HEX0 => HEX0,
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
	wait for 100 ms;		-- initialize the process (using asynchronous reset)
	
--	reset <= '0';			
--	enable <= '0';
--	wait for 100 ms;
	
	reset <= '1';		
	enable <= '1';
	wait for 100 ms;
	
	enable <= '0';
	wait for 1000 ms;		-- delay counting by 1sec
	
	enable <= '1';
	wait for 3000 ms; 
	
	enable <= '0';
	wait for 1000 ms;
	
	enable <= '1';			-- counting normally
	wait for 3800 ms;
	
	reset <= '0';			-- reset the counter
	wait for 100 ms;
	
	reset <= '1'; 			-- counting normally
	
	
WAIT;                                                        
END PROCESS always;                                            
END wrapper_arch;

