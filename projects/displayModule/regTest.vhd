--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:16:03 06/23/2014
-- Design Name:   
-- Module Name:   C:/team1/display2/regTest.vhd
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
 
ENTITY regTest IS
END regTest;
 
ARCHITECTURE behavior OF regTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vectorRegister
    PORT(
         rmclk : IN  std_logic;
         L : IN  std_logic;
         w : IN  std_logic_vector(0 to 2);
         C : IN  std_logic;
         Output3 : INOUT  std_logic_vector(0 to 2);
         Output2 : INOUT  std_logic_vector(0 to 2);
         Output1 : INOUT  std_logic_vector(0 to 2);
         Output0 : INOUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal rmclk : std_logic := '0';
   signal L : std_logic := '0';
   signal w : std_logic_vector(0 to 2) := (others => '0');
   signal C : std_logic := '0';

	--BiDirs
   signal Output3 : std_logic_vector(0 to 2);
   signal Output2 : std_logic_vector(0 to 2);
   signal Output1 : std_logic_vector(0 to 2);
   signal Output0 : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant rmclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vectorRegister PORT MAP (
          rmclk => rmclk,
          L => L,
          w => w,
          C => C,
          Output3 => Output3,
          Output2 => Output2,
          Output1 => Output1,
          Output0 => Output0
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
	
		w <= "100";
		L <= '1';
		
      wait for rmclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
