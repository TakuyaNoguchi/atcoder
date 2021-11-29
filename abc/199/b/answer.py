N = int(input())
A = list(map(int, input().split()))
B = list(map(int, input().split()))
answer = set(range(1, 1001))

for i in range(N):
    answer &= set(range(A[i], B[i] + 1))

print(len(answer))