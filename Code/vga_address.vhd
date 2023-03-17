library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity vga_address is
port(volume:in std_logic_vector(3 downto 0);
     vga_mode,mode:in std_logic;
     x,y:in integer range 0 to 200;
	  chose:in std_logic_vector(2 downto 0);
	  secone,minone,minten:in integer range 0 to 9;
	  secten:in integer range 0 to 5;
     address:out integer range 0 to 14500);
end entity vga_address;
architecture behav of vga_address is
signal offset : integer range -10000 to 10000;
signal vol:integer range 0 to 7;
begin
  address <= y*160+x+offset;
ofcl:process(x,y)
  begin
    if y>=7 and y<=17 then
	   if x>=36 and x<=122 then
		  if x<=36+8*3-1 then offset <= 89;
		  elsif x<=36+8*4-1 then
		    if minten <= 4 then offset <= 8*(minten-3);
			 else offset <= 8*(minten-2);
			 end if;
		  elsif x<=36+8*5-1 then 
		    if minone <= 4 then offset <= 8*(minone-4);
			 else offset <= 8*(minone-3);
			 end if;
		  elsif x<=36+8*6-1 then offset <= 0;
		  elsif x<=36+8*7-1 then
		    if secten <= 4 then offset <= 8*(secten-6);
			 else offset <= 8*(secten-5);
			 end if;
		  elsif x<=36+8*8-1 then 
		    if secone <= 4 then offset <= 8*(secone-7);
			 else offset <= 8*(secone-6);
			 end if;
		  else offset <= 26;
		  end if;
		else offset <=0;
		end if;
    elsif y>=26 and y<=26+16*1-1 then
      if x>=64 and x<=151 then
        if x>= 64 and x<=64+8*1-1 then
		    offset <= 8;
		  elsif x>= 64+8*1 and x<=64+8*2-1 then
		    if vga_mode='0' then offset <= 8;
			 else offset <= 64;
			 end if;
		  elsif x>= 64+8*2 and x<=64+8*3-1 then
		    if vga_mode='0' then offset <= 48;
			 else offset <= 0;
			 end if;
		  elsif x>= 64+8*3 and x<=64+8*4-1 then
		    offset <= -24;
		  elsif x>= 64+8*4 and x<=64+8*5-1 then
		    offset <= 47;
		  elsif x>= 64+8*5 and x<=64+8*6-1 then
		    if vga_mode='0' then offset <= 15;
			 else offset <= -32;
			 end if;
		  elsif x>= 64+8*6 and x<=64+8*7-1 then
		    if vga_mode='0' then offset <= -33;
			 else offset <= -48;
			 end if;
		  elsif x>= 64+8*7 and x<=64+8*8-1 then
		    if vga_mode='0' then offset <= -57;
			 else offset <= 8;
			 end if;
		  elsif x>= 64+8*8 and x<=64+8*9-1 then
		    if vga_mode='0' then offset <= 2560;
			 else offset <= -64;
			 end if;
		  elsif x>= 64+8*9 and x<=64+8*11-1 then
		    if chose(0)='1' then offset <= 5120;
		    else offset <= 2560;
			 end if;
		  else offset <= 0;
		  end if;
		else offset <= 0;
		end if;
	 elsif y>=26+16*1 and y<=26+16*2-1 then
      if x>=48 and x<=119 then
        if x>= 48 and x<=48+16*2-1 then
		    if mode='0' then offset <= 0;
			 else offset <= 40;
			 end if;
		  else
		    offset <= 2560;
		  end if;
		elsif x>=136 and x<=151 then
		  if chose(1)='1' then offset <= 2560;
		  else offset <= 0;
		  end if;
		else 
		  offset <= 0;
		end if;
	 elsif y>=26+16*2 and y<=26+16*3-1 then
	   if x>=48 and x<=63 then
		  if x>= 48 and x<=48+8*1-1 then
		    vol <= conv_integer(volume(3 downto 1));
		    offset <= -5096+8*vol;
		  elsif x>= 48*1 and x<=48+8*2-1 then
		    if volume(0)='0' then offset <= -5112;
			 else offset <= -5072;
			 end if;
		  else offset <= 0;
		  end if;
		elsif x>=136 and x<=151 then
		  if chose(2)='1' then offset <= 0;
		  else offset <= -2560;
		  end if;
		else offset <= 0;
	   end if;
	 else offset <= 0;
	 end if;
  end process ofcl;
end architecture behav;

