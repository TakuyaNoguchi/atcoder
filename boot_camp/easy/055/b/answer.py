from itertools import combinations
from math import sqrt

N, D = map(int, input().split())

points = [list(map(int, input().split())) for _ in range(N)]
ans = 0

for a, b in combinations([n for n in range(N)], 2):
    if sqrt(sum([abs(points[a][d] - points[b][d])**2 for d in range(D)])).is_integer():
        ans += 1

print(ans)