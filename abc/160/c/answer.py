K, N = map(int, input().split())
A = list(map(int, input().split()))
A.append(K + A[0])
# 移動開始、移動終了の距離(= 歩く必要のない距離)の最大値
max_skip_walk = 0

for i in range(N):
    max_skip_walk = max(max_skip_walk, A[i + 1] - A[i])

# 円周 - 歩く必要のない距離の最大値 = 最短移動距離
print(K - max_skip_walk)