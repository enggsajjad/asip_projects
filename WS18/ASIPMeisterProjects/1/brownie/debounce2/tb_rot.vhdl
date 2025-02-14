LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_rotary IS
END tb_rotary;
 
ARCHITECTURE behavior OF tb_rotary IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DB_Rotary
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         rot : IN  std_logic_vector(3 downto 0);
         rot_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal rot : std_logic_vector(3 downto 0) := "0000";

    --Outputs
   signal rot_out : std_logic_vector (3 downto 0);

   -- clk period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: DB_Rotary PORT MAP (
          clk => clk,
          rst => rst,
          rot => rot,
          rot_out => rot_out
        );

   -- clk process definitions
   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
        rot <= "0000";
        rst <= '1';
      -- hold rst state for 100 ns.
      wait for 100 ns;
        rst <= '0';
      wait for clk_period*10;
        --first activity
        rot(0) <= '1';   wait for clk_period*2;
        rot(0) <= '0';   wait for clk_period*1;
        rot(0) <= '1';   wait for clk_period*1;
        rot(0) <= '0';   wait for clk_period*20;
        --second activity
        rot(0) <= '1';   wait for clk_period*1;
        rot(0) <= '0';   wait for clk_period*1;
        rot(0) <= '1';   wait for clk_period*1;
        rot(0) <= '0';   wait for clk_period*2;
        rot(0) <= '1';   wait for clk_period*20;
        rot(0) <= '0';   
      wait;
   end process;

END;
