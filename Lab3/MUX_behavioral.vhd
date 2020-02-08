library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_behavioral is
	Port(A   : in STD_LOGIC;
		  B	: in STD_LOGIC;
		  S	: in STD_LOGIC;
		  Y	: out STD_LOGIC);
end MUX_behavioral;

ARCHITECTURE Behavior OF MUX_behavioral IS
BEGIN
	process(A,B,S)
	BEGIN
	if S = '0' then
		Y <= A;
	else 
		Y <= B;
	end if;
	end process;
END Behavior;
