N = int(input())
a = [int(input()) for _ in range(N)]

for i in range(len(a) - 1):
    diff = a[i + 1] - a[i]

    if diff == 0:
        print('stay')
    elif diff > 0:
        print(f'up {diff}')
    else:
        print(f'down {abs(diff)}')