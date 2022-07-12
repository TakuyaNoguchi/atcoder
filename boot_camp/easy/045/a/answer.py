import sys

c = list(map(lambda s: s.strip(), sys.stdin.readlines()))
print(c[0][0] + c[1][1] + c[2][2])