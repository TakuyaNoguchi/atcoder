N, M = map(int, input().split())
answer = set([n for n in range(1, M + 1)])

for _ in range(N):
    _, *a = map(int, input().split())
    answer &= set(a)

print(len(answer))