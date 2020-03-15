library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity bcd_adder is
	port (A	: in std_logic_vector(3 downto 0);
	      B	: in std_logic_vector(3 downto 0);
	      S  : out std_logic_vector(3 downto 0);
	      C_out: out std_logic);
end bcd_adder;

ARCHITECTURE Behavior of bcd_adder is
	Signal  Z: std_logic_vector (4 downto 0);
	Signal  Adjust: std_logic;
	Signal  tmp: std_logic_vector (4 downto 0);
Begin
	Z <= ('0'&A + B);
	Adjust <= '1' WHEN Z >9 ELSE '0';
	C_out <= Adjust;
	tmp <= Z WHEN Adjust='0' ELSE Z+6;
	S <= tmp(3)&tmp(2)&tmp(1)&tmp(0);
End Behavior;
