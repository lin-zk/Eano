library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 

entity piano_keyboard is

port (clk:in std_logic;
flag_in:in std_logic;

EN_in:in std_logic;   --ʹ�ܶ�

flag_out,esc:out std_logic; --��ʹ�ܶ˿���

keyboard:in std_logic_vector(7 downto 0);  --���̰�λ����

music:out std_logic_vector (20 downto 0);  --�ӷ���ģ��


key_up,w,key_down,s,key_left,a,key_right,d:out std_logic;							--������ģʽ


space,enter: out std_logic;
num:buffer std_logic_vector(0 to 7)
);                 --�Զ�����ģʽ		--ģʽѡ������,��ģ��ʹ�ܶ�

 --

end entity;

architecture behav of piano_keyboard is

signal kb : std_logic_vector(0 to 27);
signal lever:std_logic;
signal num_tmp:std_logic_vector(0 to 7);


begin
com:process(En_in,clk)


begin
if En_in='0' then    --reset, to mod_piano
	kb <= "0000000000000000000000000000";
else
	if keyboard=x"F0" then flag_out<='1';
	else flag_out<='0';
	   if clk'event and clk='1' then
		if flag_in='1' then lever<='0';
	   else lever<='1';
	   end if;
		case keyboard is
			when "00011010" => kb(0)<=lever;--Z				
			when "00100010" => kb(1)<=lever;--X
			when "00100001" => kb(2)<=lever;--C
			when "00101010" => kb(3)<=lever;--v
			when "00110010" => kb(4)<=lever;--b
			when "00110001" => kb(5)<=lever;--N
			when "00111010" => kb(6)<=lever;--M
			when "00011100" => kb(7)<=lever;--
			when x"1B" => kb(8)<=lever;
			when "00100011" => kb(9)<=lever;
			when "00101011" => kb(10)<=lever;
			when "00110100" => kb(11)<=lever;
			when "00110011" => kb(12)<=lever;
			when "00111011" => kb(13)<=lever;
			when "00010101" => kb(14)<=lever;
			when "00011101" => kb(15)<=lever;
			when "00100100" => kb(16)<=lever;
			when "00101101" => kb(17)<=lever;
			when "00101100" => kb(18)<=lever;
			when "00110101" => kb(19)<=lever;
			when "00111100" => kb(20)<=lever;
			when "01110110" => kb(21)<=lever;--esc
			when "00101001" => kb(22)<=lever;--space
			when "01011010" => kb(23)<=lever;--enter
			when x"75" => kb(24)<=lever;--上
			when x"72" => kb(25)<=lever;--下
			when x"6B" => kb(26)<=lever;--左
			when x"74" => kb(27)<=lever;--右
			when x"16" => num_tmp(0)<=lever;--1
			when x"1E" => num_tmp(1)<=lever;--2
			when x"26" => num_tmp(2)<=lever;--3
			when x"25" => num_tmp(3)<=lever;--4
			when x"2E" => num_tmp(4)<=lever;--5
			when x"36" => num_tmp(5)<=lever;--6
			when x"3D" => num_tmp(6)<=lever;--7
			when x"3E" => num_tmp(7)<=lever;--8
			when others => NULL;	
		end case;
		end if;
  end if;
end if;
end process;
music<=kb(0 to 20);
esc<=kb(21);
a<=kb(7);
s<=kb(8);
d<=kb(9);
w<=kb(15);
space<=kb(22);
enter<=kb(23);
key_up<=kb(24);
key_down<=kb(25);
key_left<=kb(26);
key_right<=kb(27);
num<=num_tmp;
end behav;