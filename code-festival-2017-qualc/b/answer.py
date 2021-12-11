from functools import reduce
from itertools import product
from operator import mul

N = int(input())
A = list(map(int, input().split()))

def reflect_op(a, op):
    if op == 'minus':
        return a - 1
    elif op == 'plus':
        return a + 1
    else:
        return a

ans = 0

for ops in product(['minus', 'nop', 'plus'], repeat=N):
    if reduce(mul, [reflect_op(A[i], op) for i, op in enumerate(ops)], 1) % 2 == 0:
        ans += 1

print(ans)