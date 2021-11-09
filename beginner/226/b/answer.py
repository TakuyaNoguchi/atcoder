from collections import defaultdict

N = int(input())
answer = defaultdict(set)

for n in range(N):
    l, *a = map(str, input().split())
    answer[l].add(','.join(a))

print(sum(map(len, answer.values())))