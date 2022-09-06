N = int(input())
A = list(map(int, input().split()))
approved = True

for a in A:
    if a % 2 == 0:
        if a % 3 != 0 and a % 5 != 0:
            approved = False
            break

if approved:
    print('APPROVED')
else:
    print('DENIED')