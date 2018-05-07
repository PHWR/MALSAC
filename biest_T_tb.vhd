--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:02:01 05/07/2018
-- Design Name:   
-- Module Name:   I:/PHWR/contador_3b/biest_T_tb.vhd
-- Project Name:  contador_3b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: biest_T
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY biest_T_tb IS
END biest_T_tb;
 
ARCHITECTURE behavior OF biest_T_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT biest_T
    PORT(
         reset : IN  bit;
         ck : IN  bit;
         t : IN  bit;
         q : INOUT  bit
        );
    END COMPONENT;
    

   --Inputs
   signal reset : bit := '0';
   signal ck : bit := '0';
   signal t : bit := '0';

	--BiDirs
   signal q : bit;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant ck_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: biest_T PORT MAP (
          reset => reset,
          ck => ck,
          t => t,
          q => q
        );

   -- Clock process definitions
   ck_process :process
   begin
		ck <= '0';
		wait for ck_period/2;
		ck <= '1';
		wait for ck_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		t <= 	'0' AFTER 0 NS, 
--				'1' AFTER 5 NS  ,
--				'0' AFTER 10 NS  ,
--				'1' AFTER 15 NS  ,
				'1' AFTER 20 NS  ,
--				'1' AFTER 25 NS  ,
--				'0' AFTER 30 NS  ,
--				'1' AFTER 35 NS  ,
				'0' AFTER 40 NS  ,
--				'1' AFTER 45 NS  ,
--				'0' AFTER 50 NS  ,
--				'1' AFTER 55 NS  ,
				'1' AFTER 60 NS  ;
--				'1' AFTER 65 NS  ,
--				'0' AFTER 70 NS  ,
--				'1' AFTER 75 NS  ;

		reset <= '0' AFTER 0 NS, 
					'1' AFTER 80 NS  ,
					'0' AFTER 150 NS  ,
					'1' AFTER 250 NS  ;
				
      -- hold reset state for 100 ns.
---      wait for 100 ns;	
		--reset <= '1';

      wait for ck_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
