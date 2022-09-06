N = int(input())
restaurants = []

for i in range(N):
    s, p = input().split()
    restaurants += [[s, { 'num': i + 1, 'point': int(p) }]]

for name, dict in sorted(restaurants, key=lambda l: (l[0], -l[1]['point'])):
    print(dict['num'])