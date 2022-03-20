N, S = int(input()), input()
ans = now = 0

for i in range(N):
    if S[i] == 'I':
        now += 1
    else:
        now -= 1

    ans = max(ans, now)

print(ans)