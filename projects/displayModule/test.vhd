--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:18:52 06/25/2014
-- Design Name:   
-- Module Name:   C:/team1/displayModule/test.vhd
-- Project Name:  display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vectorRegister
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vectorRegister
    PORT(
         rmclk : IN  std_logic;
         L : IN  std_logic;
         w : IN  std_logic_vector(0 to 2);
         C : IN  std_logic;
         Output : OUT  std_logic_vector(0 to 2);
         Digit : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rmclk : std_logic := '0';
   signal L : std_logic := '0';
   signal w : std_logic_vector(0 to 2) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(0 to 2);
   signal Digit : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant rmclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vectorRegister PORT MAP (
          rmclk => rmclk,
          L => L,
          w => w,
          C => C,
          Output => Output,
          Digit => Digit
        );

   -- Clock process definitions
   rmclk_process :process
   begin
		rmclk <= '0';
		wait for rmclk_period/2;
		rmclk <= '1';
		wait for rmclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		C <= '1';
      wait for rmclk_period*10;
		
		L <= '1';
		w <= "001";
      wait for rmclk_period;

		w <= "010";
		wait for rmclk_period;
		
		w <= "100";
		wait for rmclk_period;
		
		w <= "101";
      wait for rmclk_period;
		
		L <= '0';
		

      -- insert stimulus here 

      wait;
   end process;

END;
