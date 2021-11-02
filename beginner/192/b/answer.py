S = input()

odds = [c.islower() for i, c in enumerate(S) if (i % 2) == 0]
evens = [c.isupper() for i, c in enumerate(S) if (i % 2) == 1]

if all(odds) and all(evens):
    print('Yes')
else:
    print('No')