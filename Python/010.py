##ans = 0
##i = 2
##count = 0
##is_prime = 0
# while i < 2000000:
##   is_prime = 0
# for j in range(1, i + 1):
# if i % j == 0:
##         is_prime += 1
##
# if is_prime > 2:
# break
# if is_prime == 2:
##      count += 1
##      ans += i
##      print(count, i, ans)
##
##
##   i += 1

ans = 0
for i in range(2, 2000001):
    prime_check = 0
    for j in range(2, int((i ** 0.5)) + 1):
        if i % j == 0:
            prime_check += 1
        if prime_check > 0:
            break
    if prime_check == 0:
        ans += i

print(i, ans)
