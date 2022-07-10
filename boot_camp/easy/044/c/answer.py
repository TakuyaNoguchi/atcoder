S = input()
first_black = first_white = 0

for i, c in enumerate(S):
    if i % 2 == 0:
        if c == '1':
            first_black += 1
        else:
            first_white += 1
    else:
        if c == '0':
            first_black += 1
        else:
            first_white += 1

print(min(first_black, first_white))