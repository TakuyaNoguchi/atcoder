from sys import maxsize
from itertools import product

N = int(input())
A = list(map(int, input().split()))
answer = maxsize

for _bit in product((True, False), repeat=N - 1):
    bit = list(_bit) + [True]

    section_xor = 0
    current_or = 0

    for i in range(N):
        current_or |= A[i]

        if bit[i]:
            section_xor ^= current_or
            current_or = 0

    answer = min(answer, section_xor)

print(answer)