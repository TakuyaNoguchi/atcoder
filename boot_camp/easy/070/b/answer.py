N = int(input())
x = int(N // 1.08)

if int(x * 1.08) == N:
    print(x)
elif int((x + 1) * 1.08) == N:
    print(x + 1)
else:
    print(':(')