from collections import defaultdict

N, K = map(int, input().split())
counts = defaultdict(int)
c = list(map(int, input().split()))
count = 0

for i in range(K):
    counts[c[i]] += 1

    if counts[c[i]] == 1:
        count += 1

answer = count

for i in range(K, N):
    counts[c[i - K]] -= 1
    if counts[c[i - K]] == 0:
        count -= 1

    counts[c[i]] += 1
    if counts[c[i]] == 1:
        count += 1

    answer = max([answer, count])

print(answer)