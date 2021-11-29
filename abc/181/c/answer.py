N = int(input())
points = [tuple(map(int, input().split())) for _ in range(N)]
existed = False

for i in range(N):
    for j in range(i + 1, N):
        for k in range(j + 1, N):
            x1, y1 = points[i]
            x2, y2 = points[j]
            x3, y3 = points[k]

            # 「y3 - y1 == ((y2 - y1) / (x2 - x1)) * (x3 - x1)」を変形
            if (y3 - y1) * (x2 - x1) == (y2 - y1) * (x3 - x1):
                existed = True
                break

if existed:
    print('Yes')
else:
    print('No')