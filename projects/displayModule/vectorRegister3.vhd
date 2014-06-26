----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:58 06/16/2014 
-- Design Name: 
-- Module Name:    vectorRegister3 - Behavioral 
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

entity vectorRegister3 is
	Port ( rclk : in  STD_LOGIC;
			ENABLE : in  STD_LOGIC;
			rin : in std_logic_vector(0 to 2); -- 새로 입력되는 값 
			Output4: out std_logic_vector(0 to 2); 
			Output3: out std_logic_vector(0 to 2);
			Output2: out std_logic_vector(0 to 2);
			Output1: out std_logic_vector(0 to 2));
end vectorRegister3;

architecture Behavioral of vectorRegister3 is
	component vectorRegister is 
		port( rmclk: in std_logic;
				L: in std_logic;
				w: in std_logic;
				C : in std_Logic;
				Output: inout std_logic_vector(3 downto 0) := "0000");
	end component;
	
	signal sb0, sb1, sb2 : std_logic_vector(3 downto 0);
begin

	Output4(2) <= sb2(3); -- shift register 의 4번째 자리
	Output4(1) <= sb1(3);
	Output4(0) <= sb0(3);
	
	Output3(2) <= sb2(2); -- shift register 의 3번째 자리 
	Output3(1) <= sb1(2);
	Output3(0) <= sb0(2);
	
	Output2(2) <= sb2(1); -- shift register 의 2번째 자리 
	Output2(1) <= sb1(1);
	Output2(0) <= sb0(1);
	
	Output1(2) <= sb2(0); -- shift register 의 1번째 자리 
	Output1(1) <= sb1(0);
	Output1(0) <= sb0(0);
	
	r0 : vectorRegister port map(rclk, ENABLE, rin(0), '0', sb0);
	r1 : vectorRegister port map(rclk, ENABLE, rin(1), '0', sb1);
	r2 : vectorRegister port map(rclk, ENABLE, rin(2), '0', sb2);

end Behavioral;

