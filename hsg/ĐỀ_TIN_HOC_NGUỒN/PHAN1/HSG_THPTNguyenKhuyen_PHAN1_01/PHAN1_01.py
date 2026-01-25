f1 = open("congnhan.inp","r")
f2 = open("congnhan.out","w")
n = int(f1.readline())
a = list(map(int, f1.readline().split()))
dict = {}
for x in a:
    if x not in dict:
        dict[x] = 1
    else:
        dict[x] +=1
ma = 0; kq = 0
for x in sorted(dict):
    if ma < dict[x]:
        ma = dict[x]
        kq = x
print(a.index(kq)+1, file=f2)
f1.close()
f2.close()