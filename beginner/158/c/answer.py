from math import floor

A, B = map(int, input().split())
answer = B * 10

for i in range(0, 10 - (answer % 10)):
    if floor((answer + i) * 0.08) == A:
        print(answer + i)
        exit()

print(-1)