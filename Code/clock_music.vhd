library ieee;
use ieee.std_logic_1164.all;
entity clock_music is
port (clk_sys:in std_logic;
      tar:in std_logic_vector(2 downto 0);
		clk_mus:buffer std_logic);
end entity clock_music;
architecture behav of clock_music is
signal N:integer range 0 to 100000000;
begin
  N<=2500000   when tar="000" else  --20Hz;
	  3125000  when tar="001" else  --16Hz
	  5000000 when tar="010" else  --10Hz
	  62500000  when tar="011" else  --8Hz
	  10000000  when tar="100" else  --5Hz
	  12500000  when tar="101" else  --4Hz
	  20000000  when tar="110" else  --2.5Hz
	  25000000;                     --2Hz
clks:process(clk_sys)
  variable cnt:integer range 0 to 100000000;
  begin
    if rising_edge(clk_sys) then
      if cnt=N/2 then 
	     clk_mus <= not clk_mus;cnt:=0;
	   else cnt :=cnt +1;
	  end if;
	end if;
	end process clks;
end architecture behav;