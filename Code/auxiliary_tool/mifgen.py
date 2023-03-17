green = "64BD"
red = "F800"
white = "FFFF"
black = "0000"
blank = "FED7"
chose = "E7FF"
with open("vgapicture.mif","w") as f:
    f.write("--总分辨率：160*90\n--画布分辨率：144*64\n--字块分辨率：9*4\n")
    f.write("DEPTH = 14400;\n")
    f.write("WIDTH = 16;\n")
    f.write("ADDRESS_RADIX = UNS;\n")
    f.write("DATA_RADIX = HEX;\n\n")
    f.write("CONTENT BEGIN\n\n")
    for y in range(0,90):
        for x in range(0,160):
            i = y * 160 + x
            if y <= 4 : color = green
            elif  5<=y<=20:
                a = x - 36
                b = y - 7
                if b == 0:
                    if a == 3 or a == 4 or a == 12 or a == 18 or a == 19 or a == 20 or a == 21 or a == 26 or a == 27 or a == 28 or a == 29 or a == 37 or a == 49 or a == 50 or a == 51 or a == 52 or a == 53 or a == 54 or a == 59 or a == 60 or a == 65 or a == 66 or a == 67 or a == 68 or a == 69 or a == 70 or a == 74 or a == 75 or a == 76 or a == 77 or a == 82 or a == 83 or a == 84:
                        color = white
                    else:
                        color = black
                elif b == 1:
                    if a == 2 or a == 5 or a == 10 or a == 11 or a == 12 or a == 17 or a == 22 or a == 25 or a == 30 or a == 36 or a == 37 or a == 49 or a == 58 or a == 61 or a == 65 or a == 70 or a == 73 or a == 78 or a == 81 or a == 85:
                        color = white
                    else:
                        color = black
                elif b == 2:
                    if a == 1 or a == 6 or a == 12 or a == 17 or a == 22 or a == 25 or a == 30 or a == 36 or a == 37 or a == 43 or a == 44 or a == 49 or a == 57 or a == 69 or a == 73 or a == 78 or a == 81 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 3:
                    if a == 1 or a == 6 or a == 12 or a == 17 or a == 22 or a == 30 or a == 35 or a == 37 or a == 43 or a == 44 or a == 49 or a == 57 or a == 69 or a == 73 or a == 78 or a == 81 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 4:
                    if a == 1 or a == 6 or a == 12 or a == 22 or a == 29 or a == 34 or a == 37 or a == 49 or a == 50 or a == 51 or a == 52 or a == 57 or a == 59 or a == 60 or a == 61 or a == 68 or a == 74 or a == 77 or a == 81 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 5:
                    if a == 1 or a == 6 or a == 12 or a == 21 or a == 27 or a == 28 or a == 34 or a == 37 or a == 49 or a == 53 or a == 57 or a == 58 or a == 62 or a == 68 or a == 75 or a == 76 or a == 81 or a == 85 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 6:
                    if a == 1 or a == 6 or a == 12 or a == 20 or a == 29 or a == 33 or a == 37 or a == 54 or a == 57 or a == 62 or a == 67 or a == 74 or a == 77 or a == 82 or a == 83 or a == 84 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 7:
                    if a == 1 or a == 6 or a == 12 or a == 19 or a == 30 or a == 33 or a == 34 or a == 35 or a == 36 or a == 37 or a == 38 or a == 39 or a == 43 or a == 44 or a == 54 or a == 57 or a == 62 or a == 67 or a == 73 or a == 78 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 8:
                    if a == 1 or a == 6 or a == 12 or a == 18 or a == 25 or a == 30 or a == 37 or a == 43 or a == 44 or a == 49 or a == 54 or a == 57 or a == 62 or a == 67 or a == 73 or a == 78 or a == 86:
                        color = white
                    else:
                        color = black
                elif b == 9:
                    if a == 2 or a == 5 or a == 12 or a == 17 or a == 22 or a == 25 or a == 30 or a == 37 or a == 49 or a == 53 or a == 58 or a == 62 or a == 67 or a == 73 or a == 78 or a == 82 or a == 85:
                        color = white
                    else:
                        color = black
                elif b == 10:
                    if a == 3 or a == 4 or a == 10 or a == 11 or a == 12 or a == 13 or a == 14 or a == 17 or a == 18 or a == 19 or a == 20 or a == 21 or a == 22 or a == 26 or a == 27 or a == 28 or a == 29 or a == 35 or a == 36 or a == 37 or a == 38 or a == 39 or a == 50 or a == 51 or a == 52 or a == 59 or a == 60 or a == 61 or a == 67 or a == 74 or a == 75 or a == 76 or a == 77 or a == 83 or a == 84:
                        color = white
                    else:
                        color = black
            elif y <= 24 : color = black
            elif y == 25 :color = red
            else:
                block = x // 7
                if block == 0 : color = blank
                elif block == 22:color = blank
                else :
                    h = x - 8
                    v = y - 26
                    if v == 0:
                        if h == 9 or h == 18 or h == 27 or h == 38:
                            color = black
                        else:
                            color = white
                    elif v == 1:
                        if h == 5 or h == 9 or h == 19 or h == 24 or h == 28 or h == 39:
                            color = black
                        else:
                            color = white
                    elif v == 2:
                        if h == 5 or h == 10 or h == 19 or h == 24 or h == 28 or h == 33 or h == 34 or h == 35 or h == 36 or h == 37 or h == 38 or h == 39 or h == 40 or h == 41 or h == 42 or h == 43 or h == 44 or h == 45:
                            color = black
                        else:
                            color = white
                    elif v == 3:
                        if h == 4 or h == 10 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 24 or h == 26 or h == 27 or h == 28 or h == 29 or h == 30 or h == 38 or h == 59 or h == 60 or h == 68 or h == 74 or h == 75 or h == 76 or h == 77 or h == 82 or h == 83 or h == 84 or h == 85 or h == 93 or h == 97 or h == 98 or h == 99 or h == 100 or h == 101 or h == 102 or h == 107 or h == 108 or h == 113 or h == 114 or h == 115 or h == 116 or h == 117 or h == 118 or h == 122 or h == 123 or h == 124 or h == 125 or h == 130 or h == 131 or h == 132:
                            color = black
                        else:
                            color = white
                    elif v == 4:
                        if h == 3 or h == 11 or h == 24 or h == 33 or h == 37 or h == 41 or h == 45 or h == 58 or h == 61 or h == 66 or h == 67 or h == 68 or h == 73 or h == 78 or h == 81 or h == 86 or h == 92 or h == 93 or h == 97 or h == 106 or h == 109 or h == 113 or h == 118 or h == 121 or h == 126 or h == 129 or h == 133 or h == 139:
                            color = black
                        else:
                            color = white
                    elif v == 5:
                        if h == 2 or h == 12 or h == 18 or h == 20 or h == 22 or h == 24 or h == 27 or h == 29 or h == 34 or h == 36 or h == 37 or h == 38 or h == 39 or h == 40 or h == 44 or h == 57 or h == 62 or h == 68 or h == 73 or h == 78 or h == 81 or h == 86 or h == 92 or h == 93 or h == 97 or h == 105 or h == 117 or h == 121 or h == 126 or h == 129 or h == 134 or h == 139:
                            color = black
                        else:
                            color = white
                    elif v == 6:
                        if h == 1 or h == 13 or h == 19 or h == 22 or h == 24 or h == 28 or h == 35 or h == 39 or h == 43 or h == 57 or h == 62 or h == 68 or h == 73 or h == 78 or h == 86 or h == 91 or h == 93 or h == 97 or h == 105 or h == 117 or h == 121 or h == 126 or h == 129 or h == 134 or h == 136 or h == 137 or h == 139 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 7:
                        if h == 0 or h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 14 or h == 16 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 24 or h == 26 or h == 27 or h == 28 or h == 29 or h == 30 or h == 34 or h == 38 or h == 41 or h == 44 or h == 57 or h == 62 or h == 68 or h == 78 or h == 85 or h == 90 or h == 93 or h == 97 or h == 98 or h == 99 or h == 100 or h == 105 or h == 107 or h == 108 or h == 109 or h == 116 or h == 122 or h == 125 or h == 129 or h == 134 or h == 138 or h == 139 or h == 140:
                            color = black
                        else:
                            color = white
                    elif v == 8:
                        if h == 5 or h == 10 or h == 19 or h == 22 or h == 24 or h == 28 or h == 33 or h == 36 or h == 37 or h == 38 or h == 39 or h == 40 or h == 41 or h == 42 or h == 45 or h == 57 or h == 62 or h == 68 or h == 77 or h == 83 or h == 84 or h == 90 or h == 93 or h == 97 or h == 101 or h == 105 or h == 106 or h == 110 or h == 116 or h == 123 or h == 124 or h == 129 or h == 133 or h == 134 or h == 138 or h == 139 or h == 140:
                            color = black
                        else:
                            color = white
                    elif v == 9:
                        if h == 5 or h == 10 or h == 19 or h == 24 or h == 28 or h == 42 or h == 50 or h == 51 or h == 57 or h == 62 or h == 68 or h == 76 or h == 85 or h == 89 or h == 93 or h == 102 or h == 105 or h == 110 or h == 115 or h == 122 or h == 125 or h == 130 or h == 131 or h == 132 or h == 134 or h == 136 or h == 137 or h == 139 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 10:
                        if h == 5 or h == 10 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 24 or h == 27 or h == 28 or h == 29 or h == 39 or h == 50 or h == 51 or h == 57 or h == 62 or h == 68 or h == 75 or h == 86 or h == 89 or h == 90 or h == 91 or h == 92 or h == 93 or h == 94 or h == 95 or h == 102 or h == 105 or h == 110 or h == 115 or h == 121 or h == 126 or h == 134 or h == 139:
                            color = black
                        else:
                            color = white
                    elif v == 11:
                        if h == 4 or h == 10 or h == 19 or h == 23 or h == 28 or h == 32 or h == 33 or h == 34 or h == 35 or h == 36 or h == 37 or h == 38 or h == 39 or h == 40 or h == 41 or h == 42 or h == 43 or h == 44 or h == 45 or h == 46 or h == 57 or h == 62 or h == 68 or h == 74 or h == 81 or h == 86 or h == 93 or h == 97 or h == 102 or h == 105 or h == 110 or h == 115 or h == 121 or h == 126 or h == 134 or h == 139:
                            color = black
                        else:
                            color = white
                    elif v == 12:
                        if h == 4 or h == 10 or h == 19 or h == 23 or h == 28 or h == 39 or h == 50 or h == 51 or h == 58 or h == 61 or h == 68 or h == 73 or h == 78 or h == 81 or h == 86 or h == 93 or h == 97 or h == 101 or h == 106 or h == 110 or h == 115 or h == 121 or h == 126 or h == 130 or h == 133:
                            color = black
                        else:
                            color = white
                    elif v == 13:
                        if h == 3 or h == 10 or h == 18 or h == 22 or h == 28 or h == 39 or h == 50 or h == 51 or h == 59 or h == 60 or h == 66 or h == 67 or h == 68 or h == 69 or h == 70 or h == 73 or h == 74 or h == 75 or h == 76 or h == 77 or h == 78 or h == 82 or h == 83 or h == 84 or h == 85 or h == 91 or h == 92 or h == 93 or h == 94 or h == 95 or h == 98 or h == 99 or h == 100 or h == 107 or h == 108 or h == 109 or h == 115 or h == 122 or h == 123 or h == 124 or h == 125 or h == 131 or h == 132:
                            color = black
                        else:
                            color = white
                    elif v == 14:
                        if h == 2 or h == 7 or h == 9 or h == 18 or h == 21 or h == 28 or h == 39:
                            color = black
                        else:
                            color = white
                    elif v == 15:
                        if h == 1 or h == 8 or h == 17 or h == 28 or h == 39:
                            color = black
                        else:
                            color = white
                    elif v == 16:
                        if h == 3 or h == 7 or h == 11 or h == 25 or h == 28 or h == 47 or h == 63 or h == 88 or h == 103:
                            color = black
                        else:
                            color = white
                    elif v == 17:
                        if h == 3 or h == 7 or h == 11 or h == 25 or h == 29 or h == 46 or h == 63 or h == 82 or h == 89 or h == 103:
                            color = black
                        else:
                            color = white
                    elif v == 18:
                        if h == 3 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 13 or h == 25 or h == 29 or h == 45 or h == 63 or h == 78 or h == 83 or h == 85 or h == 86 or h == 87 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 93 or h == 97 or h == 98 or h == 99 or h == 100 or h == 101 or h == 102 or h == 103 or h == 104 or h == 105 or h == 106 or h == 107 or h == 108 or h == 109:
                            color = black
                        else:
                            color = white
                    elif v == 19:
                        if h == 3 or h == 7 or h == 11 or h == 25 or h == 43 or h == 44 or h == 45 or h == 46 or h == 47 or h == 48 or h == 49 or h == 50 or h == 51 or h == 63 or h == 77 or h == 83 or h == 85 or h == 93 or h == 103:
                            color = black
                        else:
                            color = white
                    elif v == 20:
                        if h == 0 or h == 1 or h == 2 or h == 3 or h == 4 or h == 5 or h == 16 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 28 or h == 29 or h == 30 or h == 43 or h == 51 or h == 58 or h == 59 or h == 60 or h == 61 or h == 62 or h == 63 or h == 64 or h == 65 or h == 66 or h == 67 or h == 68 or h == 77 or h == 80 or h == 98 or h == 99 or h == 100 or h == 101 or h == 102 or h == 103 or h == 104 or h == 105 or h == 106 or h == 107 or h == 108:
                            color = black
                        else:
                            color = white
                    elif v == 21:
                        if h == 3 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 25 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 77 or h == 81 or h == 86 or h == 87 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 102:
                            color = black
                        else:
                            color = white
                    elif v == 22:
                        if h == 2 or h == 3 or h == 6 or h == 12 or h == 25 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 76 or h == 81 or h == 89 or h == 96 or h == 97 or h == 98 or h == 99 or h == 100 or h == 101 or h == 102 or h == 103 or h == 104 or h == 105 or h == 106 or h == 107 or h == 108 or h == 109 or h == 110:
                            color = black
                        else:
                            color = white
                    elif v == 23:
                        if h == 2 or h == 3 or h == 4 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 25 or h == 43 or h == 44 or h == 45 or h == 46 or h == 47 or h == 48 or h == 49 or h == 50 or h == 51 or h == 58 or h == 63 or h == 68 or h == 76 or h == 83 or h == 86 or h == 87 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 101 or h == 105:
                            color = black
                        else:
                            color = white
                    elif v == 24:
                        if h == 1 or h == 3 or h == 5 or h == 6 or h == 12 or h == 20 or h == 25 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 75 or h == 83 or h == 86 or h == 89 or h == 92 or h == 100 or h == 106:
                            color = black
                        else:
                            color = white
                    elif v == 25:
                        if h == 1 or h == 3 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 20 or h == 25 or h == 34 or h == 35 or h == 43 or h == 51 or h == 58 or h == 59 or h == 60 or h == 61 or h == 62 or h == 63 or h == 64 or h == 65 or h == 66 or h == 67 or h == 68 or h == 75 or h == 82 or h == 86 or h == 87 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 98 or h == 99 or h == 101 or h == 102 or h == 103 or h == 104 or h == 105 or h == 107 or h == 108:
                            color = black
                        else:
                            color = white
                    elif v == 26:
                        if h == 0 or h == 3 or h == 9 or h == 20 or h == 26 or h == 34 or h == 35 or h == 43 or h == 44 or h == 45 or h == 46 or h == 47 or h == 48 or h == 49 or h == 50 or h == 51 or h == 58 or h == 63 or h == 68 or h == 75 or h == 80 or h == 81 or h == 82 or h == 86 or h == 89 or h == 92 or h == 96 or h == 97 or h == 103 or h == 109 or h == 110:
                            color = black
                        else:
                            color = white
                    elif v == 27:
                        if h == 3 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 13 or h == 20 or h == 26 or h == 30 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 74 or h == 82 or h == 86 or h == 87 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 99 or h == 100 or h == 101 or h == 102 or h == 103 or h == 104 or h == 105 or h == 106 or h == 107:
                            color = black
                        else:
                            color = white
                    elif v == 28:
                        if h == 3 or h == 8 or h == 10 or h == 20 or h == 21 or h == 22 or h == 23 or h == 27 or h == 30 or h == 34 or h == 35 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 74 or h == 82 or h == 103:
                            color = black
                        else:
                            color = white
                    elif v == 29:
                        if h == 3 or h == 7 or h == 11 or h == 17 or h == 18 or h == 19 or h == 20 or h == 28 or h == 30 or h == 34 or h == 35 or h == 43 or h == 51 or h == 58 or h == 63 or h == 68 or h == 73 or h == 82 or h == 87 or h == 91 or h == 102 or h == 104 or h == 105:
                            color = black
                        else:
                            color = white
                    elif v == 30:
                        if h == 3 or h == 6 or h == 12 or h == 18 or h == 29 or h == 30 or h == 43 or h == 44 or h == 45 or h == 46 or h == 47 or h == 48 or h == 49 or h == 50 or h == 51 or h == 58 or h == 59 or h == 60 or h == 61 or h == 62 or h == 63 or h == 64 or h == 65 or h == 66 or h == 67 or h == 68 or h == 73 or h == 82 or h == 86 or h == 92 or h == 100 or h == 101 or h == 106 or h == 107:
                            color = black
                        else:
                            color = white
                    elif v == 31:
                        if h == 3 or h == 5 or h == 13 or h == 14 or h == 30 or h == 43 or h == 51 or h == 58 or h == 68 or h == 85 or h == 93 or h == 98 or h == 99 or h == 108:
                            color = black
                        else:
                            color = white
                    elif v == 32:
                        if h == 6:
                            color = black
                        else:
                            color = white
                    elif v == 33:
                        if h == 7 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27:
                            color = black
                        else:
                            color = white
                    elif v == 34:
                        if h == 2 or h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 19 or h == 27 or h == 59 or h == 68 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 35:
                        if h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 41 or h == 42 or h == 43 or h == 44 or h == 45 or h == 46 or h == 51 or h == 52 or h == 58 or h == 60 or h == 67 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 36:
                        if h == 4 or h == 10 or h == 19 or h == 27 or h == 41 or h == 50 or h == 53 or h == 57 or h == 61 or h == 66 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 37:
                        if h == 5 or h == 9 or h == 16 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 28 or h == 29 or h == 30 or h == 41 or h == 49 or h == 54 or h == 57 or h == 61 or h == 65 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 38:
                        if h == 0 or h == 1 or h == 2 or h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 12 or h == 13 or h == 14 or h == 41 or h == 49 or h == 54 or h == 58 or h == 60 or h == 64 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 39:
                        if h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 41 or h == 42 or h == 43 or h == 44 or h == 49 or h == 54 or h == 59 or h == 63 or h == 132 or h == 133 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 40:
                        if h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 19 or h == 23 or h == 27 or h == 41 or h == 45 or h == 49 or h == 54 or h == 62 or h == 66 or h == 130 or h == 131 or h == 132 or h == 133 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 41:
                        if h == 3 or h == 11 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 34 or h == 35 or h == 46 or h == 49 or h == 54 or h == 61 or h == 65 or h == 67 or h == 132 or h == 133 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 42:
                        if h == 3 or h == 11 or h == 19 or h == 23 or h == 27 or h == 34 or h == 35 or h == 46 or h == 49 or h == 54 or h == 60 or h == 64 or h == 68 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 43:
                        if h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 41 or h == 46 or h == 49 or h == 54 or h == 59 or h == 64 or h == 68 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 44:
                        if h == 3 or h == 11 or h == 23 or h == 34 or h == 35 or h == 41 or h == 45 or h == 50 or h == 53 or h == 58 or h == 65 or h == 67 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 45:
                        if h == 3 or h == 11 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 34 or h == 35 or h == 42 or h == 43 or h == 44 or h == 51 or h == 52 or h == 57 or h == 66 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 46:
                        if h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 9 or h == 10 or h == 11 or h == 23 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 47:
                        if h == 3 or h == 11 or h == 17 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 25 or h == 26 or h == 27 or h == 28 or h == 29:
                            color = black
                        else:
                            color = white
                    elif v == 48:
                        if h == 4 or h == 11 or h == 16 or h == 18 or h == 31 or h == 38 or h == 54 or h == 62 or h == 69 or h == 82 or h == 111 or h == 124 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 49:
                        if h == 2 or h == 4 or h == 11 or h == 16 or h == 18 or h == 31 or h == 38 or h == 54 or h == 62 or h == 70 or h == 82 or h == 98 or h == 99 or h == 100 or h == 101 or h == 102 or h == 103 or h == 104 or h == 111 or h == 115 or h == 116 or h == 117 or h == 118 or h == 125 or h == 133 or h == 136 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 50:
                        if h == 2 or h == 4 or h == 11 or h == 16 or h == 18 or h == 31 or h == 38 or h == 44 or h == 45 or h == 46 or h == 47 or h == 48 or h == 49 or h == 50 or h == 51 or h == 54 or h == 62 or h == 65 or h == 66 or h == 67 or h == 68 or h == 69 or h == 70 or h == 71 or h == 72 or h == 73 or h == 74 or h == 81 or h == 83 or h == 98 or h == 104 or h == 111 or h == 115 or h == 118 or h == 125 or h == 134 or h == 136 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 51:
                        if h == 2 or h == 3 or h == 4 or h == 5 or h == 6 or h == 8 or h == 11 or h == 15 or h == 18 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 24 or h == 31 or h == 38 or h == 48 or h == 54 or h == 55 or h == 56 or h == 57 or h == 58 or h == 62 or h == 65 or h == 70 or h == 81 or h == 83 or h == 98 or h == 104 or h == 111 or h == 115 or h == 118 or h == 120 or h == 121 or h == 122 or h == 123 or h == 124 or h == 125 or h == 126 or h == 127 or h == 128 or h == 129 or h == 130 or h == 134 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 52:
                        if h == 1 or h == 4 or h == 8 or h == 11 or h == 15 or h == 17 or h == 19 or h == 28 or h == 29 or h == 30 or h == 31 or h == 32 or h == 33 or h == 35 or h == 36 or h == 37 or h == 38 or h == 39 or h == 40 or h == 41 or h == 42 or h == 48 or h == 53 or h == 57 or h == 62 or h == 63 or h == 65 or h == 67 or h == 68 or h == 69 or h == 70 or h == 71 or h == 72 or h == 73 or h == 80 or h == 84 or h == 98 or h == 104 or h == 109 or h == 110 or h == 111 or h == 112 or h == 113 or h == 115 or h == 118 or h == 121 or h == 129 or h == 135 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 53:
                        if h == 4 or h == 8 or h == 11 or h == 15 or h == 19 or h == 31 or h == 38 or h == 48 or h == 53 or h == 57 or h == 60 or h == 62 or h == 64 or h == 65 or h == 70 or h == 73 or h == 80 or h == 85 or h == 98 or h == 100 or h == 104 or h == 111 or h == 115 or h == 116 or h == 117 or h == 118 or h == 121 or h == 129 or h == 132 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 54:
                        if h == 0 or h == 1 or h == 2 or h == 3 or h == 4 or h == 5 or h == 6 or h == 7 or h == 8 or h == 11 or h == 14 or h == 15 or h == 19 or h == 30 or h == 31 or h == 37 or h == 38 or h == 39 or h == 45 or h == 48 or h == 53 or h == 57 or h == 60 or h == 62 or h == 65 or h == 66 or h == 67 or h == 68 or h == 69 or h == 70 or h == 71 or h == 72 or h == 73 or h == 74 or h == 79 or h == 81 or h == 82 or h == 83 or h == 84 or h == 86 or h == 98 or h == 101 or h == 104 or h == 111 or h == 115 or h == 118 or h == 122 or h == 128 or h == 132 or h == 138:
                            color = black
                        else:
                            color = white
                    elif v == 55:
                        if h == 4 or h == 8 or h == 11 or h == 13 or h == 15 or h == 19 or h == 20 or h == 21 or h == 22 or h == 30 or h == 31 or h == 32 or h == 37 or h == 38 or h == 39 or h == 45 or h == 48 or h == 49 or h == 50 or h == 52 or h == 54 or h == 57 or h == 60 or h == 62 or h == 65 or h == 70 or h == 73 or h == 78 or h == 82 or h == 88 or h == 89 or h == 90 or h == 91 or h == 92 or h == 93 or h == 94 or h == 95 or h == 98 or h == 102 or h == 104 or h == 110 or h == 111 or h == 112 or h == 115 or h == 118 or h == 122 or h == 128 or h == 134 or h == 135 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141 or h == 142:
                            color = black
                        else:
                            color = white
                    elif v == 56:
                        if h == 4 or h == 8 or h == 11 or h == 15 or h == 19 or h == 29 or h == 31 or h == 33 or h == 36 or h == 38 or h == 40 or h == 45 or h == 48 or h == 54 or h == 56 or h == 60 or h == 62 or h == 65 or h == 67 or h == 68 or h == 69 or h == 70 or h == 71 or h == 72 or h == 73 or h == 82 or h == 98 or h == 102 or h == 104 or h == 110 or h == 112 or h == 115 or h == 118 or h == 123 or h == 127 or h == 134:
                            color = black
                        else:
                            color = white
                    elif v == 57:
                        if h == 2 or h == 3 or h == 4 or h == 5 or h == 6 or h == 8 or h == 11 or h == 15 or h == 19 or h == 29 or h == 31 or h == 36 or h == 38 or h == 40 or h == 45 or h == 48 or h == 54 or h == 56 or h == 62 or h == 65 or h == 70 or h == 79 or h == 80 or h == 81 or h == 82 or h == 83 or h == 84 or h == 85 or h == 86 or h == 98 or h == 104 or h == 110 or h == 112 or h == 115 or h == 116 or h == 117 or h == 118 or h == 124 or h == 126 or h == 133:
                            color = black
                        else:
                            color = white
                    elif v == 58:
                        if h == 2 or h == 4 or h == 6 or h == 8 or h == 11 or h == 15 or h == 19 or h == 26 or h == 28 or h == 31 or h == 35 or h == 38 or h == 41 or h == 45 or h == 48 or h == 55 or h == 62 or h == 65 or h == 67 or h == 69 or h == 70 or h == 74 or h == 82 or h == 98 or h == 104 or h == 110 or h == 112 or h == 115 or h == 118 or h == 125 or h == 132 or h == 133 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 59:
                        if h == 2 or h == 4 or h == 6 or h == 8 or h == 11 or h == 15 or h == 19 or h == 20 or h == 21 or h == 22 or h == 23 or h == 31 or h == 34 or h == 38 or h == 42 or h == 45 or h == 48 or h == 55 or h == 62 or h == 65 or h == 68 or h == 70 or h == 71 or h == 73 or h == 80 or h == 82 or h == 85 or h == 98 or h == 104 or h == 106 or h == 110 or h == 112 or h == 115 or h == 118 or h == 124 or h == 126 or h == 133 or h == 136 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 60:
                        if h == 2 or h == 4 or h == 6 or h == 11 or h == 15 or h == 19 or h == 26 or h == 31 or h == 33 or h == 38 or h == 45 or h == 48 or h == 49 or h == 50 or h == 51 or h == 54 or h == 56 or h == 62 or h == 64 or h == 67 or h == 70 or h == 72 or h == 80 or h == 82 or h == 86 or h == 98 or h == 104 or h == 106 or h == 110 or h == 111 or h == 112 or h == 115 or h == 118 or h == 123 or h == 127 or h == 133 or h == 136 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 61:
                        if h == 2 or h == 4 or h == 5 or h == 11 or h == 15 or h == 19 or h == 31 or h == 38 or h == 44 or h == 45 or h == 46 or h == 47 or h == 53 or h == 56 or h == 62 or h == 64 or h == 66 or h == 70 or h == 73 or h == 74 or h == 79 or h == 82 or h == 87 or h == 98 or h == 104 or h == 106 or h == 110 or h == 112 or h == 114 or h == 118 or h == 122 or h == 128 or h == 133 or h == 136 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 62:
                        if h == 4 or h == 9 or h == 11 or h == 15 or h == 19 or h == 31 or h == 38 or h == 52 or h == 57 or h == 62 or h == 63 or h == 68 or h == 70 or h == 78 or h == 82 or h == 87 or h == 97 or h == 105 or h == 106 or h == 114 or h == 118 or h == 121 or h == 129 or h == 133 or h == 136 or h == 137 or h == 138 or h == 139 or h == 140 or h == 141:
                            color = black
                        else:
                            color = white
                    elif v == 63:
                        if h == 4 or h == 10 or h == 15 or h == 19 or h == 31 or h == 38 or h == 51 or h == 58 or h == 62 or h == 69 or h == 81 or h == 97 or h == 113 or h == 117 or h == 120 or h == 130 or h == 136 or h == 141:
                            color = black
                        else:
                            color = white
                    else : color = white
            f.write(str(i)+" : "+color+";\n")
    f.write("\nEND;")