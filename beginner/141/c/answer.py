from collections import defaultdict

N, K, Q = map(int, input().split())
add_points = defaultdict(int)

for _ in range(Q):
    add_points[int(input())] += 1

sub_point = sum(add_points.values())

for i in range(1, N + 1):
    if K - sub_point + add_points[i] > 0:
        print('Yes')
    else:
        print('No')