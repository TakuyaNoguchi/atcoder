N = int(input())
ans = ''

while N > 0:
    ans += str(N % 2)
    N //= 2

print(ans[::-1].zfill(10))