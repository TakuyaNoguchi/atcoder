N, X = map(int, input().split())
M = sorted([int(input()) for _ in range(N)])
ans = 0

for m in M:
    if X < m:
        break

    ans += 1
    X -= m

print(ans + X // M[0])