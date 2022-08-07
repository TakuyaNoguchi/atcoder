A, B = map(int, input().split())
a_b_limit = 100
ans = -1

for n in range(1, a_b_limit**2 + 1):
    if n * 8 // 100 == A and n * 10 // 100 == B:
        ans = n
        break

print(ans)