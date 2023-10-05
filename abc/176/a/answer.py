N, X, T = map(int, input().split())

count = N // X
if N % X != 0:
    count += 1

print(T * count)