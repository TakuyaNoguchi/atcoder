N, A, B = map(int, input().split())
S = input()

foreign_rank = 1
passed = 0

for c in S:
    if c == 'a':
        if passed < A + B:
            print('Yes')

            passed += 1
        else:
            print('No')
    elif c == 'b':
        if passed < A + B and foreign_rank <= B:
            print('Yes')

            passed += 1
            foreign_rank += 1
        else:
            print('No')
    else:
        print('No')