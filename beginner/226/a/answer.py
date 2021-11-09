X = input()

a, b = X.split('.')
answer = int(a)
if int(b[0]) >= 5:
    answer += 1

print(answer)