A, B = map(int, input().split())

if A == B:
    print(A * 2)
else:
    max_n = max(A, B)
    print(max_n + max_n - 1)