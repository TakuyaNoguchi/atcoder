N = int(input())
answer = 10**9 + 1

for _ in range(N):
    a, p, x = map(int, input().split())

    if x - a > 0:
        answer = min(answer, p)

if answer == 10**9 + 1:
    print(-1)
else:
    print(answer)