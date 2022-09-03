N = int(input())
a, b = [], []

for _ in range(N):
    _a, _b = map(int, input().split())

    a, b = a + [_a], b + [_b]

ans = (10**5 + 1) * 2

for i in range(N):
    for j in range(N):
        ans = min(ans, a[i] + b[j] if i == j else max(a[i], b[j]))

print(ans)