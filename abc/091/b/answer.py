from collections import defaultdict
lists = defaultdict(int)

for _ in range(int(input())):
    lists[input()] += 1

for _ in range(int(input())):
    lists[input()] -= 1

ans = max(lists.values())
print(ans if ans >= 0 else 0)