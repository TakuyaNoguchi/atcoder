import re

A, B = map(int, input().split())
S = input()

if re.search(r'^[0-9]{%d}-[0-9]{%d}$' % (A, B), S):
    print('Yes')
else:
    print('No')