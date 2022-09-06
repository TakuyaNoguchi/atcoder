from collections import Counter

N = int(input())
S = [input() for _ in range(N)]
counter = Counter(S)
max_count = counter.most_common(1)[0][1]

for s, _ in sorted(filter(lambda t: t[1] == max_count, counter.most_common()), key=lambda t: t[0]):
    print(s)