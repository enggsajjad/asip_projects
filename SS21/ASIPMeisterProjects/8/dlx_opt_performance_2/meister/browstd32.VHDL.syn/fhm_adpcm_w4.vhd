--
-- Copyright (C) 2011 ASIP Solutions, Inc. All rights reserved. 
-- Generated by ASIP Meister 2.3 on 2021/06/29 05:21:55 
--
--   int_port : internal port
--   ext_port : external port

-- Comment :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_arith.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_adpcm_w4 is
  port (
	clock_new    : in std_logic;
        reset_new    : in std_logic;
        enb_new      : in std_logic;
        delta  : in std_logic_vector(31 downto 0);
        step : in std_logic_vector(31 downto 0);
        valpred_in : in std_logic_vector(31 downto 0);
        valpred_out : out std_logic_vector(31 downto 0)
        );
end fhm_adpcm_w4;

architecture Behavioral of fhm_adpcm_w4 is
-- Your signal declaration here

begin
  -- Your vhdl code here
  process (clock_new, reset_new, enb_new)

  variable vpdiff : signed (31 downto 0);

  begin
  
      if (enb_new = '1') then

	vpdiff := signed("000" & step(31 downto 3));
	if (delta(2) ='1') then
		vpdiff := vpdiff + signed(step);
	end if;
	if (delta(1) ='1') then
		vpdiff := vpdiff + signed("0" & step(31 downto 1));
	end if;
	if (delta(0) ='1') then
		vpdiff := vpdiff + signed("00" & step(31 downto 2));
	end if;

	if(delta(3)='1') then
		valpred_out <= signed(valpred_in) - vpdiff;
	else
		valpred_out <= signed(valpred_in) + vpdiff;
	end if;

      end if;
  end process;

end Behavioral;


-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------

-----------------------------------------
-- Generated by ASIP Meister ver.2.3.4 --
-----------------------------------------
