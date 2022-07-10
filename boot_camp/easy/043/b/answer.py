from collections import defaultdict

w = input()
d = defaultdict(int)

for c in w:
    d[c] += 1

if all([v % 2 == 0 for v in d.values()]):
    print('Yes')
else:
    print('No')