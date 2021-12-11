N = int(input())
A = list(map(int, input().split()))
ans = sum_a = sum(A)
acc = 0

for a in A:
    acc += a
    ans = min(ans, abs(acc - (sum_a - acc)))

print(ans)