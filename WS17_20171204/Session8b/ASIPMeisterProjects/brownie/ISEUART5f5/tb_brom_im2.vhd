--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:40 07/31/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/tb_brom_im2.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: brom_im2
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
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_brom_im2 IS
END tb_brom_im2;
 
ARCHITECTURE behavior OF tb_brom_im2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT brom_im2
    PORT(
         clka : IN  std_logic;
         addra : IN  std_logic_vector(13 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal addra : std_logic_vector(13 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: brom_im2 PORT MAP (
          clka => clka,
          addra => addra,
          douta => douta
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clka_period*10;

      -- insert stimulus here 

      wait;
   end process;

addra <="00110000000000";
--	process(clka)
--	begin
--		if(clka'Event and clka='1') then
--				addra <= addra + 1;
--		end if;
--	end process;
	
END;
