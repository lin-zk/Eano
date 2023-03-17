library ieee;
use ieee.std_logic_1164.all;
entity key2spring is
port(clk_mus,en:in std_logic;
     key:in std_logic_vector(0 to 20);
	  con:out std_logic);
end entity key2spring;
architecture behav of key2spring is
signal key_now:std_logic_vector(0 to 20);
signal key_pas:std_logic_vector(0 to 20);
begin
cont:process(clk_mus,en)
  begin
  if en='0' then con<='0';
  elsif clk_mus'event and clk_mus='1' then
    key_pas <= key_now;
	 key_now <= key;
	 if key_pas /= key_now then con <= '1';
	 else con <= '0';
	 end if;
  end if;
  end process cont;
end architecture behav;