ans = 1
for i in range(1, 20):
    a = 0
    for j in range(1, i):
        if i % j == 0:
            a += 1
    if a == 1:
        print(i)
        ans *= i
ans *= 24
'''
because
4 = 2 ** 2,
8 = 2 ** 3,
9 = 3 ** 2,
12 = 2 ** 2 * 3,
16 = 2 ** 4,
18 = 2 * 3 ** 2
so
2 ** 4, 3 ** 2 => 2 * 2 * 2 * 3 = 24
'''
print(ans)
for s in range(1, 21):
    print(ans / s)
