N = int(input())
A = list(map(int, input().split()))

if all(map(lambda a: a % 3 == 0 or a % 5 == 0, filter(lambda a: a % 2 == 0, A))):
    print('APPROVED')
else:
    print('DENIED')