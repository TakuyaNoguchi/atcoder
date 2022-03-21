import string

S = set((input()))

print(next(iter(set(string.ascii_lowercase) - S), None))