library ieee ;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  
  entity ackn is 
  port(  clk:  in std_logic;
    reset:  in std_logic;
	 instrab: in  std_logic_vector (31 downto 0);
	 instrdb: in  std_logic_vector (31 downto 0);
    req:  in std_logic
  );
  end ackn;
  architecture behav of ackn is         
  signal req_dp2 :  std_logic; -- req 2 cycle delay pulse sync
  --signal req_dp3  : std_logic;-- req 3 cycle delay pulse sync
  signal ack_in  : std_logic;
  signal we  : std_logic_vector (0 downto 0);
  signal req_dp: std_logic; -- req delay pulse sync
  signal instr_dp: std_logic; -- req delay pulse sync
  --signal instrab  : std_logic_vector (31 downto 0);
  signal instrab_rom:  std_logic_vector (31 downto 0);
  signal instrdb_rom:  std_logic_vector (31 downto 0);
	signal QA: std_logic := '0';
	signal QB: std_logic := '0';
	signal QA1: std_logic := '0';
	signal QB1: std_logic := '0';
	
	begin
		req_dp <= QB;
		process (req, QB)
		begin
			if QB='1' then
				QA <= '0';
			elsif (req'event and req='1') then
				QA <= '1';
		end if;
	end process;

	process (clk)
	begin
	if clk'event and clk ='1' then
		QB <= QA;
	end if;
	end process;

	req_dp2 <= req_dp when rising_edge(clk);
   --req_dp3 <= req_dp2 when rising_edge(clk);
	
	we <= "1" when (req_dp = '1') else "0"; --req_dp2 or req_dp;
	ack_in <= not (req or req_dp or req_dp2);
	
	
	process (instrab, clk)
	begin
		if (instrab'event) then
			if clk'event and clk ='1' then
				instr_dp <= '1';
--			else
--				instr_dp <= '0';
			end if;
		else
				instr_dp <= '0';
		end if;
	end process;

instrab_rom <= instrab when rising_edge(instr_dp);
instrdb_rom <= instrdb when falling_edge(instr_dp);
--	process (instrab, clk)
--	begin
--		if (instrab'event) then
--			if clk'event and clk ='1' then
--				instrab_rom <= instrab;
--			end if;
--			if clk'event and clk ='0' then
--				instrdb_rom <= instrdb;
--			end if;
--		end if;
--	end process;

	
 end behav;