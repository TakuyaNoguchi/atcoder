N, _ = map(int, input().split())

for n in range(N):
    _, *a = map(int, input().split())

    if n == 0:
        ans = set(a)
    else:
        ans &= set(a)

print(len(ans))