N = int(input())
A = list(map(int, input().split()))
members = {}

for i in range(N):
    members[i + 1] = A[i]

print(' '.join(list(map(lambda t: str(t[0]), sorted(members.items(), key=lambda t: t[1])))))