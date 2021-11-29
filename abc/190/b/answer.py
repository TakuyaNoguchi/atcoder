# N 種類の呪文を使うことができる。
# i 番目の呪文は詠唱に Xi 秒かかり、威力は Yi である。
# 詠唱に S 秒以上かかる呪文や、威力が D 以下の呪文ではダメージを与えることができない。
N, S, D = map(int, input().split())
can_damage = False

for _ in range(N):
    x, y = map(int, input().split())

    if x >= S:
        continue

    if y <= D:
        continue

    can_damage = True
    break

print('Yes' if can_damage else 'No')