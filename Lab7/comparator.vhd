library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

ENTITY comparator is
		Port ( A, B      :  in std_logic_vector(3 downto 0);
		       AgtBplusOne : out std_logic;
		       AgteBplusOne: out std_logic;
		       AltBplusOne:  out std_logic;
		       AlteBplusOne: out std_logic;
		       AeqBplusOne:  out std_logic;
		       overflow   :  out std_logic);
end comparator;

architecture behavior of comparator is

SIGNAL tmp: std_logic_vector(3 downto 0);

BEGIN

	Process(A, B)
	Begin
		if(B = "1111") then 
				      overflow <= '1';
				      AgtBplusOne <= '0';
				      AgteBplusOne<= '0';
				      AltBplusOne<= '0';
				      AlteBplusOne<= '0';
				      AeqBplusOne<= '0';
		else
			tmp <= std_logic_vector(unsigned(B) + 1);
			overflow <= '0';
			if(A>tmp) then   AgtBplusOne <= '1';
					 AgteBplusOne<= '1';
				         AltBplusOne<= '0';
					 AlteBplusOne<= '0';
					 AeqBplusOne<= '0';
			elsif(A=tmp) then   AgtBplusOne <= '0';
					    AgteBplusOne<= '1';
					    AltBplusOne<= '0';
					    AlteBplusOne<= '1';
					    AeqBplusOne<= '1';
		else   AgtBplusOne <= '0';
		       AgteBplusOne<= '0';
		       AltBplusOne<= '1';
		       AlteBplusOne<= '1';
		       AeqBplusOne<= '0';
								
		end if;
		end if;
	END PROCESS;
		
END behavior;
