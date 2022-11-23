from itertools import accumulate

D = int(input())
N = int(input())

events = [0] * (D + 2)
for _ in range(N):
    l, r = map(int, input().split())
    events[l] += 1
    events[r + 1] -= 1

acc = list(accumulate(events))
for i in range(1, D + 1):
    print(acc[i])