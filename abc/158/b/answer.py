N, A, B = map(int, input().split())
pair = N // (A + B)
answer = pair * A
tail = N % (A + B)

if tail <= A:
    answer += tail
else:
    answer += A

print(answer)