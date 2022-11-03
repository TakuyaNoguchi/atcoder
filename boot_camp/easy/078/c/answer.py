N = int(input())
H = list(map(int, input().split()))
completed = True

for i in range(len(H) - 1):
    diff = H[i + 1] - H[i]
    if diff < 0:
        completed = False
        break

    if diff >= 1: H[i + 1] -= 1

print('Yes' if completed else 'No')