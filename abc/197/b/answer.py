H, W, X, Y = map(int, input().split())
S = [list(input()) for _ in range(H)]
answer = 1

for x in reversed(range(X - 1)):
    if S[x][Y - 1] == '#':
        break

    answer += 1

for x in range(X, H):
    if S[x][Y - 1] == '#':
        break

    answer += 1

for y in reversed(range(Y - 1)):
    if S[X - 1][y] == '#':
        break

    answer += 1

for y in range(Y, W):
    if S[X - 1][y] == '#':
        break

    answer += 1

print(answer)