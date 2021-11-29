N = int(input())
A = list(map(int, input().split()))
answer, max_gcd_strength = 1, 0

for k in range(2, 1000 + 1):
    gcd_strength = list(map(lambda a: a % k == 0, A)).count(True)
    if gcd_strength >= max_gcd_strength:
        answer = k
        max_gcd_strength = gcd_strength

print(answer)