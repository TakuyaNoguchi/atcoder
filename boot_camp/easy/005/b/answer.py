N, M, C = map(int, input().split())
B = list(map(int, input().split()))
ans = 0

for _ in range(N):
    if sum([a * b for a, b in zip(map(int, input().split()), B)]) + C > 0:
        ans += 1

print(ans)