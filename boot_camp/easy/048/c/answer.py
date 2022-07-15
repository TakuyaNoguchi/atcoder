N = int(input())
ans = current = 0
prev = None

for h in map(int, input().split()):
    if prev is None:
        prev = h
        continue

    if prev >= h:
        current += 1
    else:
        ans = max(ans, current)
        current = 0

    prev = h

print(max(ans, current))