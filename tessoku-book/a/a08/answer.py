from itertools import accumulate

H, W = map(int, input().split())
Z = [[0] * (W + 1)]

for _ in range(H):
    x = list(map(int, input().split()))
    Z.append([0] + list(accumulate(x)))

for i in range(1, H + 1):
    for j in range(1, W + 1):
        Z[i][j] = Z[i - 1][j] + Z[i][j]

for _ in range(int(input())):
    a, b, c, d = map(int, input().split())

    print(Z[c][d] + Z[a - 1][b - 1] - Z[a - 1][d] - Z[c][b - 1])