library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder is
	Port ( a			: in std_logic;
			 b			: in std_logic;
			 s			: out std_logic;
			 c			: out std_logic);
end half_adder;

Architecture LogicFunc OF half_adder IS
BEGIN 
			 c <= a AND b;
			 s <= a XOR b;
END LogicFunc;
