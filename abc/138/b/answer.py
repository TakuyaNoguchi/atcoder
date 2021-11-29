N = int(input())
A = list(map(int, input().split()))

print(1 / (sum(map(lambda a: 1 / a, A))))