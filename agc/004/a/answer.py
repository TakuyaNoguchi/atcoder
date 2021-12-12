A, B, C = map(int, input().split())

if (A * B * C) % 2 == 0:
    print(0)
else:
    sorted_abc = sorted([A, B, C])
    ab = sorted_abc[0] * sorted_abc[1]
    c =  sorted_abc[2]
    blue_c = c // 2
    red_c = c - blue_c

    print((ab * red_c) - (ab * blue_c))