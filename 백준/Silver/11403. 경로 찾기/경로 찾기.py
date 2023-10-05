n = int(input())
graph = [list(map(int, input().split())) for _ in range(n)]

def dfs(x):
    for i in range(n):
        if visited[i] == 0 and graph[x][i]==1:
            visited[i] = 1
            dfs(i)

visited = [0] * n

for i in range(n):
    dfs(i)
    print(*visited)
    visited = [0] * n
