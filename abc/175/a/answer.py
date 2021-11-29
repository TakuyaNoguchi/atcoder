import re

S = input()
result = re.search(r'R+', S)

if result:
    print(len(result.group()))
else:
    print(0)