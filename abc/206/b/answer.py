N = int(input())
savings = 0
day_num = 1

while True:
  savings += day_num
  if savings >= N: break

  day_num += 1

print(day_num)