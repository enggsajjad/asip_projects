-- VHDL Preprocessor version 0.57
-- module     : 32-bit 2-port multiplexor
-- feature    : select one input from n input ports.
-- references : start from scratch
-- author     : Tak. Tokihisa
-- version    : 1.0  : first cut 2002/01/15
-- VHDL       : 87

-- Functionality : behavior level
--  port
--   data_in  : input data
--   data_out : selected data 
--   sel     : data_out <= data_in0 when sel = '0' else
--            : data_out <= data_in1



library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;

entity fhm_multiplexor_w32 is
  port (
        data_in0 : in std_logic_vector(31 downto 0);
        data_in1 : in std_logic_vector(31 downto 0);
        sel      : in std_logic;
        data_out : out std_logic_vector(31 downto 0));
end fhm_multiplexor_w32;

architecture behavior of fhm_multiplexor_w32 is

begin
  process (sel, data_in0, data_in1)
  begin
    if sel = '0' then
      data_out <= data_in0;
    elsif sel = '1' then
      data_out <= data_in1;
    else
      data_out <= (others => 'X');
    end if;
  end process;  
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
