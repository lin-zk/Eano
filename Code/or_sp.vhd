library ieee;
use ieee.std_logic_1164.all;
entity or_sp is
port(sw_st:in std_logic;
     set:in std_logic;
     music:in std_logic_vector(0 to 20);
     space:in std_logic;
	  or_out:out std_logic);
end entity or_sp;
architecture behav of or_sp is
signal music_or:std_logic;
signal set_and:std_logic;
signal set_or:std_logic;
begin
  process(sw_st,music,set,space)
  begin
    if sw_st='0' then
	   if set='1' then set_and <= '0';
		else set_and <= '1';
		end if;
	   if music/="000000000000000000000" then
		  music_or<= '1';
	   else music_or<='0';
		end if;
		or_out <= (music_or or space) and set_and;
	 else
	   music_or<= '0';
	   if set='1' then set_or <= '1';
		else set_or <= '0';
		end if;
		or_out <= music_or or space or set_or;
	 end if;
  end process;
end architecture behav;