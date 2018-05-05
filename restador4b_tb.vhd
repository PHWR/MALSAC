library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.constants.all;

ENTITY restador4b_tb is
end restador4b_tb;

architecture behavior of restador4b_tb is

component restador is
Port ( 	A: in STD_LOGIC;
		B: in STD_LOGIC;
		Bin: in STD_LOGIC;
		Bout: out STD_LOGIC;
		D: out STD_LOGIC
		);
end component;

signal entryA : std_logic_vector (tamBus downto 0);
signal entryB : std_logic_vector (tamBus downto 0);
signal Bi : std_logic := '0';

signal Bo : std_logic;
signal outD : std_logic_vector (tamBus downto 0);

constant period : time := 10 ns;

sub4B: restador PORT MAP (
	A => entryA,
	B => entryB,
	Bin => Bi,
	Bout => Bo,
	D => outD
	);


stim_proc: process

begin

entryA <= "1010";
entryB <= "0101";
Bi <= '0';
assert outD = "0101" report "wrong case 1" severity failure;

wait for period;

entryA <= "1001";
entryB <= "0001";
assert outD = "1000" report "wrong case 1" severity failure;

wait for period;

entryA <= "0111";
entryB <= "0111";
assert outD = "0000" report "wrong case 1" severity failure;

wait for period;

entryA <= "1111";
entryB <= "1111";
assert outD = "0000" report "wrong case 1" severity failure;


