xxx = open("problem11.txt")
zzz = []
for line in xxx:
    zzz.append(line.split())

for i in range(len(zzz)):
    for j in range(len(zzz[i])):
        zzz[i][j] = int(zzz[i][j])

xxx.close()


def check_L(x, y):
    global Max
    aaa = 0
    aaa = zzz[x][y] * zzz[x - 1][y] * zzz[x - 2][y] * zzz[x - 3][y]
    aaa = int(aaa)
    if Max < aaa:
        Max = aaa
        print(zzz[x][y], zzz[x - 1][y], zzz[x - 2][y], zzz[x - 3][y], Max)


def check_a(x, y):
    global Max
    aaa = 0
    aaa = zzz[x][y] * zzz[x - 1][y - 1] * zzz[x - 2][y - 2] * zzz[x - 3][y - 3]
    if Max < aaa:
        Max = aaa
        print(zzz[x][y], zzz[x - 1][y - 1], zzz[x - 2]
              [y - 2], zzz[x - 3][y - 3], Max)


def check_W(x, y):
    global Max
    aaa = 0
    aaa = zzz[x][y] * zzz[x][y - 1] * zzz[x][y - 2] * zzz[x][y - 3]
    aaa = int(aaa)
    if Max < aaa:
        Max = aaa
        print(zzz[x][y], zzz[x][y - 1], zzz[x][y - 2], zzz[x][y - 3], Max)


def check_R(x, y):
    global Max
    aaa = 0
    aaa = zzz[x][y] * zzz[x - 1][y + 1] * zzz[x - 2][y + 2] * zzz[x - 3][y + 3]
    if Max < aaa:
        Max = aaa
        print(zzz[x][y], zzz[x - 1][y + 1], zzz[x - 2]
              [y + 2], zzz[x - 3][y + 3], Max)


Max = 0


for i in range(20):
    for j in range(20):
        if i - 3 > 0:
            check_L(i, j)
        if i - 3 > 0 and j - 3 > 0:
            check_a(i, j)
        if j - 3 > 0:
            check_W(i, j)
        if i - 3 > 0 and j + 3 < 20:
            check_R(i, j)
