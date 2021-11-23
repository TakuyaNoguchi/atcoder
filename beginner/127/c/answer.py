N, M = map(int, input().split())
left, right = -1, 10**5 + 1

for _ in range(M):
    l, r = map(int, input().split())

    if l >= left:
        left = l

    if r <= right:
        right = r

if left <= right:
    print(right - left + 1)
else:
    print(0)