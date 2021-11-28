N = int(input())
a = map(int, input().split())
next_n = 1
break_num = 0

for n in a:
    if n == next_n:
        next_n += 1
    else:
        break_num += 1

if next_n == 1:
    print(-1)
else:
    print(break_num)