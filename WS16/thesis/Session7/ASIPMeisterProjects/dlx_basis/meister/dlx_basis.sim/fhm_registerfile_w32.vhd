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
    w_sel0	: in  std_logic_vector(4 downto 0);
    data_in0	: in  std_logic_vector(31 downto 0);
    r_sel0	: in  std_logic_vector(4 downto 0);
    r_sel1	: in  std_logic_vector(4 downto 0);
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
    variable data_tmp16 : std_logic_vector(31 downto 0);
    variable data_tmp17 : std_logic_vector(31 downto 0);
    variable data_tmp18 : std_logic_vector(31 downto 0);
    variable data_tmp19 : std_logic_vector(31 downto 0);
    variable data_tmp20 : std_logic_vector(31 downto 0);
    variable data_tmp21 : std_logic_vector(31 downto 0);
    variable data_tmp22 : std_logic_vector(31 downto 0);
    variable data_tmp23 : std_logic_vector(31 downto 0);
    variable data_tmp24 : std_logic_vector(31 downto 0);
    variable data_tmp25 : std_logic_vector(31 downto 0);
    variable data_tmp26 : std_logic_vector(31 downto 0);
    variable data_tmp27 : std_logic_vector(31 downto 0);
    variable data_tmp28 : std_logic_vector(31 downto 0);
    variable data_tmp29 : std_logic_vector(31 downto 0);
    variable data_tmp30 : std_logic_vector(31 downto 0);
    variable data_tmp31 : std_logic_vector(31 downto 0);

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
      data_tmp16 := "00000000000000000000000000000000";
      data_tmp17 := "00000000000000000000000000000000";
      data_tmp18 := "00000000000000000000000000000000";
      data_tmp19 := "00000000000000000000000000000000";
      data_tmp20 := "00000000000000000000000000000000";
      data_tmp21 := "00000000000000000000000000000000";
      data_tmp22 := "00000000000000000000000000000000";
      data_tmp23 := "00000000000000000000000000000000";
      data_tmp24 := "00000000000000000000000000000000";
      data_tmp25 := "00000000000000000000000000000000";
      data_tmp26 := "00000000000000000000000000000000";
      data_tmp27 := "00000000000000000000000000000000";
      data_tmp28 := "00000000000000000000000000000000";
      data_tmp29 := "00000000000000000000000000000000";
      data_tmp30 := "00000000000000000000000000000000";
      data_tmp31 := "00000000000000000000000000000000";

      data_out0 <= "00000000000000000000000000000000";
      data_out1 <= "00000000000000000000000000000000";
    elsif clock'event and clock = '1' then

      if (w_enb0 = '1') then
        if    (w_sel0 = "00000") then
          data_tmp0 := data_in0;
        elsif (w_sel0 = "00001") then
          data_tmp1 := data_in0;
        elsif (w_sel0 = "00010") then
          data_tmp2 := data_in0;
        elsif (w_sel0 = "00011") then
          data_tmp3 := data_in0;
        elsif (w_sel0 = "00100") then
          data_tmp4 := data_in0;
        elsif (w_sel0 = "00101") then
          data_tmp5 := data_in0;
        elsif (w_sel0 = "00110") then
          data_tmp6 := data_in0;
        elsif (w_sel0 = "00111") then
          data_tmp7 := data_in0;
        elsif (w_sel0 = "01000") then
          data_tmp8 := data_in0;
        elsif (w_sel0 = "01001") then
          data_tmp9 := data_in0;
        elsif (w_sel0 = "01010") then
          data_tmp10 := data_in0;
        elsif (w_sel0 = "01011") then
          data_tmp11 := data_in0;
        elsif (w_sel0 = "01100") then
          data_tmp12 := data_in0;
        elsif (w_sel0 = "01101") then
          data_tmp13 := data_in0;
        elsif (w_sel0 = "01110") then
          data_tmp14 := data_in0;
        elsif (w_sel0 = "01111") then
          data_tmp15 := data_in0;
        elsif (w_sel0 = "10000") then
          data_tmp16 := data_in0;
        elsif (w_sel0 = "10001") then
          data_tmp17 := data_in0;
        elsif (w_sel0 = "10010") then
          data_tmp18 := data_in0;
        elsif (w_sel0 = "10011") then
          data_tmp19 := data_in0;
        elsif (w_sel0 = "10100") then
          data_tmp20 := data_in0;
        elsif (w_sel0 = "10101") then
          data_tmp21 := data_in0;
        elsif (w_sel0 = "10110") then
          data_tmp22 := data_in0;
        elsif (w_sel0 = "10111") then
          data_tmp23 := data_in0;
        elsif (w_sel0 = "11000") then
          data_tmp24 := data_in0;
        elsif (w_sel0 = "11001") then
          data_tmp25 := data_in0;
        elsif (w_sel0 = "11010") then
          data_tmp26 := data_in0;
        elsif (w_sel0 = "11011") then
          data_tmp27 := data_in0;
        elsif (w_sel0 = "11100") then
          data_tmp28 := data_in0;
        elsif (w_sel0 = "11101") then
          data_tmp29 := data_in0;
        elsif (w_sel0 = "11110") then
          data_tmp30 := data_in0;
        elsif (w_sel0 = "11111") then
          data_tmp31 := data_in0;
        end if;
      end if;

      if    (r_sel0 = "00000") then
        data_out0 <= data_tmp0;
      elsif (r_sel0 = "00001") then
        data_out0 <= data_tmp1;
      elsif (r_sel0 = "00010") then
        data_out0 <= data_tmp2;
      elsif (r_sel0 = "00011") then
        data_out0 <= data_tmp3;
      elsif (r_sel0 = "00100") then
        data_out0 <= data_tmp4;
      elsif (r_sel0 = "00101") then
        data_out0 <= data_tmp5;
      elsif (r_sel0 = "00110") then
        data_out0 <= data_tmp6;
      elsif (r_sel0 = "00111") then
        data_out0 <= data_tmp7;
      elsif (r_sel0 = "01000") then
        data_out0 <= data_tmp8;
      elsif (r_sel0 = "01001") then
        data_out0 <= data_tmp9;
      elsif (r_sel0 = "01010") then
        data_out0 <= data_tmp10;
      elsif (r_sel0 = "01011") then
        data_out0 <= data_tmp11;
      elsif (r_sel0 = "01100") then
        data_out0 <= data_tmp12;
      elsif (r_sel0 = "01101") then
        data_out0 <= data_tmp13;
      elsif (r_sel0 = "01110") then
        data_out0 <= data_tmp14;
      elsif (r_sel0 = "01111") then
        data_out0 <= data_tmp15;
      elsif (r_sel0 = "10000") then
        data_out0 <= data_tmp16;
      elsif (r_sel0 = "10001") then
        data_out0 <= data_tmp17;
      elsif (r_sel0 = "10010") then
        data_out0 <= data_tmp18;
      elsif (r_sel0 = "10011") then
        data_out0 <= data_tmp19;
      elsif (r_sel0 = "10100") then
        data_out0 <= data_tmp20;
      elsif (r_sel0 = "10101") then
        data_out0 <= data_tmp21;
      elsif (r_sel0 = "10110") then
        data_out0 <= data_tmp22;
      elsif (r_sel0 = "10111") then
        data_out0 <= data_tmp23;
      elsif (r_sel0 = "11000") then
        data_out0 <= data_tmp24;
      elsif (r_sel0 = "11001") then
        data_out0 <= data_tmp25;
      elsif (r_sel0 = "11010") then
        data_out0 <= data_tmp26;
      elsif (r_sel0 = "11011") then
        data_out0 <= data_tmp27;
      elsif (r_sel0 = "11100") then
        data_out0 <= data_tmp28;
      elsif (r_sel0 = "11101") then
        data_out0 <= data_tmp29;
      elsif (r_sel0 = "11110") then
        data_out0 <= data_tmp30;
      elsif (r_sel0 = "11111") then
        data_out0 <= data_tmp31;
      end if;
      if    (r_sel1 = "00000") then
        data_out1 <= data_tmp0;
      elsif (r_sel1 = "00001") then
        data_out1 <= data_tmp1;
      elsif (r_sel1 = "00010") then
        data_out1 <= data_tmp2;
      elsif (r_sel1 = "00011") then
        data_out1 <= data_tmp3;
      elsif (r_sel1 = "00100") then
        data_out1 <= data_tmp4;
      elsif (r_sel1 = "00101") then
        data_out1 <= data_tmp5;
      elsif (r_sel1 = "00110") then
        data_out1 <= data_tmp6;
      elsif (r_sel1 = "00111") then
        data_out1 <= data_tmp7;
      elsif (r_sel1 = "01000") then
        data_out1 <= data_tmp8;
      elsif (r_sel1 = "01001") then
        data_out1 <= data_tmp9;
      elsif (r_sel1 = "01010") then
        data_out1 <= data_tmp10;
      elsif (r_sel1 = "01011") then
        data_out1 <= data_tmp11;
      elsif (r_sel1 = "01100") then
        data_out1 <= data_tmp12;
      elsif (r_sel1 = "01101") then
        data_out1 <= data_tmp13;
      elsif (r_sel1 = "01110") then
        data_out1 <= data_tmp14;
      elsif (r_sel1 = "01111") then
        data_out1 <= data_tmp15;
      elsif (r_sel1 = "10000") then
        data_out1 <= data_tmp16;
      elsif (r_sel1 = "10001") then
        data_out1 <= data_tmp17;
      elsif (r_sel1 = "10010") then
        data_out1 <= data_tmp18;
      elsif (r_sel1 = "10011") then
        data_out1 <= data_tmp19;
      elsif (r_sel1 = "10100") then
        data_out1 <= data_tmp20;
      elsif (r_sel1 = "10101") then
        data_out1 <= data_tmp21;
      elsif (r_sel1 = "10110") then
        data_out1 <= data_tmp22;
      elsif (r_sel1 = "10111") then
        data_out1 <= data_tmp23;
      elsif (r_sel1 = "11000") then
        data_out1 <= data_tmp24;
      elsif (r_sel1 = "11001") then
        data_out1 <= data_tmp25;
      elsif (r_sel1 = "11010") then
        data_out1 <= data_tmp26;
      elsif (r_sel1 = "11011") then
        data_out1 <= data_tmp27;
      elsif (r_sel1 = "11100") then
        data_out1 <= data_tmp28;
      elsif (r_sel1 = "11101") then
        data_out1 <= data_tmp29;
      elsif (r_sel1 = "11110") then
        data_out1 <= data_tmp30;
      elsif (r_sel1 = "11111") then
        data_out1 <= data_tmp31;
      end if;
    end if;
  end process;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
