H, W = map(int, input().split())
A = []

for _ in range(H):
    A.extend(list(map(int, input().split())))

min = min(A)

print(sum(map(lambda a: a - min, A)))