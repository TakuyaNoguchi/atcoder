N = int(input())
H = list(map(int, input().split()))
ans = True

for i in range(N - 1, 0, -1):
    sub = H[i] - H[i - 1]

    if sub < -1:
        ans = False
        break

    if sub == -1: H[i - 1] -= 1

print('Yes' if ans else 'No')