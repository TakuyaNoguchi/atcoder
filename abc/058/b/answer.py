from itertools import zip_longest

O, E = input(), input()
for (o, e) in zip_longest(O, E):
    s = ''.join([o or '', e or ''])
    print(s, end='')

print()