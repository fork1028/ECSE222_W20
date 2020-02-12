library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity barrel_shifter_behavioral is
		Port (X	: in std_logic_vector (3 downto 0);
		      sel: in std_logic_vector (1 downto 0);
		      Y  : out std_logic_vector(3 downto 0));
end barrel_shifter_behavioral;

ARCHITECTURE Behavior OF barrel_shifter_behavioral is
BEGIN
	WITH sel SELECT
		Y <= X(3)&X(2)&X(1)&X(0) WHEN "00",
		X(2)&X(1)&X(0)&X(3) WHEN "01",
		X(1)&X(0)&X(3)&X(2) WHEN "10",
		X(0)&X(3)&X(2)&X(1) WHEN "11",
		"----" WHEN OTHERS;
END Behavior;
			  
