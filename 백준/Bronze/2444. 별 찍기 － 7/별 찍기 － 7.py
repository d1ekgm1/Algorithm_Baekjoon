n = int(input())
rep = 2*n-1

for i in range(1, rep+1):
    if i>n:
        j = 2*n-i
        print(str(" ")*((rep-(j*2-1))//2) + str("*")*(2*j-1))
    else :
        print(str(" ")*((rep-(i*2-1))//2) + str("*")*(2*i-1))