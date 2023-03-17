library ieee;
use ieee.std_logic_1164.all;
entity SEGclkf is
generic (N:integer:=120000000);
port (clk_sys:in std_logic;
		clk_fix:buffer std_logic;
		clk_fixp:out std_logic);
end entity SEGclkf;
architecture behav of SEGclkf is
begin
clkf:process(clk_sys)
  variable cnt:integer range 0 to N/2;
  begin
    if rising_edge(clk_sys) then
      if cnt=N/2 then 
	     clk_fix <= not clk_fix;clk_fixp <= '0';cnt:=0;
	   else clk_fixp <= '1';cnt :=cnt +1;
	   end if;
	end if;
	end process clkf;
end architecture behav;
