A, B = map(int, input().split())

for c in range(1, 4):
    if (A * B * c) % 2 == 1:
        print('Yes')
        exit()

print('No')