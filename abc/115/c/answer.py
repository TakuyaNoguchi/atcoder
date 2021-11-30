N, K = map(int, input().split())
h = sorted([int(input()) for _ in range(N)])
answer = h[-1] - h[0]

for i in range(N - K + 1):
    answer = min(answer, h[i + K - 1] - h[i])

print(answer)