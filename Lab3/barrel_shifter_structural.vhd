library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity barrel_shifter_structural is
		Port (X	: in std_logic_vector (3 downto 0);
			sel: in std_logic_vector (1 downto 0);
			Y  : out std_logic_vector(3 downto 0));
end barrel_shifter_structural;

ARCHITECTURE Structure OF barrel_shifter_structural is
	COMPONENT _MUX_structural
	PORT ( A,B,S : IN STD_LOGIC;
		Y     : OUT STD_LOGIC);
	END COMPONENT;
	
-- Signals
signal K: std_logic_vector (3 downto 0);
BEGIN
	M1:_MUX_structural PORT MAP (X(0), X(2),sel(1), K(0));
	M2:_MUX_structural PORT MAP (X(1), X(3),sel(1), K(1));
	M3:_MUX_structural PORT MAP (X(2), X(0),sel(1), K(2));
	M4:_MUX_structural PORT MAP (X(3), X(1),sel(1), K(3));
	
	M5:_MUX_structural PORT MAP (K(0), K(3),sel(0), Y(0));
	M6:_MUX_structural PORT MAP (K(1), K(0),sel(0), Y(1));
	M7:_MUX_structural PORT MAP (K(2), K(1),sel(0), Y(2));
	M8:_MUX_structural PORT MAP (K(3), K(2),sel(0), Y(3));
END Structure;
	
