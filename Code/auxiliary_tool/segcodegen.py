f = open("segdispcode.txt",'r')
i = 0
for line in f:
    if i == 0:print("if b == "+str(i)+":")
    else:print("elif b == "+str(i)+":")
    str1 = "if "
    j = 0
    for c in line:
        if c == '1':
            str1 = str1 + "a == "+str(j)+" or "
        j += 1
    i += 1
    str1 = str1 + "\b\b\b\b: color = white"
    print("\t"+str1)
    print("\telse: color = black")