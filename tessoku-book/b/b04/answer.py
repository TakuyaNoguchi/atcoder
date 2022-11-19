N = input()
ans = exp = 0

for b in reversed(N):
    ans += int(b) * 2**exp
    exp += 1

print(ans)