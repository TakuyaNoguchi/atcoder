import re
S = input()

if re.search(r'^(hi)+$', S):
    print('Yes')
else:
    print('No')