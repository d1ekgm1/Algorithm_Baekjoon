A  = input().split('-')
tot = 0
for i in A[0].split('+'):
    tot += int(i)
for i in A[1:]:
    for j in i.split('+'):
        tot -= int(j)
print(tot) 