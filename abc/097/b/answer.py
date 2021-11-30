from math import sqrt

X = int(input())
answer = 1

for b in range(2, X + 1):
    x = b**2

    while x <= X:
        answer = max(answer, x)
        x *= b

print(answer)