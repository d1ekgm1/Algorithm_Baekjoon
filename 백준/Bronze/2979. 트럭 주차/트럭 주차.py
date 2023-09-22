A, B, C = map(int, input().split())
a1, a2 = map(int, input().split())
b1, b2 = map(int, input().split())
c1, c2 = map(int, input().split())

tot = 0
cars = [0]*100
for i in range(a1,a2):
    cars[i] += 1
for i in range(b1,b2):
    cars[i] += 1
for i in range(c1,c2):
    cars[i] += 1

print(cars.count(1)*A + cars.count(2)*2*B + cars.count(3)*3*C)