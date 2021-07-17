N, A, X, Y = map(int, input().split())

price = 0
for i in range(1, N + 1):
    if i > A:
        price += Y
    else:
        price += X

print(price)