import sys

N = int(input())
X = list(map(int, input().split()))
answer = sys.maxsize

for i in range(1, 101):
    answer = min([answer, sum(list(map(lambda x: (x - i)**2, X)))])

print(answer)