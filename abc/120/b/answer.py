A, B, K = map(int, input().split())

print([n for n in range(1, min(A, B) + 1) if A % n == 0 and B % n == 0][-K])