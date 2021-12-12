from sys import maxsize

N = int(input())
X = list(map(int, input().split()))
ans = maxsize

for n in range(1, 101):
    ans = min(ans, sum([(x - n)**2 for x in X]))

print(ans)