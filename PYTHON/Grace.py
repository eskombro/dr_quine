DEF1 = lambda : open("Grace_kid.py","w+")
DEF2 = lambda a, b : a.write(b)
DEF3 = "DEF1 = lambda : open({1}Grace_kid.py{1},{1}w+{1}){0}DEF2 = lambda a, b : a.write(b){0}DEF3 = {1}{2}{1}{0}{0}DEF2(DEF1(), DEF3.format(chr(10), chr(34), DEF3, DEF1)){0}"

DEF2(DEF1(), DEF3.format(chr(10), chr(34), DEF3, DEF1))
