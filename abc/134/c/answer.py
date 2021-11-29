N = int(input())
A = [int(input()) for _ in range(N)]
f, s = sorted(A, reverse=True)[0:2]

for a in A:
    if f == a:
        print(s)
    else:
        print(f)