N, K, M = map(int, input().split())
A = list(map(int, input().split()))
last_score = M * N - sum(A)

if last_score <= K:
    print(max(0, last_score))
else:
    print(-1)