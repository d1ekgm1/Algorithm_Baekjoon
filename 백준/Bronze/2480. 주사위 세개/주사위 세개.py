from collections import Counter
one, two, three = input().split()
arr = [int(one), int(two), int(three)]
arr_ct = Counter(arr)
reverse_arr_ct = dict(map(reversed, arr_ct.items()))

if 3 in arr_ct.values() :
    print(10000+reverse_arr_ct[3]*1000)
elif 2 in arr_ct.values() :
    print(1000+reverse_arr_ct[2]*100)
else :
    print(max(arr)*100)
