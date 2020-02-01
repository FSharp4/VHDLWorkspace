library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--MUX21.vhd
--2-1 Multiplexer
--Adapted from Lecture 8

entity MUX21 is
	port (s, x1, x2	: in	std_logic;
			f				: out	std_logic);
end MUX21;

architecture LogicFunc of MUX21 is
begin
	f <= (x2 AND s) OR ((NOT s) AND x1);
end LogicFunc;