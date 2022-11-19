A, B = map(int, input().split())
ans = 'No'

for n in range(A, B + 1):
    if 100 % n == 0:
        ans = 'Yes'
        break

print(ans)