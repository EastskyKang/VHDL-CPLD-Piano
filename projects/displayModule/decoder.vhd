----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:50 06/21/2014 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

-- 7 segment display (dynamic display) decoder
-- 도레미파솔라시도 -> CDEFGABC

entity decoder is
port(
		keycode : in std_logic_vector(0 to 2);
		dpoutput: out std_logic_vector(0 to 6)
		);
end decoder;

architecture Behavioral of decoder is

begin
	process(keycode) 
	begin
		case keycode is
			when "001" => dpoutput <= "1111110"; -- d : a, b, c, d, e, f --
			when "010" => dpoutput <= "1001111"; -- e : a, d, e, f, g --
			when "011" => dpoutput <= "1000111"; -- f : a, e, f, g --
			when "100" => dpoutput <= "1011111"; -- g : a, c, d, e, f, g --
			when "101" => dpoutput <= "1110111"; -- a : a, b, c, e, f, g --
			when "110" => dpoutput <= "1111111"; -- b : a, b, c, d, e, f, g --
			when "111" => dpoutput <= "1001110"; -- c : a, d, e, f --
			when others => dpoutput <= "0000000"; -- none
		end case;
	end process;
	
end Behavioral;