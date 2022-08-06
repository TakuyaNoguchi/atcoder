N, A, B = map(int, input().split())
sum = A + B
ans = N // sum * A
mod = N % sum

if mod != 0:
    ans += min([A, mod])

print(ans)