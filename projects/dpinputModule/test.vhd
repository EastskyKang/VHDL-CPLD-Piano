--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:33:20 06/25/2014
-- Design Name:   
-- Module Name:   C:/team1/dpinputModule/test.vhd
-- Project Name:  dpinputModule
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inputModule
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
 
    COMPONENT inputModule
    PORT(
         inputclk : IN  std_logic;
         keyinput : IN  std_logic_vector(0 to 7);
         newinput : OUT  std_logic_vector(0 to 2);
         bttnevent : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inputclk : std_logic := '0';
   signal keyinput : std_logic_vector(0 to 7) := (others => '0');

 	--Outputs
   signal newinput : std_logic_vector(0 to 2);
   signal bttnevent : std_logic;

   -- Clock period definitions
   constant inputclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inputModule PORT MAP (
          inputclk => inputclk,
          keyinput => keyinput,
          newinput => newinput,
          bttnevent => bttnevent
        );

   -- Clock process definitions
   inputclk_process :process
   begin
		inputclk <= '0';
		wait for inputclk_period/2;
		inputclk <= '1';
		wait for inputclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		keyinput <= "00100000";
      wait for inputclk_period*10;
		keyinput <= "01100000";
		wait for inputclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
