N, K = map(int, input().split())
h = list(map(int, input().split()))
dp = [10**10] * N
dp[0] = 0

for i in range(N):
    for k in range(1, min(K + 1, N - i)):
        j = i + k
        dp[j] = min(dp[j], dp[i] + abs(h[i] - h[j]))

print(dp[N - 1])