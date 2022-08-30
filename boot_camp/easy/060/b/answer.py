N, T = int(input()), list(map(int, input().split()))

for _ in range(int(input())):
    p, x = map(int, input().split())

    print(sum([x if i + 1 == p else t for i, t in enumerate(T)]))