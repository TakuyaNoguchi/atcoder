H, W = map(int, input().split())
square_num = H * W

if H == 1 or W == 1:
    print(1)
elif square_num % 2 == 0:
    print(square_num // 2)
else:
    print(square_num // 2 + 1)