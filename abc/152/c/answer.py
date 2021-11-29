N = int(input())
P = list(map(int, input().split()))
min_num = P[0]
answer = 1

for p in P[1:]:
    if p <= min_num:
        min_num = p
        answer += 1

print(answer)