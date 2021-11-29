S = input()
odds = [c for i, c in enumerate(S) if i % 2 == 0]
evens = [c for i, c in enumerate(S) if i % 2 == 1]
answer = min(len(S) - (odds.count('0') + evens.count('1')), len(S) - (odds.count('1') + evens.count('0')))

print(answer)