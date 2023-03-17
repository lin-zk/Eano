library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity SEGdisp is
port(clk_sys,en:in std_logic;
     data:in std_logic_vector(5 downto 0);
	  disp:out std_logic_vector(7 downto 0);
	  cs:out std_logic_vector(5 downto 0));
end entity SEGdisp;
architecture behav of SEGdisp is
signal cnt:integer range 0 to 5;
begin
chse:process(clk_sys,en)
  begin
    if en='0' then cnt<=0;cs <= "111111";
	 elsif clk_sys'event and clk_sys='1' then
	   if cnt/=5 then 
		  if data="111111" then cnt <= 0;
		  else cnt<=cnt+1;
		  end if;
		else cnt<=0;
		end if;
		if    cnt=0 then cs <= "011111";
		elsif cnt=1 then cs <= "101111";
		elsif cnt=2 then cs <= "110111";
		elsif cnt=3 then cs <= "111011";
		elsif cnt=4 then cs <= "111101";
		else             cs <= "111110";
		end if;
    end if;
  end process chse;
deco:process(clk_sys,data)
  begin
    if clk_sys'event and clk_sys='1' then
      if    data="000000" then disp <= "11111111";--空
      elsif data="000001" then disp <= "10011111";--1
      elsif data="000010" then disp <= "00100101";--2
      elsif data="000011" then disp <= "00001101";--3
      elsif data="000100" then disp <= "10011001";--4
      elsif data="000101" then disp <= "01001001";--5
      elsif data="000110" then disp <= "01000001";--6
      elsif data="000111" then disp <= "00011111";--7
      elsif data="001000" then disp <= "00000001";--8
      elsif data="001001" then disp <= "00001001";--9
      elsif data="001010" then disp <= "00010001";--A
      elsif data="001011" then disp <= "11000001";--B
      elsif data="001100" then disp <= "01100011";--C
      elsif data="001101" then disp <= "00000011";--D
      elsif data="001110" then disp <= "01100001";--E
      elsif data="001111" then disp <= "01110001";--F
      elsif data="010000" then disp <= "01000011";--G
      elsif data="010001" then disp <= "10010001";--H
      elsif data="010010" then disp <= "10011111";--I
      elsif data="010011" then disp <= "00000111";--J
      elsif data="010100" then disp <= "11100001";--K
      elsif data="010101" then disp <= "11100011";--L
      elsif data="010110" then disp <= "00001101";--M
      elsif data="010111" then disp <= "00010011";--N
      elsif data="011000" then disp <= "00000011";--O
      elsif data="011001" then disp <= "00110001";--P
      elsif data="011010" then disp <= "00000010";--Q
      elsif data="011011" then disp <= "00110000";--R
      elsif data="011100" then disp <= "01001001";--S
      elsif data="011101" then disp <= "00011111";--T
      elsif data="011110" then disp <= "10000011";--U
      elsif data="011111" then disp <= "10011010";--V
      elsif data="100000" then disp <= "10000001";--W
      elsif data="100001" then disp <= "10010011";--X
      elsif data="100010" then disp <= "10001001";--Y
      elsif data="100011" then disp <= "00100101";--Z
      elsif data="100100" then disp <= "11000100";--a
      elsif data="100101" then disp <= "11000000";--b
      elsif data="100110" then disp <= "11100101";--c
      elsif data="100111" then disp <= "10000101";--d
      elsif data="101000" then disp <= "00100001";--e
      elsif data="101001" then disp <= "01110000";--f
      elsif data="101010" then disp <= "00001001";--g
      elsif data="101011" then disp <= "11010001";--h
      elsif data="101100" then disp <= "11011111";--i
      elsif data="101101" then disp <= "10000111";--j
      elsif data="101110" then disp <= "11110000";--k
      elsif data="101111" then disp <= "11110111";--l
      elsif data="110000" then disp <= "00001100";--m
      elsif data="110001" then disp <= "11010101";--n
      elsif data="110010" then disp <= "11000101";--o
      elsif data="110011" then disp <= "00110000";--p
      elsif data="110100" then disp <= "00011000";--q
      elsif data="110101" then disp <= "11110101";--r
      elsif data="110110" then disp <= "01001000";--s
      elsif data="110111" then disp <= "11011101";--t
      elsif data="111000" then disp <= "11000111";--u
      elsif data="111001" then disp <= "11100110";--v
      elsif data="111010" then disp <= "11000110";--w
      elsif data="111011" then disp <= "11010111";--x
      elsif data="111100" then disp <= "10001000";--y
      elsif data="111101" then disp <= "00100100";--z
      elsif data="111110" then disp <= "11111110";--.
      else                     disp <= "11111111";--回车
	   end if;
    end if;
  end process deco;
end architecture behav; 