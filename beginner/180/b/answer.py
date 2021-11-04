import math

_ = input()
abs_x = list(map(lambda x: abs(int(x)), input().split()))

print(sum(abs_x))
print(format(math.sqrt(sum(map(lambda x: x**2, abs_x))), '.15f'))
print(max(abs_x))