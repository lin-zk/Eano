with open("vgacode.txt","w") as f:
    for y in range(0,90):
        if y == 0: f.write("    if    v>=pix_step*"+str(y)+" and v<pix_step*"+str(y+1)+" then\n")
        else:f.write("    elsif v>=pix_step*"+str(y)+" and v<pix_step*"+str(y+1)+" then\n")
        for x in range(0,160):
            if 0<=y<20:
                if x % 2 == 0: color = "FFFF"
                else: color = "0000"
            if x == 0: f.write("	   if    h>=pix_step*"+str(x)+" and h<pix_step*"+str(x+1)+"  then x <= "+str(x)+";y <= "+str(y)+";\n")
            else: f.write("      elsif h>=pix_step*"+str(x)+" and h<pix_step*"+str(x+1)+"  then x <= "+str(x)+";y <= "+str(y)+";\n")
        f.write("		end if;\n")
        f.write("\n")
    f.write("	 end if;\n")