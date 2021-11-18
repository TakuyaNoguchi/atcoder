a, b, c = map(int, input().split())

if a == b == c and a % 2 == 0:
    print(-1)
else:
    answer = 0

    while a % 2 == 0 and b % 2 == 0 and c % 2 == 0:
        a, b, c = (b + c) // 2, (a + c) // 2, (a + b) // 2
        answer += 1

    print(answer)