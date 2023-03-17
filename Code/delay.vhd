library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity delay is
port(clk_sys,rst:in std_logic;
     de_out:out std_logic);
end entity delay;
architecture behav of delay is
signal cnt:integer range 0 to 200000000:=0;
begin
  process(clk_sys,rst)
  begin
    if rst='1' then cnt<=0;de_out <= '1';
    elsif clk_sys'event and clk_sys='1' then
	   if cnt=200000000 then de_out <= '0';cnt<=cnt;
	   else cnt <= cnt + 1;
		end if;
	 end if;
  end process coun;
end architecture behav;	