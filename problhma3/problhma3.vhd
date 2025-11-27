library ieee;
use ieee.std_logic_1164.all;

entity problhma3 is
	port(
		x1, x2, x3: in std_logic;
		f: out std_logic
	);
end problhma3;

architecture arc of problhma3 is
begin
	f <= x2 or (not x1 and x3);
end arc;