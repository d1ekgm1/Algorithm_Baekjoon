n, k = map(int, input().split())
count = 0
for h in range(n+1):
    for m in range(0,60):
        for s in range(0,60):
            if str(k) in str(h).zfill(2)+str(m).zfill(2)+str(s).zfill(2):
                count += 1
print(count)