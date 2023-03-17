library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity SEGdata is
port(clk_sys,rst:in std_logic;
     data_flow:in std_logic_vector(5 downto 0);
	  data_out:out std_logic_vector(5 downto 0));
end entity SEGdata;
architecture behav of SEGdata is
begin
dain:process(clk_sys,rst)
  begin
	 if rst='1' then
	   data_out <= "111111";
    elsif clk_sys'event and clk_sys='1' then
      data_out <= data_flow;
	 end if;
  end process dain;
end architecture behav;