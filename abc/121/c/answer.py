N, M = map(int, input().split())
ans = bought_n = 0

for a, b in sorted([list(map(int, input().split())) for _ in range(N)], key=lambda l: l[0]):
    n = min(b, M - bought_n)
    ans += a * n
    bought_n += n

    if bought_n == M: break

print(ans)