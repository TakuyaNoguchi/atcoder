N, K = map(int, input().split())
H = list(map(int, input().split()))
sorted_h = sorted(H, reverse=True)

print(sum(sorted_h[K:]))