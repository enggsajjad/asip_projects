-- Module     : 1-bit Edge Trigger Register
-- Feature    : positive
-- References : Started from scratch
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


entity fhm_multiplier_w32_reg1 is
  port (clock    : in std_logic;
        reset    : in std_logic;
        enb      : in std_logic;
        data_in  : in std_logic;
        data_out : out std_logic);
end fhm_multiplier_w32_reg1;

architecture synthesis of fhm_multiplier_w32_reg1 is
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

entity fhm_multiplier_w32_cla4 is
  port (a, b       : in  std_logic_vector(3 downto 0);
        cin        : in  std_logic;
        result     : out std_logic_vector(3 downto 0);
        pout, gout : out std_logic);
end fhm_multiplier_w32_cla4;

architecture synthesis of fhm_multiplier_w32_cla4 is

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

entity fhm_multiplier_w32_cla16 is
  port (a, b       : in std_logic_vector(15 downto 0);
        cin        : in std_logic;
        result     : out std_logic_vector(15 downto 0);
        pout, gout : out std_logic);
end fhm_multiplier_w32_cla16;

architecture synthesis of fhm_multiplier_w32_cla16 is

  component fhm_multiplier_w32_cla4
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
  u0 : fhm_multiplier_w32_cla4
    port map (
      a      => a(3 downto 0),
      b      => b(3 downto 0),
      cin    => cin,
      result => result(3 downto 0),
      pout   => p(0),
      gout   => g(0));
  
  u1 : fhm_multiplier_w32_cla4
    port map (
      a      => a(7 downto 4),
      b      => b(7 downto 4),
      cin    => carry(0),
      result => result(7 downto 4),
      pout   => p(1),
      gout   => g(1));

  u2 : fhm_multiplier_w32_cla4
    port map (
      a      => a(11 downto 8),
      b      => b(11 downto 8),
      cin    => carry(1),
      result => result(11 downto 8),
      pout   => p(2),
      gout   => g(2));

  u3 : fhm_multiplier_w32_cla4
    port map (
      a      => a(15 downto 12),
      b      => b(15 downto 12),
      cin    => carry(2),
      result => result(15 downto 12),
      pout   => p(3),
      gout   => g(3));

end synthesis;

--%%

-- Module     : Basic 64bit carry look ahead adder
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

entity fhm_multiplier_w32_cla64 is
  port (a, b       : in std_logic_vector(63 downto 0);
        cin        : in std_logic;
        result     : out std_logic_vector(63 downto 0);
        pout, gout : out std_logic);
end fhm_multiplier_w32_cla64;

