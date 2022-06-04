--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:47 07/31/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/tb_dcm.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: brom_im
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
 
ENTITY tb_dcm IS
END tb_dcm;
 
ARCHITECTURE behavior OF tb_dcm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

COMPONENT DCM_100
   port ( CLKIN_IN        : in    std_logic; 
          RST_IN          : in    std_logic; 
          CLKIN_IBUFG_OUT : out   std_logic; 
          CLKOUT0_OUT     : out   std_logic; 
          CLKOUT1_OUT     : out   std_logic; 
          CLKOUT2_OUT     : out   std_logic; 
          CLKOUT3_OUT     : out   std_logic; 
          CLKOUT4_OUT     : out   std_logic; 
          CLKOUT5_OUT     : out   std_logic; 
          LOCKED_OUT      : out   std_logic);
END COMPONENT;
    

   --Inputs
   signal CLKIN_IN: std_logic := '0';
	signal RST_IN: std_logic := '0';
	
   

 	--Outputs
   signal CLKIN_IBUFG_OUT : std_logic;
	signal CLKOUT0_OUT : std_logic;
	signal CLKOUT1_OUT : std_logic;
	signal CLKOUT2_OUT : std_logic;
	signal CLKOUT3_OUT : std_logic;
	signal CLKOUT4_OUT : std_logic;
	signal CLKOUT5_OUT : std_logic;
	signal LOCKED_OUT : std_logic;

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)

uut: DCM_100 PORT MAP ( CLKIN_IN   => CLKIN_IN,
          RST_IN       => RST_IN,
          CLKIN_IBUFG_OUT => CLKIN_IBUFG_OUT,
          CLKOUT0_OUT   => CLKOUT0_OUT,
          CLKOUT1_OUT    => CLKOUT1_OUT,
          CLKOUT2_OUT    => CLKOUT2_OUT, 
          CLKOUT3_OUT    => CLKOUT3_OUT,
          CLKOUT4_OUT     => CLKOUT4_OUT,
          CLKOUT5_OUT     => CLKOUT5_OUT,
          LOCKED_OUT     => LOCKED_OUT
			 );


   -- Clock process definitions
   clka_process :process
   begin
		CLKIN_IN <= '0';
		wait for clka_period/2;
		CLKIN_IN <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		RST_IN  <= '1';
		wait for 100 ns;	
		RST_IN  <= '0';
      wait for clka_period*10;

      -- insert stimulus here 

      wait;
   end process;


--	process(clka)
--	begin
--		if(clka'Event and clka='1') then
--			if (addra ="00110000000000") then
--				addra <= addra;
--			else
--				addra <= addra + 1;
--			end if;
--		end if;
--	end process;
	
END;
