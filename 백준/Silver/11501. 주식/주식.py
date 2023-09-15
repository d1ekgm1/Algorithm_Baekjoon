t = int(input())
for r in range(t):
    n = int(input())
    p = str(input()).split()
    p = list(map(int,p))
    i = len(p)-2
    m = p[i+1]
    tot = 0
    while i >=0:
        m = max(m,p[i])
        tot += m - p[i]

        i -= 1
    print(tot)