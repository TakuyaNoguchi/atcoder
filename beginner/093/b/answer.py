A, B, K = map(int, input().rstrip().split())

for n in range(A, B + 1):
    if n < A + K or n > B - K:
        print(n)