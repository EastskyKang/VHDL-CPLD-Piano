--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:53:27 06/22/2014
-- Design Name:   
-- Module Name:   C:/team1/piano3/test.vhd
-- Project Name:  piano3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: piano
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
 
    COMPONENT piano
    PORT(
         pianoclk : IN  std_logic;
         key : IN  std_logic_vector(0 to 3);
         volup : IN  std_logic;
         voldown : IN  std_logic;
         op : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal pianoclk : std_logic := '0';
   signal key : std_logic_vector(0 to 3) := (others => '0');
   signal volup : std_logic := '0';
   signal voldown : std_logic := '0';

 	--Outputs
   signal op : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant pianoclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piano PORT MAP (
          pianoclk => pianoclk,
          key => key,
          volup => volup,
          voldown => voldown,
          op => op
        );

   -- Clock process definitions
   pianoclk_process :process
   begin
		pianoclk <= '0';
		wait for pianoclk_period/2;
		pianoclk <= '1';
		wait for pianoclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
		key <= "0001"; 
		wait for 1000 ns;
		
		volup <= '1';
      wait for 10 ns;
		volup <= '0';

		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
			wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		
		wait for 1000 ns;
		volup <= '1';
		wait for 10 ns;
		volup <= '0';
		

      -- insert stimulus here 

      wait;
   end process;

END;
