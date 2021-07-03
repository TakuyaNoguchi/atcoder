values = sorted(map(int, input().split()))

odd = even = 0

for n in values:
    if n % 2 == 0:
        even += 1
    else:
        odd += 1

answer = 0
if odd == 2:
    # 偶数に揃える
    answer += 1
    for i, n in enumerate(values):
        if n % 2 == 1:
            values[i] += 1
elif even == 2:
    # 奇数に揃える
    answer += 1
    for i, n in enumerate(values):
        if n % 2 == 0:
            values[i] += 1

max_value = max(values)
for n in values:
    answer += (max_value - n) // 2

print(answer)