----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:27:01 06/16/2014 
-- Design Name: 
-- Module Name:    vectorRegister - Behavioral 
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

-- 3 bit std_logic_vector 4개를 저장 및 shift 하는 register
-- output은 4개의 vector를 번갈아가면서 출력해준다. (Dynamic Display 출력이 용이하도록)

entity vectorRegister is
   port( rmclk: in std_logic;
			L: in std_logic;
			w: in std_logic_vector(0 to 2);
			C: in std_Logic;
	 Output: out std_logic_vector(0 to 2); -- 4개의 공간에 저장된 vector 를 번갈아가며 출력
	 Digit : out std_logic_vector(3 downto 0)); -- 출력하는 vector의 digit (몇번째 vector인가)
end vectorRegister;

architecture Behavioral of vectorRegister is
type vectorArray is array (3 downto 0) of std_logic_vector(0 to 2);
signal temp : vectorArray;

begin
	process
   	variable n : integer range 0 to 3 := 0;
	begin
      wait until rising_edge (rmclk);
		
		if C = '1' then 
			-- clear
			temp(3) <= "000";
			temp(2) <= "000";
			temp(1) <= "000";
			temp(0) <= "000";
   
		elsif L='1' then 
			-- shift 
			for i in 0 to 2 loop
				temp(i) <= temp(i+1);
			end loop;

		-- 새로운 입력 
		temp(3) <= w;
		end if;
		
		Output <= temp(n);
		
		-- 4개의 vector 를 번갈아가며 출력 
		if(n = 3) then 
			Digit <= "0111";
		elsif(n = 2) then 
			Digit <= "1011";
		elsif(n = 1) then 
			Digit <= "1101";
		elsif(n = 0) then 
			Digit <= "1110";
		end if;
		
		n := n + 1;
    end process;
end Behavioral;

