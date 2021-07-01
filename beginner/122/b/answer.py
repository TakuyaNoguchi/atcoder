import re

S = input().rstrip()
result = re.findall('[ACGT]+', S)

if result:
    print(max(map(len, result)))
else:
    print(0)