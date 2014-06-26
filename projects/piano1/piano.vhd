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

-- 8���� ���� 4���� ������ �ϳ��� CPLD�� ���α׷� �Ѵ�. 

entity piano is
port(
	pianoclk : in std_logic;
	key : in std_logic_vector (0 to 3);
	autokey : in std_logic_vector (0 to 3); -- melody(�ڵ����) ��⿡�� �Ѿ���� signal
	keyout : out std_logic_vector (0 to 3);
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

	signal sound : std_logic_vector ( 0 to 3);

begin

	-- �ڵ���� ����� �Է°� button �Է��� OR �����Ѵ�. 
	sound(0) <= key(0) or autokey(0); 
	sound(1) <= key(1) or autokey(1);
	sound(2) <= key(2) or autokey(2);
	sound(3) <= key(3) or autokey(3);

	-- keyout �� dynamic display ��¿� �̿�ȴ�. 
	keyout(0) <= sound(0);
	keyout(1) <= sound(1);
	keyout(2) <= sound(2);
	keyout(3) <= sound(3);

	-- clkdivider�� Ŭ���� denominator ������ ���� ������ش�.
	-- ������ clock�� piezobuzzer�� ����. 
	CD1 : CLKDivider generic map (84) port map (pianoclk, sound(0), "111", op(0)); -- clow
	CD2 : CLKDivider generic map (74) port map (pianoclk, sound(1), "111", op(1)); -- d
	CD3 : CLKDivider generic map (66) port map (pianoclk, sound(2), "111", op(2)); -- e 
	CD4 : CLKDivider generic map (62) port map (pianoclk, sound(3), "111", op(3)); -- f

end Behavioral;