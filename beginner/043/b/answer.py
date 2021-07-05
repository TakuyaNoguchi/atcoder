s = input().rstrip()
stack = []

for c in s:
    if c == 'B':
        if stack: stack.pop(-1)
    else:
        stack.append(c)

print(''.join(stack))