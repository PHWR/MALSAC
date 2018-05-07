----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jose Antonio Quevedo
-- 
-- Create Date:    13:46:41 05/07/2018 
-- Design Name: 
-- Module Name:    biest_T - flujo 
-- Project Name: Malsac
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity biest_T is
	PORT (reset, ck, t: IN BIT; q: inout BIT);
end biest_T;

architecture flujo of biest_T is
SIGNAL tmp: bit;
begin

	PROCESS(ck, reset)
	BEGIN
		if reset = '0' then
			tmp <= '0';
		else
			if ck'event and ck ='1' then
				if t = '0' then 
					tmp <= tmp;	
				elsif t = '1' then
					tmp <= not (tmp);
				end if;
			end if;
		end if;
			
--		if ( (ck = '0' AND NOT ck'STABLE) or reset = '0' ) then
--			IF (reset = '0') THEN q <= '0';
--			ELSE q <= (t XOR q) ;
--			END IF;
--		END IF;
	END PROCESS;


--	B1: BLOCK ( (ck = '0' AND NOT ck'STABLE) or reset = '0' )
--	BEGIN
--		--if reset = '0' then
--			--tmp <= GUARDED '0';
--		--ELSE
--			--tmp <= GUARDED (t XOR q);
--		--end if;
--		tmp <= GUARDED '0' WHEN reset = '0' ELSE (t XOR q);
--	END BLOCK B1;
	
	q <= tmp;
	

end flujo;


