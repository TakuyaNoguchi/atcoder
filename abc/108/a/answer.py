K = int(input())
odds = [k for k in range(1, K + 1) if k % 2 == 1]
evens = [k for k in range(1, K + 1) if k % 2 == 0]

print(len(odds) * len(evens))