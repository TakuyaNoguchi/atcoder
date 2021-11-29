A = [list(map(int, input().split())) for _ in range(3)]
N = int(input())
B = [int(input()) for _ in range(N)]
result = [[False for _ in range(3)] for _ in range(3)]

for i in range(3):
    for j in range(3):
        if A[i][j] in B:
            result[i][j] = True

t_result = list(map(list, zip(*result)))

if any([all(result[0]), all(result[1]), all(result[2])]):
    print('Yes')
elif any([all(t_result[0]), all(t_result[1]), all(t_result[2])]):
    print('Yes')
elif all([result[0][0], result[1][1], result[2][2]]):
    print('Yes')
elif all([result[2][0], result[1][1], result[0][2]]):
    print('Yes')
else:
    print('No')