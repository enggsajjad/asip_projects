-- Module       : 32-bit registerfile
--                with , 2 read ports, 1 write ports
-- Refereces    :
-- Author       : Designed by K.Ueda (c)2002.
-- Version      : 1.0 :
-- VHDL         : 87

-- Functionality : behavior level
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

architecture behavior of fhm_registerfile_w32 is

begin  -- behavior

process (clock, reset, r_sel0, r_sel1)

    variable data_tmp0 : std_logic_vector(31 downto 0);
    variable data_tmp1 : std_logic_vector(31 downto 0);
    variable data_tmp2 : std_logic_vector(31 downto 0);
    variable data_tmp3 : std_logic_vector(31 downto 0);
    variable data_tmp4 : std_logic_vector(31 downto 0);
    variable data_tmp5 : std_logic_vector(31 downto 0);
    variable data_tmp6 : std_logic_vector(31 downto 0);
    variable data_tmp7 : std_logic_vector(31 downto 0);
    variable data_tmp8 : std_logic_vector(31 downto 0);
    variable data_tmp9 : std_logic_vector(31 downto 0);
    variable data_tmp10 : std_logic_vector(31 downto 0);
    variable data_tmp11 : std_logic_vector(31 downto 0);
    variable data_tmp12 : std_logic_vector(31 downto 0);
    variable data_tmp13 : std_logic_vector(31 downto 0);
    variable data_tmp14 : std_logic_vector(31 downto 0);
    variable data_tmp15 : std_logic_vector(31 downto 0);

  begin

    if reset = '1' then

      data_tmp0 := "00000000000000000000000000000000";
      data_tmp1 := "00000000000000000000000000000000";
      data_tmp2 := "00000000000000000000000000000000";
      data_tmp3 := "00000000000000000000000000000000";
      data_tmp4 := "00000000000000000000000000000000";
      data_tmp5 := "00000000000000000000000000000000";
      data_tmp6 := "00000000000000000000000000000000";
      data_tmp7 := "00000000000000000000000000000000";
      data_tmp8 := "00000000000000000000000000000000";
      data_tmp9 := "00000000000000000000000000000000";
      data_tmp10 := "00000000000000000000000000000000";
      data_tmp11 := "00000000000000000000000000000000";
      data_tmp12 := "00000000000000000000000000000000";
      data_tmp13 := "00000000000000000000000000000000";
      data_tmp14 := "00000000000000000000000000000000";
      data_tmp15 := "00000000000000000000000000000000";

      data_out0 <= "00000000000000000000000000000000";
      data_out1 <= "00000000000000000000000000000000";
    elsif clock'event and clock = '1' then

      if (w_enb0 = '1') then
        if    (w_sel0 = "0000") then
          data_tmp0 := data_in0;
        elsif (w_sel0 = "0001") then
          data_tmp1 := data_in0;
        elsif (w_sel0 = "0010") then
          data_tmp2 := data_in0;
        elsif (w_sel0 = "0011") then
          data_tmp3 := data_in0;
        elsif (w_sel0 = "0100") then
          data_tmp4 := data_in0;
        elsif (w_sel0 = "0101") then
          data_tmp5 := data_in0;
        elsif (w_sel0 = "0110") then
          data_tmp6 := data_in0;
        elsif (w_sel0 = "0111") then
          data_tmp7 := data_in0;
        elsif (w_sel0 = "1000") then
          data_tmp8 := data_in0;
        elsif (w_sel0 = "1001") then
          data_tmp9 := data_in0;
        elsif (w_sel0 = "1010") then
          data_tmp10 := data_in0;
        elsif (w_sel0 = "1011") then
          data_tmp11 := data_in0;
        elsif (w_sel0 = "1100") then
          data_tmp12 := data_in0;
        elsif (w_sel0 = "1101") then
          data_tmp13 := data_in0;
        elsif (w_sel0 = "1110") then
          data_tmp14 := data_in0;
        elsif (w_sel0 = "1111") then
          data_tmp15 := data_in0;
        end if;
      end if;

      if    (r_sel0 = "0000") then
        data_out0 <= data_tmp0;
      elsif (r_sel0 = "0001") then
        data_out0 <= data_tmp1;
      elsif (r_sel0 = "0010") then
        data_out0 <= data_tmp2;
      elsif (r_sel0 = "0011") then
        data_out0 <= data_tmp3;
      elsif (r_sel0 = "0100") then
        data_out0 <= data_tmp4;
      elsif (r_sel0 = "0101") then
        data_out0 <= data_tmp5;
      elsif (r_sel0 = "0110") then
        data_out0 <= data_tmp6;
      elsif (r_sel0 = "0111") then
        data_out0 <= data_tmp7;
      elsif (r_sel0 = "1000") then
        data_out0 <= data_tmp8;
      elsif (r_sel0 = "1001") then
        data_out0 <= data_tmp9;
      elsif (r_sel0 = "1010") then
        data_out0 <= data_tmp10;
      elsif (r_sel0 = "1011") then
        data_out0 <= data_tmp11;
      elsif (r_sel0 = "1100") then
        data_out0 <= data_tmp12;
      elsif (r_sel0 = "1101") then
        data_out0 <= data_tmp13;
      elsif (r_sel0 = "1110") then
        data_out0 <= data_tmp14;
      elsif (r_sel0 = "1111") then
        data_out0 <= data_tmp15;
      end if;
      if    (r_sel1 = "0000") then
        data_out1 <= data_tmp0;
      elsif (r_sel1 = "0001") then
        data_out1 <= data_tmp1;
      elsif (r_sel1 = "0010") then
        data_out1 <= data_tmp2;
      elsif (r_sel1 = "0011") then
        data_out1 <= data_tmp3;
      elsif (r_sel1 = "0100") then
        data_out1 <= data_tmp4;
      elsif (r_sel1 = "0101") then
        data_out1 <= data_tmp5;
      elsif (r_sel1 = "0110") then
        data_out1 <= data_tmp6;
      elsif (r_sel1 = "0111") then
        data_out1 <= data_tmp7;
      elsif (r_sel1 = "1000") then
        data_out1 <= data_tmp8;
      elsif (r_sel1 = "1001") then
        data_out1 <= data_tmp9;
      elsif (r_sel1 = "1010") then
        data_out1 <= data_tmp10;
      elsif (r_sel1 = "1011") then
        data_out1 <= data_tmp11;
      elsif (r_sel1 = "1100") then
        data_out1 <= data_tmp12;
      elsif (r_sel1 = "1101") then
        data_out1 <= data_tmp13;
      elsif (r_sel1 = "1110") then
        data_out1 <= data_tmp14;
      elsif (r_sel1 = "1111") then
        data_out1 <= data_tmp15;
      end if;
    end if;
  end process;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
