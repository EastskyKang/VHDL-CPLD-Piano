----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:30 06/22/2014 
-- Design Name: 
-- Module Name:    inputModule - Behavioral 
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

entity inputModule is
port (inputclk : in std_logic;
		keyinput : in std_logic_vector(0 to 7); --도레미파솔라시도--
		newinput : out std_logic_vector(0 to 2) := "000"; 
		bttnevent : out std_logic := '0');
end inputModule;

architecture Behavioral of inputModule is
signal keyprev : std_logic_vector(0 to 7) := "00000000";
signal changed : std_logic_vector(0 to 7) := "00000000"; -- 입력의 change를 detect 하는 vector

begin

	changed(0) <= '1' when (keyprev(0) = '0' and keyinput(0) = '1') else '0';
	changed(1) <= '1' when (keyprev(1) = '0' and keyinput(1) = '1') else '0';
	changed(2) <= '1' when (keyprev(2) = '0' and keyinput(2) = '1') else '0';
	changed(3) <= '1' when (keyprev(3) = '0' and keyinput(3) = '1') else '0';
	changed(4) <= '1' when (keyprev(4) = '0' and keyinput(4) = '1') else '0';
	changed(5) <= '1' when (keyprev(5) = '0' and keyinput(5) = '1') else '0';
	changed(6) <= '1' when (keyprev(6) = '0' and keyinput(6) = '1') else '0';
	changed(7) <= '1' when (keyprev(7) = '0' and keyinput(7) = '1') else '0';

	process (inputclk, keyinput, changed)
	begin
		if rising_edge(inputclk) then
		  keyprev <= keyinput;
	 
			if(changed(0) = '1') then
				bttnevent <= '1';
				newinput <= "000"; 
			elsif(changed(1) = '1') then
				bttnevent <= '1';
				newinput <= "001";
			elsif(changed(2) = '1') then
				bttnevent <= '1';
				newinput <= "010"; 
			elsif(changed(3) = '1') then
				bttnevent <= '1';
				newinput <= "011"; 
			elsif(changed(4) = '1') then
				bttnevent <= '1';
				newinput <= "100"; 
			elsif(changed(5) = '1') then
				bttnevent <= '1';
				newinput <= "101"; 
			elsif(changed(6) = '1') then
				bttnevent <= '1';
				newinput <= "110"; 	
			elsif(changed(7) = '1') then
				bttnevent <= '1';
				newinput <= "111"; 
			else
				bttnevent <= '0';
			end if;
		end if;
	end process;
end Behavioral;

