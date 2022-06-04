--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:47 07/31/2017
-- Design Name:   
-- Module Name:   /home/asip04/SS17/package2/ISE/tb_brom_im.vhd
-- Project Name:  ISE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: brom_im
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library STD, IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

use STD.textio.all;
use IEEE.std_logic_textio.all; 
library work;
use work.MemoryMapperTypes.all;
use work.AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
use work.dlxTypes.all; 
use work.Helper.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_brom_im IS
END tb_brom_im;
 
ARCHITECTURE behavior OF tb_brom_im IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT brom_im
    PORT(
         clka : IN  std_logic;
         addra : IN  std_logic_vector(13 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal addra : std_logic_vector(13 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(31 downto 0);
   signal dout : std_logic_vector(7 downto 0);
   -- Clock period definitions
   constant clka_period : time := 10 ns;
 signal endoffile : bit := '0';
--data read from the file.
signal    dataread : real;
--data to be saved into the output file.
signal    datatosave : real;
--line number of the file read or written.
signal    linenumber : integer:=1; 
 file      uart_outfile  : text is out "brom_isim.txt";  --declare output file
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: brom_im PORT MAP (
          clka => clka,
          addra => addra,
          douta => douta
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clka_period*10;

      -- insert stimulus here 

      wait;
   end process;


	process(clka)
	begin
		if(clka'Event and clka='1') then
			if (addra ="11111111111111") then
				addra <= addra;
			else
				addra <= addra + 1;
			end if;
		end if;
	end process;

	--write process
	writing :
	process(clka)
		variable  lineBuf  : line;   --line number declaration  
		 variable dataTemp : integer;
	begin
		if(clka'Event and clka='1') then
--		if (addra ="11111111111111") then
--				writeline(uart_outfile, lineBuf);
--			else
				dout <= douta(31 downto 24);
--				write(lineBuf, hstr(douta(31 downto 24)));
				write(lineBuf, hstr(dout(7 downto 0)));
				writeline(uart_outfile, lineBuf);
				dout <= douta(23 downto 16);
--				write(lineBuf, hstr(douta(23 downto 16)));
				write(lineBuf, hstr(dout(7 downto 0)));
				writeline(uart_outfile, lineBuf);
				dout <= douta(15 downto 8);
--				write(lineBuf, hstr(douta(15 downto 8)));
				write(lineBuf, hstr(dout(7 downto 0)));
				writeline(uart_outfile, lineBuf);
				dout <= douta(7 downto 0);
				write(lineBuf, hstr(douta(7 downto 0)));
				writeline(uart_outfile, lineBuf);
--			end if;
		end if;
	end process writing;
	

END;
