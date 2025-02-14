--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2021/06/29 06:22:20 
--
-- Module     : 32-bit unsigned adder
-- References :
-- Author     : Designed by T.Morifuji (c)1996.
-- Version    : 1.0

-- Functionality : behavior level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^32-1

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_pcu_w32_add32 is
  port (a, b   : in std_logic_vector(31 downto 0);
        cin    : in std_logic;
        result : out std_logic_vector(31 downto 0);
        cout   : out std_logic);
end fhm_pcu_w32_add32;

architecture synthesis of fhm_pcu_w32_add32 is

begin  -- behavior

  addition: process (a, b, cin)
    variable int_a, int_b : std_logic_vector(32 downto 0);
    variable int_result   : std_logic_vector(32 downto 0);
  begin
    int_a      := '0' & a;
    int_b      := '0' & b;

    int_result := int_a + int_b + cin;

    result     <= int_result(31 downto 0);
    cout       <= int_result(32);

  end process addition;

end synthesis;


--%%

-- Module     : 32-bit positive edge trigger register
-- References :
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0  :

-- Functionality : synthesis level
--  port
--   clock       : clock
--   async_reset : asynchronous reset
--   reset       : synchronous reset
--   enb         : '1' then register data
--   data_in     : data to register
--   data_out    : registered data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_pcu_w32_reg32 is
  port (clock       : in  std_logic;
        async_reset : in  std_logic;
        reset       : in  std_logic;
        enb         : in  std_logic;
        data_in     : in  std_logic_vector(31 downto 0);
        data_out    : out std_logic_vector(31 downto 0) );
end fhm_pcu_w32_reg32;

architecture synthesis of fhm_pcu_w32_reg32 is
begin

  process (async_reset, clock)
  begin
    if (async_reset = '1') then
      data_out <= "00000000000000000000000000000000";
    elsif (clock'event and clock = '1') then
      if (reset = '1') then
        data_out <= (others => '0');
      elsif (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%
-- Module	: 32-bit program counter unit
--                4 increment step and
--                using default for adder algorithm
-- Refereces	:
-- Author	: Designed by M. Itoh (c)1998
-- Version	: 1.0 :

-- Functionality : synthesis level
-- port
--  clock      	: clock
--  async_reset : asynchronous reset ('1' active)
--  load	: '1' then set counter value
--  reset	: synchronous reset ('1' active)
--  hold	: '1' then hold counter value
--  data_in	: data to register
--  data_out	: registered data

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity fhm_pcu_w32 is
  port(
    clock       : in  std_logic;
    async_reset : in  std_logic;
    load        : in  std_logic;
    reset       : in  std_logic;
    hold        : in  std_logic;
    data_in     : in  std_logic_vector(31 downto 0);
    data_out    : out std_logic_vector(31 downto 0));
end fhm_pcu_w32;

architecture synthesis of fhm_pcu_w32 is
component fhm_pcu_w32_add32
  port (
    a, b   : in  std_logic_vector(31 downto 0);
    cin    : in  std_logic;
    result : out std_logic_vector(31 downto 0);
    cout   : out std_logic );
end component;

component fhm_pcu_w32_reg32
  port (
    clock       : in  std_logic;
    async_reset : in  std_logic;
    reset       : in  std_logic;
    enb	        : in  std_logic;
    data_in     : in  std_logic_vector(31 downto 0);
    data_out    : out std_logic_vector(31 downto 0)
  );
end component;

signal zero, one	: std_logic;
signal pc, next_pc, inc_pc	: std_logic_vector(31 downto 0);
signal step	: std_logic_vector(31 downto 0);

signal	cout	: std_logic;

begin
  zero <= '0';
  one  <= '1';
  step <= "00000000000000000000000000000100";
  
  next_pc <= data_in when load = '1' else
             pc when hold = '1' else
             inc_pc;
  
  add1 : fhm_pcu_w32_add32
  port map(
    a	   => pc,
    b	   => step,
    cin	   => zero,
    result => inc_pc,
    cout   => open);

  reg1 : fhm_pcu_w32_reg32
  port map (
    clock       => clock,
    async_reset => async_reset,
    reset       => reset,
    enb         => one,
    data_in     => next_pc,
    data_out    => pc);

  data_out <= pc;
end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
