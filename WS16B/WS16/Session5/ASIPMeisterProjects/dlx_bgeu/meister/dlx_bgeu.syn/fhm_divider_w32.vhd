-- Module     : Basic 4bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^4-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_add32_cla4 is
  port (a, b       : in  std_logic_vector(3 downto 0);
        cin        : in  std_logic;
        result     : out std_logic_vector(3 downto 0);
        pout, gout : out std_logic);
end fhm_divider_w32_add32_cla4;

architecture synthesis of fhm_divider_w32_add32_cla4 is

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

begin  --  synthesis

  --  make carry generate
  g(0) <= a(0) and b(0);
  g(1) <= a(1) and b(1);
  g(2) <= a(2) and b(2);
  g(3) <= a(3) and b(3);

  --  make carry propagate
  p(0) <= a(0) xor b(0);
  p(1) <= a(1) xor b(1);
  p(2) <= a(2) xor b(2);
  p(3) <= a(3) xor b(3);
  
  --   make internal carry and external carry
  carry(0) <= g(0) or (p(0) and cin);
  carry(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  carry(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
            or (p(2) and p(1) and p(0) and cin);
  pout  <= p(3) and p(2) and p(1) and p(0);
  gout  <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
            or (p(3) and p(2) and p(1) and g(0));

  --  make sum.
  result(0) <= p(0) xor cin;
  result(1) <= p(1) xor carry(0);
  result(2) <= p(2) xor carry(1);
  result(3) <= p(3) xor carry(2);

end synthesis;

--%%

-- Module     : Basic 16bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^16-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_add32_cla16 is
  port (a, b       : in std_logic_vector(15 downto 0);
        cin        : in std_logic;
        result     : out std_logic_vector(15 downto 0);
        pout, gout : out std_logic);
end fhm_divider_w32_add32_cla16;

architecture synthesis of fhm_divider_w32_add32_cla16 is

  component fhm_divider_w32_add32_cla4
    port (a, b       : in  std_logic_vector(3 downto 0);
          cin        : in  std_logic;
          result     : out std_logic_vector(3 downto 0);
          pout, gout : out std_logic);
  end component;

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

begin  --  synthesis

  -- make internal carry and carry propagate/generate
  carry(0) <= g(0) or (p(0) and cin);
  carry(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  carry(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
            or (p(2) and p(1) and p(0) and cin);
  pout <= p(3) and p(2) and p(1) and p(0);
  gout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
          or (p(3) and p(2) and p(1) and g(0));
  
  -- work adder
  u0 : fhm_divider_w32_add32_cla4
    port map (
      a      => a(3 downto 0),
      b      => b(3 downto 0),
      cin    => cin,
      result => result(3 downto 0),
      pout   => p(0),
      gout   => g(0));
  
  u1 : fhm_divider_w32_add32_cla4
    port map (
      a      => a(7 downto 4),
      b      => b(7 downto 4),
      cin    => carry(0),
      result => result(7 downto 4),
      pout   => p(1),
      gout   => g(1));

  u2 : fhm_divider_w32_add32_cla4
    port map (
      a      => a(11 downto 8),
      b      => b(11 downto 8),
      cin    => carry(1),
      result => result(11 downto 8),
      pout   => p(2),
      gout   => g(2));

  u3 : fhm_divider_w32_add32_cla4
    port map (
      a      => a(15 downto 12),
      b      => b(15 downto 12),
      cin    => carry(2),
      result => result(15 downto 12),
      pout   => p(3),
      gout   => g(3));

end synthesis;

--%%

-- Module     : 32-bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^64-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_add32 is
  port (a, b   : in  std_logic_vector(31 downto 0);
        cin    : in  std_logic;
        result : out std_logic_vector(31 downto 0);
        cout   : out std_logic);
end fhm_divider_w32_add32;

architecture synthesis of fhm_divider_w32_add32 is

  component fhm_divider_w32_add32_cla16
    port (a, b       : in std_logic_vector(15 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(15 downto 0);
          pout, gout : out std_logic);
  end component;
  component fhm_divider_w32_add32_cla4
    port (a, b       : in std_logic_vector(3 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(3 downto 0);
          pout, gout : out std_logic);
  end component;
  signal p, g      : std_logic_vector(1 downto 0);
  signal carry     : std_logic_vector(1 downto 0);
begin
  carry(0) <= g(0) or
              (p(0) and cin);
  carry(1) <= g(1) or
              (p(1) and g(0)) or
              (p(1) and p(0) and cin);

  u16_0 : fhm_divider_w32_add32_cla16
    port map (
      a      => a(15 downto 0),
      b      => b(15 downto 0),
      cin    => cin,
      result => result(15 downto 0),
      pout   => p(0),
      gout   => g(0));

  u16_1 : fhm_divider_w32_add32_cla16
    port map (
      a      => a(31 downto 16),
      b      => b(31 downto 16),
      cin    => carry(0),
      result => result(31 downto 16),
      pout   => p(1),
      gout   => g(1));


  cout <= carry(1);


end synthesis;

--%%

-- Module     : 32-bit positive edge trigger register
-- References :
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   clock    : clock
--   reset    : reset
--   enb      : '1' then register data
--   data_in  : data to register
--   data_out : registered data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_reg32 is
  port (clock    : in  std_logic;
        reset    : in  std_logic;
        enb      : in  std_logic;
        data_in  : in  std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0) );
end fhm_divider_w32_reg32;

architecture synthesis of fhm_divider_w32_reg32 is
begin

  process (clock, reset, enb)
  begin
    if (reset = '1') then
      data_out <= "00000000000000000000000000000000";
    elsif (clock'event and clock = '1') then
      if (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%

-- Module     : 1-bit positive edge trigger register
-- References :
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   clock    : clock
--   reset    : reset
--   enb      : '1' then register data
--   data_in  : data to register
--   data_out : registered data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_reg1 is
  port (clock    : in std_logic;
        reset    : in std_logic;
        enb      : in std_logic;
        data_in  : in std_logic;
        data_out : out std_logic );
end fhm_divider_w32_reg1;

architecture synthesis of fhm_divider_w32_reg1 is
begin

  process (clock, reset, enb)
  begin
    if (reset = '1') then
      data_out <= '0';
    elsif (clock'event and clock = '1') then
      if (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%

-- Module     : 32-bit shift register for divider
-- References :
-- Author     : Designed by T.Morifuji (c)1996,1997.
--              Modified by K.Ueda (c)2002.
-- Version    : 1.0
--            : 2.0  : change algorithm
-- VHDL       : 87

-- Functionality :
--  port
--   clock  : clock
--   reset  : reset
--   ld     : load datas when '1'
--   mode   : mode of register
--            "00" : no operation (ignore ld)
--            "01" : initialize register
--            "11" : validate ld and shift data
--   ain    : represent quotient
--   pin    : represent reminder
--   cin    : represent 1-bit of reminder
--   aout   : output of ain
--   pout   : output of pin
--   cout   : output of cin

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_lsftreg32 is
  port (clock, reset : in  std_logic;
        ld           : in  std_logic;
        mode         : in  std_logic_vector(1 downto 0);
        ain, pin     : in  std_logic_vector(31 downto 0);
        cin          : in  std_logic;
        aout, pout   : out std_logic_vector(31 downto 0);
        cout         : out std_logic );
end fhm_divider_w32_lsftreg32;

architecture synthesis of fhm_divider_w32_lsftreg32 is

  component fhm_divider_w32_reg32
    port (
      clock    : in  std_logic;
      reset    : in  std_logic;
      enb      : in  std_logic;
      data_in  : in  std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0));
  end component;

  component fhm_divider_w32_reg1
    port (
      clock    : in  std_logic;
      reset    : in  std_logic;
      enb      : in  std_logic;
      data_in  : in  std_logic;
      data_out : out std_logic );
  end component;

  signal pin_tmp, pout_tmp : std_logic_vector(31 downto 0);
  signal ain_tmp, aout_tmp : std_logic_vector(31 downto 0);
  signal cout_in_tmp, cout_tmp : std_logic;
  signal one : std_logic;

begin

  one <= '1';
  
  pout <= pout_tmp;
  aout <= aout_tmp;
  cout <= cout_tmp;

  pin_tmp <= "0000000000000000000000000000000" & ain(31)
               when mode = "01" else
             pin(30 downto 0) & aout_tmp(31)
               when (mode = "11" and ld = '1') else
             pout_tmp(30 downto 0) & aout_tmp(31)
               when (mode = "11" and ld = '0') else
             pout_tmp;

  ain_tmp <= ain(30 downto 0) & '0'
               when mode = "01" else
             aout_tmp(30 downto 0) & cin
               when mode = "11" else
             aout_tmp;

  cout_in_tmp <= '0'
               when mode = "01" else
             pin(31)
               when (mode = "11" and ld = '1') else
             pout_tmp(31)
               when (mode = "11" and ld = '0') else
             cout_tmp;

  pout_reg : fhm_divider_w32_reg32
    port map (
      clock    => clock,
      reset    => reset,
      enb      => one,
      data_in  => pin_tmp,
      data_out => pout_tmp);

  aout_reg : fhm_divider_w32_reg32
    port map (
      clock    => clock,
      reset    => reset,
      enb      => one,
      data_in  => ain_tmp,
      data_out => aout_tmp);

  cout_reg : fhm_divider_w32_reg1
    port map (
      clock    => clock,
      reset    => reset,
      enb      => one,
      data_in  => cout_in_tmp,
      data_out => cout_tmp);

end synthesis;

--%%

-- Module     : Basic 32-bit sequential unsigned divider
-- References :
-- Author     : Designed by T.Morifuji (c)1996,1997,1999.
--              Modified by K.Ueda (c)2002
-- Version    : 1.1
--              2.0 : change algorithm
-- VHDL       : 87

-- Functionality :
--  port
--   clock  : clock
--   reset  : reset
--   clear  : cancel division
--   a      : dividend
--   b      : divisor
--   start  : '1' then start division
--   q      : result of a / b
--   r      : reminder of a / b
--   flag   : '1' when b = 0
--   fin    : '1' when operation is over

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;
  
entity fhm_divider_w32_sdiv32 is
  port (clock : in std_logic;
        reset : in std_logic;
        clear : in std_logic;
        a, b  : in std_logic_vector(31 downto 0);
        start : in std_logic;
        q, r  : out std_logic_vector(31 downto 0);
        flag  : out std_logic;
        fin   : out std_logic);
end fhm_divider_w32_sdiv32;

architecture synthesis of fhm_divider_w32_sdiv32 is

  component fhm_divider_w32_lsftreg32
    port (clock, reset : in  std_logic;
          ld           : in  std_logic;
          mode         : in  std_logic_vector(1 downto 0);
          ain, pin     : in  std_logic_vector(31 downto 0);
          cin          : in  std_logic;
          aout, pout   : out std_logic_vector(31 downto 0);
          cout         : out std_logic );
  end component;

  component fhm_divider_w32_add32
    port (a, b   : in std_logic_vector(31 downto 0);
          cin    : in std_logic;
          result : out std_logic_vector(31 downto 0);
          cout   : out std_logic );
  end component;

  component fhm_divider_w32_reg32
    port (clock    : in std_logic;
          reset    : in std_logic;
          enb      : in std_logic;
          data_in  : in std_logic_vector(31 downto 0);
          data_out : out std_logic_vector(31 downto 0) );
  end component;

  type state is (st0, st1, st2, st3, st4, st5, st6, st7, 
                 st8, st9, st10, st11, st12, st13, st14, 
                 st15, st16, st17, st18, st19, st20, st21, 
                 st22, st23, st24, st25, st26, st27, st28, 
                 st29, st30, st31, st32, st33, stend);
  --
  -- signals declaration
  --
  signal sft_mode       : std_logic_vector(1 downto 0);
  signal from_latch_out : std_logic_vector(31 downto 0);
  signal from_sft_aout  : std_logic_vector(31 downto 0);
  signal from_sft_pout  : std_logic_vector(31 downto 0);
  signal from_sft_cout  : std_logic;
  signal from_adder     : std_logic_vector(31 downto 0);
  signal add_cout       : std_logic;
  signal to_sft_ain     : std_logic_vector(31 downto 0);
  signal to_reg_in      : std_logic_vector(31 downto 0);
  signal one            : std_logic;
  signal current_state : state;
  signal next_state    : state;

begin  --  synthesis 

  one <= '1';

  q <= from_sft_aout(31 downto 0);
  r <= from_sft_cout & from_sft_pout(31 downto 1);

  flag <= '1' when b = "00000000000000000000000000000000" else
          '0';

  to_reg_in <= not b;
  to_sft_ain <= a;
 
  process (current_state, start, clear)
  begin
    case current_state is
      when st0 =>
        if (start = '1' and clear = '0') then
          next_state <= st1;
        else
          next_state <= st0;
        end if;
        sft_mode <= "00";
        fin        <= '1' and not start;
      when st1 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st2;
        end if;
        sft_mode <= "01";
        fin        <= '0';
      when st2 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st3;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st3 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st4;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st4 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st5;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st5 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st6;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st6 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st7;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st7 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st8;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st8 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st9;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st9 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st10;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st10 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st11;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st11 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st12;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st12 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st13;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st13 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st14;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st14 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st15;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st15 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st16;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st16 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st17;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st17 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st18;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st18 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st19;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st19 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st20;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st20 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st21;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st21 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st22;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st22 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st23;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st23 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st24;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st24 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st25;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st25 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st26;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st26 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st27;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st27 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st28;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st28 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st29;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st29 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st30;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st30 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st31;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st31 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st32;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st32 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= st33;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when st33 =>
        if (clear = '1') then
          next_state <= st0;
        else
          next_state <= stend;
        end if;
        sft_mode <= "11";
        fin        <= '0';
      when stend =>
        next_state <= st0;
        sft_mode <= "00";
        fin        <= '1';
    end case;
  end process;

  process (clock, reset)
  begin
    if (reset = '1') then
      current_state <= st0;
    elsif (clock'event and clock = '1') then
      current_state <= next_state;
    end if;
  end process;  

  lsftreg0 : fhm_divider_w32_lsftreg32

  port map (
    clock => clock,
    reset => reset,
    ld    => add_cout,
    mode  => sft_mode,
    ain   => to_sft_ain,
    pin   => from_adder,
    cin   => add_cout,
    aout  => from_sft_aout,
    pout  => from_sft_pout,
    cout  => from_sft_cout);
  
  add0 : fhm_divider_w32_add32
    port map (
      a      => from_sft_pout,
      b      => from_latch_out,
      cin    => one,
      result => from_adder,
      cout   => add_cout);

  reg0 : fhm_divider_w32_reg32
    port map (
      clock    => clock,
      reset    => reset,
      enb      => start,
      data_in  => to_reg_in,
      data_out => from_latch_out);

end synthesis;

--%%

-- Module     : 32-bit 2's complement converter
-- References :
-- Author     : Designed by T.Morifuji (c)1996.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality :
--  port
--   data_in  : data for convert
--   conv     : '1' then convert data
--   data_out : converted data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32_tconv32 is
  port (data_in  : in  std_logic_vector(31 downto 0);
        conv     : in std_logic;
        data_out : out std_logic_vector(31 downto 0));
end fhm_divider_w32_tconv32;

architecture synthesis of fhm_divider_w32_tconv32 is

  -- adder
  component fhm_divider_w32_add32
    port (a, b   : in std_logic_vector(31 downto 0);
          cin    : in std_logic;
          result : out std_logic_vector(31 downto 0);
          cout   : out std_logic);
  end component;

  signal not_data_in  : std_logic_vector(31 downto 0);
  signal zero         : std_logic_vector(31 downto 0);
  signal tmp_data_out : std_logic_vector(31 downto 0);
  signal tmp_cout     : std_logic;

begin

  not_data_in <= not data_in;
  zero <= (others => '0');

  two_conv : fhm_divider_w32_add32
    port map (
      a      => not_data_in,
      b      => zero,
      cin    => conv,
      result => tmp_data_out,
      cout   => tmp_cout);
  
  data_out <= data_in when conv = '0' else
              tmp_data_out;

end synthesis;

--%%

-- Module     : 32-bit seq two_complement divider
--              using cla for adder algorithm
-- References :
-- Author     : Designed by T.Morifuji (c)1996,1997,1999
-- Version    : 1.1  :
-- VHDL       : 87

-- Functionality :
--  port
--   clock : clock
--   reset : reset
--   clear : cancel division
--   a     : dividend
--   b     : divisor
--   start : '1' then start division
--   mode  : 
--   q     : result of a / b
--   r     : reminder of a / b
--   flag  : '1' if b = 0
--   fin   : '1' when operation is over

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_divider_w32 is
  port (clock    : in std_logic;
	reset    : in std_logic;
        clear    : in std_logic;
        a, b     : in std_logic_vector(31 downto 0);
        start    : in std_logic;
        mode     : in std_logic;
        q        : out std_logic_vector(31 downto 0);
        r        : out std_logic_vector(31 downto 0);
        flag     : out std_logic;
        fin      : out std_logic );
end fhm_divider_w32;

architecture synthesis of fhm_divider_w32 is
  component fhm_divider_w32_sdiv32
    port (clock : in std_logic;
	  reset : in std_logic;
          clear : in std_logic;
          a, b  : in std_logic_vector(31 downto 0);
          start : in std_logic;
          q, r  : out std_logic_vector(31 downto 0);
          flag  : out std_logic;
          fin   : out std_logic);
  end component;

  component fhm_divider_w32_tconv32
    port (data_in  : in std_logic_vector(31 downto 0);
          conv     : in std_logic;
          data_out : out std_logic_vector(31 downto 0));
  end component;

  component fhm_divider_w32_reg1
    port (
      clock    : in  std_logic;
      reset    : in  std_logic;
      enb      : in  std_logic;
      data_in  : in  std_logic;
      data_out : out std_logic);
  end component;

  signal tmp_mode : std_logic;

  signal conved_a : std_logic_vector(31 downto 0);
  signal conved_b : std_logic_vector(31 downto 0);
  signal conved_q : std_logic_vector(31 downto 0);
  signal conved_r : std_logic_vector(31 downto 0);

  signal tmp_a    : std_logic_vector(31 downto 0);
  signal tmp_b    : std_logic_vector(31 downto 0);
  signal tmp_q    : std_logic_vector(31 downto 0);
  signal tmp_r    : std_logic_vector(31 downto 0);
  signal q_tconv_conv, r_tconv_conv : std_logic;

begin

  q_tconv_conv <= a(31) xor b(31);
  r_tconv_conv <= a(31);

  conv_a : fhm_divider_w32_tconv32
    port map (
      data_in  => a,
      conv     => a(31),
      data_out => conved_a);

  conv_b : fhm_divider_w32_tconv32
    port map (
      data_in  => b,
      conv     => b(31),
      data_out => conved_b);

  tmp_a <= a when tmp_mode = '0' else
           conved_a;

  tmp_b <= b when tmp_mode = '0' else
           conved_b;
  divu : fhm_divider_w32_sdiv32
    port map (
      clock => clock,
      reset => reset,
      clear => clear,
      a     => tmp_a,
      b     => tmp_b,
      start => start,
      q     => tmp_q,
      r     => tmp_r,
      flag  => flag,
      fin   => fin);

  reg_mode : fhm_divider_w32_reg1
    port map (
      clock    => clock,
      reset    => reset,
      enb      => start,
      data_in  => mode,
      data_out => tmp_mode);

  conv_q : fhm_divider_w32_tconv32
    port map (
      data_in  => tmp_q,
      conv     => q_tconv_conv,
      data_out => conved_q);

  conv_r : fhm_divider_w32_tconv32
    port map (
      data_in  => tmp_r,
      conv     => r_tconv_conv,
      data_out => conved_r);

  q <= tmp_q when tmp_mode = '0' else
             conved_q;
  r <= tmp_r when tmp_mode = '0' else
             conved_r;

end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
