x, y = map(int, input().split())

if x == y:
    print(x)
else:
    print((set([0, 1, 2]) - set([x, y])).pop())