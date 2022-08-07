N = int(input())
T, A = map(int, input().split())
H = list(map(int, input().split()))
diffs = [abs(A - (T - x * 0.006)) for x in H]

print(diffs.index(min(diffs)) + 1)