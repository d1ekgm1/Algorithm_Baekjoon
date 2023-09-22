

n = int(input())
l = []
for i in range(n):
    l.append(list(str(input())))
ans = 0
def check(data):
    max_cnt = 1
    for i in range(n):
        cnt = 1
        for j in range(1, n):
            if data[i][j] == data[i][j-1]:
                cnt += 1
            else:
                cnt = 1
            max_cnt = max(max_cnt, cnt)

        cnt = 1
        for j in range(1, n):
            if data[j][i] == data[j-1][i]:
                cnt += 1
            else:
                cnt = 1
            max_cnt = max(max_cnt, cnt)
    
    return max_cnt


for i in range(n):
    for j in range(n):
        if j+1<n:
            l[i][j],l[i][j+1] = l[i][j+1],l[i][j]
            cnt = check(l)
            ans = max(ans, cnt)
            l[i][j+1],l[i][j] = l[i][j],l[i][j+1]
        if i+1<n:
            l[i][j],l[i+1][j] = l[i+1][j],l[i][j]
            cnt = check(l)
            ans = max(ans, cnt)
            l[i+1][j],l[i][j] = l[i][j],l[i+1][j]

print(ans)

