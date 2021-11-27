import re

S = input()
small_char_diff = len(re.findall(r'[a-z]', S.lower())) - len(re.findall(r'[a-z]', S))

if S[0] == 'A' and S[2:(len(S) - 1)].count('C') == 1 and small_char_diff == 2:
    print('AC')
else:
    print('WA')