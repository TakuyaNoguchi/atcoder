answer = True

for i, c in enumerate(input()):
    if not ((i % 2 == 0 and c in 'RUD') or (i % 2 == 1 and c in 'LUD')):
        answer = False
        break

if answer:
    print('Yes')
else:
    print('No')