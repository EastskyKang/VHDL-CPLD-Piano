----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:01 06/21/2014 
-- Design Name: 
-- Module Name:    piano - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity piano is
port(
	pianoclk : in std_logic;
	key : in std_logic_vector (0 to 3);
	autokey : in std_logic_vector (0 to 3);
	autokeyout : out std_logic_vector (0 to 3);
	op : out std_logic_vector (0 to 3)
);

end piano;

architecture Behavioral of piano is
	component CLKDivider is 
	generic ( denominator : integer range 0 to 100);
	port(dvclk:in std_logic;
		dven:in std_logic;
		dvvolume:in std_logic_vector (2 downto 0) := "111";
		op:out std_logic);
	end component;

	signal sound : std_logic_vector (0 to 3);

begin

	sound(0) <= key(0) or autokey(0); 
	sound(1) <= key(1) or autokey(1);
	sound(2) <= key(2) or autokey(2);
	sound(3) <= key(3) or autokey(3);

	autokeyout(0) <= sound(0);
	autokeyout(1) <= sound(1);
	autokeyout(2) <= sound(2);
	autokeyout(3) <= sound(3);
	
	-- a piano module takes 4 input. two piano module takes one oktave.
	-- CLKDivider divides a CLK to input a piezo buzzer.
	CD1 : CLKDivider generic map (56) port map (pianoclk, sound(0), "111", op(0)); -- g
	CD2 : CLKDivider generic map (50) port map (pianoclk, sound(1), "111", op(1)); -- a
	CD3 : CLKDivider generic map (44) port map (pianoclk, sound(2), "111", op(2)); -- b 
	CD4 : CLKDivider generic map (42) port map (pianoclk, sound(3), "111", op(3)); -- chigh
	
end Behavioral;