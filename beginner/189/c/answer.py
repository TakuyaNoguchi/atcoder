N = int(input())
A = list(map(int, input().split()))
answer = 0

for l in range(N):
    x = A[l]

    for r in range(l, N):
        x = min(x, A[r])
        answer = max(answer, x * (r - l + 1))

print(answer)