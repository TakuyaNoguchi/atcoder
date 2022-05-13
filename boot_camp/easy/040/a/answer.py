a, b = map(int, input().split())

if a > 0 and b > 0:
    print('Positive')
elif a <= 0 and b >= 0:
    print('Zero')
else:
    if (abs(a) - abs(b) + 1) % 2 == 0:
        print('Positive')
    else:
        print('Negative')