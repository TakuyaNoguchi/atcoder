N = int(input())
a, b = map(int, input().split())
K = int(input())
P = map(int, input().split())

towns = [a, b, *P]

if len(towns) == len(set(towns)):
    print('YES')
else:
    print('NO')