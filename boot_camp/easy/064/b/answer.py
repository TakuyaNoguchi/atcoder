from itertools import zip_longest

O, E = input(), input()
ans = ''

for o, e in zip_longest(O, E, fillvalue=''):
    ans += o + e

print(ans)