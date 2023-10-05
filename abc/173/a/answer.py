N = int(input())
payment = 1000 * (N // 1000)
if N % 1000 != 0:
    payment += 1000

print(payment - N)