H = int(input())
answer, counter = 0, 1

while H > 0:
    answer += counter
    H //= 2
    counter *= 2

print(answer)