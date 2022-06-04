--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:18 08/01/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/tb_ack.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ackn
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
 
ENTITY tb_ack IS
END tb_ack;
 
ARCHITECTURE behavior OF tb_ack IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ackn
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			instrab: in  std_logic_vector (31 downto 0);
			instrdb: in  std_logic_vector (31 downto 0);
         req : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
	signal instrab:  std_logic_vector (31 downto 0) := X"00000000";
	signal instrdb:  std_logic_vector (31 downto 0);
   signal req : std_logic := '0';

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ackn PORT MAP (
          clk => clk,
          reset => reset,
			 instrab =>  instrab,
			 instrdb =>  instrdb,
          req => req
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		instrab <= instrab +1;
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
			reset <= '1';
			wait for 10 ns;
			reset <= '0';
--			wait for 18 ns;
--			req <= '1';
--			wait for 20 ns;
--			req <= '0';
--			
--			wait for 67 ns;
--			req <= '1';
--			instrab <= X"00000001";
--			wait for 2 ns;
--			instrdb <= X"00000051";
--			wait for 8 ns;
--			req <= '0';
--			
--			wait for 20 ns;
--			req <= '1';
--			instrab <= X"00000002";
--			wait for 2 ns;
--			instrdb <= X"00000052";
--			wait for 8 ns;
--			req <= '0';
--
--
--			wait for 40 ns;
--			req <= '1';
--			instrab <= X"00000003";
--			wait for 2 ns;
--			instrdb <= X"00000053";
--			wait for 8 ns;
--			req <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
