library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	count 			: out std_logic_vector(2 downto 0));
end counter;

Architecture Behavior of counter is
Signal temp : std_logic_vector(2 downto 0);
BEGIN
	PROCESS(clk, reset)
	BEGIN
	IF (reset = '0') THEN		-- Asynchronous active-low reset signal
		temp <= "000";
	ELSIF (RISING_EDGE(clk)) THEN
		IF (enable = '1')	THEN		-- if enable = '1', then count
		IF (temp = "111") THEN		-- if temp reach maximum 111 (7), reset counter to 0
			temp <= "000";
		ELSE 
			temp <= std_logic_vector(unsigned(temp) + 1);
		END IF;
		END IF;
	END IF;
END PROCESS;
	count <= temp;
END Architecture Behavior;
