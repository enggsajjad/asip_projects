--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2017/10/04 14:09:22 
--
-- Module     : 32-bit Multiplier
-- Feature    : 
-- References : Start from scratch
-- Author     : Designed by T.Morifuji (c)1996,1999
--              Modefied by Tak. Tokihisa (c)2002
-- Version    : 1.1  :

-- Functionality : behavioral level
--  port
--   clock   : (ignore)
--   async_reset   : (ignore)
--   reset   : (ignore)
--   a       : multiplicand
--   b       : multiplier
--   mode    : '1' for signed multiplication
--              '0' for unsigned multiplication
--   start   : (ignore)
--   clear   : (ignore)
--   result  : multiplied result
--   fin     : '1' when operation is over

-- Comment :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_signed.all;

entity fhm_multiplier_w32 is
  port (clock  : in std_logic;
        async_reset  : in std_logic;
        reset  : in std_logic;
        a, b   : in std_logic_vector(31 downto 0);
        mode   : in std_logic;
        start  : in std_logic;
	clear  : in std_logic;
        result : out std_logic_vector(63 downto 0);
        fin    : out std_logic);
end fhm_multiplier_w32;

architecture behavior of fhm_multiplier_w32 is
begin
  process (a, b, mode)
    variable tmp_a, tmp_b : std_logic_vector(32 downto 0);
    variable tmp_result   : std_logic_vector(65 downto 0);
  begin
    tmp_a := (a(31) and mode) & a;
    tmp_b := (b(31) and mode) & b;

    tmp_result := tmp_a * tmp_b;
    result <= tmp_result(63 downto 0);
  end process;

  fin <= '1' and not start;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
