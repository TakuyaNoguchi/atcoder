A, B = map(int, input().split())
S = input()
numlist = [str(n) for n in range(10)]

for i, c in enumerate(S, 1):
    if i == A + 1:
        if c != '-':
            print('No')
            exit()
    else:
        if not c in numlist:
            print('No')
            exit()

print('Yes')