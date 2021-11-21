A, B, K = map(int, input().split())
A -= K
if A < 0:
    B += A

print(max(A, 0), max(B, 0))