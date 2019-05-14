a = 1
b = 2
c = 3

# a + b + c = 1000
# a**2 + b**2 = c**2

for a in range(a, b):
    print(a, b, c)
    for b in range(b, c):
        print(a, b, c)
        if a**2 + b**2 == c**2:
            print('asd')
            print(a, b, c)
        c += 1
        print(a, b, c)
    b += 1
    print(a, b, c)


print(a, b, c)
print('end')
