from collections import defaultdict

N = int(input())
A = list(map(int, input().split()))
B = list(map(int, input().split()))
C = list(map(int, input().split()))
a_dict = defaultdict(int)
b_dict = a_dict.copy()

for j in range(N):
    a_dict[A[j]] += 1
    b_dict[B[C[j] - 1]] += 1

ans = 0
for n in a_dict.keys():
    ans += a_dict[n] * b_dict[n]

print(ans)