library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity key2sound is
port(clk_sys,en:in std_logic;
     vol:std_logic_vector(3 downto 0);
     key:in std_logic_vector(0 to 20);
	  sound_unit:out std_logic_vector(0 to 20));
end entity key2sound;
architecture behav of key2sound is
signal note:std_logic_vector(0 to 20);
signal noteldo:std_logic;
signal notelre:std_logic;
signal notelmi:std_logic;
signal notelfa:std_logic;
signal notelso:std_logic;
signal notella:std_logic;
signal notelsi:std_logic;
signal notemdo:std_logic;
signal notemre:std_logic;
signal notemmi:std_logic;
signal notemfa:std_logic;
signal notemso:std_logic;
signal notemla:std_logic;
signal notemsi:std_logic;
signal notehdo:std_logic;
signal notehre:std_logic;
signal notehmi:std_logic;
signal notehfa:std_logic;
signal notehso:std_logic;
signal notehla:std_logic;
signal notehsi:std_logic;
begin
buzz:process(clk_sys,en)
  variable vol_std:integer range 0 to 15;
  variable cntldo:integer range 0 to 191131;
  variable cntlre:integer range 0 to 170242;
  variable cntlmi:integer range 0 to 151699;
  variable cntlfa:integer range 0 to 143184;
  variable cntlso:integer range 0 to 127551;
  variable cntlla:integer range 0 to 113636;
  variable cntlsi:integer range 0 to 101235;
  variable cntmdo:integer range 0 to 95547;
  variable cntmre:integer range 0 to 85135;
  variable cntmmi:integer range 0 to 75838;
  variable cntmfa:integer range 0 to 71582;
  variable cntmso:integer range 0 to 63776;
  variable cntmla:integer range 0 to 56818;
  variable cntmsi:integer range 0 to 50617;
  variable cnthdo:integer range 0 to 47778;
  variable cnthre:integer range 0 to 42564;
  variable cnthmi:integer range 0 to 37922;
  variable cnthfa:integer range 0 to 35793;
  variable cnthso:integer range 0 to 31888;
  variable cnthla:integer range 0 to 28409;
  variable cnthsi:integer range 0 to 25310;
  begin
  if en='0' then note <= "000000000000000000000";
  elsif clk_sys'event and clk_sys='1'then
    vol_std:=conv_integer(vol);
    if key(0)='1' then
      if cntldo < 9560+4780*vol_std then
        noteldo <= '0';cntldo :=cntldo +1;
      elsif cntldo=95602 then
        noteldo <= '0';cntldo :=0;
      else noteldo <= '1';cntldo :=cntldo +1;
      end if;
    else noteldo<='0';
    end if;
    if key(1)='1' then
      if cntlre < 8517+4258*vol_std then
        notelre <= '0';cntlre :=cntlre +1;
      elsif cntlre=85178 then
        notelre <= '0';cntlre :=0;
      else notelre <= '1';cntlre :=cntlre +1;
      end if;
    else notelre<='0';
    end if;
    if key(2)='1' then
      if cntlmi < 7587+3793*vol_std then
        notelmi <= '0';cntlmi :=cntlmi +1;
      elsif cntlmi=75872 then
        notelmi <= '0';cntlmi :=0;
      else notelmi <= '1';cntlmi :=cntlmi +1;
      end if;
    else notelmi<='0';
    end if;
    if key(3)='1' then
      if cntlfa < 7163+3581*vol_std then
        notelfa <= '0';cntlfa :=cntlfa +1;
      elsif cntlfa=71633 then
        notelfa <= '0';cntlfa :=0;
      else notelfa <= '1';cntlfa :=cntlfa +1;
      end if;
    else notelfa<='0';
    end if;
    if key(4)='1' then
      if cntlso < 6377+3188*vol_std then
        notelso <= '0';cntlso :=cntlso +1;
      elsif cntlso=63775 then
        notelso <= '0';cntlso :=0;
      else notelso <= '1';cntlso :=cntlso +1;
      end if;
    else notelso<='0';
    end if;
    if key(5)='1' then
      if cntlla < 5681+2840*vol_std then
        notella <= '0';cntlla :=cntlla +1;
      elsif cntlla=56818 then
        notella <= '0';cntlla :=0;
      else notella <= '1';cntlla :=cntlla +1;
      end if;
    else notella<='0';
    end if;
    if key(6)='1' then
      if cntlsi < 5010+2505*vol_std then
        notelsi <= '0';cntlsi :=cntlsi +1;
      elsif cntlsi=50100 then
        notelsi <= '0';cntlsi :=0;
      else notelsi <= '1';cntlsi :=cntlsi +1;
      end if;
    else notelsi<='0';
    end if;
    if key(7)='1' then
      if cntmdo < 4780+2390*vol_std then
        notemdo <= '0';cntmdo :=cntmdo +1;
      elsif cntmdo=47801 then
        notemdo <= '0';cntmdo :=0;
      else notemdo <= '1';cntmdo :=cntmdo +1;
      end if;
    else notemdo<='0';
    end if;
    if key(8)='1' then
      if cntmre < 4258+2129*vol_std then
        notemre <= '0';cntmre :=cntmre +1;
      elsif cntmre=42589 then
        notemre <= '0';cntmre :=0;
      else notemre <= '1';cntmre :=cntmre +1;
      end if;
    else notemre<='0';
    end if;
    if key(9)='1' then
      if cntmmi < 3793+1896*vol_std then
        notemmi <= '0';cntmmi :=cntmmi +1;
      elsif cntmmi=37936 then
        notemmi <= '0';cntmmi :=0;
      else notemmi <= '1';cntmmi :=cntmmi +1;
      end if;
    else notemmi<='0';
    end if;
    if key(10)='1' then
      if cntmfa < 3581+1790*vol_std then
        notemfa <= '0';cntmfa :=cntmfa +1;
      elsif cntmfa=35816 then
        notemfa <= '0';cntmfa :=0;
      else notemfa <= '1';cntmfa :=cntmfa +1;
      end if;
    else notemfa<='0';
    end if;
    if key(11)='1' then
      if cntmso < 3188+1594*vol_std then
        notemso <= '0';cntmso :=cntmso +1;
      elsif cntmso=31887 then
        notemso <= '0';cntmso :=0;
      else notemso <= '1';cntmso :=cntmso +1;
      end if;
    else notemso<='0';
    end if;
    if key(12)='1' then
      if cntmla < 2840+1420*vol_std then
        notemla <= '0';cntmla :=cntmla +1;
      elsif cntmla=28409 then
        notemla <= '0';cntmla :=0;
      else notemla <= '1';cntmla :=cntmla +1;
      end if;
    else notemla<='0';
    end if;
    if key(13)='1' then
      if cntmsi < 2530+1265*vol_std then
        notemsi <= '0';cntmsi :=cntmsi +1;
      elsif cntmsi=25303 then
        notemsi <= '0';cntmsi :=0;
      else notemsi <= '1';cntmsi :=cntmsi +1;
      end if;
    else notemsi<='0';
    end if;
    if key(14)='1' then
      if cnthdo < 2388+1194*vol_std then
        notehdo <= '0';cnthdo :=cnthdo +1;
      elsif cnthdo=23889 then
        notehdo <= '0';cnthdo :=0;
      else notehdo <= '1';cnthdo :=cnthdo +1;
      end if;
    else notehdo<='0';
    end if;
    if key(15)='1' then
      if cnthre < 2128+1064*vol_std then
        notehre <= '0';cnthre :=cnthre +1;
      elsif cnthre=21285 then
        notehre <= '0';cnthre :=0;
      else notehre <= '1';cnthre :=cnthre +1;
      end if;
    else notehre<='0';
    end if;
    if key(16)='1' then
      if cnthmi < 1896+948*vol_std then
        notehmi <= '0';cnthmi :=cnthmi +1;
      elsif cnthmi=18960 then
        notehmi <= '0';cnthmi :=0;
      else notehmi <= '1';cnthmi :=cnthmi +1;
      end if;
    else notehmi<='0';
    end if;
    if key(17)='1' then
      if cnthfa < 1789+894*vol_std then
        notehfa <= '0';cnthfa :=cnthfa +1;
      elsif cnthfa=17895 then
        notehfa <= '0';cnthfa :=0;
      else notehfa <= '1';cnthfa :=cnthfa +1;
      end if;
    else notehfa<='0';
    end if;
    if key(18)='1' then
      if cnthso < 1594+797*vol_std then
        notehso <= '0';cnthso :=cnthso +1;
      elsif cnthso=15943 then
        notehso <= '0';cnthso :=0;
      else notehso <= '1';cnthso :=cnthso +1;
      end if;
    else notehso<='0';
    end if;
    if key(19)='1' then
      if cnthla < 1420+710*vol_std then
        notehla <= '0';cnthla :=cnthla +1;
      elsif cnthla=14204 then
        notehla <= '0';cnthla :=0;
      else notehla <= '1';cnthla :=cnthla +1;
      end if;
    else notehla<='0';
    end if;
    if key(20)='1' then
      if cnthsi < 1265+632*vol_std then
        notehsi <= '0';cnthsi :=cnthsi +1;
      elsif cnthsi=12655 then
        notehsi <= '0';cnthsi :=0;
      else notehsi <= '1';cnthsi :=cnthsi +1;
      end if;
    else notehsi<='0';
    end if;
  end if;
  end process buzz;
  sound_unit(0) <= noteldo;
  sound_unit(1) <= notelre;
  sound_unit(2) <= notelmi;
  sound_unit(3) <= notelfa;
  sound_unit(4) <= notelso;
  sound_unit(5) <= notella;
  sound_unit(6) <= notelsi;
  sound_unit(7) <= notemdo;
  sound_unit(8) <= notemre;
  sound_unit(9) <= notemmi;
  sound_unit(10) <= notemfa;
  sound_unit(11) <= notemso;
  sound_unit(12) <= notemla;
  sound_unit(13) <= notemsi;
  sound_unit(14) <= notehdo;
  sound_unit(15) <= notehre;
  sound_unit(16) <= notehmi;
  sound_unit(17) <= notehfa;
  sound_unit(18) <= notehso;
  sound_unit(19) <= notehla;
  sound_unit(20) <= notehsi;
end architecture behav;