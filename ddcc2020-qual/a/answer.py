X, Y = map(int, input().split())
ans = 0

for n in [X, Y]:
    if 1 <= n <= 3: ans += 100_000 * (4 - n)

if X == 1 and Y == 1: ans += 400_000

print(ans)