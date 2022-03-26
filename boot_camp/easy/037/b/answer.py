S = input()

for i, c in enumerate(S, 1):
    if i % 2 == 1 and not c in ['R', 'U', 'D']:
        print('No')
        exit()
    elif i % 2 == 0 and not c in ['L', 'U', 'D']:
        print('No')
        exit()

print('Yes')