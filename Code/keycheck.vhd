library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity keycheck is
	port(clk,reset,sw:in std_logic;--sw为待检测的按键状态
        ctrl:out std_logic--按键按下时输出高电平
			);
end keycheck;

architecture behave of keycheck is
	signal clk_5ms:std_logic;--output 5ms clock
	signal keyout:std_logic:='0';--whether the key is really pressed
	type key_type is (k0,k1,k2);--states of key
	signal pre_key,nxt_key:key_type;
	signal temp:std_logic;
begin

clock:process(reset,clk)--output 5ms clock
	  variable timer:integer range 0 to 100000;
	  begin
	  if(reset='1') then timer:=0;ctrl<='0';
	  elsif(rising_edge(clk)) then 
	  		ctrl<=temp;
			timer:=timer+1;
			if(timer<=50000/2) then 
				clk_5ms<='0';
			else
				clk_5ms<='1';
				if(timer>=50000) then
					timer:=0;
				end if;
			end if;
		end if;
end process clock;

key_detect:	process(reset,clk_5ms)
	begin
	if(reset='1') then pre_key<=k0;
	elsif(rising_edge(clk_5ms)) then 
		pre_key<=nxt_key;
	end if;
end process key_detect;

keycom:process(pre_key)
		begin
		temp<='0';
		case pre_key is
		when k0=>
			keyout<='0';
			if(sw='0') then nxt_key<=k1;
			else nxt_key<=k0;
			end if;
		when k1=>
			keyout<='0';
			if(sw='0') then nxt_key<=k2;
			else nxt_key<=k0;
			end if;
		when k2=> 
			keyout<='1';temp<='1';
			if(sw='0') then nxt_key<=k2;--the key is really pressed
			else nxt_key<=k0;
			end if;
		end case;
end process keycom;

end behave;

