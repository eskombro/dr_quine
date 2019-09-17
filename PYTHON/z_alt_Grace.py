DEF1 = "SOMETHING"
DEF2 = "z_alt_Grace_kid.py"
DEF3 = "DEF1 = {1}{3}{1}{0}DEF2 = {1}z_alt_Grace_kid.py{1}{0}DEF3 = {1}{2}{1}{0}{0}f= open(DEF2,{1}w+{1}){0}f.write(DEF3.format(chr(10), chr(34), DEF3, DEF1)){0}"

f= open(DEF2,"w+")
f.write(DEF3.format(chr(10), chr(34), DEF3, DEF1))
