Q, H, S, D = map(int, input().split())
N = int(input())
one_min = min([Q * 4, H * 2, S])

if N == 1:
    print(one_min)
else:
    two_min = min(one_min * 2, D)
    ans = two_min * (N // 2)
    if N % 2 == 1: ans += one_min

    print(ans)