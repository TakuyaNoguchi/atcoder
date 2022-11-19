S = input()
mapping = {
    '6': '9',
    '9': '6'
}

print(''.join([mapping.get(c, c) for c in reversed(S)]))