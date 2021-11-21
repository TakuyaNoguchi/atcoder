X, K, D = map(int, input().split())

move = abs(X // D)
if move >= K:
    print(abs(X) - K * D)
else:
    K -= move
    X = abs(abs(X) - move * D)

    if K % 2 == 0:
        print(X)
    else:
        print(abs(X - D))