A, B = map(int, input().split())
x = 1
ans = 0

while x < B:
    x += (A - 1)
    ans += 1

print(ans)