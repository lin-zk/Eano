from random import randint
def soun():
    note = ["do", "re", "mi", "fa", "so", "la", "si"]
    hml = ["l", "m", "h"]
    frelist = [523,587,659,698,784,880,998,1046,1174,1318,1396,1568,1760,1976,2093,2349,2637,2794,3136,3520,3951]
    str0 = "note<="
    for i in range(0,3):
        for j in range(0,7):
            k=7*i+j
            strnote = "note"+hml[i]+note[j]
            strcnt = "cnt"+hml[i]+note[j]
            fre = int(50000000//frelist[k])
            str1="    if key("+str(k)+")='1' then"
            str2="      if "+strcnt+" < "+str(int(fre//10))+"+"+str(int(fre//20))+"*vol_std then"
            str3="        "+strnote+" <= '0';"+strcnt+" :="+strcnt+" +1;"
            str4="      elsif "+strcnt+"="+str(int(fre))+" then"
            str5="        "+strnote+" <= '0';"+strcnt+" :=0;"
            str6="      else "+strnote+" <= '1';"+strcnt+" :="+strcnt+" +1;"
            str7="      end if;"
            str8="    else "+strnote+"<='0';"
            str9="    end if;"
            print(str1,str2,str3,str4,str5,str6,str7,str8,str9,sep='\n')
            str0=str0+strnote+"&"
            #print("    note"+hml[i]+note[j]+"<='0';")
    #print(str0)
def spri():
    for i in range(0,2**8):
        a = randint(1,2**5-1)
        str10 = "		elsif cnt=\"" +bin(i)[2:].rjust(8, '0')+"\" then driver:=\""+bin(a)[2:].rjust(5, '0')+"\";"
        print(str10)
def segdisper():
    f=open("segcode.txt",encoding="utf-8")
    f.readline()
    for i in range(1,2**6-1):
        code=f.readline()
        print("      elsif data=\""+bin(i)[2:].rjust(6, '0')+"\" then disp <= \""+code[2:10]+"\";")
def segdataflow():
    for i in range(1,2**4-1):
        print("		elsif cnt=\""+bin(i)[2:].rjust(4, '0')+"\" then data"+str(i+1)+" <= data_flow;")
def segflow():
    for i in range(0,12):
        str1 = "	   when s"+str(i)+"=>"
        str2 = "		  d <= d"+str(i+5)+"&d"+str(i+4)+"&d"+str(i+3)+"&d"+str(i+2)+"&d"+str(i+1)+"&d"+str(i)+";"
        str3 = "		  if d"+str(i+6)+"=\"111111\" then nst <= s0;"
        str4 = "		  else nst <= s"+str(i+1)+";"
        str5 = "		  end if;"
        print(str1,str2,str3,str4,str5,sep='\n')
soun()