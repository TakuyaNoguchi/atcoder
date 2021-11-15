N, A, B = map(int, input().split())
S = list(input())
all_acceptee = 0
overseas_rank = 1

for char in S:
    if char == 'a':
        if all_acceptee < A + B:
            print('Yes')

            all_acceptee += 1
        else:
            print('No')

    elif char == 'b':
        if all_acceptee < A + B and overseas_rank <= B:
            print('Yes')

            all_acceptee += 1
        else:
            print('No')

        overseas_rank += 1
    else:
        print('No')