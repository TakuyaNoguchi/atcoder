N, K = map(int, input().split())
answer = N

for _ in range(K):
    smallest = sorted(list(str(answer)))
    biggest =  reversed(smallest)

    answer = int(''.join(biggest)) - int(''.join(smallest))

print(answer)