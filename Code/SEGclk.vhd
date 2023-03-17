library ieee;
use ieee.std_logic_1164.all;
entity SEGclk is
generic (N:integer:=5000);
port (clk_sys:in std_logic;
		clk_fix:buffer std_logic);
end entity SEGclk;
architecture behav of SEGclk is
begin
clkf:process(clk_sys)
  variable cnt:integer range 0 to N/2;
  begin
    if rising_edge(clk_sys) then
      if cnt=N/2 then 
	     clk_fix <= not clk_fix;cnt:=0;
	   else cnt :=cnt +1;
	  end if;
	end if;
	end process clkf;
end architecture behav;
