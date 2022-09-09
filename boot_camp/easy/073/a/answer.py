S = input()

ans = (int(S[0]) - 1) + ((len(S) - 1) * 9)
ans = max(ans, sum([int(c) for c in S]))

print(ans)