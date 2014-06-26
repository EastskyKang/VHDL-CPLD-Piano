--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:35 06/22/2014
-- Design Name:   
-- Module Name:   C:/team1/piano3/clktest.vhd
-- Project Name:  piano3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CLKDivider
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
 
ENTITY clktest IS
END clktest;
 
ARCHITECTURE behavior OF clktest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLKDivider
    PORT(
         dvclk : IN  std_logic;
         dven : IN  std_logic;
         dvvolume : IN  std_logic_vector(2 downto 0);
         op : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dvclk : std_logic := '0';
   signal dven : std_logic := '0';
   signal dvvolume : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic;

   -- Clock period definitions
   constant dvclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLKDivider PORT MAP (
          dvclk => dvclk,
          dven => dven,
          dvvolume => dvvolume,
          op => op
        );

   -- Clock process definitions
   dvclk_process :process
   begin
		dvclk <= '0';
		wait for dvclk_period/2;
		dvclk <= '1';
		wait for dvclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 100 ns;	
		dven <= '1';
		dvvolume <= "111";
		wait for 1000 ns;	
		
		dvvolume <= "110";
		wait for 100 ns;	

		dvvolume <= "010";
		wait for 100 ns;	
		
		dvvolume <= "000";
		wait for 1000 ns;
		
		dvvolume <= "111";
		wait for 1000 ns;	

      wait;
   end process;

END;
