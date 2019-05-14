count = 0
a = 0

for i in range(2, 1000001):
    count = 0
    x = i
    while x != 1:
        if x % 2 == 0:
            x = x / 2
            count += 1
        else:
            x = 3 * x + 1
            count += 1
    if a < count:
        a = count
        print(i, a)
