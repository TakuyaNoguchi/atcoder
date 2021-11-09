from fractions import Fraction
import itertools

import math

N = int(input())
answer = 0
points = [list(map(int, input().split())) for _ in range(N)]
answer = set()

for p1, p2 in itertools.combinations(points, 2):
    x1, y1 = p1[0] - p2[0], p1[1] - p2[1]
    gcd = math.gcd(x1, y1)
    answer.add(f'{x1 // gcd},{y1 // gcd}')

    x2, y2 = p2[0] - p1[0], p2[1] - p1[1]
    gcd = math.gcd(x2, y2)
    answer.add(f'{x2 // gcd},{y2 // gcd}')

print(len(answer))