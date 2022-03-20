x1, y1, x2, y2 = map(int, input().split())
dx, dy = x2 - x1, y2 - y1
x , y = x2, y2
ans = []

for i in range(2):
    dx, dy = -dy, dx
    x += dx
    y += dy

    ans.extend([str(x), str(y)])

print(' '.join(ans))