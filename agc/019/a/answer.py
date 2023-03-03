Q, H, S, D = map(int, input().split())
N = int(input())
min_one = min([Q * 4, H * 2, S])
ans = 0

if min_one * 2 >= D:
    ans += D * (N // 2)

    if N % 2 == 1:
        ans += min_one
else:
    ans = min_one * N

print(ans)