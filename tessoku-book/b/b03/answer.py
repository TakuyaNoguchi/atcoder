N = int(input())
A = list(map(int, input().split()))
ans = 'No'

for i in range(N):
    for j in range(N):
        for k in range(N):
            if i == j or j == k or i == k: continue

            if A[i] + A[j] + A[k] == 1000:
                ans = 'Yes'
                break

print(ans)