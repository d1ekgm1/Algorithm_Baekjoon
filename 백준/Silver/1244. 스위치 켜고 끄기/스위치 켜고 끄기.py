switch_num = int(input())
switch = [0]+list(map(int, input().split()))
student_num = int(input())

for i in range(student_num):
    sex, num = map(int,input().split())
    i=1
    if sex == 1:
        while i*num <= switch_num:
            switch[i*num] = abs(switch[i*num]-1)
            i +=1
    elif sex == 2:
        switch[num] = abs(switch[num]-1)
        #대칭확인
        while (num-i>=1) and (num+i <= switch_num) and (switch[num-i] == switch[num+i]):
            switch[num-i] = abs(switch[num-i]-1)
            switch[num+i] = abs(switch[num+i]-1)
            i += 1

for i in range(1, switch_num+1):
    print(switch[i], end=" ")
    if not i % 20:
        print()