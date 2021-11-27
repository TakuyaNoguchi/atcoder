S, T = input(), input()

for i in range(len(S)):
    if S[i:] + S[0:i] == T:
        print('Yes')
        exit()

print('No')