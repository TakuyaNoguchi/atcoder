S = input()
n_s = w_e = 0

if 'N' in S: n_s += 1
if 'S' in S: n_s -= 1
if 'W' in S: w_e += 1
if 'E' in S: w_e -= 1

if n_s == 0 and w_e == 0:
    print('Yes')
else:
    print('No')