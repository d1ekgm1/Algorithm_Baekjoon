n = int(input())
c = 0
for i in range(n):
    t=0
    l = list(map(int,str(i)))
    for j in range(len(l)):
        t += l[j]
    if (t+i) == n:
        print(i)
        c+=1
        break;
    else : continue
if c==0:
    print(0)