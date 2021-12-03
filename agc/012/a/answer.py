N = int(input())
a = sorted(map(int, input().split()), reverse=True)

print(sum([a[n] for n in range(1, N * 2, 2)]))
