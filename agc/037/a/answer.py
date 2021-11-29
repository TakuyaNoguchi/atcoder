S = input()
answer, prev, string = 0, '', ''

for c in S:
    string += c

    if string != prev:
        answer += 1
        prev = string
        string = ''

print(answer)