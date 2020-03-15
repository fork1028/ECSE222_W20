library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper is
	Port(	A, B		: in std_logic_vector(3 downto 0);
		decoded_A	: out std_logic_vector(6 downto 0);
		decoded_B	: out std_logic_vector(6 downto 0);
		decoded_AplusB	: out std_logic_vector(13 downto 0));
end wrapper;

Architecture LogicFunc of wrapper is
component bcd_adder
	Port( a	: in std_logic_vector(3 downto 0);
	      b	: in std_logic_vector(3 downto 0);
	      s	: out std_logic_vector(3 downto 0);
	      c_out : out std_logic);
end component bcd_adder;

component seven_segment_decoder
	Port( code	: in std_logic_vector(3 downto 0);
	segments_out	: out std_logic_vector(6 downto 0));
end component seven_segment_decoder;

Signal sum	: std_logic_vector(3 downto 0);
Signal carry: std_logic;
Signal input_c: std_logic_vector(3 downto 0);

Signal output_c:	std_logic_vector(6 downto 0);
Signal output_s:	std_logic_vector(6 downto 0);

begin
	S1 : seven_segment_decoder Port Map(A, decoded_A);
	S2 : seven_segment_decoder Port Map(B, decoded_B);
	
	A1 : bcd_adder Port Map(A, B, sum, carry);
	input_c <= '0'&'0'&'0'&carry;
	
	S3 : seven_segment_decoder Port Map(sum, output_s);
	S4 : seven_segment_decoder Port Map(input_c, output_c);
	decoded_AplusB <= output_c & output_s;
end LogicFunc;
