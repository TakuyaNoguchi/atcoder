N = int(input())
a = [int(input()) for _ in range(N)]
current = 1

for ans in range(1, 10**5 + 1):
    current = a[current - 1]

    if current == 2:
        print(ans)
        exit()

print(-1)