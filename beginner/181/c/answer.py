import itertools

N = int(input())
points = [tuple(map(int, input().split())) for _ in range(N)]
existed = False

for p1, p2, p3 in itertools.combinations(points, 3):
    x1, y1 = p1
    x2, y2 = p2
    x3, y3 = p3
    x1, x2, y1, y2 = x1 - x3, x2 - x3, y1 - y3, y2 - y3

    # y1 / x1 == y2 / x2 の判定(0除算を回避するため変形)
    if x2 * y1 == x1 * y2:
        existed = True
        break

if existed:
    print('Yes')
else:
    print('No')