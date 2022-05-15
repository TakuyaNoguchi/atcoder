a, b = map(int, input().split())
x, y = str(a) * b, str(b) * a

if x <= y:
    print(x)
else:
    print(y)