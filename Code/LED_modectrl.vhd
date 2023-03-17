library ieee;
use ieee.std_logic_1164.all;
entity LED_modectrl is
port(space,enter,esc,load:in std_logic;
     music:in std_logic_vector(0 to 20);
     LED_mode:out std_logic_vector(3 downto 0));
end entity LED_modectrl;
architecture behav of LED_modectrl is
begin
  process(space,enter,esc,load,music)
    begin
	 if load='1' then
	   LED_mode <= "0000";
	 elsif esc='1' then
	   LED_mode <= "0111";
	 elsif enter='1' then
	   LED_mode <= "1110";
	 elsif space='1' then
	   LED_mode <= "1000";
	 elsif music/="000000000000000000000" then
      LED_mode <= "1111";
	 else 
	   LED_mode <= "1101";
	 end if;
  end process;
end architecture behav;