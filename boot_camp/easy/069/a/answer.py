S = input()
ans = 0
prev = current = ''

for c in S:
    current += c

    if current != prev:
        ans += 1
        prev = current
        current = ''

print(ans)