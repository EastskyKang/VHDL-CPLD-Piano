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
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
signal volume: integer range 0 to 100 := 0;

begin

	with dvvolume select volume <=
		denominator / 2 when "000", -- 1
		denominator / 2 when "001", --8
		denominator / 2 when "010", --7
		denominator / 2 when "011", --6
		denominator / 2 when "100", --5
		denominator / 2 when "101", --4
		denominator / 2 when "110", --3
		denominator / 2 when "111", 
		denominator / 2 when others;
	
	process(dvclk, dven, counter, temp, volume)
	begin
	
	if (dven= '0') then 
		temp <= '0';
		counter <= 0;
	else 
		if (rising_edge(dvclk)) then
			if (temp = '1' and counter = volume - 1) then
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