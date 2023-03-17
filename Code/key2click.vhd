library ieee;
use ieee.std_logic_1164.all;
entity key2click is
port(clk,rst,button:in std_logic;
     click:out std_logic);
end entity key2click;
architecture behav of key2click is
signal button_pos:std_logic;
signal button_neg:std_logic;
begin
  process(rst,clk)
  begin
    if rst='1' then
	   button_pos <= '0';
		button_neg <= '0';
	 elsif clk'event and clk='1' then
	   button_pos <= button;
		button_neg <= button_pos;
	 end if;
  end process;
  click <= button_pos and (not button_neg);
end architecture behav;