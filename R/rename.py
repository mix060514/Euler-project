import os
import re

s = os.listdir('C:/Users/TheWorld/Documents/R_project/Euler-project/R/')
s = sorted(s)
print(s)

for i in range(len(s) - 1):
    os.rename(s[i], '0%02d.R' % (i+1))
# print(map(regrx.findall, s))

s = os.listdir('C:/Users/TheWorld/Documents/R_project/Euler-project/R/')
s = sorted(s)
print(s)