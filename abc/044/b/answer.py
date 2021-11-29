w = sorted(input())
beautiful = True

if len(w) % 2 == 0:
    for i in range(0, len(w) - 1, 2):
        if w[i] != w[i + 1]:
            beautiful = False
            break
else:
    beautiful = False

if beautiful:
    print('Yes')
else:
    print('No')