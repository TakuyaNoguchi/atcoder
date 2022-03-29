from itertools import combinations

antennas = [int(input()) for _ in range(5)]
K = int(input())

if all(map(lambda x_y: abs(x_y[0] - x_y[1]) <= K, combinations(antennas, 2))):
    print('Yay!')
else:
    print(':(')