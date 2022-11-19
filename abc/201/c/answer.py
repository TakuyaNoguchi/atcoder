S = list(input())
ans = 0

for n in range(10**4):
    ok = True
    n_str = str(n).zfill(4)

    for i in range(10):
        if S[i] == 'o' and str(i) not in n_str:
            ok = False
            break

        if S[i] == 'x' and str(i) in n_str:
            ok = False
            break

    if ok: ans += 1

print(ans)