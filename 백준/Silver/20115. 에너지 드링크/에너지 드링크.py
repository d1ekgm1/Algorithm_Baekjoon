import sys
input=sys.stdin.readline
n = int(input())
amount = [*map(int,input().split())]
amount.sort()
m = amount[-1]
for i in range(n-1):
    m = amount[i]/2 + m         
    
print(m)
    


    