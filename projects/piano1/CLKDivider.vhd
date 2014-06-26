----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:36 06/02/2014 
-- Design Name: 
-- Module Name:    CLKDivider - Behavioral 
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

-- ClockDivider : 입력된 clock을 denominator 값에 맞게 나눠서 출력 해준다. 

entity CLKDivider is
	generic ( denominator : integer range 0 to 100 := 10);
	port(dvclk:in std_logic;
			dven:in std_logic;
			dvvolume:in std_logic_vector (2 downto 0);
			op:out std_logic);
end CLKDivider;

architecture Behavioral of CLKDivider is

signal temp:std_logic:='0';
signal counter: integer range 0 to 100 := 0;

begin
	process(dvclk, dven, counter, temp)
	begin
	
	if (dven= '0') then 
		temp <= '0';
		counter <= 0;
	else 
		if (rising_edge(dvclk)) then
			if (temp = '1' and counter = denominator / 2 - 1) then
				temp <= '0';
				end if;
		
			if (counter = denominator - 1) then 
				counter <= 0;
				
				if(temp = '0') then 
					temp <= '1';
				end if;
				
			else counter <= counter +1;
			end if;  
		end if;
	end if;

  op<=temp;
  
  end process;
end Behavioral;