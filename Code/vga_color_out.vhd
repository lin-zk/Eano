library ieee;
use ieee.std_logic_1164.all;
entity vga_color_out is
port(stop:in std_logic;
     vga_out_ram:in std_logic_vector(15 downto 0);
     vga_out_syn:in std_logic_vector(15 downto 0);
     red:out std_logic_vector(4 downto 0);
	  green:out std_logic_vector(5 downto 0);
	  blue:out std_logic_vector(4 downto 0));
end entity vga_color_out;
architecture behav of vga_color_out is
signal vga_out:std_logic_vector(15 downto 0);
begin
  vga_out <= vga_out_ram when stop='1' else
             vga_out_syn when stop='0' else
				 x"0000";
  red <= vga_out(15 downto 11);
  green <= vga_out(10 downto 5);
  blue <= vga_out(4 downto 0);
end architecture behav;
