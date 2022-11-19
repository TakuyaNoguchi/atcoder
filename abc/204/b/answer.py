N = int(input())
A = list(map(int, input().split()))

print(sum(map(lambda a: max(a - 10, 0), A)))