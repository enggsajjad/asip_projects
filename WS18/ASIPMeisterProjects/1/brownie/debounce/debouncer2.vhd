-------------------------------------------------------------------------------
-- File downloaded from http://www.nandland.com
-------------------------------------------------------------------------------
-- This module is used to debounce any switch or button coming into the FPGA.
-- Does not allow the output of the switch to change unless the switch is
-- steady long enough time.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity debouncer2 is
  port (
    clk    : in  std_logic;
    pbutton : in  std_logic;
    pd_deb : out std_logic
    );
end entity debouncer2;
 
architecture RTL of debouncer2 is
 
  -- Set for 250,000 clock ticks of 25 MHz clock (10 ms)
  constant c_DEBOUNCE_LIMIT : integer := 250000;
 
  signal r_Count : integer range 0 to c_DEBOUNCE_LIMIT := 0;
  signal r_State : std_logic := '0';
 
begin
 
  p_Debounce : process (clk) is
  begin
    if rising_edge(clk) then
 
      -- Switch input is different than internal switch value, so an input is
      -- changing.  Increase counter until it is stable for c_DEBOUNCE_LIMIT.
      if (pbutton /= r_State and r_Count < c_DEBOUNCE_LIMIT) then
        r_Count <= r_Count + 1;
 
      -- End of counter reached, switch is stable, register it, reset counter
      elsif r_Count = c_DEBOUNCE_LIMIT then
        r_State <= pbutton;
        r_Count <= 0;
 
      -- Switches are the same state, reset the counter
      else
        r_Count <= 0;
 
      end if;
    end if;
  end process p_Debounce;
 
  -- Assign internal register to output (debounced!)
  pd_deb <= r_State;
 
end architecture RTL;