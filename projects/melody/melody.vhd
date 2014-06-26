----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:22:52 06/23/2014 
-- Design Name: 
-- Module Name:    melody - Behavioral 
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

-- �Ƹ����� �ϵ��ڵ��Ͽ� ������ ����.
-- �� ���� ���踦 8 bit vector�� ������ش�. 

entity melody is
 Port ( CLK : in  std_logic;
		  PLAY : in  std_logic;
		  DATA : out  std_logic_vector(7 downto 0) := "00000000");
end melody;


architecture Behavioral of melody is
	type VECTOR_ARRAY is array (0 to 47) of std_logic_vector (7 downto 0);
	
	-- �Ƹ����� ���踦 �����س��� vector array
	constant MEMORY : VECTOR_ARRAY := ("00000001",
												"00000001",
												"00000001",
												"00000010",
												"00000001",
												"00000010",
												"00001000",
												"00001000",
												"00001000",
												"00010000",
												"00001000",
												"00010000",
												"00100000",
												"00100000",
												"00010000",
												"00100000",
												"00001000",
												"00000010",
												"00000001",
												"00000001",
												"00000001",
												"00000010",
												"00000001",
												"00000010",
												"00001000",
												"00001000",
												"00001000",
												"00010000",
												"00001000",
												"00010000",
												"00100000",
												"00010000",
												"00001000",
												"00000010",
												"00000001",
												"00000010",
												"00001000",
												"00001000",
												"00001000",
												"00010000",
												"00001000",
												"00000000",
												"00001000",
												"00001000",
												"00001000",
												"00001000",
												"00000000",
												"00000000");
										 
begin
process(CLK, PLAY)
		variable ADDR : integer range 0 to 47 := 0;
		variable counter : integer range 0 to 10000 := 0;

	-- clock �� rising edge 10000���� count �ؼ� 10000��°�� ���� ������ �̵�
	begin
		if(PLAY = '1') then
			if(Rising_edge(CLK)) then 
				counter := counter + 1;
				
				if(counter = 10000) then 
					ADDR := ADDR + 1;
					counter := 0;
						if(ADDR = 47) then
							ADDR := 0;
						end if;
				end if;
			end if;
			
			DATA <= MEMORY(ADDR);
		
		else
			ADDR := 0;
			DATA <= "00000000";
		end if;				
	end process;
end Behavioral;
