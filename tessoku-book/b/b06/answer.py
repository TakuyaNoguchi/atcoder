N = int(input())
A = list(map(int, input().split()))
Q = int(input())
hit_accs, miss_accs = [0], [0]
hit_acc = miss_acc = 0

for a in A:
    if a == 1:
        hit_acc += 1
    else:
        miss_acc += 1

    hit_accs.append(hit_acc)
    miss_accs.append(miss_acc)

for _ in range(Q):
    l, r = map(int, input().split())
    hit_num = hit_accs[r] - hit_accs[l - 1]
    miss_num = miss_accs[r] - miss_accs[l - 1]

    if hit_num == miss_num:
        print('draw')
    elif hit_num > miss_num:
        print('win')
    else:
        print('lose')