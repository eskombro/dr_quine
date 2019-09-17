import os
i = 5

if (i >= 0):
    f = open("Sully_"+str(i)+".py", "w+")
    i -= 1
    s1 = "import os{0}i = {2}{0}if (i >= 0):{0}    "
    s2 = "f = open({1}Sully_{1}+str(i)+{1}.py{1}, {1}w+{1}){0}    i -= 1{0}    "
    s3 = "s1 = {1}{3}{1}{0}    s2 = {1}{4}{1}{0}    s3 = {1}{5}{1}{0}    s4 = {1}{6}{1}{0}    s5 = {1}{7}{1}{0}    "
    s4 = "f.write((s1+s2+s3+s4+s5).format(chr(10), chr(34), i, s1, s2, s3, s4, s5)){0}    "
    s5 = "f.close(){0}    os.system({1}python Sully_{1}+str(i+1)+{1}.py{1}){0}"
    f.write((s1+s2+s3+s4+s5).format(chr(10), chr(34), i, s1, s2, s3, s4, s5))
    f.close()
    os.system("python Sully_"+str(i+1)+".py")
