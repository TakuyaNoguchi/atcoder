A, B, C, X, Y = map(int, input().split())

buy_min_half = 2 * C * min(X, Y)
if X > Y:
    buy_min_half += A * (X - Y)
else:
    buy_min_half += B * (Y - X)

buy_all_half = 2 * C * max(X, Y)

print(min([A * X + B * Y, buy_min_half, buy_all_half]))