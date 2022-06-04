-- Module     : 32-bit positive edge trigger register
-- References :
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   clock    : clock
--   reset    : reset
--   enb      : '1' then register data
--   data_in  : data to register
--   data_out : registered data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_registerfile_w32_reg32 is
  port (clock    : in  std_logic;
        reset    : in  std_logic;
        enb      : in  std_logic;
        data_in  : in  std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0) );
end fhm_registerfile_w32_reg32;

architecture synthesis of fhm_registerfile_w32_reg32 is
begin

  process (clock, reset, enb)
  begin
    if (reset = '1') then
      data_out <= "00000000000000000000000000000000";
    elsif (clock'event and clock = '1') then
      if (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%

-- Module       : 32-bit registerfile
--                with 16 registers, 2 read ports, 1 write ports
-- Refereces    :
-- Author       : Designed by K.Ueda (c)2002.
-- Version      : 1.0 :
-- VHDL         : 87

-- Functionality : synthesis level
-- port
--  clock     : clock 
--  reset     : '1' then reset registers
--  w_enb*    : '1' then update register value
--  w_sel*    : selected register to write
--  data_in*  : data to register
--  r_sel*    : selected register to read
--  data_out* : registered data

library IEEE;
use IEEE.std_logic_1164.all;

entity fhm_registerfile_w32 is
  
  port (
    clock	: in  std_logic;
    reset	: in  std_logic;
    w_enb0	: in  std_logic;
    w_sel0	: in  std_logic_vector(3 downto 0);
    data_in0	: in  std_logic_vector(31 downto 0);
    r_sel0	: in  std_logic_vector(3 downto 0);
    r_sel1	: in  std_logic_vector(3 downto 0);
    data_out0	: out std_logic_vector(31 downto 0);
    data_out1	: out std_logic_vector(31 downto 0) );

end fhm_registerfile_w32;

architecture synthesis of fhm_registerfile_w32 is

  component fhm_registerfile_w32_reg32
    port (
      clock    : in  std_logic;
      reset    : in  std_logic;
      enb      : in  std_logic;
      data_in  : in  std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0));
  end component;

  signal data_in_tmp0  : std_logic_vector(31 downto 0);
  signal data_out_tmp0 : std_logic_vector(31 downto 0);
  signal w_enb_tmp0    : std_logic;
  signal data_in_tmp1  : std_logic_vector(31 downto 0);
  signal data_out_tmp1 : std_logic_vector(31 downto 0);
  signal w_enb_tmp1    : std_logic;
  signal data_in_tmp2  : std_logic_vector(31 downto 0);
  signal data_out_tmp2 : std_logic_vector(31 downto 0);
  signal w_enb_tmp2    : std_logic;
  signal data_in_tmp3  : std_logic_vector(31 downto 0);
  signal data_out_tmp3 : std_logic_vector(31 downto 0);
  signal w_enb_tmp3    : std_logic;
  signal data_in_tmp4  : std_logic_vector(31 downto 0);
  signal data_out_tmp4 : std_logic_vector(31 downto 0);
  signal w_enb_tmp4    : std_logic;
  signal data_in_tmp5  : std_logic_vector(31 downto 0);
  signal data_out_tmp5 : std_logic_vector(31 downto 0);
  signal w_enb_tmp5    : std_logic;
  signal data_in_tmp6  : std_logic_vector(31 downto 0);
  signal data_out_tmp6 : std_logic_vector(31 downto 0);
  signal w_enb_tmp6    : std_logic;
  signal data_in_tmp7  : std_logic_vector(31 downto 0);
  signal data_out_tmp7 : std_logic_vector(31 downto 0);
  signal w_enb_tmp7    : std_logic;
  signal data_in_tmp8  : std_logic_vector(31 downto 0);
  signal data_out_tmp8 : std_logic_vector(31 downto 0);
  signal w_enb_tmp8    : std_logic;
  signal data_in_tmp9  : std_logic_vector(31 downto 0);
  signal data_out_tmp9 : std_logic_vector(31 downto 0);
  signal w_enb_tmp9    : std_logic;
  signal data_in_tmp10  : std_logic_vector(31 downto 0);
  signal data_out_tmp10 : std_logic_vector(31 downto 0);
  signal w_enb_tmp10    : std_logic;
  signal data_in_tmp11  : std_logic_vector(31 downto 0);
  signal data_out_tmp11 : std_logic_vector(31 downto 0);
  signal w_enb_tmp11    : std_logic;
  signal data_in_tmp12  : std_logic_vector(31 downto 0);
  signal data_out_tmp12 : std_logic_vector(31 downto 0);
  signal w_enb_tmp12    : std_logic;
  signal data_in_tmp13  : std_logic_vector(31 downto 0);
  signal data_out_tmp13 : std_logic_vector(31 downto 0);
  signal w_enb_tmp13    : std_logic;
  signal data_in_tmp14  : std_logic_vector(31 downto 0);
  signal data_out_tmp14 : std_logic_vector(31 downto 0);
  signal w_enb_tmp14    : std_logic;
  signal data_in_tmp15  : std_logic_vector(31 downto 0);
  signal data_out_tmp15 : std_logic_vector(31 downto 0);
  signal w_enb_tmp15    : std_logic;

begin  -- synthesis

  REG0 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp0,
    data_in  => data_in_tmp0,
    data_out => data_out_tmp0);
    
  REG1 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp1,
    data_in  => data_in_tmp1,
    data_out => data_out_tmp1);
    
  REG2 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp2,
    data_in  => data_in_tmp2,
    data_out => data_out_tmp2);
    
  REG3 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp3,
    data_in  => data_in_tmp3,
    data_out => data_out_tmp3);
    
  REG4 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp4,
    data_in  => data_in_tmp4,
    data_out => data_out_tmp4);
    
  REG5 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp5,
    data_in  => data_in_tmp5,
    data_out => data_out_tmp5);
    
  REG6 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp6,
    data_in  => data_in_tmp6,
    data_out => data_out_tmp6);
    
  REG7 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp7,
    data_in  => data_in_tmp7,
    data_out => data_out_tmp7);
    
  REG8 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp8,
    data_in  => data_in_tmp8,
    data_out => data_out_tmp8);
    
  REG9 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp9,
    data_in  => data_in_tmp9,
    data_out => data_out_tmp9);
    
  REG10 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp10,
    data_in  => data_in_tmp10,
    data_out => data_out_tmp10);
    
  REG11 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp11,
    data_in  => data_in_tmp11,
    data_out => data_out_tmp11);
    
  REG12 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp12,
    data_in  => data_in_tmp12,
    data_out => data_out_tmp12);
    
  REG13 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp13,
    data_in  => data_in_tmp13,
    data_out => data_out_tmp13);
    
  REG14 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp14,
    data_in  => data_in_tmp14,
    data_out => data_out_tmp14);
    
  REG15 : fhm_registerfile_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => w_enb_tmp15,
    data_in  => data_in_tmp15,
    data_out => data_out_tmp15);
    
  w_enb_tmp0 <= '1' when (w_enb0 = '1' and w_sel0 = "0000") else
                '0';

  w_enb_tmp1 <= '1' when (w_enb0 = '1' and w_sel0 = "0001") else
                '0';

  w_enb_tmp2 <= '1' when (w_enb0 = '1' and w_sel0 = "0010") else
                '0';

  w_enb_tmp3 <= '1' when (w_enb0 = '1' and w_sel0 = "0011") else
                '0';

  w_enb_tmp4 <= '1' when (w_enb0 = '1' and w_sel0 = "0100") else
                '0';

  w_enb_tmp5 <= '1' when (w_enb0 = '1' and w_sel0 = "0101") else
                '0';

  w_enb_tmp6 <= '1' when (w_enb0 = '1' and w_sel0 = "0110") else
                '0';

  w_enb_tmp7 <= '1' when (w_enb0 = '1' and w_sel0 = "0111") else
                '0';

  w_enb_tmp8 <= '1' when (w_enb0 = '1' and w_sel0 = "1000") else
                '0';

  w_enb_tmp9 <= '1' when (w_enb0 = '1' and w_sel0 = "1001") else
                '0';

  w_enb_tmp10 <= '1' when (w_enb0 = '1' and w_sel0 = "1010") else
                '0';

  w_enb_tmp11 <= '1' when (w_enb0 = '1' and w_sel0 = "1011") else
                '0';

  w_enb_tmp12 <= '1' when (w_enb0 = '1' and w_sel0 = "1100") else
                '0';

  w_enb_tmp13 <= '1' when (w_enb0 = '1' and w_sel0 = "1101") else
                '0';

  w_enb_tmp14 <= '1' when (w_enb0 = '1' and w_sel0 = "1110") else
                '0';

  w_enb_tmp15 <= '1' when (w_enb0 = '1' and w_sel0 = "1111") else
                '0';

  data_in_tmp0 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0000") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp1 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0001") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp2 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0010") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp3 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0011") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp4 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0100") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp5 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0101") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp6 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0110") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp7 <= data_in0 when (w_enb0 = '1' and w_sel0 = "0111") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp8 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1000") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp9 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1001") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp10 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1010") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp11 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1011") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp12 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1100") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp13 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1101") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp14 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1110") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp15 <= data_in0 when (w_enb0 = '1' and w_sel0 = "1111") else
                  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_out0 <= data_out_tmp0 when r_sel0 = "0000" else
               data_out_tmp1 when r_sel0 = "0001" else
               data_out_tmp2 when r_sel0 = "0010" else
               data_out_tmp3 when r_sel0 = "0011" else
               data_out_tmp4 when r_sel0 = "0100" else
               data_out_tmp5 when r_sel0 = "0101" else
               data_out_tmp6 when r_sel0 = "0110" else
               data_out_tmp7 when r_sel0 = "0111" else
               data_out_tmp8 when r_sel0 = "1000" else
               data_out_tmp9 when r_sel0 = "1001" else
               data_out_tmp10 when r_sel0 = "1010" else
               data_out_tmp11 when r_sel0 = "1011" else
               data_out_tmp12 when r_sel0 = "1100" else
               data_out_tmp13 when r_sel0 = "1101" else
               data_out_tmp14 when r_sel0 = "1110" else
               data_out_tmp15 when r_sel0 = "1111" else
               "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_out1 <= data_out_tmp0 when r_sel1 = "0000" else
               data_out_tmp1 when r_sel1 = "0001" else
               data_out_tmp2 when r_sel1 = "0010" else
               data_out_tmp3 when r_sel1 = "0011" else
               data_out_tmp4 when r_sel1 = "0100" else
               data_out_tmp5 when r_sel1 = "0101" else
               data_out_tmp6 when r_sel1 = "0110" else
               data_out_tmp7 when r_sel1 = "0111" else
               data_out_tmp8 when r_sel1 = "1000" else
               data_out_tmp9 when r_sel1 = "1001" else
               data_out_tmp10 when r_sel1 = "1010" else
               data_out_tmp11 when r_sel1 = "1011" else
               data_out_tmp12 when r_sel1 = "1100" else
               data_out_tmp13 when r_sel1 = "1101" else
               data_out_tmp14 when r_sel1 = "1110" else
               data_out_tmp15 when r_sel1 = "1111" else
               "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
