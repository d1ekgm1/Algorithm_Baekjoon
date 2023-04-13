N, M = map(int, input().split())
dna_list = []
hd = 0
for i in range(0, N):
    dna = input()
    dna_list.append(dna)   

result = []
for m in range(0,M):
    nucleotide = []
    for n in range(0,N):
        nucleotide.append(dna_list[n][m])
        max_nc = max(nucleotide,key = nucleotide.count)
    
    hd += len(nucleotide) - nucleotide.count(max_nc)
    result.append(max_nc)

result = ''.join(result)

print(result)
print(hd)
    

