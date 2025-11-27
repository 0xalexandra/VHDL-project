library ieee;
use ieee.std_logic_1164.all;

package my_comp is
	component my_and2 is
		port(
			x1, x2: in std_logic;
			f: out std_logic
		);
	end component;
	
	component my_and3 is
		port(
			x1, x2, x3: in std_logic;
			f: out std_logic
		);
	end component;
	
	component my_or3 is
		port(
			x1, x2, x3: in std_logic;
			f: out std_logic
		);
	end component;
end package my_comp;


library ieee;
use ieee.std_logic_1164.all;

entity my_and2 is
	port(
		x1, x2: in std_logic;
		f: out std_logic
	);
end my_and2;

architecture arc_my_and2 of my_and2 is
begin
	f <= x1 and x2;
end arc_my_and2;



library ieee;
use ieee.std_logic_1164.all;
entity my_and3 is
	port(
		x1, x2, x3: in std_logic;
		f: out std_logic
	);
end my_and3;

architecture arc_my_and3 of my_and3 is
begin
	f <= x1 and x2 and x3;
end arc_my_and3;



library ieee;
use ieee.std_logic_1164.all;
entity my_or3 is
	port(
		x1, x2, x3: in std_logic;
		f: out std_logic
	);
end my_or3;

architecture arc_my_or3 of my_or3 is
begin
	f <= x1 or x2 or x3;
end arc_my_or3;