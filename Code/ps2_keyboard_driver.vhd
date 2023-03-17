library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ps2_keyboard_driver is
port( clk:in std_logic;      --����ʱ��
		ps2_clk:in std_logic;  --����ʱ��
		Din: in std_logic;    --��������
		EN:in std_logic;   --ʹ�ܶ�
		Dout: out std_logic_vector(7 downto 0);  --������������
		load: out std_logic
);
end entity; 

architecture behav of ps2_keyboard_driver is

signal temp_0 :std_logic;
signal temp_1 :std_logic;
signal temp_2 :std_logic;
signal negedge:std_logic; 
signal reg:std_logic_vector (10 downto 0);
signal Dout_tmp:std_logic_vector(7 downto 0);
signal enable:std_logic;
begin

process(clk,ps2_clk,EN)  --�½��ػ�ȡ

begin

	if EN='0' then
		temp_0<='1';
		temp_1<='1';
		negedge<='0';
	elsif clk'event and clk='1' then
		temp_0<=ps2_clk;
		temp_1<=temp_0;
		if temp_1>temp_0 then negedge<='1';
		else negedge<='0';
		end if;	
	end if;
	
end process;

process(negedge,EN)  --���ݽ��գ�����������
variable cnt:integer range 0 to 11;
variable start:std_logic;
begin
	
	if EN='0' then
		reg<="00000000000";
		cnt:=0;
		load<='0';
	elsif negedge'event and negedge='1' then
		reg(cnt)<=Din;            --?�첽ʱ��
	   if cnt=10 then load<='0';
		else load<='1';
		end if;
		if cnt=11 then cnt:=1;reg<="00000000000";
		else cnt:=cnt+1;
		end if;
	end if;
	if cnt>1 and cnt<10 then start:='0';
	else start:='1';
	end if;
	enable<=start;
end process;
   Dout_tmp<="00000000"when enable='0'
	    else reg(8 downto 1);
	Dout <= Dout_tmp;
end behav;		
	