library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity jkff is
	Port(clk	: in std_logic;
	J		: in std_logic;
	K		: in std_logic;
	Q		: out std_logic);
end jkff;

Architecture LogicFunc of jkff is
Signal temp : std_logic;
BEGIN
	PROCESS(clk, J, K)
	BEGIN
		IF RISING_EDGE(clk) THEN
			IF (J='0' and K='1') THEN
				temp <= '0';
			ELSIF (J='1' and K='0') THEN
				temp <= '1';
			ELSIF (J='1' and K='1') THEN
				temp <= not (temp);
			END IF;
		END IF;
	END PROCESS;
	Q <= temp;
END Architecture LogicFunc;
				
			
