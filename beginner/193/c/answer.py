N = int(input())
expressed = set()

# 10**5 == math.sqrt(10**10)
for a in range(2, 10**5 + 1):
    # 34 ≒ math.log2(10**10) + 1
    for b in range(2, 34):
        n = a**b
        if n > N: break

        expressed.add(n)

print(N - len(expressed))