N = int(input())
ans = 10**15

for i in range(1, 10**6 + 10**4):
    div, mod = divmod(N, i)

    if mod != 0: continue

    ans = min(ans, i + div - 2)

print(ans)