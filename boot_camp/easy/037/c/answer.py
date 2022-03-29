N, K, Q = map(int, input().split())
answer_count = [0 for _ in range(N)]

for _ in range(Q):
    answer_count[int(input()) - 1] += 1

for i in range(N):
    if K - Q + answer_count[i] > 0:
        print('Yes')
    else:
        print('No')