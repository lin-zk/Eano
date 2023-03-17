library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity timer is
port(clk_fix,rst,stop:in std_logic;
     min_ten,min_one,sec_one:buffer integer range 0 to 9;
	  sec_ten:buffer integer range 0 to 5);
end entity timer;
architecture behav of timer is
signal pluse_secone:std_logic;
signal pluse_secten:std_logic;
signal pluse_minone:std_logic;
begin
secone:process(clk_fix,rst,stop)
  begin
    if rst='1' then sec_one <= 0;pluse_secone <= '0';
	 elsif stop='1' then pluse_secone <= '0';sec_one <= sec_one;
	 elsif clk_fix'event and clk_fix='1' then
	   if sec_one/=9 then
		  sec_one <= sec_one+1;pluse_secone <= '0';
		else
		  sec_one <= 0;pluse_secone <= '1';
		end if;
	 end if;
  end process secone;
secten:process(pluse_secone,rst,stop)
  begin
    if rst='1' then sec_ten <= 0;pluse_secten <= '0';
	 elsif stop='1' then pluse_secten <= '0';sec_ten <= sec_ten;
	 elsif pluse_secone'event and pluse_secone='1' then
	   if sec_ten/=5 then
		  sec_ten <= sec_ten+1;pluse_secten <= '0';
		else
		  sec_ten <= 0;pluse_secten <= '1';
		end if;
	 end if;
  end process secten;
minone:process(pluse_secten,rst,stop)
  begin
    if rst='1' then min_one <= 0;pluse_minone <= '0';
	 elsif stop='1' then pluse_minone <= '0';min_one <= min_one;
	 elsif pluse_secten'event and pluse_secten='1' then
	   if min_one/=9 then
		  min_one <= min_one+1;pluse_minone <= '0';
		else
		  min_one <= 0;pluse_minone <= '1';
		end if;
	 end if;
  end process minone;
minten:process(pluse_minone,rst,stop)
  begin
    if rst='1' then min_ten <= 0;
	 elsif stop='1' then min_ten <= min_ten;
	 elsif pluse_minone'event and pluse_minone='1' then
	   if min_ten/=9 then
		  min_ten <= min_ten+1;
		else
		  min_ten <= min_ten;
		end if;
	 end if;
  end process minten;
end architecture behav;