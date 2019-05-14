def open_text():
    xxx = open('problem13.txt', 'r')  # .rstrip('\n')
    zzz = []
    for line in xxx:
        line = int(line)
        zzz.append(line)
    xxx.close()
    return zzz

nums = open_text()
print(sum(nums))