library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity down_counter is
	Port(enable		: in std_logic;
	reset 			: in std_logic;
	clk			: in std_logic;
	count 			: out std_logic_vector(3 downto 0));	-- countdown from 9 to 0
end down_counter;

Architecture Behavior of down_counter is
Signal temp : std_logic_vector(3 downto 0);
BEGIN
	PROCESS(clk, reset)
	BEGIN
		IF (reset = '0') THEN		-- Asynchronous reset signal
			temp <= "1010";
		ELSIF (RISING_EDGE(clk)) THEN
			IF (enable = '1')	THEN		-- if enable = '1', then count
				IF (temp = "0000") THEN		-- if temp reach minimum 0000 (0), reset counter
					temp <= "1001";
				ELSE 
					temp <= std_logic_vector(unsigned(temp) - 1);
				END IF;
			END IF;
		END IF;
	END PROCESS;
	count <= temp;
END Architecture Behavior;
