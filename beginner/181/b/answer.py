N = int(input())
answer = 0

for _ in range(N):
    a, b = map(int, input().split())
    answer += ((b - a + 1) * (a + b)) // 2

print(answer)