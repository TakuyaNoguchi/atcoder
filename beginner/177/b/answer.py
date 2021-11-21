S, T = input(), input()
answer = 1001

for i in range(len(S) - len(T) + 1):
    answer = min(answer, len(list(filter(lambda l: l[0] != l[1], zip(S[i:i+len(T)], T)))))

print(answer)