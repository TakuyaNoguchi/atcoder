import math

N = int(input())
ans = N

for i in range(1, int(math.sqrt(N)) + 1):
    d = N // i

    if i * d == N: ans = min(ans, i + d - 2)

print(ans)