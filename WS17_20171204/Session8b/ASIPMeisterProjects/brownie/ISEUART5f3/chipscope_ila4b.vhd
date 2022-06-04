-------------------------------------------------------------------------------
-- Copyright (c) 2017 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 13.2
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : chipscope_ila4b.vhd
-- /___/   /\     Timestamp  : Mon Oct 23 01:39:45 CEST 2017
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY chipscope_ila4b IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    DATA: in std_logic_vector(31 downto 0);
    TRIG0: in std_logic_vector(7 downto 0));
END chipscope_ila4b;

ARCHITECTURE chipscope_ila4b_a OF chipscope_ila4b IS
BEGIN

END chipscope_ila4b_a;
