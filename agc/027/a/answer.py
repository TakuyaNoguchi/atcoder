N, x = map(int, input().split())
a = list(map(int, input().split()))
a_size = len(a)
answer = 0

for i, n in enumerate(sorted(a)):
    if i == a_size - 1:
        if n == x:
            answer += 1
    else:
        if n <= x:
            x -= n
            answer += 1

print(answer)