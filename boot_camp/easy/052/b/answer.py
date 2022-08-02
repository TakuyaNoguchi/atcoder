N = int(input())
A = list(map(int, input().split()))
B = list(map(int, input().split()))
C = list(map(int, input().split()))
ans = 0
prev = None

for a in A:
    ans += B[a - 1]

    if prev and a - prev == 1:
        ans += C[prev - 1]

    prev = a

print(ans)