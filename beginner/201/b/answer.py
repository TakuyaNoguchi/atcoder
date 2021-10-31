N = int(input())
inputs = []

for _ in range(N):
    inputs.append([x if i % 2 == 0 else int(x) for i, x in enumerate(input().split())])

print(sorted(inputs, key=lambda input: input[1])[-2][0])