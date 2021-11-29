N = input()
answer = n_digits = len(N)

for i in range(1, 2**n_digits):
    bin = '{:b}'.format(i).rjust(n_digits, '0')
    deleted = bin.count('0')
    num_str = ''

    for d, bit in enumerate(list(bin)):
        if bit == '1':
            num_str += N[d]

    if int(num_str) % 3 == 0:
        answer = min([answer, deleted])

if answer == n_digits:
    print(-1)
else:
    print(answer)