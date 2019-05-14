import math
a = 0
s = 0
d = 0
i = 1
c = 0
while i > 0:
    a += i
    c = 0

    for j in range(1, int(math.sqrt(a) + 1)):
        if a % j == 0:
            c += 1
    if d < c:
        s = (c - 1) * 2 + 1
        d = c
        print(a, s)
    if s > 500:
        print(a, s)
        break
# if a % 500 == 0:
# print(a)

    i += 1
