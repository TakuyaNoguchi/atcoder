A, B, K = map(int, input().split())

for n in [n for n in range(A, B + 1) if A <= n < A + K or B - K < n <= B]:
    print(n)