--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:14 07/31/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/tb_dlx_toplevel.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dlx_toplevel
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

library UNISIM;
use UNISIM.VComponents.all;
library work;
use work.MemoryMapperTypes.all;
use work.AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
use work.dlxTypes.all; 
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_dlx_toplevel IS
END tb_dlx_toplevel;
 
ARCHITECTURE behavior OF tb_dlx_toplevel IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dlx_toplevel
    PORT(
         reset : IN  std_logic;
         clk_in : IN  std_logic;
			clk_in2 : IN  std_logic;
         AudioL_Out : OUT  std_logic;
         AudioR_Out : OUT  std_logic;
         serial0_in : IN  std_logic;
         serial0_out : OUT  std_logic;
         clock_33 : IN  std_logic;
         pca9564_data : INOUT  std_logic_vector(7 downto 0);
         pca9564_wr : OUT  std_logic;
         pca9564_rd : OUT  std_logic;
         pca9564_ce : OUT  std_logic;
         pca9564_address : OUT  std_logic_vector(1 downto 0);
         pca9564_int : IN  std_logic;
         pca9564_reset : OUT  std_logic;
         led_buildin : OUT  std_logic_vector(3 downto 0);
         knop : IN  std_logic_vector(3 downto 0);
         tb_reset_cpu : OUT  std_logic;
			tb_clk : OUT  std_logic;
         tb_instrab : OUT  std_logic_vector(31 downto 0);
         tb_instrdb : OUT  std_logic_vector(31 downto 0);
         tb_instrae : OUT  std_logic;
         tb_dataab_cpu : OUT  std_logic_vector(31 downto 0);
         tb_datadbi_cpu : OUT  std_logic_vector(31 downto 0);
         tb_datadbo_cpu : OUT  std_logic_vector(31 downto 0);
         tb_datareq_cpu : OUT  std_logic;
         tb_dataack_cpu : OUT  std_logic;
         tb_datarw_cpu : OUT  std_logic;
         tb_wmode_cpu : OUT  std_logic_vector(1 downto 0);
         tb_emode_cpu : OUT  std_logic;
         tb_dataae_cpu : OUT  std_logic;
         tb_cancel_cpu : OUT  std_logic;
         tb_mem_out : OUT  std_logic_vector(31 downto 0);
         tb_mem_in : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk_in : std_logic := '0';
	signal clk_in2 : std_logic := '0';
   signal serial0_in : std_logic := '0';
   signal clock_33 : std_logic := '0';
   signal pca9564_int : std_logic := '0';
   signal knop : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal pca9564_data : std_logic_vector(7 downto 0);

 	--Outputs
   signal AudioL_Out : std_logic;
   signal AudioR_Out : std_logic;
   signal serial0_out : std_logic;
   signal pca9564_wr : std_logic;
   signal pca9564_rd : std_logic;
   signal pca9564_ce : std_logic;
   signal pca9564_address : std_logic_vector(1 downto 0);
   signal pca9564_reset : std_logic;
   signal led_buildin : std_logic_vector(3 downto 0);
   signal reset_cpu : std_logic;
	signal clk_cpu : std_logic;
   signal instrab : std_logic_vector(31 downto 0);
   signal instrdb : std_logic_vector(31 downto 0);
   signal instrae : std_logic;
   signal dataab_cpu : std_logic_vector(31 downto 0);
   signal datadbi_cpu : std_logic_vector(31 downto 0);
   signal datadbo_cpu : std_logic_vector(31 downto 0);
   signal datareq_cpu : std_logic;
   signal dataack_cpu : std_logic;
   signal datarw_cpu : std_logic;
   signal wmode_cpu : std_logic_vector(1 downto 0);
   signal emode_cpu : std_logic;
   signal dataae_cpu : std_logic;
   signal cancel_cpu : std_logic;
   signal mem_out : std_logic_vector(31 downto 0);
   signal mem_in : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
	constant clk_in2_period : time := 5000 ps;
   constant clock_33_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dlx_toplevel PORT MAP (
          reset => reset,
          clk_in => clk_in,
			 clk_in2 => clk_in2,
          AudioL_Out => AudioL_Out,
          AudioR_Out => AudioR_Out,
          serial0_in => serial0_in,
          serial0_out => serial0_out,
          clock_33 => clock_33,
          pca9564_data => pca9564_data,
          pca9564_wr => pca9564_wr,
          pca9564_rd => pca9564_rd,
          pca9564_ce => pca9564_ce,
          pca9564_address => pca9564_address,
          pca9564_int => pca9564_int,
          pca9564_reset => pca9564_reset,
          led_buildin => led_buildin,
          knop => knop,
			 tb_clk => clk_cpu,
          tb_reset_cpu => reset_cpu,
          tb_instrab => instrab,
          tb_instrdb => instrdb,
          tb_instrae => instrae,
          tb_dataab_cpu => dataab_cpu,
          tb_datadbi_cpu => datadbi_cpu,
          tb_datadbo_cpu => datadbo_cpu,
          tb_datareq_cpu => datareq_cpu,
          tb_dataack_cpu => dataack_cpu,
          tb_datarw_cpu => datarw_cpu,
          tb_wmode_cpu => wmode_cpu,
          tb_emode_cpu => emode_cpu,
          tb_dataae_cpu => dataae_cpu,
          tb_cancel_cpu => cancel_cpu,
          tb_mem_out => mem_out,
          tb_mem_in => mem_in
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;

--   clk_in_process :process (clk_in2)
--   begin
--		if (clk_in2'event and clk_in2='1') then
--			clk_in <= not clk_in;
--		else
--			clk_in <= clk_in;
--		end if;
--   end process;
   -- Clock process definitions
   clk_in2_process :process
   begin
		clk_in2 <= '0';
		wait for clk_in2_period/2;
		clk_in2 <= '1';
		wait for clk_in2_period/2;
   end process;
 
--   clock_33_process :process
--   begin
--		clock_33 <= '0';
--		wait for clock_33_period/2;
--		clock_33 <= '1';
--		wait for clock_33_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_in_period*10;
		knop <= "0000";
      -- insert stimulus here 
		wait for 5 ns; reset  <= '1';
		wait for 4 ns; reset  <= '0';
		
      wait;
   end process;

END;
