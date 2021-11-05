N, K = map(int, input().split())

answer = 0
for n in range(1, N + 1):
    for k in range(1, K + 1):
        answer += int(f'{n}0{k}')

print(answer)