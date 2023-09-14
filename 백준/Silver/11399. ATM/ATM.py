#ATM(11399)

#입력
n = int(input())
p = str(input()).split()
p = sorted(list(map(int,p)))

i = 0
tot = 0
while i<len(p):
    j = 0
    m = 0
    while j <= i :
        m += p[j]
        j += 1
    tot += m
    i += 1
print(tot)
        