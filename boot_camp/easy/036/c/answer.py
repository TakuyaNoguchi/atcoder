N, M = map(int, input().split())
max_l, min_r = None, None

for _ in range(M):
    l, r = map(int, input().split())
    max_l = max(max_l, l) if max_l else l
    min_r = min(min_r, r) if min_r else r

print(max(min_r - max_l + 1, 0))