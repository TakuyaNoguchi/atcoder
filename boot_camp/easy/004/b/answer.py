import math

N = int(input())
X = N / 1.08
ceil, floor = math.ceil(X), math.floor(X)

if math.floor(ceil * 1.08) == N:
    print(ceil)
elif math.floor(floor * 1.08) == N:
    print(floor)
else:
    print(':(')