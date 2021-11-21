N = int(input())
v = list(map(int, input().split()))
def merge(l):
    if len(l) == 1: return l[0]

    return merge([(l[0] + l[1]) / 2] + l[2:])

print(merge(sorted(v)))