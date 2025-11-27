library ieee;
use ieee.std_logic_1164.all;
use work.my_comp.all;

entity problhma1 is
	port(
		x1, x2, x3, x4, x5: in std_logic;
		f: out std_logic
	);
end problhma1;

architecture arc_problhma1 of problhma1 is
signal s1, s2, s3: std_logic;
begin
	I1: my_and2 port map(not x1, not x2, s1);
	I2: my_and2 port map(x2, not x3, s2);
	I3: my_and3 port map(x1, x2, x5, s3);
	I4: my_or3 port map(s1, s2, s3, f);
end arc_problhma1;