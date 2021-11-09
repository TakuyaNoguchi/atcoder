N = int(input())
t, a = [], []

for _ in range(N):
    _t, _, *_a = map(int, input().split())
    t.append(_t)
    a.append(_a)

needs = set(a[-1])
finished = set([N])
while True:
    _needs = set()
    for need in needs:
        if not need in finished:
            _needs.update(a[need - 1])
            finished.add(need)
    needs.update(_needs)
    needs -= finished

    if len(needs) == 0:
        break


print(sum([t[finish - 1] for finish in finished]))