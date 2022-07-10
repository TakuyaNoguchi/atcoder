N = int(input())
P = list(map(int, input().split()))
# 最初の要素は必ず条件を満たす
ans, min_p = 1, P[0]

for p in P[1:]:
    if p < min_p:
        min_p = p
        ans += 1

print(ans)