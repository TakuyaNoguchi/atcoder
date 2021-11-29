N = int(input())
T = list(map(int, input().split()))
sum_t = sum(T)

for _ in range(int(input())):
    p, x = map(int, input().split())

    print(sum_t - T[p - 1] + x)