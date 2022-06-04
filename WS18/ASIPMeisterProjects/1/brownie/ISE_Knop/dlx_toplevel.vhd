library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library UNISIM;
use UNISIM.VComponents.all;
library work;
--use work.MemoryMapperTypes.all;
--use work.AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
--use work.dlxTypes.all;                       -- contains data and address buswidth
--use work.Helper.all;

entity dlx_toplevel is
 port (  nreset     : in  std_logic;
         clk_in       : in  std_logic;
--			CLKIN_N_IN   : in  std_logic;
--			CLKIN_P_IN   : in  std_logic;
--			AudioL_Out   : out std_logic;
--         AudioR_Out   : out std_logic;
--			serial0_in   : in  std_logic;
--         serial0_out  : out std_logic;
		   --clock_33 	 : in  std_logic; 
			--pca9564_data    : inout std_logic_vector (7 downto 0);
         --pca9564_wr      : out   std_logic;
         --pca9564_rd      : out   std_logic;
         --pca9564_ce      : out   std_logic;
         --pca9564_address : out   std_logic_vector (1 downto 0);
         --pca9564_int     : in    std_logic;
         --pca9564_reset   : out   std_logic;
			led_buildin     : out std_logic_vector (3 downto 0);
			led_buildin2     : out std_logic_vector (3 downto 0);
			led_user		    : out std_logic_vector (2 downto 0);
			knop	          : in  std_logic_vector (3 downto 0)
--			dipswitchs	    : in    std_logic_vector (7 downto 0)
	 
         );
 end dlx_toplevel;
  
 architecture Behavioral of dlx_toplevel is

component Debouncer is
  generic (
	 bitwidth      :     integer := 32;
	 maxCount      :     integer := 100000
	 );
  port (
	 clk           : in  std_logic;
	 reset         : in  std_logic;
	 dataSource    : in  std_logic_vector(bitwidth-1 downto 0);
	 dataDebounced : out std_logic_vector(bitwidth-1 downto 0)
	 );
end component; 
		

  -- Reset, Clocks and Swithes
  signal reset : std_logic := '0';
 
  

  

  
  
  
  signal data_output  : std_logic_vector(3 downto 0) ;
  

  
  signal knopbuf : std_logic_vector (3 downto 0);
  -- Starting the TOP Design here
  begin

	
	uDebouncer : Debouncer  
	generic map (
	 bitwidth      => 4,
	 maxCount      => 40000000
	 )
	port map (
	 clk           	=> clk_in, -- CLK_100,
	 reset         	=> reset,
	 dataSource    	=> knopbuf,
	 dataDebounced 	=> data_output
	 );

	
	--reset <= not nreset;
reset <=  nreset;
				  
------------------------------ ISIM ----------------------------------
	--Freq <= "0000";--fixed at 100MHz
   --Freq   <= data_output ;--debounced
	

	--begugging switches
	led_buildin2 <= data_output;-- when (reset = '0') else "0000";
   led_buildin <=  knopbuf;-- when (reset = '0') else "0000"; 
   led_user <= "111" when (reset = '0') else "000";--data_output(2 downto 0) ; --{r,y,g}

   knopbuf <= knop;	
---- both leds led_buildin and led_buildin2 were working perfectly
-- led_buildin2 <= led;
-- led_buildin <= led;
-- led_user <= led(2 downto 0);
--  process (reset, clk_in )
--    variable counter        : integer;
--
--  begin
--    if reset = '1' then
--      counter          := 0;
--      led <= "0000";
--    elsif clk_in = '1' and clk_in'event then
--		if (counter = 100000000) then
--        counter        := 0;
--		  if (led = 15) then
--			led <= "0000";
--		  else
--			led <= led +1;
--		  end if;
--		  
--      end if;
--      counter          := counter + 1;
--    end if;
--  end process;
  
end Behavioral;
