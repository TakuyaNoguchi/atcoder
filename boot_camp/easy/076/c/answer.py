N, M = map(int, input().split())
d = dict()

for _ in range(M):
    p, s = input().split()
    d[p] = d.get(p, [0, 0])

    if d[p][0] == 0:
        if s == 'AC':
            d[p][0] = 1
        else:
            d[p][1] += 1

solved_num = wrong_num = 0
for _solved, _wrong_num in d.values():
    if _solved:
        solved_num += 1
        wrong_num += _wrong_num

print(solved_num, wrong_num)