N = int(input())
p = sorted([int(input()) for _ in range(N)])
ans = 0

for i, _p in enumerate(p):
    ans += _p // 2 if i == N - 1 else _p

print(ans)