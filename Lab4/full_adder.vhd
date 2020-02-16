library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder is
	Port ( a			: in std_logic;
			 b			: in std_logic;
			 c_in		: in std_logic;
			 s			: out std_logic;
			 c_out	: out std_logic);
end full_adder;

Architecture LogicFunc OF full_adder IS

	Component half_adder
	Port (a,b : in STD_LOGIC;
			s,c : out STD_LOGIC);
	end Component;
	
	Signal s1,c1,c2 : STD_LOGIC;

BEGIN
	HA1: half_adder port map(a,b,s1,c1);
	HA2: half_adder port map(s1,c_in,s,c2);
	
	c_out <= c1 or c2;

END LogicFunc;
