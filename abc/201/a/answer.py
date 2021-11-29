A1, A2, A3 = sorted(map(int, input().split()))

if A2 - A1 == A3 - A2:
    print('Yes')
else:
    print('No')