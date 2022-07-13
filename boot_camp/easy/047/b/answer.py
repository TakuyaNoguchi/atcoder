prev, current = 2, 1
N = int(input())

if N == 1:
    print(current)
else:
    for _ in range(N - 2):
        prev, current = current, prev + current

    print(prev + current)