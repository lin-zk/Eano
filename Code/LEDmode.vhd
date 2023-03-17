library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity LEDmode is
port(clk_fix,en:in std_logic;
     mode: in std_logic_vector(3 downto 0);
	  LED:out std_logic_vector(0 to 3));
end entity LEDmode;
architecture behav of LEDmode is
begin
ledl:process(clk_fix,en)
  variable cnt:std_logic_vector(2 downto 0);
  begin
    if en='0' then cnt:="000";LED<="0000";
	 elsif clk_fix'event and clk_fix='1' then
	   cnt:=cnt+1;
		if    mode="0000" then LED <= "1111";
		elsif mode="0001" then LED <= "0001";
		elsif mode="0010" then LED <= "0010";
		elsif mode="0011" then LED <= "0100";
		elsif mode="0100" then LED <= "1000";
		elsif mode="0101" then
		  if    cnt="000" then LED <= "0001";
		  elsif cnt="001" then LED <= "0010";
		  elsif cnt="010" then LED <= "0100";
		  elsif cnt="011" then LED <= "1000";
		  elsif cnt="100" then LED <= "0001";
		  elsif cnt="101" then LED <= "0010";
		  elsif cnt="110" then LED <= "0100";
		  else                 LED <= "1000";
		  end if;
		elsif mode="0110" then
		  if    cnt="000" then LED <= "1000";
		  elsif cnt="001" then LED <= "0100";
		  elsif cnt="010" then LED <= "0010";
		  elsif cnt="011" then LED <= "0001";
		  elsif cnt="100" then LED <= "1000";
		  elsif cnt="101" then LED <= "0100";
		  elsif cnt="110" then LED <= "0010";
		  else                 LED <= "0001";
		  end if;
		elsif mode="0111" then
		  if    cnt="000" then LED <= "0000";
		  elsif cnt="001" then LED <= "0100";
		  elsif cnt="010" then LED <= "0010";
		  elsif cnt="011" then LED <= "0001";
		  elsif cnt="100" then LED <= "0000";
		  elsif cnt="101" then LED <= "0010";
		  elsif cnt="110" then LED <= "0100";
		  else                 LED <= "1000";
		  end if;
		elsif mode="1000" then
		  if    cnt="000" then LED <= "1001";
		  elsif cnt="001" then LED <= "0110";
		  elsif cnt="010" then LED <= "1001";
		  elsif cnt="011" then LED <= "0110";
		  elsif cnt="100" then LED <= "1001";
		  elsif cnt="101" then LED <= "0110";
		  elsif cnt="110" then LED <= "1001";
		  else                 LED <= "0110";
		  end if;
	   elsif mode="1001" then LED <= "1110";
		elsif mode="1010" then LED <= "1101";
		elsif mode="1011" then LED <= "1011";
		elsif mode="1100" then LED <= "0111";
		elsif mode="1101" then
		  if    cnt="000" then LED <= "0111";
		  elsif cnt="001" then LED <= "1011";
		  elsif cnt="010" then LED <= "1101";
		  elsif cnt="011" then LED <= "1110";
		  elsif cnt="100" then LED <= "0111";
		  elsif cnt="101" then LED <= "1011";
		  elsif cnt="110" then LED <= "1101";
		  else                 LED <= "1110";
		  end if;
		elsif mode="1110" then
	     if    cnt="000" then LED <= "1110";
		  elsif cnt="001" then LED <= "1101";
		  elsif cnt="010" then LED <= "1011";
		  elsif cnt="011" then LED <= "0111";
		  elsif cnt="100" then LED <= "1110";
		  elsif cnt="101" then LED <= "1101";
		  elsif cnt="110" then LED <= "1011";
		  else                 LED <= "0111";
		  end if;
	   else
	     if    cnt="000" then LED <= "1111";
		  elsif cnt="001" then LED <= "1101";
		  elsif cnt="010" then LED <= "1011";
		  elsif cnt="011" then LED <= "0111";
		  elsif cnt="100" then LED <= "1111";
		  elsif cnt="101" then LED <= "1011";
		  elsif cnt="110" then LED <= "1101";
		  else                 LED <= "1110";
		  end if;
		end if;
    end if;
  end process ledl;
end architecture behav;