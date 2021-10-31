N = int(input())
answer = []

if N % 2 == 1:
    answer.append('1')
answer.extend(['2' for _ in range(N // 2)])

print(len(answer))
print("\n".join(answer))