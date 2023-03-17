f = open("Eanocode.txt",'r')
i = 0
for line in f:
    y = 33 + i
    i = i + 1
    j = 0
    for c in line:
      x = 35 + j
      j = j + 1
      if c == '1' :
          print("				elsif x="+str(x)+" and y="+str(y)+" then vga_out_tmp <= x\"0000\";")