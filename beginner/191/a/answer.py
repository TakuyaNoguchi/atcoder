V, T, S, D = map(int, input().split())
d_time = D / V

if T <= d_time and d_time <= S:
    print('No')
else:
    print('Yes')