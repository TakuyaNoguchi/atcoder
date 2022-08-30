S, T = list(input()), list(input())

for i in range(len(S)):
    if S == T[i:] + T[:i]:
        print('Yes')
        exit()

print('No')