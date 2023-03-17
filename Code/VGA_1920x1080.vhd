library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity VGA_1920x1080 is
generic(HS_Polar:std_logic := '0';
        VS_Polar:std_logic := '0');
port(vga_clk,en:in std_logic;
     vga_out_hs,vga_out_vs: out std_logic;
	  x,y:buffer integer range 0 to 200);
end entity VGA_1920x1080;
architecture behav of VGA_1920x1080 is
signal h,v:integer range 0 to 2400;

constant HV_Pixel:integer := 1920;
constant HF_Porch:integer := 88;
constant HS_Time :integer := 44;
constant HB_Porch:integer := 148;
constant HT_Pixel:integer := 2200;

constant VV_Pixel:integer := 1080;
constant VF_Porch:integer := 4;
constant VS_Time :integer := 5;
constant VB_Porch:integer := 36;
constant VT_Pixel:integer := 1125;
begin
PiCN:process(en,vga_clk)
  begin
    if en='0' then h <= 0;v <= 0;
    elsif (vga_clk'event and vga_clk='1') then
      if (h<HT_Pixel-1)then
	     h <= h+1;
    	else
	     h <= 0;
		  if (v<VT_Pixel-1) then
		    v <= v+1;
		  else
		    v <= 0;
		  end if;
	   end if;
    end if;
  end process PiCN;
HSsg:process(en,vga_clk)
  begin
    if en='0' then vga_out_hs <= not HS_Polar;
    elsif (vga_clk'event and vga_clk='1') then
	   if (h>=HV_Pixel+HF_Porch and h<HV_Pixel+HF_Porch+HS_Time) then
		  vga_out_hs <= HS_Polar;
		else
		  vga_out_hs <= not HS_Polar;
		end if;
	 end if;
  end process HSsg;
VSsg:process(en,vga_clk)
  begin
    if en='0' then vga_out_vs <= not VS_Polar;
    elsif (vga_clk'event and vga_clk='1') then
	   if (v=VV_Pixel+VF_Porch and v<VV_Pixel+VF_Porch+VS_Time) then
		  vga_out_vs <= VS_Polar;
		else
		  vga_out_vs <= not VS_Polar;
		end if;
	 end if;
  end process VSsg;
xych:process(vga_clk)
  variable cnth:integer range 0 to 12:=0;
  variable cntv:integer range 0 to 12:=0;
  begin
    if en='0' then x <= 0;y <= 0;cnth:=0;cntv:=0;
	 elsif (vga_clk'event and vga_clk='1') then
      if (h<HT_Pixel-1)then
		  if (h<HV_Pixel-1)then
	       cnth:=cnth+1;
		    if cnth = 12 then x <= x+1;cnth:=0;
		    end if;
    	  else
	       x <= 0;cnth:=0;
		  end if;
    else
		  if (v<VV_Pixel-1) then
		    cntv:=cntv+1;
			 if cntv = 12 then y <= y+1;cntv:=0;
			 end if;
		  else
		    y <= 0;cntv:=0;
		  end if;
	   end if;
    end if;
  end process xych;
end architecture behav;