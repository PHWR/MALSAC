library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

entity restador4B is
Port ( 	vectorA: in STD_LOGIC_VECTOR (tamBus downto 0);
		vectorB: in STD_LOGIC_VECTOR (tamBus downto 0);
		Bi: in STD_LOGIC;
		Bo: out STD_LOGIC;
		vectorD: out STD_LOGIC_VECTOR (tamBus downto 0)
		);
end restador4B;

architecture estructural of restador4B is
component restador is
Port ( 	A: in STD_LOGIC;
		B: in STD_LOGIC;
		Bin: in STD_LOGIC;
		Bout: out STD_LOGIC;
		D: out STD_LOGIC
		);
end component;

signal C : std_logic_vector (tamBus downto 1)

begin

FS0 : restador port map ( A => vectorA(0), B => vectorB(0), Bin => Bi , Bout => C(1) , D => vectorD(0) );

FS1 : restador port map ( A => vectorA(1), B => vectorB(1), Bin => C(1) , Bout => C(2) , D => vectorD(1) );

FS2 : restador port map ( A => vectorA(2), B => vectorB(2), Bin => C(2) , Bout => C(3) , D => vectorD(2) );

FS3 : restador port map ( A => vectorA(3), B => vectorB(3), Bin => Bi , Bout => Bo , D => vectorD(3) );


Dif <= dataA xor dataB xor Bin
Bout <= Bin and (not (dataA xor dataB)) or (not(dataA) and dataB);

end estructural;