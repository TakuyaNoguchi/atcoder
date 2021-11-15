answer = 0
for c, e in zip(list(input()), list('CODEFESTIVAL2016')):
    if c != e:
        answer += 1

print(answer)