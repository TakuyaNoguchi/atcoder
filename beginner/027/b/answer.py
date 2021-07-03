N = int(input())
A = list(map(int, input().split()))

if sum(A) % N == 0:
    avg = sum(A) // N
    answer = 0

    for i in range(1, N):
        if not((avg * i == sum(A[0:i])) and (avg *  (N - i) == sum(A[i:]))):
            answer += 1

    print(answer)
else:
    print(-1)