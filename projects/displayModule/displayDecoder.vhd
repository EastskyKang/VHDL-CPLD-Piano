----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:50 06/21/2014 
-- Design Name: 
-- Module Name:    displayDecoder - Behavioral 
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

entity displayDecoder is
port(
	pianoclk : in std_logic;
	key : in std_logic_vector (7 downto 0));
end displayDecoder;

architecture Behavioral of displayDecoder is
signal keycode : std_lgoci_vector (2 downto 0);

begin
	process(key)
		begin
		if clow = '1' then 
			dpc <= '1';
		else 
			dpc <= '0';
		end if;
		
		if d = '1' then 
			dpd <= '1';
		else 
			dpd <= '0';
		end if;
		
		if e = '1' then 
			dpe <= '1';
		else 
			dpe <= '0';
		end if;
		
		if f = '1' then 
			dpf <= '1';
		else 
			dpf <= '0';	
		end if;
		
		if g = '1' then 
			dpg <= '1';
		else 
			dpg <= '0';
		end if;
		
		if a = '1' then 
			dpa <= '1';
		else 
			dpa <= '0';
		end if;
		
		if b = '1' then 
			dpb <= '1';
		else 
			dpb <= '0';
		end if;
			
		if chigh = '1' then 
			dpc <= '1';
		else 
			dpc <= '0';
		end if;
	end case
			

	end process;
end Behavioral;

