import math

N = int(input())
answer = []

for n in range(1, int(math.sqrt(N)) + 1):
    if N % n == 0:
        answer.append(n)

        if N // n != n:
            answer.append(N // n)

print("\n".join(map(str, sorted(answer))))