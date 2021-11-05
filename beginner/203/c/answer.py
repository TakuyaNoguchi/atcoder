from collections import defaultdict
money_at_point = defaultdict(int)

N, current_money = map(int, input().split())
for _ in range(N):
    a, b = map(int, input().split())
    money_at_point[a] += b

current_point = 0
for point in sorted(money_at_point.keys()):
    money = money_at_point[point]
    current_money -= point - current_point

    if current_money < 0:
        current_point = point + current_money
        break

    current_money += money
    current_point = point

if current_money > 0:
    current_point += current_money

print(current_point)