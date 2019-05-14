floor = 1
ans = 0

for i in range(100, 0, -1):
    floor *= i


floor = str(floor)
length = len(floor)

for i in range(length):
    ans += int(floor[i])
print(ans)
