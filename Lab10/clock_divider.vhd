library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity clock_divider is
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	en_out 			: out std_logic);
end clock_divider;

Architecture Behavior of clock_divider is
COMPONENT zichen_chang_down_counter 
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	count 			: out std_logic_vector(3 downto 0));	-- countdown from 9 to 0
END COMPONENT;

Signal K : std_logic_vector(3 downto 0);

Begin
	DC1:  down_counter PORT MAP (enable, reset, clk, K);		-- "reset" is asynchronous signal in down_counter
	en_out <= NOT(K(0) OR K(1) OR K(2) OR K(3));

END Architecture Behavior;
