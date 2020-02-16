library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rca_adder_structural is
	Port ( A			: in std_logic_vector(3 downto 0);
			 B			: in std_logic_vector(3 downto 0);
			 S			: out std_logic_vector(4 downto 0));
end rca_adder_structural;

ARCHITECTURE LogicFunc of rca_adder_structural IS

	COMPONENT half_adder
	Port (a,b : in STD_LOGIC;
			s,c : out STD_LOGIC);
	END COMPONENT;
	
	COMPONENT full_adder
	Port (a,b,c_in : in STD_LOGIC;
			s,c_out : out STD_LOGIC);
	END COMPONENT;
	
	SIGNAL D: std_logic_vector(2 downto 0);

BEGIN
	HA1: half_adder PORT MAP(b=>A(0),a=>B(0),s=>S(0),c=>D(0));
	FA1: full_adder PORT MAP(c_in=>D(0),a=>B(1),b=>A(1),c_out=>D(1),s=>S(1));
	FA2: full_adder PORT MAP(c_in=>D(1),a=>B(2),b=>A(2),c_out=>D(2),s=>S(2));
	FA3: full_adder PORT MAP(c_in=>D(2),a=>B(3),b=>A(3),c_out=>S(4),s=>S(3));
	
END LogicFunc;
