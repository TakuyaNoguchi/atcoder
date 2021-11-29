S = input()
answer = 1000

for i in range(len(S) - 2):
    x = int(S[i:i+3])
    answer = min(answer, abs(x - 753))

print(answer)