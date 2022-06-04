library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library UNISIM;
use UNISIM.VComponents.all;

use MemoryMapperTypes.all;
use AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
use dlxTypes.all;                       -- contains data and address buswidth

entity dlx_toplevel is
 port (  reset     : in  std_logic;
         clk_in       : in  std_logic;
--			CLKIN_N_IN   : in  std_logic;
--			CLKIN_P_IN   : in  std_logic;
			AudioL_Out   : out std_logic;
         AudioR_Out   : out std_logic;
			serial0_in   : in  std_logic;
         serial0_out  : out std_logic;
		   clock_33 	 : in  std_logic; 
			pca9564_data    : inout std_logic_vector (7 downto 0);
         pca9564_wr      : out   std_logic;
         pca9564_rd      : out   std_logic;
         pca9564_ce      : out   std_logic;
         pca9564_address : out   std_logic_vector (1 downto 0);
         pca9564_int     : in    std_logic;
         pca9564_reset   : out   std_logic;
			led_buildin     : out std_logic_vector (3 downto 0);
			knop	          : in  std_logic_vector (3 downto 0)			
--			dipswitchs	    : in    std_logic_vector (7 downto 0)
         );
 end dlx_toplevel;
  
 architecture Behavioral of dlx_toplevel is
-------------------------- ChipScope -----------
component chipscope_icon0
  PORT (
    CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	 CONTROL1 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));

end component;


component chipscope_ila4a
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    CLK : IN STD_LOGIC;
    DATA : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    TRIG0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0));

end component;

component chipscope_vio
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    ASYNC_OUT : OUT STD_LOGIC_VECTOR(0 TO 0));

end component;
-------------------------- ChipScope -----------

 component BrownieSTD32
  port (
    CLK : in std_logic;
    RESET : in std_logic;
    IMEM_ADDR_OUT : out std_logic_vector(31 downto 0);
    IMEM_DATA_IN : in std_logic_vector(31 downto 0);
    IMEM_ADDRERR_IN : in std_logic;
    DMEM_ADDR_OUT : out std_logic_vector(31 downto 0);
    DMEM_DATA_IN : in std_logic_vector(31 downto 0);
    DMEM_DATA_OUT : out std_logic_vector(31 downto 0);
    DMEM_REQ_OUT : out std_logic;
    DMEM_ACK_IN : in std_logic;
    DMEM_RW_OUT : out std_logic;
    DMEM_WMODE_OUT : out std_logic_vector(1 downto 0);
    DMEM_EMODE_OUT : out std_logic;
    DMEM_ADDRERR_IN : in std_logic;
    DMEM_CANCEL_OUT : out std_logic;
    EXTINT_IN : in std_logic;
    EXTCATCH_OUT : out std_logic
  );
end component;

  component brom_im
    port (
     	clka : IN std_logic;
		addra: IN std_logic_VECTOR(13 DOWNTO 0);
		douta: OUT std_logic_VECTOR(31 DOWNTO 0));
  end component;


  component bram_dm
    port (
      clka: IN std_logic;
		dina: IN std_logic_VECTOR(31 downto 0);
		addra: IN std_logic_VECTOR(16 downto 0);
		wea: IN std_logic_VECTOR(0 downto 0);
		douta: OUT std_logic_VECTOR(31 downto 0));
  end component;
  

  
 component MemoryMapper
    port (
      -- The Signal-master, e.g. a CPU
      AB_master  : in    MemoryMappedAddressType;
      DB2master  : out MemoryMappedDataType;
      DB_master  : in MemoryMappedDataType;
      RW_master : in    std_logic;
      Req_master : in    std_logic;
      Ack2master : out   std_logic;
    
      -- The Signal-Destination, e.g. a RAM
      DB2mem  : out MemoryMappedDataType;
      DB_mem  : in MemoryMappedDataType;
      Req2mem : out   std_logic;
      Ack_mem : in    std_logic;
  
      -- The Memory-Mapped Ports. Port i will get the connection, if
       DB2ports  : out MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
      DB_ports  : in MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
      Req2ports : out   std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
      Ack_ports : in    std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0)
      );
  end component;
  
  component kcuart_rx
    port (
      serial_in    : in  std_logic;
      data_out     : out std_logic_vector(7 downto 0);
      data_strobe  : out std_logic;
      en_16_x_baud : in  std_logic;
      clk          : in  std_logic
      );
  end component;


  component kcuart_tx
    port (
      data_in        : in  std_logic_vector(7 downto 0);
      send_character : in  std_logic;
      en_16_x_baud   : in  std_logic;
      serial_out     : out std_logic;
      Tx_complete    : out std_logic;
      clk            : in  std_logic
      );
  end component;

