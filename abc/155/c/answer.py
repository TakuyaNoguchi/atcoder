from collections import defaultdict
counts = defaultdict(int)

N = int(input())
for _ in range(N):
    counts[input()] += 1

max_count = max(counts.values())
print(*sorted([string for string, count in counts.items() if count == max_count]), sep="\n")