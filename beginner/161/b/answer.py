from fractions import Fraction

N, M = map(int, input().split())
A = list(map(int, input().split()))
limit = sum(A) * Fraction(1, 4 * M)

if len(list(filter(lambda a: a >= limit, A))) >= M:
    print('Yes')
else:
    print('No')