-- TODO: REPLACE THIS BY DCM !!! (it prevents using the dedicated clock network)
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
--  
--  component interface_asipmeister_i2c
--    port (
--      clock                : in    std_logic;
--      reset                : in    std_logic;
--      asip_data_in         : in    std_logic_vector (7 downto 0);
--      asip_data_out        : out   std_logic_vector (7 downto 0);
--      asip_rd_en           : in    std_logic;
--      asip_wr_en           : in    std_logic;
--      asip_empty           : out   std_logic;
--      asip_full            : out   std_logic;
--      asip_wr_ack          : out   std_logic;
--      asip_rd_valid        : out   std_logic;
--      i2c_bus_data_in      : in    std_logic_vector (7 downto 0);
--      i2c_bus_data_out     : out   std_logic_vector (7 downto 0);
--      i2c_address          : out   std_logic_vector (6 downto 0);
--      i2c_rw               : inout std_logic;
--      i2c_bytes_to_read    : out   std_logic_vector (7 downto 0);
--      i2c_rd_en            : out   std_logic;
--      i2c_wr_en            : out   std_logic;
--      i2c_empty            : in    std_logic;
--      i2c_full             : in    std_logic;
--      i2c_wr_ack           : in    std_logic;
--      i2c_rd_valid         : in    std_logic;
--      i2c_data_valid       : out   std_logic;
--      i2c_done             : in    std_logic;
--      i2c_request          : out   std_logic;
--      i2c_acknowledge      : in    std_logic;
--      interface_state      : out   std_logic_vector (3 downto 0);
--      interface_fifo_data  : out   std_logic_vector (7 downto 0);
--      interface_fifo_rd_en : out   std_logic;
--      interface_fifo_valid : out   std_logic);
--  end component;
--
--  component i2c_toplevel
--    generic (
--      devcount                 :       positive);
--    port (
--       clock_ip                 : in    std_logic;
--      data_in                  : in    std_logic_vector ((8 * devcount) - 1 downto 0);
--      data_out                 : out   std_logic_vector ((8 * devcount) - 1 downto 0);
--      address                  : in    std_logic_vector ((7 * devcount) - 1 downto 0);
--      rw                       : in    std_logic_vector (devcount - 1 downto 0);
--      bytes_to_read            : in    std_logic_vector ((8 * devcount) - 1 downto 0);
--      rd_en                    : in    std_logic_vector (devcount - 1 downto 0);
--      wr_en                    : in    std_logic_vector (devcount - 1 downto 0);
--      empty                    : out   std_logic_vector (devcount - 1 downto 0);
--      full                     : out   std_logic_vector (devcount - 1 downto 0);
--      wr_ack                   : out   std_logic_vector (devcount - 1 downto 0);
--      rd_valid                 : out   std_logic_vector (devcount - 1 downto 0);
--      clock                    : in    std_logic_vector (devcount - 1 downto 0);
--      reset                    : in    std_logic_vector (devcount - 1 downto 0);
--      data_valid               : in    std_logic_vector (devcount - 1 downto 0);
--      done                     : out   std_logic_vector (devcount - 1 downto 0);
--      request                  : in    std_logic_vector (devcount - 1 downto 0);
--      acknowledge              : out   std_logic_vector (devcount - 1 downto 0);
--      pca9564_data             : inout std_logic_vector (7 downto 0);
--      pca9564_wr               : out   std_logic;
--      pca9564_rd               : out   std_logic;
--      pca9564_ce               : out   std_logic;
--      pca9564_address          : out   std_logic_vector (1 downto 0);
--      pca9564_int              : in    std_logic;
--      pca9564_reset            : out   std_logic;
--      debug_pca9564_registers  : out   std_logic_vector (31 downto 0);
--      debug_statemachine_state : out   std_logic_vector (7 downto 0));
--  end component;
--  
--   component AudioOut_TopLevel
--    generic (
--      KSAMPLES_PER_SECOND          : integer;
--      FIFO_READ_CLOCK_SPEED_IN_KHZ : integer;
--      NUMBER_OF_PORTS              : integer
--      );
--
--    port (
--      reset            : in  std_logic;
--      clkPwmGeneration : in  std_logic;
--      clkFifoRead      : in  std_logic;
--      clkFifoWrite     : in  std_logic;
--      AudioData        : in  AudioDataArray(NUMBER_OF_PORTS-1 downto 0);
--      req              : in  std_logic_vector(NUMBER_OF_PORTS-1 downto 0);
--      ack              : out std_logic_vector(NUMBER_OF_PORTS-1 downto 0);
--      analogOut        : out std_logic;
--      fifoDataCount    : out std_logic_vector(7 downto 0);
--      selector         : in  std_logic_vector(NUMBER_OF_PORTS-1 downto 0)
--      );
--  end component;
  	
	---- SIGNALS
	
	
	-------------------------- ChipScope -----------

	signal control0 : STD_LOGIC_VECTOR(35 DOWNTO 0);
	signal control1 : STD_LOGIC_VECTOR(35 DOWNTO 0);
	signal ila_data :  STD_LOGIC_VECTOR(127 DOWNTO 0);
	signal trig0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal vio_out :  STD_LOGIC_VECTOR(0 DOWNTO 0);
	
	-------------------------- ChipScope -----------



  --constant READ : std_logic_vector(3 downto 0) := "1111";  -- read mode from CPU
  constant READ : std_logic := '0';  -- read mode from CPU

  signal fifo_putc0_data_in  : std_logic_vector(7 downto 0);
  signal fifo_getc0_data_out : std_logic_vector(7 downto 0);
  signal fifo_getc0_empty    : std_logic;
  
  signal instrdb : std_logic_vector(31 downto 0);
  signal instrab : std_logic_vector(31 downto 0);
  signal instrae : std_logic;
  
  signal dataab_cpu  : std_logic_vector(31 downto 0);
  signal datadbi_cpu  : std_logic_vector(31 downto 0);
  signal datadbo_cpu  : std_logic_vector(31 downto 0);
  signal datareq_cpu : std_logic;
  signal dataack_cpu : std_logic;
  --signal wmode_cpu  : std_logic_vector(3 downto 0);
  signal wmode_cpu  : std_logic_vector(1 downto 0);
  signal dataae_cpu : std_logic;
  signal cancel_cpu : std_logic;
  signal datarw_cpu : std_logic;
  signal emode_cpu : std_logic;
  signal extint : std_logic;
  signal extcatch : std_logic;
  

  signal instrab_rom : std_logic_vector(INST_AB_WIDTH-1 downto 0);
  signal dataab_ram  : std_logic_vector(DATA_AB_WIDTH-1 downto 0);
  signal we      : std_logic_VECTOR(0 downto 0);
  signal rd      : std_logic;
  signal mem_in  : std_logic_vector(31 downto 0);
  signal mem_out : std_logic_vector(31 downto 0);  
  
  --signal datadb_mem  : std_logic_vector(31 downto 0);
  signal datadbi_mem  : std_logic_vector(31 downto 0);
  signal datadbo_mem  : std_logic_vector(31 downto 0);
  
  signal datareq_mem : std_logic;
  signal dataack_mem : std_logic;
  --signal datadb_ports  : MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
  signal datadbi_ports  : MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
  signal datadbo_ports  : MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
  signal datareq_ports : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
  signal dataack_ports : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
  
  signal port2            : std_logic_vector(31 downto 0);
  signal port2_req_d      : std_logic;
  signal port3            : std_logic_vector(31 downto 0);
  signal port3_counter    : MemoryMappedDataType;
  signal port3_req_d      : std_logic;
  signal port4_req_d      : std_logic;
  
  signal asip_wr_ack_i       : std_logic;
  signal asip_rd_valid_i     : std_logic;
  signal i2c_write_en        : std_logic;
  signal i2c_read_en         : std_logic;
  signal i2c_bus_data_in_i   : std_logic_vector (7 downto 0);
  signal i2c_bus_data_out_i  : std_logic_vector (7 downto 0);
  signal i2c_address_i       : std_logic_vector (6 downto 0);
  signal i2c_rw_i            : std_logic;
  signal i2c_bytes_to_read_i : std_logic_vector (7 downto 0);
  signal i2c_rd_en_i         : std_logic;
  signal i2c_wr_en_i         : std_logic;
  signal i2c_empty_i         : std_logic;
  signal i2c_full_i          : std_logic;
  signal i2c_wr_ack_i        : std_logic;
  signal i2c_rd_valid_i      : std_logic;
  signal i2c_data_valid_i    : std_logic;
  signal i2c_done_i          : std_logic;
  signal i2c_request_i       : std_logic;
  signal i2c_acknowledge_i   : std_logic;

  
   -- Connections to AudioOut (left channel has only 1 port that is connected to CPU; right channel has 2 ports, i.e. CPU and testing)
  constant NUMBER_OF_AUDIO_PORTS : natural := 2;

  signal selectorR   : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Data : AudioDataArray(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Req  : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Ack  : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioL_Data : AudioDataArray(0 downto 0);
  signal AudioL_Req  : std_logic_vector(0 downto 0);
  signal AudioL_Ack  : std_logic_vector(0 downto 0);
  signal locked_sig	: std_logic;

--  signal reset  : std_logic; 
  signal clk :    std_logic;
  signal clk_100 :    std_logic;
  
  signal clock_ip    :    std_logic;
  signal clock_audio_uart :    std_logic; 
  signal clk_33 :    std_logic; 
  
  signal temp : std_logic;
  signal temp1 : std_logic;
  signal temp2 : std_logic;
  
  signal reset_cpu : std_logic;
  signal switch       : std_logic := '1';
  signal reset_switch : std_logic;
  signal finish       : std_logic;
  signal reset_finish : std_logic;
  
 
  signal clkout_audio_uart : std_logic;
  signal clkout_ip : std_logic;
  signal clkout_33 : std_logic;
  
  signal LOCKED_OUT : std_logic;
  signal LOCKED_OUT1 : std_logic;


  signal CLKIN_IBUFG_OUT : std_logic;
  signal CLKIN_IBUFG_OUT1 : std_logic;

  signal CLK_80 : std_logic;
  signal CLK_66 : std_logic;
  signal CLK_50 : std_logic;
  signal CLK_40 : std_logic;
  signal CLK_25 : std_logic;

  
  signal Freq : std_logic_vector(3 downto 0);
  signal data_output  : std_logic_vector(3 downto 0) ;
  signal led_internal : std_logic_vector(3 downto 0) := "0001";
	
  signal Reg_Debuging_temp : std_logic_vector(7 downto 0);
  
    -- Connections to UART
  signal resetforclkdiv : std_logic := '0';  --reset for clkdiv
  signal reduced_clk    : std_logic;    --16 times faster than baud rate
  signal data_out       : std_logic_vector(7 downto 0);  --connecting tx and fifo
  signal send_character : std_logic;    --connecting data_present and send_character
  signal Tx_complete    : std_logic;

  signal data_in      : std_logic_vector(7 downto 0);  --connecting rx and fifo
  signal write_buffer : std_logic;                     --connecting data
  -- Sajjad
  signal data_in_tmp2, data_in_tmp3 : std_logic_vector(31 downto 0);
  signal data_bus_out, data_out_tmp0, data_out_tmp1, data_out_tmp2 :	std_logic_vector(31 downto 0);
  signal offset : std_logic_vector(1 downto 0);
   signal ext : std_logic;
	signal addr_err_tmp : std_logic;
	signal ack_out : std_logic;
	signal data_tmp : std_logic_vector(31 downto 0);
	signal data_tmpr : std_logic_vector(31 downto 0);
	
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
		
  COMPONENT DCM_100
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLKOUT0_OUT : OUT std_logic;
		CLKOUT1_OUT : OUT std_logic;
		CLKOUT2_OUT : OUT std_logic;
		CLKOUT3_OUT : OUT std_logic;
		CLKOUT4_OUT : OUT std_logic;
		CLKOUT5_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
begin

  Debouncer1 : Debouncer  
   generic map (
			 bitwidth      => 4,
			 maxCount      => 100000000
    )
	port map (
    clk           	=> CLK_100,
    reset         	=> reset,
    dataSource    	=> knop,
    dataDebounced 	=> data_output
    );
--	  
--	led_internal <= data_output when data_output /= "0000" and rising_edge(clk) 
--									   else led_internal;
   Freq   <= data_output ;
   led_buildin(3 downto 0) <= data_output(3 downto 0) ; --Freq(3 downto 0);	
 		
   clock_ip <= clock_33;
		
	Inst_DCM_100: DCM_100 PORT MAP(
		CLKIN_IN => clk_in,
		RST_IN => reset,
		CLKIN_IBUFG_OUT => CLKIN_IBUFG_OUT,
		CLKOUT0_OUT => CLK_100,
		CLKOUT1_OUT => CLK_80,
		CLKOUT2_OUT => CLK_66,
		CLKOUT3_OUT => CLK_50,
		CLKOUT4_OUT => CLK_40,
		CLKOUT5_OUT => CLK_25,
		LOCKED_OUT =>  LOCKED_OUT
	);

	clk <=  CLK_100 when Freq(3 downto 0) = "0000" else 
			CLK_80  when Freq(3 downto 0) = "0001" else
			CLK_66  when Freq(3 downto 0) = "0010" else
			CLK_50  when Freq(3 downto 0) = "0011" else
			CLK_40  when Freq(3 downto 0) = "0100" else
--		  clock_33 when Freq(3 downto 0) = "0101" else
			CLK_25  when Freq(3 downto 0) = "0101" else
			CLK_100 ;

	-------------------------- ChipScope -----------

		
	icon0 : chipscope_icon0
	  port map (
		 CONTROL0 => control0,
		 CONTROL1 => control1
		 );

					
	ila0 : chipscope_ila4a
	  port map (
		 CONTROL => control0,
		 CLK => clk,
		 DATA => ila_data,
		 TRIG0 => trig0
		 );

	vio0 : chipscope_vio
	  port map (
		 CONTROL => control1,
		 ASYNC_OUT => vio_out);
	-------------------------- ChipScope -----------
				 
				 
  CPU0 : BrownieSTD32
     port map (
    CLK					=> clk,					-- in
    RESET				=> reset_cpu, 			-- in
    IMEM_ADDR_OUT		=>	instrab, 			-- out
    IMEM_DATA_IN		=> instrdb, 			-- in
    IMEM_ADDRERR_IN	=>	instrae, 			-- in
    DMEM_ADDR_OUT		=>	dataab_cpu, 		-- out
    DMEM_DATA_IN		=>	datadbi_cpu, 		-- in
    DMEM_DATA_OUT		=>	datadbo_cpu,  		-- out
    DMEM_REQ_OUT		=>	datareq_cpu, 		-- out
    DMEM_ACK_IN		=>	dataack_cpu, 		-- in
    DMEM_RW_OUT		=>	datarw_cpu, 		-- out
    DMEM_WMODE_OUT	=>	wmode_cpu, 			-- out
    DMEM_EMODE_OUT	=>	emode_cpu, 			-- out
    DMEM_ADDRERR_IN	=>	dataae_cpu, 		-- in
    DMEM_CANCEL_OUT	=>	cancel_cpu, 	   -- out
    EXTINT_IN			=>	extint, 				-- in
    EXTCATCH_OUT		=>	extcatch				-- out
    );
  
  BROM_instance : brom_im
   port map (
      addra 	=> instrab_rom,
      clka  	=> clk,
      douta    => instrdb
	  );


  BRAM_instance : bram_dm
    port map (
      addra  => dataab_ram,
      clka   	=> clk,
      dina   	=> mem_in,
      douta    => mem_out,
      wea   	=> we
      );
		
 i_memorymapper : MemoryMapper
    port map (
      -- CPU
      AB_master  => dataab_cpu,
      DB_master  => datadbo_cpu,
      DB2master  => datadbi_cpu,
      Req_master => datareq_cpu,
      Ack2master => dataack_cpu,
      RW_master  => datarw_cpu,
      -- bram_dm
      DB2mem     => datadbo_mem,
      DB_mem     => datadbi_mem,
      Req2mem    => datareq_mem,
      Ack_mem    => dataack_mem,
      -- ports
      DB2ports   => datadbo_ports,
      DB_ports   => datadbi_ports,
      Req2ports  => datareq_ports,
      Ack_ports  => dataack_ports
      );
		
		
			pca9564_wr <= '0';
         pca9564_rd <= '0';
         pca9564_ce <= '0';
         pca9564_address <= "00";
			pca9564_reset    <= '0';
			AudioL_Out <= '0';
         AudioR_Out <= '0';
--		
--	  i2c_interface : interface_asipmeister_i2c
--    port map (
--      clock                => clk,
--      reset                => reset,
--      asip_data_in         => fifo_putc0_data_in,
--      asip_data_out        => fifo_getc0_data_out,
--      asip_rd_en           => i2c_read_en,
--      asip_wr_en           => i2c_write_en,
--      asip_empty           => fifo_getc0_empty,
--      asip_full            => open,
--      asip_wr_ack          => asip_wr_ack_i,
--      asip_rd_valid        => asip_rd_valid_i,
--      i2c_bus_data_in      => i2c_bus_data_in_i,
--      i2c_bus_data_out     => i2c_bus_data_out_i,
--      i2c_address          => i2c_address_i,
--      i2c_rw               => i2c_rw_i,
--      i2c_bytes_to_read    => i2c_bytes_to_read_i,
--      i2c_rd_en            => i2c_rd_en_i,
--      i2c_wr_en            => i2c_wr_en_i,
--      i2c_empty            => i2c_empty_i,
--      i2c_full             => i2c_full_i,
--      i2c_wr_ack           => i2c_wr_ack_i,
--      i2c_rd_valid         => i2c_rd_valid_i,
--      i2c_data_valid       => i2c_data_valid_i,
--      i2c_done             => i2c_done_i,
--      i2c_request          => i2c_request_i,
--      i2c_acknowledge      => i2c_acknowledge_i,
--      interface_state      => open,
--      interface_fifo_data  => open,
--      interface_fifo_rd_en => open,
--      interface_fifo_valid => open);
--
--  i2c_core : i2c_toplevel
--    generic map (
--      devcount                 => 1)
--    port map ( 
--      clock_ip                 => clock_ip,
--      data_in                  => i2c_bus_data_out_i,
--      data_out                 => i2c_bus_data_in_i,
--      address                  => i2c_address_i,
--      rw (0)                   => i2c_rw_i,
--      bytes_to_read            => i2c_bytes_to_read_i,
--      rd_en (0)                => i2c_rd_en_i,
--      wr_en (0)                => i2c_wr_en_i,
--      empty (0)                => i2c_empty_i,
--      full (0)                 => i2c_full_i,
--      wr_ack (0)               => i2c_wr_ack_i,
--      rd_valid (0)             => i2c_rd_valid_i,
--      clock (0)                => clk,
--      reset (0)                => reset,
--      data_valid (0)           => i2c_data_valid_i,
--      done (0)                 => i2c_done_i,
--      request (0)              => i2c_request_i,
--      acknowledge (0)          => i2c_acknowledge_i,
--      pca9564_data             => pca9564_data,
--      pca9564_wr               => pca9564_wr,
--      pca9564_rd               => pca9564_rd,
--      pca9564_ce               => pca9564_ce,
--      pca9564_address          => pca9564_address,
--      pca9564_int              => pca9564_int,
--      pca9564_reset            => pca9564_reset,
--      debug_pca9564_registers  => open,
--      debug_statemachine_state => open);
		
--    AudioR : AudioOut_TopLevel
--    generic map (
--      KSAMPLES_PER_SECOND          => 48,
--      FIFO_READ_CLOCK_SPEED_IN_KHZ => 33000, -- 33000
--      NUMBER_OF_PORTS              => NUMBER_OF_AUDIO_PORTS)
--    port map (
--      reset                        => reset,
--      clkPwmGeneration             => clock_ip, --  clock_ip
--      clkFifoRead                  => clock_ip, --  clock_ip
--      clkFifoWrite                 => clk,
--      AudioData                    => AudioR_Data,
--      req                          => AudioR_Req,
--      ack                          => AudioR_Ack,
--      analogOut                    => AudioR_Out,
--      fifoDataCount                => open,
--      selector                     => selectorR);
----
--  AudioL : AudioOut_TopLevel
--    generic map (
--      KSAMPLES_PER_SECOND          => 48,
--      FIFO_READ_CLOCK_SPEED_IN_KHZ => 33000,
--      NUMBER_OF_PORTS              => 1)
--    port map (
--      reset                        => reset,
--      clkPwmGeneration             => clock_ip,  -- clock_ip
--      clkFifoRead                  => clock_ip,  -- clock_ip
--      clkFifoWrite                 => clk,
--      AudioData                    => AudioL_Data,
--      req                          => AudioL_Req,
--      ack                          => AudioL_Ack,
--      analogOut                    => audioL_Out,
--      fifoDataCount                => open,
--      selector                     => "0");
		
-------------------------- ChipScope -----------

	  --Bit1
	  ila_data(13 downto 0) <= instrab_rom (13 downto 0);
	  ila_data(30 downto 14) <= dataab_ram (16 downto 0);
	  ila_data(63 downto 32) <= instrdb;
	  ila_data(95 downto 64) <= mem_out;
	  ila_data(127 downto 96) <= mem_in;
	  ila_data(31) <= finish;
	  trig0(0) <= vio_out(0) or reset;--bram_wen(0);
	  
	
-------------------------- ChipScope -----------
				 	  
----------------------------------
  reset_cpu <= reset or finish or reset_switch;
  
  finishprocess : process (clk, reset)
    type s_t is (st0, st1, st2);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        finish       <= '0';
        state       := st0;
      else
        case state is
          when st0 =>
            if instrdb = X"FFFFFFFF" then
              finish <= '1';
              state := st1;
            else
              state := st0;
				  if reset_finish='1' then
				    -- when the bootloader is used then finish (and thus reset_cpu) goes
					 -- back to '0' to restart the bootloader
                finish <= '0';
				  end if;
            end if;
          when st1 =>
            finish   <= '1';
            state   := st2;
          when st2 =>
            finish   <= '1';
            state   := st0;
        end case;
      end if;
    end if;
  end process;

  switchprocess    : process(clk, reset, datareq_ports(0), finish)
    type s_t is (st0, st1, st2, st3, st4);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' or finish = '1' then
        switch                 <= '0';
        dataack_ports(0)       <= '0';
        reset_switch           <= '0';
        reset_finish           <= '0';
        state       := st0;
      else
        case state is
          when st0 =>
            if datareq_ports(0) = '1' then
              switch           <= '1';
              dataack_ports(0) <= '1';
              reset_switch     <= '1';
              reset_finish     <= '1';
              state := st1;
            else
              dataack_ports(0) <= '0';
              reset_switch     <= '0';
              state := st0;
            end if;
          when st1 =>
            reset_switch       <= '1';
            state   := st2;
          when st2 =>
            reset_switch       <= '1';
            state   := st3;
          when st3 =>
            reset_switch       <= '1';
            state   := st4;
          when st4 =>
            reset_switch       <= '1';
            state   := st0;
        end case;
      end if;
    end if;
  end process;
  --EXTERNAL INT
  extint <= '0';
  --IM
  instrae <= '0' when (instrab(1 downto 0) < 4) else '1';
                
  instrab_rom  <= instrab(INST_AB_WIDTH+1 downto 2);
  
   -- instrab_rom  <= instrab(INST_AB_WIDTH-1 downto 0); --dlx
   -- dataab_ram  <= dataab_cpu(DATA_AB_WIDTH+1 downto 2); --dlx

  -- DM
     
  dataab_ram  <= "000" & dataab_cpu(15 downto 2);
  we     <= "1"     when (not(datarw_cpu = '0') and  datareq_mem = '1' ) else "0"; 
  datadbi_mem <= mem_out when datarw_cpu = '0' else (others => 'Z');
  temp <= datareq_mem when rising_edge(clk);
  dataack_mem <= temp when rising_edge(clk);
  mem_in <= datadbo_mem;
  dataae_cpu <= '0';
--  
--  dataack_mem <= ack_out and not datareq_mem;
--  --datadbi_mem <= mem_out when datarw_cpu = '0' else (others => 'Z');
--  Data_Mem    : process(clk, reset_cpu, datareq_mem, cancel_cpu)
--    type ms_t is (mst0, mst1, mst2, mst3);
--    variable dm_s : ms_t;
--  begin
--    if rising_edge(clk) then
--      if reset_cpu = '1' then
--        ack_out               <= '0';
--        dataae_cpu           	<= '0';
--		  we 							<= "0";
--        dm_s       := mst0;
--      else
--        case dm_s is
--          when mst0 =>
--            ack_out <= not datareq_mem;
--				if datareq_mem = '1' then
--					dm_s := mst1;
--				end if;
--
--          when mst1 =>
--            if cancel_cpu = '1' then
--					dm_s := mst0;
--				elsif datareq_mem = '0' then
--					ack_out <= '0';
--				
--					offset <= dataab_cpu(1 downto 0);
--					dataab_ram  <= dataab_cpu(DATA_AB_WIDTH+1 downto 2);
--					
----					addr_err_tmp <= (wmode_cpu = "11" and (offset = "00")) or
----						(wmode_cpu = "10" and (offset = "00" or offset = "01")) or
----						(wmode_cpu = "01" and (offset = "00" or offset = "01" or offset = "10")) or
----						(wmode_cpu = "00" and (offset = "00" or offset = "01" or offset = "10" or offset = "11"));
--					addr_err_tmp <= '0';
--					if addr_err_tmp = '1' then -- if mismatch in address accessed
--						  dataae_cpu <= '1';
--						  datadbi_mem <= (others => 'X');
--					else -- valid address
--					  dataae_cpu <= '0';
--					  if datarw_cpu = '0' then 
--					  -------- read --------------
--						
--							if(wmode_cpu = "00") then 
--								 data_tmp(31 downto 24) <= mem_out(7 downto 0);
--								 data_tmp(23 downto 16) <= mem_out(15 downto 8);
--								 data_tmp(15 downto 8) <= mem_out(23 downto 16);
--								 data_tmp(7 downto 0) <= mem_out(31 downto 24);
--							elsif(wmode_cpu = "01") then
--								 data_tmp(31 downto 16) <= mem_out(15 downto 0);
--								 data_tmp(15 downto 0) <= mem_out(31 downto 16);
--							elsif(wmode_cpu = "10") then                   -- because it is not used by browstd32, not implemented correctly
--								 data_tmp <= mem_out;
--							elsif(wmode_cpu = "11") then
--								 data_tmp <= mem_out;
--							end if;
--							
--							if(wmode_cpu = "00") then 
--								if (offset = "00" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(15 downto 8) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(7 downto 0)  <= data_tmp(7 downto 0);
--								elsif (offset = "01" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(15 downto 8) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(7 downto 0)  <= data_tmp(15 downto 8);
--								elsif (offset = "10" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(23));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(23));
--									datadbi_mem(15 downto 8) <= (others => emode_cpu and data_tmp(23));
--									datadbi_mem(7 downto 0)  <= data_tmp(23 downto 16);
--								elsif (offset = "11" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(31));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(31));
--									datadbi_mem(15 downto 8) <= (others => emode_cpu and data_tmp(31));
--									datadbi_mem(7 downto 0)  <= data_tmp(31 downto 24);
--								end if;
--							elsif(wmode_cpu = "01") then
--								if (offset = "00" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(15 downto 8)  <= data_tmp(15 downto 8);
--									datadbi_mem(7 downto 0)  <= data_tmp(7 downto 0);
--								elsif (offset = "01" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(15 downto 8)  <= data_tmp(23 downto 16);
--									datadbi_mem(7 downto 0)  <= data_tmp(15 downto 8);
--								elsif (offset = "10" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(23));
--									datadbi_mem(23 downto 16) <= (others => emode_cpu and data_tmp(23));
--									datadbi_mem(15 downto 8)  <= data_tmp(31 downto 24);
--									datadbi_mem(7 downto 0)  <= data_tmp(23 downto 16);
--								end if;
--							elsif(wmode_cpu = "10") then                   -- because it is not used by browstd32, not implemented correctly
--								if (offset = "00" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(7));
--									datadbi_mem(23 downto 16) <= data_tmp(23 downto 16);
--									datadbi_mem(15 downto 8)  <= data_tmp(15 downto 8);
--									datadbi_mem(7 downto 0)  <= data_tmp(7 downto 0);
--								elsif (offset = "01" ) then
--									datadbi_mem(31 downto 24) <= (others => emode_cpu and data_tmp(15));
--									datadbi_mem(23 downto 16) <= data_tmp(31 downto 24);
--									datadbi_mem(15 downto 8)  <= data_tmp(23 downto 16);
--									datadbi_mem(7 downto 0)  <= data_tmp(15 downto 8);
--								end if;
--							elsif(wmode_cpu = "11") then
--								--if (offset = "00" ) then
--								 datadbi_mem(31 downto 24) <= data_tmp(31 downto 24);
--								 datadbi_mem(23 downto 16) <= data_tmp(23 downto 16);
--								 datadbi_mem(15 downto 8)  <= data_tmp(15 downto 8);
--								 datadbi_mem(7 downto 0)  <= data_tmp(7 downto 0);
--							end if;
--							dm_s := mst3;
--					  -------- write --------------
--					  else
--							if(wmode_cpu = "00") then 
--								if (offset = "00" ) then
--									data_tmpr(31 downto 24)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "01" ) then
--									data_tmpr(23 downto 16)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "10" ) then
--									data_tmpr(15 downto 8)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "11" ) then
--									data_tmpr(7 downto 0)  <= datadbo_mem(7 downto 0);
--								end if;
--							elsif(wmode_cpu = "01") then
--								if (offset = "00" ) then
--									data_tmpr(31 downto 24)  <= datadbo_mem(15 downto 8);
--									data_tmpr(23 downto 16)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "01" ) then
--									data_tmpr(23 downto 16) <= datadbo_mem(15 downto 8);
--									data_tmpr(15 downto 8)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "10" ) then
--									data_tmpr(15 downto 8)  <= datadbo_mem(15 downto 8);
--									data_tmpr(7 downto 0)  <= datadbo_mem(7 downto 0);
--								end if;
--							elsif(wmode_cpu = "10") then                   -- because it is not used by browstd32, not implemented correctly
--								if (offset = "00" ) then
--									data_tmpr(31 downto 24)  <= datadbo_mem(23 downto 16);
--									data_tmpr(23 downto 16)  <= datadbo_mem(15 downto 8);
--									data_tmpr(15 downto 8)  <= datadbo_mem(7 downto 0);
--								elsif (offset = "01" ) then
--									data_tmpr(23 downto 16)  <= datadbo_mem(23 downto 16);
--									data_tmpr(15 downto 8)  <= datadbo_mem(15 downto 8);
--									data_tmpr(7 downto 0)  <= datadbo_mem(7 downto 0);
--								end if;
--							elsif(wmode_cpu = "11") then
--								--if (offset = "00" ) then
--								 data_tmpr(31 downto 24)  <= datadbo_mem(31 downto 24);
--								 data_tmpr(23 downto 16)  <= datadbo_mem(23 downto 16);
--								 data_tmpr(15 downto 8)  <= datadbo_mem(15 downto 8);
--								 data_tmpr(7 downto 0)  <= datadbo_mem(7 downto 0);
--							end if;
--							
--							mem_in <= data_tmpr;
--							dm_s := mst2;
--					end if;
--				  end if;
--				end if;
--				
--          when mst2 =>
--				we <= "1";
--				dm_s := mst3;
--				
--			 when mst3 =>
--				 we <= "0";
--				 ack_out <= '1';
--				 if datareq_mem = '0' then
--					dm_s := mst0;
--				 else
--					dm_s := mst1;
--				 end if;
--        end case;
--      end if;
--    end if;
--  end process;
  
  

  
   -----------------------------------------------------------------------------
  -- Pin assignments (DEBUG)
