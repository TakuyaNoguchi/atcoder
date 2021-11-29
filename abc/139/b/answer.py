A, B = map(int, input().split())
unused_socket = 1
plug_num = 0

while True:
    if unused_socket >= B: break

    unused_socket += A - 1
    plug_num += 1

print(plug_num)