library ieee;
use ieee.std_logic_1164.all;
entity SEGinpu is
port(clk_sys,start:in std_logic;
     data0:in std_logic_vector(5 downto 0):="000001";
     data1:in std_logic_vector(5 downto 0):="000010";
	  data2:in std_logic_vector(5 downto 0):="000011";
     data3:in std_logic_vector(5 downto 0):="000100";
	  data4:in std_logic_vector(5 downto 0):="000101";
	  data5:in std_logic_vector(5 downto 0):="000110";
     rst:out std_logic;
     data_in:out std_logic_vector(5 downto 0));
end entity SEGinpu;
architecture behav of SEGinpu is
type st is(s0,s1,s2,s3,s4,s5,s6,s7);
signal pst,nst:st;
begin
seq:process(clk_sys,start)
  begin
    if start='0' then pst<=s0;
    elsif clk_sys'event and clk_sys='1' then
	   pst <= nst;
	 end if;
  end process seq;
com:process(pst)
begin
  case pst is
    when s0=> 
	   rst <='1';nst <= s1;
	 when s1=> 
	   rst <='0';data_in <= data0;nst <= s2;
	 when s2=> 
	   rst <='0';data_in <= data1;nst <= s3;
	 when s3=> 
	   rst <='0';data_in <= data2;nst <= s4;
	 when s4=> 
	   rst <='0';data_in <= data3;nst <= s5;
	 when s5=> 
	   rst <='0';data_in <= data4;nst <= s6;
	 when s6=> 
	   rst <='0';data_in <= data5;nst <= s7;
	 when s7=> 
	   rst <='0';data_in <= "111111";nst <= s7;
  end case;
end process com;
end architecture behav;
