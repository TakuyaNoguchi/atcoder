H, W = map(int, input().split())
square_num = H * W
h, w = map(int, input().split())

print(square_num - (h * W + w * (H - h)))