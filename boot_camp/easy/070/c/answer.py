X = int(input())
dp = [False] * 101000
dp[0] = True

for x in range(X):
    if dp[x]:
        for d in range(100, 106):
            dp[x + d] = True

if dp[X]:
    print(1)
else:
    print(0)
