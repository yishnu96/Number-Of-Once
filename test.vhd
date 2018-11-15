--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:20:34 11/15/2018
-- Design Name:   
-- Module Name:   F:/Semester Project/8085/mICRO/test.vhd
-- Project Name:  mICRO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: onse
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT onse
    PORT(
         I : IN  std_logic_vector(2 downto 0);
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: onse PORT MAP (
          I => I,
          A => A
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			A <= "001";
			
     -- hold reset state for 100 ns.
      wait for 100 ns;	
			A <= "010";			
      
     -- hold reset state for 100 ns.
      wait for 100 ns;	
			A <= "011";
			
     -- hold reset state for 100 ns.
      wait for 100 ns;	
			A <= "100";
			
      wait;
   end process;

END;
