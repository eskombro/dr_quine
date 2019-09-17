#Yes

def f(c):
    print(c.format(chr(10),chr(34),c))

if __name__ == "__main__":
    #Yes
    c = "#Yes{0}{0}def f(c):{0}    print(c.format(chr(10),chr(34),c)){0}{0}if __name__ == {1}__main__{1}:{0}    #Yes{0}    c = {1}{2}{1}{0}    f(c)"
    f(c)
