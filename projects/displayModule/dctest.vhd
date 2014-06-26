--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:03:34 06/21/2014
-- Design Name:   
-- Module Name:   C:/team1/display/dctest.vhd
-- Project Name:  display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY dctest IS
END dctest;
 
ARCHITECTURE behavior OF dctest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         keycode : IN  std_logic_vector(2 downto 0);
         dpa : OUT  std_logic;
         dpb : OUT  std_logic;
         dpc : OUT  std_logic;
         dpd : OUT  std_logic;
         dpe : OUT  std_logic;
         dpf : OUT  std_logic;
         dpg : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal keycode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal dpa : std_logic;
   signal dpb : std_logic;
   signal dpc : std_logic;
   signal dpd : std_logic;
   signal dpe : std_logic;
   signal dpf : std_logic;
   signal dpg : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          keycode => keycode,
          dpa => dpa,
          dpb => dpb,
          dpc => dpc,
          dpd => dpd,
          dpe => dpe,
          dpf => dpf,
          dpg => dpg
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		keycode <= "000";
		
      wait for 100 ns;	
		keycode <= "001";

		wait for 100 ns;	
		keycode <= "111";

		
		wait for 100 ns;	
		keycode <= "100";
      -- insert stimulus here 

      wait;
   end process;

END;
