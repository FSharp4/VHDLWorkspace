library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Crossbar.vhd
--2x2 cross-bar switch
--Adapted from Lecture 8

entity Crossbar is
	Port (s	: in	std_logic;
			x	: in	std_logic_vector(1 downto 0);
			y	: out	std_logic_vector(1 downto 0));
end Crossbar;

architecture Structure of Crossbar is
	component MUX21
		port (s, x1, x2	: in	std_logic;
				f				: out	std_logic);
	end component;
begin
	M1: MUX21 port map (s => s, x1 => x(0), x2 => x(1), f => y(0));
	M2: MUX21 port map (s => s, x1 => x(1), x2 => x(0), f => y(1)); 
end Structure;

--Alternatively, you could write
--		architecture Behavior of Crossbar is
--		begin
--			with s select
--				y <=	x(1) & x(0) when 0,
--						x(0) & x(1) when 1;
--		end Behavior;