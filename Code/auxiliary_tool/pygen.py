f = open("charcode.txt",'r')
i = 0
for line in f:
    if i == 0:print("if v == "+str(i)+":")
    else:print("elif v == "+str(i)+":")
    str1 = "if "
    j = 0
    for c in line:
        if c == '1':
            str1 = str1 + "h == "+str(j)+" or "
        j += 1
    i += 1
    str1 = str1 + "\b\b\b\b: color = black"
    print("\t"+str1)
    print("\telse: color = white")
