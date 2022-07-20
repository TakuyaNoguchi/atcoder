N, A, B = map(int, input().split())

print(sum([n for n in range(1, N + 1) if A <= sum(map(int, list(str(n)))) <= B]))