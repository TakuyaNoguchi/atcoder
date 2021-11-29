N = int(input())
A = list(map(int, input().split()))
MOD = 10**9 + 7
answer = 0
tmp = sum(A)

for i in range(N - 1):
    tmp -= A[i]
    answer += ((A[i] % MOD) * (tmp % MOD)) % MOD
    answer %= MOD

print(answer)