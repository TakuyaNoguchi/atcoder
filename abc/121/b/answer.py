N, M, C = map(int, input().split())
B = list(map(int, input().split()))
answer = 0

for _ in range(N):
    a = list(map(int, input().split()))
    if sum([a[i] * B[i] for i in range(M)]) + C > 0:
        answer += 1

print(answer)