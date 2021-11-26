N = int(input())
W = [input() for _ in range(N)]

if len(W) == len(set(W)):
    for i in range(N - 1):
        if W[i][-1] != W[i + 1][0]:
            print('No')
            exit()

    print('Yes')
else:
    print('No')