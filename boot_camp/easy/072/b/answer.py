X = int(input())
ans = 1

for b in range(2, X + 1):
    x = b * b

    while x <= X:
        ans = max(ans, x)
        x *= b

print(ans)