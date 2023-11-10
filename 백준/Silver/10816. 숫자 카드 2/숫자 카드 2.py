from bisect import bisect_left, bisect_right
n = int(input())
A = list(map(int, input().split()))
m = int(input())
array = list(map(int, input().split()))
A.sort()

def count_by_range(a, left_value, right_value):
    right_index = bisect_right(a, right_value)
    left_index = bisect_left(a, left_value)
    return right_index - left_index


for i in array:
    print(count_by_range(A, i, i), end=' ')