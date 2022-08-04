from collections import defaultdict

roads = defaultdict(int)
N, M = map(int, input().split())

for _ in range(M):
    a, b = map(int, input().split())
    roads[a] += 1
    roads[b] += 1

for n in range(1, N + 1):
    print(roads[n])