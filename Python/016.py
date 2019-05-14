x = str(2 ** 1000)
m = 0
a = []

for i in range(len(x)):
    a = int(x[i: i + 1])
    m += a


print(m)
