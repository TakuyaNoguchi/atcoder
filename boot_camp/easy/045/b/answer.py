A, B = map(int, input().split())
ans = 0

for i in range(A, B + 1):
    s = str(i)
    if s == ''.join(reversed(s)):
        ans += 1

print(ans)