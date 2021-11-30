N = input()
top_n = N[0]
a = top_n + ('9' * (len(N) - 1))
b = str(int(top_n) - 1) + ('9' * (len(N) - 1))

if int(a) <= int(N):
    print(sum(map(int, list(a))))
else:
    print(sum(map(int, list(b))))