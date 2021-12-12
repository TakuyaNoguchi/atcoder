N = int(input())
a = list(map(int, input().split()))
ans = 0

for i, _a in enumerate(a):
    if _a <= i + 1 and a[_a - 1] == i + 1:
        ans += 1

print(ans)