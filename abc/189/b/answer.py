N, X = map(int, input().split())
n_when_drunk = None
sum = 0

for n in range(1, N + 1):
    v, p = map(int, input().split())
    sum += v * p

    if sum > X * 100:
        n_when_drunk = n
        break

if n_when_drunk:
    print(n_when_drunk)
else:
    print(-1)