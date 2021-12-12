S = input()
ans = 0

for c, e in zip(S, 'CODEFESTIVAL2016'):
    if c != e: ans += 1

print(ans)