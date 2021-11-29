N = int(input())
H = list(map(int, input().split()))
answer = moved = 0
before_h = H[0]

for h in H[1:]:
    if h > before_h:
        moved = 0
    else:
        moved += 1

    answer = max(answer, moved)
    before_h = h

print(answer)