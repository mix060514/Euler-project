ans = 0
length = 0
asd = 0
a = 0
for i in range(999, 99, -1):
    for j in range(999, 99, -1):

        a = i * j
        asd = str(a)
        length = len(asd)
        if length % 2 == 0:
            if asd[0] == asd[length - 1] and asd[1] == asd[length - 2] and asd[2] == asd[length - 3]:
                if a > ans:
                    ans = a
                    print(ans, i, j)

        else:
            if asd[0] == asd[length - 1] and asd[1] == asd[length - 2]:
                if a > ans:
                    ans = a
                    print(ans, i, j)

print(ans)
