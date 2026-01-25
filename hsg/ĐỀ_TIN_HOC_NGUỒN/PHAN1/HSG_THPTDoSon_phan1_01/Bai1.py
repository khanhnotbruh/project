with open("Bai1.inp") as fi:
    n=int(fi.readline())
    s= fi.readline()
with open("Bai1.out",'w') as fo:
    s=list(map(''.join, zip(*[iter(s)]*n)))
    s=" ".join(s)
    fo.write(s + "\n")
    fo.write(str(s.count(" ")+1))
