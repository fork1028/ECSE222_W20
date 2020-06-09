library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity wrapper is
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	HEX0 			: out std_logic_vector(6 downto 0));
end wrapper;

Architecture Behavior of wrapper is
COMPONENT clock_divider 					-- hopefully generate nclock every 1sec
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	en_out 			: out std_logic);
END COMPONENT clock_divider;

COMPONENT counter 
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	count 			: out std_logic_vector(2 downto 0));
END COMPONENT counter;

COMPONENT seven_segment_decoder
	port( code		: in std_logic_vector(3 downto 0);
	      segments_out	: out std_logic_vector(6 downto 0));
END COMPONENT seven_segment_decoder;

Signal nClock : std_logic;
Signal result : std_logic_vector(2 downto 0);
Signal code : std_logic_vector(3 downto 0);

Begin
	CD1:  clock_divider PORT MAP ('1', reset, clk, nClock);	-- the enable signal of clk_divider is always 1 because we want clk_divider to work all the time
	CO1:  counter PORT MAP (enable, reset, nClock, result);
	
	code <= '0' & result;
	
	SD1:  seven_segment_decoder PORT MAP (code, HEX0);

END Architecture Behavior;
