from itertools import accumulate

N, Q = map(int, input().split())
A = list(map(int, input().split()))
accs = [0] + list(accumulate(A))

for _ in range(Q):
    l, r = map(int, input().split())

    print(accs[r] - accs[l - 1])