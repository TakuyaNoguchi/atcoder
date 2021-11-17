N = int(input())
alice = bob = 0

for i, a in enumerate(sorted(map(int, input().split()), reverse=True)):
    if i % 2 == 0:
        alice += a
    else:
        bob += a

print(alice - bob)