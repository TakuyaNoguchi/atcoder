N = int(input())
answer = 0

for n in range(1, N + 1):
    if '7' in str(n) or '7' in oct(n):
        continue

    answer += 1

print(answer)