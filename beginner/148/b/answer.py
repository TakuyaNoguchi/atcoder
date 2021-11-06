N = int(input())
S, T = input().split()

answer = ''
for i in range(N):
    answer += S[i]
    answer += T[i]

print(answer)