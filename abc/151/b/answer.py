N, K, M = map(int, input().split())
A = list(map(int, input().split()))

need = M * N - sum(A)
if 0 <= need <= K:
    print(need)
elif need > K:
    print(-1)
else:
    print(0)