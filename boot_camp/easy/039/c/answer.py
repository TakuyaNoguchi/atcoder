N = int(input())
A = [int(input()) for _ in range(N)]
m2, m1 = sorted(A)[-2:]

for a in A:
    if a == m1:
        print(m2)
    else:
        print(m1)