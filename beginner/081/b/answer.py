N = int(input())
A = list(map(int, input().split()))
answer = 0

while next((False for a in A if a % 2 == 1), True):
    A = [a // 2 for a in A]
    answer += 1

print(answer)