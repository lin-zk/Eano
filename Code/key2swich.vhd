library ieee;
use ieee.std_logic_1164.all;
entity key2swich is
port(rst,button:in std_logic;
     swich_state:buffer std_logic);
end entity key2swich;
architecture behav of key2swich is
begin
  process(button)
    begin
	   if rst='1' then swich_state <= '0';
	   elsif button'event and button='1' then
		  swich_state <= not swich_state;
		end if;
	 end process;
end architecture;