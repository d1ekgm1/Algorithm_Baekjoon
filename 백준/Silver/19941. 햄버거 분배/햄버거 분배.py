#햄버거
n, k = map(int,input().split())
position = str(input())

#position에서 p의 위치찾기
idx = [i for i in range(n) if position[i] == 'P']
position = list(position)

cnt = 0

for i in idx:
    j = k
    l = 1
    tmp = 0
    while j > 0 :
        if ((i-j)>=0) and (position[i-j]=="H"):
            position[i-j] = "O"
            cnt += 1
            tmp += 1
            break
        else : j-=1
    
    if tmp ==0:
        while l <= k:
            if ((i+l)<n) and (position[i+l]=="H"):
                position[i+l] = "O"
                cnt += 1
                break
            else : l += 1

print(cnt)
