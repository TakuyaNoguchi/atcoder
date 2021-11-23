from itertools import permutations

answer = 10**5

for l in list(permutations([int(input()) for _ in range(5)], 5)):
    time = 0

    for i, c in enumerate(l):
        time += c

        if i == len(l) - 1: break
        if c % 10 != 0: time += 10 - c % 10

    answer = min(answer, time)

print(answer)