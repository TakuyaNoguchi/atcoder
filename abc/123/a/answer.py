from itertools import combinations

a = [int(input()) for _ in range(5)]
k = int(input())

exists = False
for (x, y) in combinations(a, 2):
    if abs(x - y) > k:
        exists = True
        break

if exists:
    print(':(')
else:
    print('Yay!')