N, K = map(int, input().split())
tmp, answer = N, 1

while True:
    tmp = tmp // K
    if tmp == 0:
        break

    answer += 1

print(answer)