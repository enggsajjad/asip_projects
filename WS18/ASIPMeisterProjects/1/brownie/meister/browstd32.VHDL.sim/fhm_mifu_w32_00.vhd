--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2018/12/03 18:20:47 
--
-- Module	 : Data Memory Interface Unit
-- Author	 : M. Itoh (c) 2000.
--                 Modified by J.Sato (c) 2001
--                 Modified by Y.Kobayashi (c) 2004
--                 Modified by K.Ueda (c) 2005
-- Version	 : 1.0

-- Functionality : behavior level
--  port
--    addr_out         : address from cpu
--    data_in          : data input to cpu
--    aderr_in         : address error signal to cpu
--    addr2mem         : address to memory
--    data2cpu         : data from memory
--    aderr2cpu        : address error signal from memory

library ieee;
use ieee.std_logic_1164.all;

entity fhm_mifu_w32_00 is
    port (
      addr_out   : in  std_logic_vector(31 downto 0);
      data_in    : out std_logic_vector(31 downto 0);
      aderr_in   : out std_logic;
      addr2mem   : out std_logic_vector(31 downto 0);
      data2cpu   : in  std_logic_vector(31 downto 0);
      aderr2cpu  : in  std_logic
    );
end fhm_mifu_w32_00;

architecture behavior of fhm_mifu_w32_00 is

begin
  process (
addr_out, data2cpu, aderr2cpu)  begin  -- process
    addr2mem   <= addr_out;
    data_in    <= data2cpu;
    aderr_in   <= aderr2cpu;
  end process;
  
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
