ans = 0
tar = 600851475143
i = 1

while i < tar + 1:
    if tar % i == 0:
        ans = i
        tar /= i
        print(ans)
    i += 1


print(ans)