architecture synthesis of fhm_multiplier_w32_cla64 is

  component fhm_multiplier_w32_cla16
    port (a, b       : in std_logic_vector(15 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(15 downto 0);
          pout, gout : out std_logic);
  end component;

  signal        p, g             : std_logic_vector(3 downto 0);
  signal        carry            : std_logic_vector(2 downto 0);

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
  u0 : fhm_multiplier_w32_cla16
    port map (
      a      => a(15 downto 0),
      b      => b(15 downto 0),
      cin    => cin,
      result => result(15 downto 0),
      pout   => p(0),
      gout   => g(0));

  u1 : fhm_multiplier_w32_cla16
    port map (
      a      => a(31 downto 16),
      b      => b(31 downto 16),
      cin    => carry(0),
      result => result(31 downto 16),
      pout   => p(1),
      gout   => g(1));

  u2 : fhm_multiplier_w32_cla16
    port map (
      a      => a(47 downto 32),
      b      => b(47 downto 32),
      cin    => carry(1),
      result => result(47 downto 32),
      pout   => p(2),
      gout   => g(2));

  u3 : fhm_multiplier_w32_cla16
    port map (
      a      => a(63 downto 48),
      b      => b(63 downto 48),
      cin    => carry(2),
      result => result(63 downto 48),
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
--   cout   : '1' when result > 2^32-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_multiplier_w32_add32 is
  port (a, b   : in  std_logic_vector(31 downto 0);
        cin    : in  std_logic;
        result : out std_logic_vector(31 downto 0);
        cout   : out std_logic);
end fhm_multiplier_w32_add32;

architecture synthesis of fhm_multiplier_w32_add32 is

  component fhm_multiplier_w32_cla16
    port (a, b       : in std_logic_vector(15 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(15 downto 0);
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

  u16_0 : fhm_multiplier_w32_cla16
    port map (
      a      => a(15 downto 0),
      b      => b(15 downto 0),
      cin    => cin,
      result => result(15 downto 0),
      pout   => p(0),
      gout   => g(0));
  u16_1 : fhm_multiplier_w32_cla16
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

-- Module     : 64-bit carry look ahead adder
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

entity fhm_multiplier_w32_add64 is
  port (a, b   : in  std_logic_vector(63 downto 0);
        cin    : in  std_logic;
        result : out std_logic_vector(63 downto 0);
        cout   : out std_logic);
end fhm_multiplier_w32_add64;

architecture synthesis of fhm_multiplier_w32_add64 is

  component fhm_multiplier_w32_cla64
    port (a, b       : in std_logic_vector(63 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(63 downto 0);
          pout, gout : out std_logic);
  end component;

  signal p, g      : std_logic_vector(0 downto 0);
  signal carry     : std_logic_vector(0 downto 0);
begin
  carry(0) <= g(0) or
              (p(0) and cin);

  u64_0 : fhm_multiplier_w32_cla64
    port map (
      a      => a(63 downto 0),
      b      => b(63 downto 0),
      cin    => cin,
      result => result(63 downto 0),
      pout   => p(0),
      gout   => g(0));


  cout <= carry(0);
end synthesis;

--%%

-- Module     : 32-bit Edge Trigger Register
-- Feature    : positive
-- References : Started from scratch
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

entity fhm_multiplier_w32_reg32 is
  port (clock    : in std_logic;
        reset      : in std_logic;
        enb      : in std_logic;
        data_in  : in std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0) );
end fhm_multiplier_w32_reg32;

architecture synthesis of fhm_multiplier_w32_reg32 is
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

-- Module     : 64-bit Edge Trigger Register
-- Feature    : positive
-- References : Started from scratch
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

entity fhm_multiplier_w32_reg64 is
  port (clock    : in std_logic;
        reset      : in std_logic;
        enb      : in std_logic;
        data_in  : in std_logic_vector(63 downto 0);
        data_out : out std_logic_vector(63 downto 0) );
end fhm_multiplier_w32_reg64;

architecture synthesis of fhm_multiplier_w32_reg64 is
begin

  process (clock, reset, enb)
  begin
    if (reset = '1') then
  data_out <=
  	"0000000000000000000000000000000000000000000000000000000000000000";
    elsif (clock'event and clock = '1') then
      if (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%

-- Module     : 32-bit Unsigned Multiplier
-- Feature    : type : shift
-- References : Start from scratch
-- Author     : Designed by T.Morifuji (c)1996,1997,1999.
-- Version    : 1.1  :
-- VHDL       : 87

-- Functionality :
--  port
--   clock  : clock
--   a, b   : can represent from 0 to 2^32-1 in integer
--   mode   : start multiplication when '0' after 1-clock '1'
--   result : multiplied result
--   fin    : '1' when operation is over

-- Comment :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_multiplier_w32_smul is
  port (clock  : in std_logic;
        reset  : in std_logic;
        clear  : in std_logic;
        start  : in std_logic;
        a, b   : in std_logic_vector(31 downto 0);
        result : out std_logic_vector(63 downto 0);
        fin    : out std_logic );
end fhm_multiplier_w32_smul;

architecture synthesis of fhm_multiplier_w32_smul is

  -- adder
  component fhm_multiplier_w32_add64
    port (a, b   : in std_logic_vector(63 downto 0);
          cin    : in std_logic;
          result : out std_logic_vector(63 downto 0);
          cout   : out std_logic );
  end component;

  -- register: positive edge trigger
  component fhm_multiplier_w32_reg32
    port (clock    : in std_logic;
          reset      : in std_logic;
          enb      : in std_logic;
          data_in  : in std_logic_vector(31 downto 0);
          data_out : out std_logic_vector(31 downto 0) );
  end component;

  component fhm_multiplier_w32_reg64
    port (clock    : in std_logic;
          reset      : in std_logic;
          enb      : in std_logic;
          data_in  : in std_logic_vector(63 downto 0);
          data_out : out std_logic_vector(63 downto 0) );
  end component;

  --
  -- signals declaration
  --

  signal add_sel, ld_ab, sft_b : std_logic;
  signal reg64_enb, reg64_reset : std_logic;
  signal from_reg_32_a : std_logic_vector(31 downto 0);
  signal to_reg_32_b, from_reg_32_b : std_logic_vector(31 downto 0);
  signal to_add_a, to_add_b, from_add, result_tmp : std_logic_vector(63
  	downto 0);
  signal zero, one : std_logic;
  type s_t is (st0, st1, st2, st3, st4, st5, st6, st7, 
                 st8, st9, st10, st11, st12, st13, st14, 
                 st15, st16, st17, st18, st19, st20, st21, 
                 st22, st23, st24, st25, st26, st27, st28, 
                 st29, st30, st31, st32, st33, st34);
  signal current_state, next_state : s_t;
begin  --  synthesis
  zero <= '0';
  one <= '1';

  add_sel <= from_reg_32_b(31);
  to_add_a(63 downto 32) <= "00000000000000000000000000000000";
  to_add_a(31 downto 0) <= from_reg_32_a when add_sel='1' else
                           "00000000000000000000000000000000";
  to_add_b <= result_tmp(63-1 downto 0) & '0';
  result <= result_tmp;

  reg_32_a: fhm_multiplier_w32_reg32
    port map (
      clock    => clock,
      reset    => zero,
      enb      => ld_ab,
      data_in  => a,
      data_out => from_reg_32_a);

  to_reg_32_b <= b when ld_ab='1' else
  from_reg_32_b(31-1 downto 0) & '0' when sft_b='1' else
                           from_reg_32_b(31 downto 0);
  
  reg_32_b: fhm_multiplier_w32_reg32
    port map (
      clock    => clock,
      reset    => zero,
      enb      => one,
      data_in  => to_reg_32_b,
      data_out => from_reg_32_b);
  
  add0 : fhm_multiplier_w32_add64
    port map (
      a      => to_add_a,
      b      => to_add_b,
      cin    => zero,
      result => from_add,
      cout   => open);

  reg_64: fhm_multiplier_w32_reg64
    port map (
      clock    => clock,
      reset    => reg64_reset,
      enb      => reg64_enb,
      data_in  => from_add,
      data_out => result_tmp);
  
  process (current_state, start, clear)
  begin
    case current_state is
      when st0 =>
        ld_ab <= '0';
        sft_b <= '0';
        reg64_enb <= '0';
        reg64_reset <= '0';
        fin <= '1' and not start;
        if (start = '1' and clear = '0') then
          next_state <= st1;
        else
          next_state <= st0;
        end if;
      when st1 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st2;
        end if;
        ld_ab <= '1';
        sft_b <= '0';
        reg64_enb <= '0';
        reg64_reset <= '1';
        fin <= '0';
      when st2 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st3;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st3 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st4;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st4 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st5;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st5 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st6;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st6 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st7;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st7 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st8;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st8 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st9;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st9 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st10;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st10 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st11;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st11 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st12;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st12 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st13;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st13 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st14;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st14 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st15;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st15 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st16;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st16 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st17;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st17 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st18;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st18 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st19;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st19 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st20;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st20 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st21;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st21 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st22;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st22 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st23;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st23 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st24;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st24 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st25;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st25 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st26;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st26 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st27;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st27 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st28;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st28 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st29;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st29 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st30;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st30 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st31;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st31 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st32;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st32 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st33;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st33 =>
        if clear = '1' then
          next_state <= st0;
        else
          next_state <= st34;
        end if;
        ld_ab <= '0';
        sft_b <= '1';
        reg64_enb <= '1';
        reg64_reset <= '0';
        fin <= '0';
      when st34 =>
        next_state <= st0;
        ld_ab <= '0';
        sft_b <= '0';
        reg64_enb <= '0';
        reg64_reset <= '0';
        fin <= '1';
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
end synthesis;

--%%

-- Module     : 32-bit 2's complement converter
-- Feature    : 32-bit
-- References : Start from scratch
-- Author     : Designed by T.Morifuji (c)1996.
-- Version : 1.0  :
-- VHDL    : 87

-- Functionality :
--  port
--   data_in  : data for convert
--   conv     : '1' then convert data
--   data_out : converted data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_multiplier_w32_tconv32 is
    port (data_in  : in  std_logic_vector(31 downto 0);
          conv     : in std_logic;
          data_out : out std_logic_vector(31 downto 0));
end fhm_multiplier_w32_tconv32;

architecture synthesis of fhm_multiplier_w32_tconv32 is

  component fhm_multiplier_w32_add32
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
  zero <= "00000000000000000000000000000000";

  two_conv : fhm_multiplier_w32_add32
    port map (not_data_in, zero, conv,
              tmp_data_out, tmp_cout);

  data_out <= data_in when conv = '0' else
              tmp_data_out;

end synthesis;

--%%

-- Module     : 64-bit 2's complement converter
-- Feature    : 64-bit
-- References : Start from scratch
-- Author     : Designed by T.Morifuji (c)1996.

-- Version : 1.0  :
-- VHDL    : 87
-- Functionality :
--  port
--   data_in  : data for convert
--   conv     : '1' then convert data
--   data_out : converted data


library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_multiplier_w32_tconv64 is
    port (data_in  : in  std_logic_vector(63 downto 0);
          conv     : in std_logic;
          data_out : out std_logic_vector(63 downto 0));
end fhm_multiplier_w32_tconv64;

architecture synthesis of fhm_multiplier_w32_tconv64 is

  component fhm_multiplier_w32_add64
    port (a, b   : in std_logic_vector(63 downto 0);
          cin    : in std_logic;
          result : out std_logic_vector(63 downto 0);
          cout   : out std_logic);
  end component;

  signal not_data_in  : std_logic_vector(63 downto 0);
  signal zero         : std_logic_vector(63 downto 0);
  signal tmp_data_out : std_logic_vector(63 downto 0);
  signal tmp_cout     : std_logic;

begin

  not_data_in <= not data_in;
  zero <=
  	"0000000000000000000000000000000000000000000000000000000000000000";

  two_conv : fhm_multiplier_w32_add64
    port map (not_data_in, zero, conv,
              tmp_data_out, tmp_cout);

  data_out <= data_in when conv = '0' else
              tmp_data_out;

end synthesis;

--%%

-- Module     : 32-bit Multiplier
-- Feature    : seq cla two_complement
-- References : Start from scratch
-- Author     : Designed by T.Morifuji (c)1996,1997,1999.
-- Version    : 1.1  :
-- VHDL       : 87
-- Functionality :
--  port
--   W       : bit width. boundary of input
--   clock   : clock
--   a, b    : can represent from 0 to 2^32-1 in integer
--   mode    : '0' when data type is unsigned
--             '1' when data type is two_complement
--   start   : '1' when operation starts
--   result  : multiplied result
--   fin     : '1' when operation is over

-- Comment :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_multiplier_w32 is
  port (clock  : in std_logic;
        reset  : in std_logic;
        a, b   : in std_logic_vector(31 downto 0);
        mode   : in std_logic;
        start  : in std_logic;
        clear  : in std_logic;
        result : out std_logic_vector(63 downto 0);
        fin    : out std_logic);
end fhm_multiplier_w32;

architecture synthesis of fhm_multiplier_w32 is

  component fhm_multiplier_w32_smul
    port (clock  : in std_logic;
          reset  : in std_logic;
          clear  : in std_logic;
          start  : in std_logic;
          a, b   : in std_logic_vector(31 downto 0);
          result : out std_logic_vector(63 downto 0);
          fin    : out std_logic );
  end component;
  component fhm_multiplier_w32_tconv32
    port (data_in  : in std_logic_vector(31 downto 0);
          conv     : in std_logic;
          data_out : out std_logic_vector(31 downto 0));
  end component;

  component fhm_multiplier_w32_tconv64
    port (data_in  : in std_logic_vector(63 downto 0);
          conv     : in std_logic;
          data_out : out std_logic_vector(63 downto 0));
  end component;

  component fhm_multiplier_w32_reg1
    port (clock    : in std_logic;
          reset      : in std_logic;
          enb      : in std_logic;
          data_in  : in std_logic;
          data_out : out std_logic );
  end component;
  signal conved_a          : std_logic_vector(31 downto 0);
  signal conved_b          : std_logic_vector(31 downto 0);
  signal conved_result     : std_logic_vector(63 downto 0);

  signal tmp_a             : std_logic_vector(31 downto 0);
  signal tmp_b             : std_logic_vector(31 downto 0);
  signal tmp_result        : std_logic_vector(63 downto 0);

  signal in_result_tconv_conv  : std_logic;
  signal out_result_tconv_conv : std_logic;
  signal mode_tmp : std_logic;

  signal smul_fin              : std_logic;
  signal vss                   : std_logic := '0';

  signal result_tconv_conv     : std_logic;

begin

  result_tconv_conv <= a(31) xor b(31);
  in_result_tconv_conv <= result_tconv_conv;

  tconv_reg : fhm_multiplier_w32_reg1
    port map (
      clock    => clock,
      reset      => vss,
      enb      => start,
      data_in  => in_result_tconv_conv,
      data_out => out_result_tconv_conv);

  mode_reg : fhm_multiplier_w32_reg1
    port map (
      clock    => clock,
      reset    => reset,
      enb      => start,
      data_in  => mode,
      data_out => mode_tmp);

  conv_a : fhm_multiplier_w32_tconv32
    port map (a, a(31), conved_a);

  conv_b : fhm_multiplier_w32_tconv32
    port map (b, b(31), conved_b);

  tmp_a <= a when mode_tmp = '0' else
           conved_a;

  tmp_b <= b when mode_tmp = '0' else
           conved_b;

  mulu : fhm_multiplier_w32_smul
  port map (clock, reset, clear, start, tmp_a, tmp_b, tmp_result,
  	smul_fin);
  conv_result : fhm_multiplier_w32_tconv64
    port map (tmp_result, out_result_tconv_conv, conved_result);

  result <= tmp_result when mode_tmp = '0' else
            conved_result;

    fin <= smul_fin and (not start);

end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
