library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity SEGflow is
port(clk,rst:in std_logic;
     d0:in std_logic_vector(5 downto 0);
     d1:in std_logic_vector(5 downto 0);
	  d2:in std_logic_vector(5 downto 0);
	  d3:in std_logic_vector(5 downto 0);
	  d4:in std_logic_vector(5 downto 0);
	  d5:in std_logic_vector(5 downto 0);
	  d6:in std_logic_vector(5 downto 0);
	  d7:in std_logic_vector(5 downto 0);
	  d8:in std_logic_vector(5 downto 0);
	  d9:in std_logic_vector(5 downto 0);
	  d10:in std_logic_vector(5 downto 0);
	  d11:in std_logic_vector(5 downto 0);
	  d12:in std_logic_vector(5 downto 0);
	  d13:in std_logic_vector(5 downto 0);
	  d14:in std_logic_vector(5 downto 0);
	  d15:in std_logic_vector(5 downto 0);
	  d16:in std_logic_vector(5 downto 0);
	  d17:in std_logic_vector(5 downto 0);
	  data0:out std_logic_vector(5 downto 0);
     data1:out std_logic_vector(5 downto 0);
	  data2:out std_logic_vector(5 downto 0);
	  data3:out std_logic_vector(5 downto 0);
	  data4:out std_logic_vector(5 downto 0);
	  data5:out std_logic_vector(5 downto 0));
end entity SEGflow;
architecture behav of SEGflow is
signal d:std_logic_vector(35 downto 0);
type st is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15);
signal pst,nst:st;
begin
seq:process(clk,rst)
begin
  if rst='1' then pst <=s0;
  elsif clk'event and clk='1' then
    pst <= nst;
  end if;
end process seq;
com:process(pst)
  begin
    case pst is
	   when s0=>
		  d <= d5&d4&d3&d2&d1&d0;
		  if d6="111111" then nst <= s0;
		  else nst <= s1;
		  end if;
	   when s1=>
		  d <= d6&d5&d4&d3&d2&d1;
		  if d7="111111" then nst <= s0;
		  else nst <= s2;
		  end if;
	   when s2=>
		  d <= d7&d6&d5&d4&d3&d2;
		  if d8="111111" then nst <= s0;
		  else nst <= s3;
		  end if;
	   when s3=>
		  d <= d8&d7&d6&d5&d4&d3;
		  if d9="111111" then nst <= s0;
		  else nst <= s4;
		  end if;
	   when s4=>
		  d <= d9&d8&d7&d6&d5&d4;
		  if d10="111111" then nst <= s0;
		  else nst <= s5;
		  end if;
	   when s5=>
		  d <= d10&d9&d8&d7&d6&d5;
		  if d11="111111" then nst <= s0;
		  else nst <= s6;
		  end if;
	   when s6=>
		  d <= d11&d10&d9&d8&d7&d6;
		  if d12="111111" then nst <= s0;
		  else nst <= s7;
		  end if;
	   when s7=>
		  d <= d12&d11&d10&d9&d8&d7;
		  if d13="111111" then nst <= s0;
		  else nst <= s8;
		  end if;
	   when s8=>
		  d <= d13&d12&d11&d10&d9&d8;
		  if d14="111111" then nst <= s0;
		  else nst <= s9;
		  end if;
	   when s9=>
		  d <= d14&d13&d12&d11&d10&d9;
		  if d15="111111" then nst <= s0;
		  else nst <= s10;
		  end if;
	   when s10=>
		  d <= d15&d14&d13&d12&d11&d10;
		  if d16="111111" then nst <= s0;
		  else nst <= s11;
		  end if;
	   when s11=>
		  d <= d16&d15&d14&d13&d12&d11;
		  if d17="111111" then nst <= s0;
		  else nst <= s12;
		  end if;
	   when s12=>
        d <= d17&d16&d15&d14&d13&d12;nst <= s13;
	   when s13=>
		  d <= "000000"&d17&d16&d15&d14&d13;nst <= s14;
	   when s14=>
		  d <= "000000"&"000000"&d17&d16&d15&d14;nst <= s15;
	   when s15=>
		  d <= "000000"&"000000"&"000000"&d17&d16&d15;nst <= s0;
    end case;
  end process com;
  data0 <= d(5 downto 0);
  data1 <= d(11 downto 6);
  data2 <= d(17 downto 12);
  data3 <= d(23 downto 18);
  data4 <= d(29 downto 24);
  data5 <= d(35 downto 30);
end architecture behav;