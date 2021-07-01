N = int(input())

answer = 0
for n in range(1, N + 1):
    if n == 1 or n % 2 == 0:
        continue

    divisors = [n]
    for div in range(1, n // 2 + 1):
        if n % div != 0:
            continue

        divisors.append(div)

    if len(divisors) == 8:
        answer += 1

print(answer)