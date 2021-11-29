N = int(input())
A = list(map(int, input().split()))
B = list(map(int, input().split()))
C = list(map(int, input().split()))
answer = 0

for i in range(N):
    before = A[i]
    try:
        after = A[i + 1]
    except IndexError:
        after =  None

    answer += B[i]

    if after and after - before == 1:
        answer += C[before - 1]

print(answer)