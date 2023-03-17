library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity click2scroll is
port (rst,clk,click_up,click_down:in std_logic;
      choose:buffer std_logic_vector(2 downto 0));
end entity click2scroll;
architecture behav of click2scroll is
signal click_tmp:std_logic_vector(1 downto 0);
begin
  click_tmp <= click_up&click_down;
  process(clk,rst,click_tmp)
    begin
	 if rst='1' then choose <= "001";
    elsif clk'event and clk='1' then
		if click_tmp="01" then 
		  choose <= choose(1 downto 0) & choose(2);
		elsif click_tmp="10" then
		  choose <= choose(0) & choose(2 downto 1);
		else choose <= choose;
		end if;
	 end if;
  end process;
end architecture behav;