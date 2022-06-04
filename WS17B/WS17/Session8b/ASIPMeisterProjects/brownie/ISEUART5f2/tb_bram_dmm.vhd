--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:27:58 10/18/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/Session5b/ASIPMeisterProjects/brownie/ISEUART5/tb_bram_dmm.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bram_dmm
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
 
ENTITY tb_bram_dmm IS
END tb_bram_dmm;
 
ARCHITECTURE behavior OF tb_bram_dmm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bram_dmm
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(3 downto 0);
         addra : IN  std_logic_vector(16 downto 0);
         dina : IN  std_logic_vector(31 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we : std_logic_vector(3 downto 0) := (others => '0');
   signal dataab_ram : std_logic_vector(16 downto 0) := (others => '0');
   

 	--Outputs
   signal mem_out : std_logic_vector(31 downto 0);
	signal mem_in : std_logic_vector(31 downto 0);
	
	signal count : std_logic_vector(31 downto 0):= x"00000000";

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
   signal dataab_cpu : std_logic_vector(31 downto 0) := "00000000000000010000000000000000";
	signal offset : std_logic_vector(1 downto 0) := (others => '0');
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bram_dmm PORT MAP (
          clka => clk,
          wea => we,
          addra => dataab_ram,
          dina => mem_in,
          douta => mem_out
        );

   -- Clock process definitions
   clka_process :process
   begin
		clk <= '0';
		wait for clka_period/2;
		clk <= '1';
		wait for clka_period/2;
   end process;

   -- Counter
	process(clk)
	begin
		if(clk'Event and clk='1') then
				count <= count + 1;
		end if;
	end process;
	
	-- Addresses
	process(clk)
	begin
		if(clk'Event and clk='1') then
			if(dataab_cpu(7 downto 0) = "00100000") then
				dataab_cpu <= "00000000000000010000000000000000";
			else
				dataab_cpu <= dataab_cpu + 1;
			end if;
		end if;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
	

			-- Read Write byte/Words
			--Read bytes
				we  <= "0000";
				wait for 200 ns;
				
			--Read Words
				we  <= "0000";
				wait for 200 ns;
				
			-- Write Byte 0
				we  <= "0001";
				wait for 200 ns;

			-- Write Byte 1
				we  <= "0010";
				wait for 200 ns;

			-- Write Byte 2
				we  <= "0100";
				wait for 200 ns;

			-- Write Byte 3
				we  <= "1000";
				wait for 200 ns;

			-- Write Word
				we  <= "1111";
				wait for 200 ns;


      wait;
   end process;

	
  dataab_ram  <= "000" & dataab_cpu(15 downto 2);
  offset  <= dataab_cpu(1 downto 0);
  mem_in <= count;
END;
