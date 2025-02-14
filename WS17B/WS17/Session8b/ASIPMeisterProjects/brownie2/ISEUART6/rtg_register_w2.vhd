----------------------------------------------------------------------
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2018/02/21 17:03:15 
----------------------------------------------------------------------

-----------------------------------------------------------
-- Entity Name: rtg_register_w2
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity rtg_register_w2 is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(1 downto 0);
    DOUT : out std_logic_vector(1 downto 0)
  );
end entity rtg_register_w2;

architecture RTL of rtg_register_w2 is


begin
  process (RST, CLK)
  begin
    if RST = '1' then
      DOUT <= "00";
    elsif CLK'event and CLK = '1' then
      if ENB = '1' then
        DOUT <= DIN;
      end if;
    end if;
  end process;
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
