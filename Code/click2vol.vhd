library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity click2vol is
port (rst,clk,click_up,click_down:in std_logic;
      volume:buffer std_logic_vector(3 downto 0));
end entity click2vol;
architecture behav of click2vol is
signal click_tmp:std_logic_vector(1 downto 0);
begin
  click_tmp <= click_up&click_down;
  process(clk,rst,click_tmp)
    begin
	 if rst='1' then volume <= "1000";
    elsif clk'event and clk='1' then
		if click_tmp="10" then 
		  if volume="1111" then volume <= "1111";
        else volume <= volume + 1;
		  end if;
		elsif click_tmp="01" then
		  if volume="0000" then volume <= "0000";
        else volume <= volume - 1;
		  end if;
		else volume <= volume;
		end if;
	 end if;
  end process;
end architecture behav;
 