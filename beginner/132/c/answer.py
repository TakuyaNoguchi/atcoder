N = int(input())
d = map(int, input().split())
sorted_d = sorted(d)

max_abc = sorted_d[N // 2 - 1]
min_arc = sorted_d[N // 2]

print(min_arc - max_abc)