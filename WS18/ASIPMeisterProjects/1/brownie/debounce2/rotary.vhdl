
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DB_Rotary is
    port(   clk : in std_logic;
            rst : in std_logic;
            rot : in std_logic_vector(3 downto 0);
            rot_out : out std_logic_vector(3 downto 0)
        );
end DB_Rotary;

architecture behav of DB_Rotary is
COMPONENT DeBounce
 PORT(
      Clock : IN  std_logic;
      Reset : IN  std_logic;
      button_in : IN  std_logic;
      pulse_out : OUT  std_logic
     );
 END COMPONENT;
 
 signal Clock: std_logic;
 signal Reset: std_logic;
 signal button_in: std_logic;
 signal pulse_out: std_logic;
 
 
 begin
 -- Instantiate the Unit Under Test (UUT)
uut1: DeBounce PORT MAP (
       Clock => clk,
       Reset => rst,
       button_in => rot(0),
       pulse_out => rot_out(0)
     );
 -- Instantiate the Unit Under Test (UUT)
uut2: DeBounce PORT MAP (
       Clock => clk,
       Reset => rst,
       button_in => rot(1),
       pulse_out => rot_out(1)
     );
 -- Instantiate the Unit Under Test (UUT)
uut3: DeBounce PORT MAP (
       Clock => clk,
       Reset => rst,
       button_in => rot(2),
       pulse_out => rot_out(2)
     );
     
 -- Instantiate the Unit Under Test (UUT)
uut4: DeBounce PORT MAP (
       Clock => clk,
       Reset => rst,
       button_in => rot(3),
       pulse_out => rot_out(3)
     );

                                                                 
end architecture behav;



