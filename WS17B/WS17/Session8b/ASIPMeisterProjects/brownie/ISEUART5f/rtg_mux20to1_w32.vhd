----------------------------------------------------------------------
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2017/10/11 17:21:03 
----------------------------------------------------------------------

-----------------------------------------------------------
-- Entity Name: rtg_mux20to1_w32
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity rtg_mux20to1_w32 is
  port (
    SEL : in std_logic_vector(4 downto 0);
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DIN2 : in std_logic_vector(31 downto 0);
    DIN3 : in std_logic_vector(31 downto 0);
    DIN4 : in std_logic_vector(31 downto 0);
    DIN5 : in std_logic_vector(31 downto 0);
    DIN6 : in std_logic_vector(31 downto 0);
    DIN7 : in std_logic_vector(31 downto 0);
    DIN8 : in std_logic_vector(31 downto 0);
    DIN9 : in std_logic_vector(31 downto 0);
    DIN10 : in std_logic_vector(31 downto 0);
    DIN11 : in std_logic_vector(31 downto 0);
    DIN12 : in std_logic_vector(31 downto 0);
    DIN13 : in std_logic_vector(31 downto 0);
    DIN14 : in std_logic_vector(31 downto 0);
    DIN15 : in std_logic_vector(31 downto 0);
    DIN16 : in std_logic_vector(31 downto 0);
    DIN17 : in std_logic_vector(31 downto 0);
    DIN18 : in std_logic_vector(31 downto 0);
    DIN19 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
end entity rtg_mux20to1_w32;

architecture RTL of rtg_mux20to1_w32 is


begin
  DOUT <= 
	DIN0 when SEL = "00000" else 
	DIN1 when SEL = "00001" else 
	DIN2 when SEL = "00010" else 
	DIN3 when SEL = "00011" else 
	DIN4 when SEL = "00100" else 
	DIN5 when SEL = "00101" else 
	DIN6 when SEL = "00110" else 
	DIN7 when SEL = "00111" else 
	DIN8 when SEL = "01000" else 
	DIN9 when SEL = "01001" else 
	DIN10 when SEL = "01010" else 
	DIN11 when SEL = "01011" else 
	DIN12 when SEL = "01100" else 
	DIN13 when SEL = "01101" else 
	DIN14 when SEL = "01110" else 
	DIN15 when SEL = "01111" else 
	DIN16 when SEL = "10000" else 
	DIN17 when SEL = "10001" else 
	DIN18 when SEL = "10010" else 
	DIN19 when SEL = "10011" else 
	"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
