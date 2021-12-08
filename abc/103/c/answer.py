N = int(input())
a = list(map(int, input().split()))

print(sum(map(lambda _a: _a - 1, a)))