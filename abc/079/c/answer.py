from itertools import product

A, B, C, D = map(int, list(input()))

for op1, op2, op3 in product(('+', '-'), repeat=3):
    sum_abcd = A
    sum_abcd += (B if op1 == '+' else -B)
    sum_abcd += (C if op2 == '+' else -C)
    sum_abcd += (D if op3 == '+' else -D)

    if sum_abcd == 7:
        print(f'{A}{op1}{B}{op2}{C}{op3}{D}=7')
        exit()