--  led_buildin   <= instrab(7 downto 0);

  --  led_buildin(3 downto 0) <= Freq(7 downto 0);
  
  -----------------------------------------------------------------
  
   -- AudioOut (connect audio-port 1 to memorymapper-port 1)
  --AudioR_Data(0)   <= datadb_ports(1)(15 downto 0);
  --AudioL_Data(0)   <= datadb_ports(1)(15 downto 0);
  AudioR_Data(0)   <= datadbo_ports(1)(15 downto 0);
  AudioL_Data(0)   <= datadbo_ports(1)(15 downto 0);
  AudioR_Req(0)    <= datareq_ports(1) when dataab_cpu(3 downto 2) = "01" else '0'; -- bit battern to identify left channel
  AudioL_Req(0)    <= datareq_ports(1) when dataab_cpu(3 downto 2) = "10" else '0'; -- bit battern to identify right channel
  dataack_ports(1) <= AudioR_Ack(0) or AudioL_Ack(0);
  selectorR        <= "00";             -- connect ASIP cpu
  
  
   -- write (pseudo) sine signal to right audio channel, port #1
  dummySoundData           : process(reset, clk)
    variable soundData     : std_logic_vector(SAMPLE_BIT_WIDTH-1 downto 0);
    variable increment     : std_logic_vector(SAMPLE_BIT_WIDTH-1 downto 0);
    variable delay_counter : integer;
    variable delay_limit   : integer;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        soundData         := (others => '0');
        increment         := (others => '0');
        delay_counter     := 0;
        delay_limit       := 0;
        AudioR_Req(1)    <= '1';
      else
        if AudioR_Ack(1) = '1' then
          -- delay_limit := conv_integer( dip(7 DOWNTO 0) );
          delay_limit     := 10;
          if delay_counter >= delay_limit then
            delay_counter := 0;
            soundData     := soundData + increment;
          else
            delay_counter := delay_counter + 1;
          end if;
          if soundData = conv_std_logic_vector( (2**SAMPLE_BIT_WIDTH)-1, SAMPLE_BIT_WIDTH) then
            increment     := conv_std_logic_vector(-8, SAMPLE_BIT_WIDTH);
          elsif soundData = conv_std_logic_vector('0', SAMPLE_BIT_WIDTH) then
            increment     := conv_std_logic_vector(8, SAMPLE_BIT_WIDTH);
          end if;
          AudioR_Data(1) <= soundData;
        end if;
      end if;
    end if;
  end process;

    -- memory mapped counter (mm_port nr 3)
  --datadb_ports(3) <= port3_counter when wmode_cpu = READ and port3_req_d = '1'
  datadbi_ports(3) <= port3_counter when datarw_cpu = READ and port3_req_d = '1'
                     else (others => 'Z');
  port3_req_d     <= datareq_ports(3) when rising_edge(clk);
  dataack_ports(3) <= port3_req_d;

  port3counter       : process (reset, clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        port3_counter      <= (others => '0');
      else
        if datareq_ports(3) = '1' then
          -- Master (e.g. CPU) want to write
          --if wmode_cpu /= READ then
			 if datarw_cpu /= READ then 
            --port3_counter  <= datadb_ports(3);
				port3_counter  <= datadbo_ports(3);
          end if;
        end if;

        -- Count up, if there was no write-request
        --if datareq_ports(3) = '0' or wmode_cpu = READ then
		  if datareq_ports(3) = '0' or datarw_cpu = READ then
          port3_counter <= conv_std_logic_vector(conv_integer(port3_counter)+1, 32);
        end if;

      end if;
    end if;
  end process;
  
  
    clk_div_instance : clk_div
    generic map(
		  count       => 54 -- 100MHz
      )
    port map(
      clk         => clk_100,
      reset       => resetforclkdiv,
      reduced_clk => reduced_clk
      );
		
   
  kcuart_tx_instance : kcuart_tx
    port map(
      serial_out     => serial0_out,
      data_in        => data_out,
      send_character => send_character,
      Tx_complete    => Tx_complete,
      en_16_x_baud   => reduced_clk,
      clk            => CLK_100
      );

  kcuart_rx_instance : kcuart_rx
    port map(
      serial_in    => serial0_in,
      data_out     => data_in,
      data_strobe  => write_buffer,
      en_16_x_baud => reduced_clk,
      clk          => CLK_100
      );

   --writeandreaduart : process(clk, reset, datareq_ports(2), wmode_cpu, write_buffer, data_in, Tx_complete)
	writeandreaduart : process(clk, reset, datareq_ports(2), datarw_cpu, write_buffer, data_in, Tx_complete)
    type s_t is (waitForReq, write0, read0);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        dataack_ports(2)       <= '0';
        --datadb_ports(2)        <= (others => 'Z');
		  datadbi_ports(2)        <= (others => 'Z');
        send_character         <= '0';
        data_out               <= (others => 'Z');
        state         := waitForReq;
      else
        case state is
          when waitForReq                 =>
            if (datareq_ports(2) = '1') then
              --if wmode_cpu /= READ then  -- write 
				  if datarw_cpu /= READ then  -- write
                --data_out       <= datadb_ports(2)(7 downto 0);
					 data_out       <= datadbo_ports(2)(7 downto 0);
                send_character <= '1';
                state := write0;
              else                       -- read
                state := read0;
              end if;

            else
              dataack_ports(2) <= '0';
              state := waitForReq;
              --datadb_ports(2)  <= (others => 'Z');
				  datadbi_ports(2)  <= (others => 'Z');
              send_character   <= '0';
              data_out         <= (others => 'Z');
            end if;

          when write0 =>

            if Tx_complete = '1' then
              send_character   <= '0';
              data_out         <= (others => 'Z');
              dataack_ports(2) <= '1';
              state := waitForReq;
            end if;

          when read0 =>
            if write_buffer = '1' then
              --datadb_ports(2)  <= "000000000000000000000000" & data_in;
				  datadbi_ports(2)  <= "000000000000000000000000" & data_in;
              dataack_ports(2) <= '1';
              state := waitForReq;
            end if;

        end case;
      end if;
    end if;
  end process;
  
    -- memory mapped putc/getc port (mm_port nr 4)
  --putgetchar             : process (clk, reset, datareq_ports(4), datadb_ports(4), asip_wr_ack_i, asip_rd_valid_i, wmode_cpu)
  putgetchar             : process (clk, reset, datareq_ports(4), datadbo_ports(4), asip_wr_ack_i, asip_rd_valid_i, datarw_cpu)
    type t_s is (waitForReq, write0, write1, write2, write3, read0, read1, read2, read3);
    variable state       : t_s;
    variable sampledData : std_logic_vector(7 downto 0);
  begin
    if rising_edge(clk) then
      if reset = '1' then
        state       := waitForReq;
        i2c_write_en                 <= '0';
        i2c_read_en                  <= '0';
        dataack_ports(4)             <= '0';
        --datadb_ports(4)(31 downto 0) <= (others => 'Z');
		  datadbi_ports(4)(31 downto 0) <= (others => 'Z');
        sampledData := (others                  => '0');
        fifo_putc0_data_in           <= (others => '0');
      else
        case state is

          when waitForReq =>            -- waiting for req and decide whether putc or getc has to be executed.
            if (datareq_ports(4) = '1') then
				  --if (wmode_cpu = READ) then
              if (datarw_cpu = READ) then 
                state       := read0;
              else
                --sampledData := datadb_ports(4)(7 downto 0);
					 sampledData := datadbo_ports(4)(7 downto 0);
                state       := write0;
              end if;
            end if;

          when write0 =>                -- From writ0 to write3 for completion of putc. 
            fifo_putc0_data_in <= sampledData;
            i2c_write_en       <= '1';
            state := write1;

          when write1 =>
            i2c_write_en <= '0';
            state := write2;

          when write2 =>
            if (asip_wr_ack_i = '1') then
              dataack_ports(4) <= '1';
              state := write3;
            else
              state := write0;
            end if;

          when write3 =>
            if (datareq_ports(4) = '0') then
              dataack_ports(4) <= '0';
              state := waitForReq;
            end if;

          when read0 =>                 -- From read0 to read3 for completion of getc.
            i2c_read_en <= '1';
            state := read1;

          when read1 =>
            i2c_read_en <= '0';
            state := read2;

          when read2 =>
            if (asip_rd_valid_i = '1') then
              --datadb_ports(4)(7 downto 0) <= fifo_getc0_data_out;
				  datadbi_ports(4)(7 downto 0) <= fifo_getc0_data_out;
              dataack_ports(4)            <= '1';
              state := read3;
            else
              state := read0;
            end if;

          when read3 =>

            --datadb_ports(4)(7 downto 0) <= (others => 'Z');
				datadbi_ports(4)(7 downto 0) <= (others => 'Z');
            if (datareq_ports(4) = '0') then
              dataack_ports(4)          <= '0';
              state := waitForReq;
            end if;
        end case;

      end if;
    end if;
  end process;  

--  readfrequency: process(clock_33, reset)
--   begin
--    if rising_edge(clock_33) then
--      if reset = '1' then
--			Freq(7 downto 0) <= dipswitchs(7 downto 0);
--		else 
--			Freq <= Freq;
--		end if;
--	end if;
-- end process;
  
end Behavioral;