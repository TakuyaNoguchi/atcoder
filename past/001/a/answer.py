import re

S = input().rstrip()

if re.match('^[0-9]+$', S):
    print(int(S) * 2)
else:
    print('error')