N = int(input())
T, A = map(int, input().split())
min_diff, answer = 10**6, None

for i, h in enumerate(list(map(int, input().split()))):
    t = T - h * 0.006
    diff = abs(t - A)

    if diff < min_diff:
        min_diff = diff
        answer = i + 1

print(answer)