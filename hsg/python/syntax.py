for i in range(3):
    if i == 5:
        break
else:
    print("done")

print(list(range(5, 0)))

print(0 or 3 and 0 or 5)

print("10" > "2")

x = (5)
y = (5,)
print(type(x) == type(y))

a = (1, 2)
a += (3,)
print(a)

s = {1, 2, 3}
s.add(2)
print(len(s))

print(3 and 5)
