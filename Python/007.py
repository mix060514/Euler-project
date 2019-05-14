
i = 2
count = 0
is_prime = 0
while i > 0:
    is_prime = 0
    for j in range(1, i + 1):
        if i % j == 0:
            is_prime += 1

        if is_prime > 2:
            break
    if is_prime == 2:
        count += 1
        print(count, i)
    if count == 10001:
        print(count)
        print(i)
        break

    i += 1
