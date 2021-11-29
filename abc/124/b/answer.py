N = int(input())
H = list(map(int, input().split()))
answer, max_h = 1, H[0]

for h in H[1:]:
    if h >= max_h:
        max_h = h
        answer += 1

print(answer)