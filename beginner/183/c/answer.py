import itertools

N, K = map(int, input().split())

m = []
for _ in range(N):
    m.append(list(map(int, input().split())))

answer = 0
for permutation in itertools.permutations(list(range(1, N)), N - 1):
    route = [0, *permutation, 0]
    cost = 0

    for i in range(0, len(route) - 1):
        cost += m[route[i]][route[i + 1]]

    if cost == K:
        answer += 1

print(answer)