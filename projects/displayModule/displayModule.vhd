----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:29 06/22/2014 
-- Design Name: 
-- Module Name:    displayModule - Behavioral 
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

-- register와 7 segment display decoder 의 조합 
-- bttnevent와 newinput이 함께 들어오면 shift하고 새로 register에 저장
-- register에 저장된 3 bit vector (bttn 입력을 BCD로 인코딩) 4개를 
-- 번갈아가며 dynamic display에 출력.   

entity displayModule is
port( clk : in std_logic;
		clear : in std_logic;
		newinput  : in std_logic_vector(0 to 2);
		bttnevent : in std_logic;
		dpoutput: out std_logic_vector(0 to 6);
		digit : out std_logic_vector(3 downto 0));
end displayModule;

architecture Behavioral of displayModule is
component vectorRegister is
   port( rmclk: in std_logic;
			L: in std_logic;
			w: in std_logic_vector(0 to 2);
			C: in std_Logic;
	 Output: out std_logic_vector(0 to 2);
 	 Digit : out std_logic_vector(3 downto 0));
end component;

component decoder is
port(
		keycode : in std_logic_vector(0 to 2);
		dpoutput: out std_logic_vector(0 to 6)
		);
end component;

signal code : std_logic_vector(0 to 2);

begin
	
	reg : vectorRegister port map(clk, bttnevent, newinput, clear, code, digit);
	dec : decoder port map(code, dpoutput);

end Behavioral;

