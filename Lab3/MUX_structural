library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity xinyue_chen_MUX_structural is
	Port (A			: in std_logic;
			B			: in std_logic;
			S			: in std_logic;
			Y			: out std_logic);
end xinyue_chen_MUX_structural; 

ARCHITECTURE LogicFunc OF xinyue_chen_MUX_structural IS
BEGIN
			Y<=(B AND S) OR ((NOT S) AND A);
END LogicFunc;
