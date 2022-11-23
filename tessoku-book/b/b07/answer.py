from itertools import accumulate

T = int(input())
N = int(input())
changing = [0] * (T + 2)

for _ in range(N):
    l, r = map(int, input().split())
    changing[l] += 1
    changing[r] -= 1

acc = list(accumulate(changing))
for t in range(T):
    print(acc[t])