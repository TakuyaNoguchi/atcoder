S = list(input())

if all(list(map(lambda c: S.count(c) == 2, set(S)))):
    print('Yes')
else:
    print('No')