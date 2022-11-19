from math import factorial

def nCr(n, r):
    numerator = factorial(n)
    denominator = factorial(n - r) * factorial(r)

    return numerator // denominator

def solve(A, B, num, ans):
    if A == 0 and B == 0:
        print(ans)
        exit()
    elif A == 0:
        solve(A, B - 1, num, ans + "b")
    elif B == 0:
        solve(A - 1, B, num, ans + "a")

    b_start = num + nCr(A - 1 + B, B)

    if K < b_start:
        solve(A - 1, B, num, ans + "a")
    else:
        solve(A, B - 1, b_start, ans + "b")

A, B, K = map(int, input().split())
solve(A, B, 1, "")