library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rca_adder_behavioral is
	Port ( A			: in std_logic_vector(3 downto 0);
			 B			: in std_logic_vector(3 downto 0);
			 S			: out std_logic_vector(4 downto 0));
end rca_adder_behavioral;

ARCHITECTURE LogicFunc of rca_adder_behavioral IS


BEGIN

			S <= ('0' & A) + ('0' & B);

END LogicFunc;
