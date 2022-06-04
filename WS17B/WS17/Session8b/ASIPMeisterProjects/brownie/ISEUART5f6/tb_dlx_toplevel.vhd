--------------------------------------------------------------------------------
-- Company: CES ITEC
-- Engineer: Sajjad Hussain
--
-- Create Date:   13:43:14 07/31/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/TB.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   

-- simulation model.
--------------------------------------------------------------------------------
library STD, IEEE;
use STD.textio.all;
use IEEE.std_logic_textio.all; 
--library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
library UNISIM;
use UNISIM.VComponents.all;
library work;
use work.MemoryMapperTypes.all;
use work.AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
use work.dlxTypes.all; 
use work.Helper.all;





-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB IS
END TB;
 
ARCHITECTURE behavior OF TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dlx_toplevel
    PORT(
         reset : IN  std_logic;
         clk_in : IN  std_logic;
			--clk_in2 : IN  std_logic;
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
         knop : IN  std_logic_vector(3 downto 0)--;
        );
    END COMPONENT;
    
  component kcuart_rx
    port (
      serial_in    : in  std_logic;
      data_out     : out std_logic_vector(7 downto 0);
      data_strobe  : out std_logic;
      en_16_x_baud : in  std_logic;
      clk          : in  std_logic
      );
  end component;


  component clk_div
    generic(
      count       :     integer
      );
    port(
      clk         : in  std_logic;
      reset       : in  std_logic;
      reduced_clk : out std_logic
      );
  end component;

   --Inputs
   signal reset : std_logic := '0';
   signal clk_in : std_logic := '0';
	signal clk_in2 : std_logic := '0';
   signal serial0_in : std_logic := '0';
   signal clock_33 : std_logic := '0';
   signal pca9564_int : std_logic := '1';
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
--   signal reset_cpu : std_logic;
--	signal clk_cpu : std_logic;
--   signal instrab : std_logic_vector(31 downto 0);
--   signal instrdb : std_logic_vector(31 downto 0);
--   signal instrae : std_logic;
--   signal dataab_cpu : std_logic_vector(31 downto 0);
--   signal datadbi_cpu : std_logic_vector(31 downto 0);
--   signal datadbo_cpu : std_logic_vector(31 downto 0);
--   signal datareq_cpu : std_logic;
--   signal dataack_cpu : std_logic;
--   signal datarw_cpu : std_logic;
--   signal wmode_cpu : std_logic_vector(1 downto 0);
--   signal emode_cpu : std_logic;
--   signal dataae_cpu : std_logic;
	
   signal data_strobe : std_logic;
	signal enb : std_logic;
   signal data_in : std_logic_vector(7 downto 0);
   file      uart_outfile  : text is out "uart.txt";  --declare output file

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
	constant clock_33_period : time := 30303 ps; 
signal endoffile : bit := '0';
--data read from the file.
signal    dataread : real;
--data to be saved into the output file.
signal    datatosave : real;
--line number of the file read or written.
signal    linenumber : integer:=1; 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dlx_toplevel PORT MAP (
          reset => reset,
          clk_in => clk_in,
			 --clk_in2 => clk_in2,
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
          knop => knop--,
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;

   clock_33_process :process
   begin
		clock_33 <= '0';
		wait for clock_33_period/2;
		clock_33 <= '1';
		wait for clock_33_period/2;
   end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_in_period*10;
		knop <= "0000";
      -- insert stimulus here 
		reset  <= '1';
		wait for 100 ns; 
		reset  <= '0';
--		wait for 1000 ns;
--		knop <= "0001";
      wait;
   end process;
   -- Serial Reciever
	  
    uDiv2 : clk_div
    generic map(
		  count       => 54 -- 100MHz
      )
    port map(
      clk         => clk_in,
      reset       => reset,--resetforclkdiv,--Sajjad
      reduced_clk => enb
      );
		

  uRx2 : kcuart_rx
    port map(
      serial_in    => serial0_out,
      data_out     => data_in,
      data_strobe  => data_strobe,
      en_16_x_baud => enb,
      clk          => clk_in
      );
		
		
	--write process
	writing :
	process (reset, data_strobe)
		 variable  lineBuf  : line;   --line number declaration  
		 variable dataTemp : integer;
	begin
	if data_strobe = '1' then 
      dataTemp := conv_integer(data_in);
      if dataTemp = 10 then           -- Line Feed
      elsif dataTemp = 9 then         -- Tabulator
        write(lineBuf, HT);
      elsif dataTemp = 13 then        -- Carriage Return
        writeline(uart_outfile, lineBuf);
      else
        write(lineBuf, int2char(dataTemp) );
		  --write(lineBuf, dataTemp );
      end if;
    end if;
	end process writing;

-- LCD
		
	--write process
	lcd :
	process (clock_33, pca9564_rd, pca9564_wr)
		 variable  lineBuf  : line;   --line number declaration  
		 variable dataTemp : integer;
	begin
	if pca9564_rd = '0' or  pca9564_wr = '0' then 
      pca9564_int <= '0';
		if pca9564_rd = '0' then 
			pca9564_data <= "00101000";
		end if;
	else
		pca9564_int <= '1';
    end if;
	end process lcd;
	
END;
