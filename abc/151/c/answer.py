from collections import defaultdict

N, M = map(int, input().split())
AC, WA = {}, defaultdict(int)

for _ in range(M):
    p, s = input().split()

    if s == 'AC':
        AC[p] = True
    elif not AC.get(p, False):
        WA[p] += 1

print(f'{len(AC.keys())} {sum([v for k, v in WA.items() if k in AC])}')