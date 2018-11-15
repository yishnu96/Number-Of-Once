----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:07:02 11/15/2018 
-- Design Name: 
-- Module Name:    onse - Behavioral 
-- Project Name: 
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

entity onse is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           A : out  STD_LOGIC_VECTOR (3 downto 0));
end onse;

architecture Behavioral of onse is

begin

	process(I)
	begin
		if( I = "001") then
			A <= "0001";
		
		elsif( I = "010") then
			A <= "0011";

		elsif( I = "011") then
			A <= "0111";

		elsif( I = "100") then
			A <= "1111";			
		end if;
	end process;
	
end Behavioral;

