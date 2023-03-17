library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity mus_fre_ctrl is
port(rst:in std_logic;
     num:in std_logic_vector(0 to 7);
     tar:out std_logic_vector(2 downto 0));
end entity mus_fre_ctrl;
architecture behav of mus_fre_ctrl is
signal tar_tmp:integer range 0 to 7:=4;
begin
  process(rst,num)
  begin
    if rst='1' then tar_tmp<=4;
    elsif num(7)='1' then tar_tmp<=7;
	 elsif num(6)='1' then tar_tmp<=6;
	 elsif num(5)='1' then tar_tmp<=5;
	 elsif num(4)='1' then tar_tmp<=4;
	 elsif num(3)='1' then tar_tmp<=3;
	 elsif num(2)='1' then tar_tmp<=2;
	 elsif num(1)='1' then tar_tmp<=1;
	 elsif num(0)='1' then tar_tmp<=0;
	 else tar_tmp<=tar_tmp;
	 end if;
  end process;
  tar<=conv_std_logic_vector(tar_tmp,3);
end architecture behav;