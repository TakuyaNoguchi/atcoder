N = int(input())
a = list(map(int, input().split()))
cnt = 1

for x in a:
    if x == cnt: cnt += 1

print(-1 if cnt == 1 else N - cnt + 1)