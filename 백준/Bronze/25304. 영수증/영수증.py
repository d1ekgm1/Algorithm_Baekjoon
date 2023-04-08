x = int(input())
n = int(input())

tot = 0
for i in range(0,n):
    a, b = input().split()

    price = int(a)
    count = int(b)

    tot += price*count

if tot == x :
    print("Yes")
else :
    print("No")
