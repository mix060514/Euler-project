ans = 2  # because we use ans += d , 2 didnt include in it
a = 1
s = 2
d = 0

while d < 4000000:
    d = a + s
    a = s
    s = d
    if d % 2 == 0:
        ans += d

print(ans)
