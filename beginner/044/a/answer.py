N, K, X, Y = [int(input()) for _ in range(4)]

if N <= K:
    print(X * N)
else:
    print(X * K + Y * (N - K))