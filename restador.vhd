library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity restador is
Port ( 	dataA: in STD_LOGIC;
		dataB: in STD_LOGIC;
		Bin: in STD_LOGIC;
		Bout: out STD_LOGIC;
		Dif: out STD_LOGIC
		);
end restador;

architecture estructural of restador is



begin

Dif <= dataA xor dataB xor Bin
Bout <= Bin and (not (dataA xor dataB)) or (not(dataA) and dataB);

end estructural;