N = int(input())
p = list(map(int, input().split()))
cnt = 0

for p, sorted_p in zip(p, sorted(p)):
    if p != sorted_p: cnt += 1

if cnt in [0, 2]:
    print('YES')
else:
    print('NO')