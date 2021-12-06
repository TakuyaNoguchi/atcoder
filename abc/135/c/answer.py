N = int(input())
A = list(map(int, input().split()))
B = list(map(int, input().split()))
ans = 0

for i in range(N):
    x = min(A[i], B[i])
    B[i] -= x
    ans += x

    if B[i] > 0:
        y = min(A[i + 1], B[i])
        A[i + 1] -= y
        ans += y

print(ans)